<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSensorsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {

          if(!Schema::hasTable('sensors')){
            Schema::create('sensors', function (Blueprint $table) {
                $table->increments('id');
                $table->string('external_id');
                $table->string('type');
                $table->string('parameters');
                $table->string('firmware_version');
                $table->string('hardware_version');
                $table->string('hardware_des');               
                $table->timestamp('last_boot')->nullable();
                $table->timestamp('created_at')->nullable();
                $table->timestamp('updated_at')->nullable();
                $table->timestamp('deleted_at')->nullable();                
                //$table->timestamps();
            });
          }




    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('sensors');
    }
}
