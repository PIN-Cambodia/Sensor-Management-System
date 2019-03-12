<?php

use Illuminate\Database\Seeder;

class RolesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('roles')->delete();
        
        \DB::table('roles')->insert(array (
            0 => 
            array (
                'id' => 1,
                'name' => 'admin',
                'display_name' => 'Administrator',
                'created_at' => '2019-01-22 04:28:24',
                'updated_at' => '2019-01-22 04:28:24',
            ),
            1 => 
            array (
                'id' => 2,
                'name' => 'user',
                'display_name' => 'Normal User',
                'created_at' => '2019-01-22 04:28:24',
                'updated_at' => '2019-01-22 04:28:24',
            ),
            2 => 
            array (
                'id' => 3,
                'name' => 'test',
                'display_name' => 'test',
                'created_at' => '2019-02-11 01:50:34',
                'updated_at' => '2019-02-11 01:50:34',
            ),
            3 => 
            array (
                'id' => 4,
                'name' => 'Test1',
                'display_name' => 'Test1',
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
        ));
        
        
    }
}