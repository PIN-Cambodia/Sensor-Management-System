<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUserTokensTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {

          if(!Schema::hasTable('usertokens')){ 
                Schema::create('usertokens', function (Blueprint $table) {
                    $table->increments('id');
                    $table->integer('user_id');
                    $table->text('api_token');
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
        Schema::dropIfExists('usertokens');
    }
}
