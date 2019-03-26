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
        /*Get all data by table Locations join with Sensors*/
             $location=Location::with('Sensor')->get();
      else
           $location=Location::with('Sensor')->where('type',$request->type)->get();  

      /* Generate json format follow  by http://geojson.org/ */
      foreach($location as $key => $value) {         
          
          /* get translation in khmer for feild name and comment by location*/
          $translatekh = Location::withTranslations(['kh'])->where('id',(int) $value['id'])->get();    
          $translatekh = $translatekh->translate('kh', 'fallbackLocale');
          $namekh= $translatekh[0]->name;
          $commenkh=$translatekh[0]->comment;
          /* end translation */

          /*get sensor information in location*/
          $sensor=$value['sensor'];

          /* get the last information of datapoint in the location */
          $datapoint=Datapoint::where('location_id',$value['id'])->orderby('id','desc')->first();    
         // formate geojson
          $features[] = array(
              'type' => 'Feature',
              'geometry' => array('type' => 'Point', 'coordinates' =>array((double)$value['latitude'],(double) $value['longitude']) ),
              'properties' => array(
                                    'id'=> $value['id'],
                                    'name' => $value['name'],
                                    'namekh'=>$namekh,
                                    'external_id'=>$sensor['external_id'], 
                                    'sensor_height'=> ($datapoint!=null ? $datapoint->sensor_height : NULL), 
                                    'distance_report'=>($datapoint!=null ? $datapoint->distance_report : NULL),                         
                                    'water_height'=>($datapoint!=null ? $datapoint->water_height : NULL),
                                    'status'=>$value['status'],
                                    'type'=>$value['Type'],
                                    'comment'=>$value['comment'],
                                     'commentkh'=>$commenkh,
                                    'trigger_levels'=>array('severe_warning'=>$value['severe_level'],'warning'=>$value['warning_level'],'watch_level'=>$value['watch_level']),
                                     )
                              );
      }

       $new_data = array(
        'type' => 'FeatureCollection',
          'features' => $features,
      );

      // $final_data = json_encode($new_data, JSON_PRETTY_PRINT);
      //use JSON_UNESCAPED_UNICODE when json has khmer values
      $final_data = json_encode($new_data, JSON_UNESCAPED_UNICODE);
    return  $final_data;
    }


 /* Get information of Sensor Datapoint */

  public function getSensorDatapoint(Request $request){

         $fromdate=date($request->fromdate);
         $todate=date($request->todate);
         $sensor=Sensor::where('external_id',$request->external_id)->firstOrFail();
         $data=Datapoint::with('Sensor')->where('sensor_id', $sensor->id);
          //  validation date format
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



    /* Create datapoint from users authorization*/
  public function createDatapoint(Request $request)
  { 
    //check authorization users on create Datapoint
    // add_datapoints is field name in permissions table
     if(!Gate::allows('add_datapoints')){
         return response()->json(['status'=>false,'message'=>'You have no permission']);
     }
     //end

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
   * Update sensors from users authorization
   *
   * @param  \Illuminate\Http\Request  $request
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function updateSensor(Request $request, $id)
  {
      /* check authorization users on update sensors
      edit_sensors is field name in permissions table*/
     if(!Gate::allows('edit_sensors')){
         return response()->json(['status'=>false,'message'=>'You have no permission']);
     }
      //end
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
    public function getSensor($type,$sensor_id=0){
      //$sensor=\DB::table("sensors")
      $sensor=Sensor::where("type",$type)
      ->whereNotIn('id',function($query){
                            $query->select('sensor_id')->where('sensor_id','!=','NULL')->from('locations');}
                  );
      if($sensor_id!=0)//check for when you click on edit location, the sensor will be exist
          $sensor=$sensor->orWhere('id',$sensor_id);
      $sensor=$sensor->pluck("external_id","id");
      return json_encode($sensor);
    }


}
