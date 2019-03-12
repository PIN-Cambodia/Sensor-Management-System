<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('users')->delete();
        
        \DB::table('users')->insert(array (
            0 => 
            array (
                'id' => 1,
                'role_id' => 1,
                'name' => 'Admin',
                'email' => 'admin@admin.com',
                'avatar' => 'users\\February2019\\sOm2he5uRFQKhmxqphkt.PNG',
                'email_verified_at' => NULL,
                'password' => '$2y$10$Y7GG/NyMej4IBBWHkDFM.O/UUTSwkWdLSs7BpE9hTSvWdxzOYzBTm',
                'remember_token' => 'qfCGtEaEfGtrXBVSet0xmzZgZO1HZRk7ffD0deazaccw690ivTg5Zwzuqjn7',
                'settings' => '{"locale":"en"}',
                'created_at' => '2019-01-22 04:30:06',
                'updated_at' => '2019-02-05 07:59:16',
                'deleted_at' => NULL,
            ),
            1 => 
            array (
                'id' => 2,
                'role_id' => 2,
                'name' => 'sopheak',
                'email' => 'sopheak@pin.org',
                'avatar' => 'users/default.png',
                'email_verified_at' => NULL,
                'password' => '$2y$10$arknnacyHaEncEM5niG0AeAfGA1e1y8H9VW4.bMKSyNcuwa.TChRu',
                'remember_token' => 'J3yEDN5pieV2Fr0lcCoOoSXRxcxNAzTIf52HFY6ZDUp9jCqSVdiLj58gTFga',
                'settings' => '{"locale":"en"}',
                'created_at' => '2019-02-05 07:53:50',
                'updated_at' => '2019-03-04 04:38:37',
                'deleted_at' => NULL,
            ),
        ));
        
        
    }
}