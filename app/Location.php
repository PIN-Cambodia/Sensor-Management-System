<?php

namespace App;
use TCG\Voyager\Traits\Translatable;
<<<<<<< HEAD

=======
>>>>>>> master
use Illuminate\Database\Eloquent\Model;

class Location extends Model
{
    use Translatable;
    protected $translatable = ['name', 'comment'];
    public function Sensor(){
    	return $this->belongsTo('App\Sensor');
    }
     use Translatable;
    protected $translatable = ['name', 'comment'];
    
}
