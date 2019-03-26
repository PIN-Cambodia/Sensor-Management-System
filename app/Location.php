<?php

namespace App;
use TCG\Voyager\Traits\Translatable;

use Illuminate\Database\Eloquent\Model;

class Location extends Model
{
    use Translatable;
    protected $translatable = ['name', 'comment'];
    public function Sensor(){
    	return $this->belongsTo('App\Sensor');
    }
  
}
