<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sensor extends Model
{
    protected $fillable = ['external_id','type','parameters'];
    public function Datapoint(){
    	return $this->hasMany('App\Datapoint');
    }
}
