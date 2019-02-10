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
             $location=Location::all();
        else
            $location=Location::where('type',$request->type)->get();        

        return response()->json($location);
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
                 'data'=>$request->data
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
}
