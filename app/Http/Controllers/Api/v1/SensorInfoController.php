<?php

namespace App\Http\Controllers\Api\v1;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Gate;
use App\Http\Controllers\Controller;
use Validator;

use \DateTime;
use App\Location;
use App\Datapoint;
use App\Sensor;
class SensorInfoController extends Controller
{


  public function getLocation(Request $request)
    {
        if($request->type==null)

             $location=Location::with('Sensor')->get();

        else
            $location=Location::with('Sensor')->where('type',$request->type)->get();  

      foreach($location as $key => $value) {         

          $sensor=$value['sensor'];
          $datapoint=Datapoint::where('location_id',$value['id'])->orderby('id','desc')->first();         
          $features[] = array(
              'type' => 'Feature',
              'geometry' => array('type' => 'Point', 'coordinates' =>array((double)$value['latitude'],(double) $value['longitude']) ),
              'properties' => array(
                                    'id'=> $value['id'],
                                    'name' => $value['name'],
                                    'external_id'=>$sensor['external_id'], 
                                    'sensor_height'=> ($datapoint!=null ? $datapoint->sensor_height : NULL), 
                                    'distance_report'=>($datapoint!=null ? $datapoint->distance_report : NULL),                         
                                    'water_height'=>($datapoint!=null ? $datapoint->water_height : NULL),
                                    'status'=>$value['status'],
                                    'type'=>$value['Type'],
                                    'trigger_levels'=>array('severe_warning'=>$value['severe_level'],'warning'=>$value['warning_level'],'watch_level'=>$value['watch_level']),
                                     )
          );
      }

       $new_data = array(
          'type' => 'FeatureCollection',
          'features' => $features,
      );

    $final_data = json_encode($new_data, JSON_PRETTY_PRINT);
      return  $final_data;
    }
  }



    /* get information of Sensor datapoint */

    public function getSensorDatapoint(Request $request){

           $fromdate=date($request->fromdate);
           $todate=date($request->todate);
           $sensor=Sensor::where('external_id',$request->external_id)->firstOrFail();
           $data=Datapoint::with('Sensor')->where('sensor_id', $sensor->id);            
           if($this->validateDate($fromdate) && $this->validateDate($todate))
                 $data=$data->whereBetween('created_at',[$fromdate,$todate]);

           $data=$data->orderby('created_at','desc');
           $data=$data->get();

           return response()->json($data);

            //$data=Datapoint::find(1)->Sensor()->get();
           //$data=Datapoint::with('Sensor')->get();
           // $data=Datapoint::with('Sensor')->get();        
           /* no get detail Sensor */
           //$data=Sensor::where('external_id',$request->external_id)->firstOrFail()->Datapoint()->get(); 
    }


    function validateDate($date, $format = 'Y-m-d H:i:s')
    {
        $d = DateTime::createFromFormat($format, $date);
        return $d && $d->format($format) == $date;
    } 



    /* post datapoint */
    public function createDatapoint(Request $request)
    { 

       if(!Gate::allows('add_datapoints')){
           return response()->json(['status'=>false,'message'=>'You have no permission']);
       }

       $arrdata=
                [
                 'sensor_id'=>$request->sensor_id,
                 'location_id'=>$request->location_id,
                 'data'=>$request->data,
                 'sensor_height'=>$request->sensor_height,
                 'distance_report'=>$request->distance_report,
                 'water_height'=>$request->water_height
                 ];


         $validator = Validator::make($request->all(), [
              'sensor_id' => 'required',
              'location_id' => 'required'
                ]);

          if ($validator->fails()) {
              return response()->json(['status'=>false,'message'=>$validator->messages()]);
          }

          else{
                  $datapoint=Datapoint::create($arrdata);        
                  return response()->json(['status'=>true,'message'=>"Record created successfully",'data'=>$arrdata]);
          }

    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function updateSensor(Request $request, $id)
    {

       if(!Gate::allows('edit_sensors')){
           return response()->json(['status'=>false,'message'=>'You have no permission']);
       }


      
       $arrdata=
                [
                 'external_id'=>$request->external_id,
                 'type'=>$request->type,
                 'parameters'=>$request->parameters
                 ];


        $validator = Validator::make($request->all(), [
              'external_id' => 'required',
              'type' => 'required'
                ]);

          if ($validator->fails()) {
              return response()->json(['status'=>false,'message'=>$validator->messages()]);
          }

          else
          {
                $sensor=Sensor::find($id);
                $sensor->update($arrdata);        
                return response()->json(['status'=>true,'message'=>"Record updated successfully",'data'=>$arrdata]);
          }   



    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    /* for display sensor in select box in page location */

    public function getSensor($type){
      $sensor=\DB::table("sensors")->where("type",$type)->pluck("external_id","id");
      return json_encode($sensor);
    }
}
