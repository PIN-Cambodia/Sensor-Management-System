<?php

use Illuminate\Database\Seeder;

class MenusTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('menus')->delete();
        
        \DB::table('menus')->insert(array (
            0 => 
            array (
                'id' => 1,
                'name' => 'admin',
                'created_at' => '2019-01-22 04:28:24',
                'updated_at' => '2019-01-22 04:28:24',
            ),
            1 => 
            array (
                'id' => 2,
                'name' => 'PIN',
                'created_at' => '2019-01-22 07:48:58',
                'updated_at' => '2019-01-22 07:48:58',
            ),
        ));
        
        
    }
}