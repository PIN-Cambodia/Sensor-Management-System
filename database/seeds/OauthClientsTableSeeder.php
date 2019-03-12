<?php

use Illuminate\Database\Seeder;

class OauthClientsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('oauth_clients')->delete();
        
        \DB::table('oauth_clients')->insert(array (
            0 => 
            array (
                'id' => 1,
                'user_id' => NULL,
                'name' => 'Laravel Personal Access Client',
                'secret' => 'BMyeyGWu4DK6yD7IkFDCIpp0VIjPx7NpHC6YirYW',
                'redirect' => 'http://localhost',
                'personal_access_client' => 1,
                'password_client' => 0,
                'revoked' => 0,
                'created_at' => '2019-02-04 08:33:01',
                'updated_at' => '2019-02-04 08:33:01',
            ),
            1 => 
            array (
                'id' => 2,
                'user_id' => NULL,
                'name' => 'Laravel Password Grant Client',
                'secret' => '4Nl8DahpbotBNYzLNrJsx6iM9SAXaZFU726sSHMr',
                'redirect' => 'http://localhost',
                'personal_access_client' => 0,
                'password_client' => 1,
                'revoked' => 0,
                'created_at' => '2019-02-04 08:33:02',
                'updated_at' => '2019-02-04 08:33:02',
            ),
        ));
        
        
    }
}