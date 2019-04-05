<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Datapoint extends Model
{
    //
	protected $fillable = ['sensor_id','location_id','data'];
    public function Sensor(){
    	return $this->belongsTo('App\Sensor');
    }
       public function Location(){
    	return $this->belongsTo('App\Location');
    }
 
}
