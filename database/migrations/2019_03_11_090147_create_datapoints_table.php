<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDatapointsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {

         if(!Schema::hasTable('datapoints')){ 
                Schema::create('datapoints', function (Blueprint $table) {
                    $table->bigIncrements('id');
                    $table->integer('sensor_id');
                    $table->integer('location_id');
                    $table->text('data');
                    $table->float('sensor_height');
                    $table->float('distance_report');
                    $table->float('water_height');

                    $table->timestamp('created_at')->nullable();
                    $table->timestamp('updated_at')->nullable();
                    $table->timestamp('deleted_at')->nullable();  
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
        Schema::dropIfExists('datapoints');
    }
}
