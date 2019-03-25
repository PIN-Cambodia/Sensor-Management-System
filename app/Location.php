<?php

namespace App;
use TCG\Voyager\Traits\Translatable;

use Illuminate\Database\Eloquent\Model;

class Location extends Model
{
    
    public function Sensor(){
    	return $this->belongsTo('App\Sensor');
    }
     use Translatable;
    protected $translatable = ['name', 'comment'];
    
}
