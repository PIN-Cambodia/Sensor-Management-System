<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Datapoint extends Model
{
    //
	protected $fillable = ['sensor_id','location_id','data','sensor_height','distance_report','water_height'];
    public function Sensor(){
    	return $this->belongsTo('App\Sensor');
    }
       public function Location(){
    	return $this->belongsTo('App\Location');
    }
 
}
