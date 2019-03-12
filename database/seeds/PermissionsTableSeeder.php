<?php

use Illuminate\Database\Seeder;

class PermissionsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('permissions')->delete();
        
        \DB::table('permissions')->insert(array (
            0 => 
            array (
                'id' => 1,
                'key' => 'browse_admin',
                'table_name' => NULL,
                'created_at' => '2019-01-22 04:28:24',
                'updated_at' => '2019-01-22 04:28:24',
            ),
            1 => 
            array (
                'id' => 2,
                'key' => 'browse_bread',
                'table_name' => NULL,
                'created_at' => '2019-01-22 04:28:24',
                'updated_at' => '2019-01-22 04:28:24',
            ),
            2 => 
            array (
                'id' => 3,
                'key' => 'browse_database',
                'table_name' => NULL,
                'created_at' => '2019-01-22 04:28:24',
                'updated_at' => '2019-01-22 04:28:24',
            ),
            3 => 
            array (
                'id' => 4,
                'key' => 'browse_media',
                'table_name' => NULL,
                'created_at' => '2019-01-22 04:28:24',
                'updated_at' => '2019-01-22 04:28:24',
            ),
            4 => 
            array (
                'id' => 5,
                'key' => 'browse_compass',
                'table_name' => NULL,
                'created_at' => '2019-01-22 04:28:24',
                'updated_at' => '2019-01-22 04:28:24',
            ),
            5 => 
            array (
                'id' => 6,
                'key' => 'browse_menus',
                'table_name' => 'menus',
                'created_at' => '2019-01-22 04:28:24',
                'updated_at' => '2019-01-22 04:28:24',
            ),
            6 => 
            array (
                'id' => 7,
                'key' => 'read_menus',
                'table_name' => 'menus',
                'created_at' => '2019-01-22 04:28:24',
                'updated_at' => '2019-01-22 04:28:24',
            ),
            7 => 
            array (
                'id' => 8,
                'key' => 'edit_menus',
                'table_name' => 'menus',
                'created_at' => '2019-01-22 04:28:25',
                'updated_at' => '2019-01-22 04:28:25',
            ),
            8 => 
            array (
                'id' => 9,
                'key' => 'add_menus',
                'table_name' => 'menus',
                'created_at' => '2019-01-22 04:28:25',
                'updated_at' => '2019-01-22 04:28:25',
            ),
            9 => 
            array (
                'id' => 10,
                'key' => 'delete_menus',
                'table_name' => 'menus',
                'created_at' => '2019-01-22 04:28:25',
                'updated_at' => '2019-01-22 04:28:25',
            ),
            10 => 
            array (
                'id' => 11,
                'key' => 'browse_roles',
                'table_name' => 'roles',
                'created_at' => '2019-01-22 04:28:25',
                'updated_at' => '2019-01-22 04:28:25',
            ),
            11 => 
            array (
                'id' => 12,
                'key' => 'read_roles',
                'table_name' => 'roles',
                'created_at' => '2019-01-22 04:28:25',
                'updated_at' => '2019-01-22 04:28:25',
            ),
            12 => 
            array (
                'id' => 13,
                'key' => 'edit_roles',
                'table_name' => 'roles',
                'created_at' => '2019-01-22 04:28:25',
                'updated_at' => '2019-01-22 04:28:25',
            ),
            13 => 
            array (
                'id' => 14,
                'key' => 'add_roles',
                'table_name' => 'roles',
                'created_at' => '2019-01-22 04:28:25',
                'updated_at' => '2019-01-22 04:28:25',
            ),
            14 => 
            array (
                'id' => 15,
                'key' => 'delete_roles',
                'table_name' => 'roles',
                'created_at' => '2019-01-22 04:28:25',
                'updated_at' => '2019-01-22 04:28:25',
            ),
            15 => 
            array (
                'id' => 16,
                'key' => 'browse_users',
                'table_name' => 'users',
                'created_at' => '2019-01-22 04:28:25',
                'updated_at' => '2019-01-22 04:28:25',
            ),
            16 => 
            array (
                'id' => 17,
                'key' => 'read_users',
                'table_name' => 'users',
                'created_at' => '2019-01-22 04:28:25',
                'updated_at' => '2019-01-22 04:28:25',
            ),
            17 => 
            array (
                'id' => 18,
                'key' => 'edit_users',
                'table_name' => 'users',
                'created_at' => '2019-01-22 04:28:25',
                'updated_at' => '2019-01-22 04:28:25',
            ),
            18 => 
            array (
                'id' => 19,
                'key' => 'add_users',
                'table_name' => 'users',
                'created_at' => '2019-01-22 04:28:25',
                'updated_at' => '2019-01-22 04:28:25',
            ),
            19 => 
            array (
                'id' => 20,
                'key' => 'delete_users',
                'table_name' => 'users',
                'created_at' => '2019-01-22 04:28:25',
                'updated_at' => '2019-01-22 04:28:25',
            ),
            20 => 
            array (
                'id' => 21,
                'key' => 'browse_settings',
                'table_name' => 'settings',
                'created_at' => '2019-01-22 04:28:25',
                'updated_at' => '2019-01-22 04:28:25',
            ),
            21 => 
            array (
                'id' => 22,
                'key' => 'read_settings',
                'table_name' => 'settings',
                'created_at' => '2019-01-22 04:28:25',
                'updated_at' => '2019-01-22 04:28:25',
            ),
            22 => 
            array (
                'id' => 23,
                'key' => 'edit_settings',
                'table_name' => 'settings',
                'created_at' => '2019-01-22 04:28:25',
                'updated_at' => '2019-01-22 04:28:25',
            ),
            23 => 
            array (
                'id' => 24,
                'key' => 'add_settings',
                'table_name' => 'settings',
                'created_at' => '2019-01-22 04:28:25',
                'updated_at' => '2019-01-22 04:28:25',
            ),
            24 => 
            array (
                'id' => 25,
                'key' => 'delete_settings',
                'table_name' => 'settings',
                'created_at' => '2019-01-22 04:28:25',
                'updated_at' => '2019-01-22 04:28:25',
            ),
            25 => 
            array (
                'id' => 26,
                'key' => 'browse_categories',
                'table_name' => 'categories',
                'created_at' => '2019-01-22 04:30:05',
                'updated_at' => '2019-01-22 04:30:05',
            ),
            26 => 
            array (
                'id' => 27,
                'key' => 'read_categories',
                'table_name' => 'categories',
                'created_at' => '2019-01-22 04:30:05',
                'updated_at' => '2019-01-22 04:30:05',
            ),
            27 => 
            array (
                'id' => 28,
                'key' => 'edit_categories',
                'table_name' => 'categories',
                'created_at' => '2019-01-22 04:30:05',
                'updated_at' => '2019-01-22 04:30:05',
            ),
            28 => 
            array (
                'id' => 29,
                'key' => 'add_categories',
                'table_name' => 'categories',
                'created_at' => '2019-01-22 04:30:06',
                'updated_at' => '2019-01-22 04:30:06',
            ),
            29 => 
            array (
                'id' => 30,
                'key' => 'delete_categories',
                'table_name' => 'categories',
                'created_at' => '2019-01-22 04:30:06',
                'updated_at' => '2019-01-22 04:30:06',
            ),
            30 => 
            array (
                'id' => 31,
                'key' => 'browse_posts',
                'table_name' => 'posts',
                'created_at' => '2019-01-22 04:30:07',
                'updated_at' => '2019-01-22 04:30:07',
            ),
            31 => 
            array (
                'id' => 32,
                'key' => 'read_posts',
                'table_name' => 'posts',
                'created_at' => '2019-01-22 04:30:08',
                'updated_at' => '2019-01-22 04:30:08',
            ),
            32 => 
            array (
                'id' => 33,
                'key' => 'edit_posts',
                'table_name' => 'posts',
                'created_at' => '2019-01-22 04:30:08',
                'updated_at' => '2019-01-22 04:30:08',
            ),
            33 => 
            array (
                'id' => 34,
                'key' => 'add_posts',
                'table_name' => 'posts',
                'created_at' => '2019-01-22 04:30:08',
                'updated_at' => '2019-01-22 04:30:08',
            ),
            34 => 
            array (
                'id' => 35,
                'key' => 'delete_posts',
                'table_name' => 'posts',
                'created_at' => '2019-01-22 04:30:08',
                'updated_at' => '2019-01-22 04:30:08',
            ),
            35 => 
            array (
                'id' => 36,
                'key' => 'browse_pages',
                'table_name' => 'pages',
                'created_at' => '2019-01-22 04:30:09',
                'updated_at' => '2019-01-22 04:30:09',
            ),
            36 => 
            array (
                'id' => 37,
                'key' => 'read_pages',
                'table_name' => 'pages',
                'created_at' => '2019-01-22 04:30:09',
                'updated_at' => '2019-01-22 04:30:09',
            ),
            37 => 
            array (
                'id' => 38,
                'key' => 'edit_pages',
                'table_name' => 'pages',
                'created_at' => '2019-01-22 04:30:09',
                'updated_at' => '2019-01-22 04:30:09',
            ),
            38 => 
            array (
                'id' => 39,
                'key' => 'add_pages',
                'table_name' => 'pages',
                'created_at' => '2019-01-22 04:30:09',
                'updated_at' => '2019-01-22 04:30:09',
            ),
            39 => 
            array (
                'id' => 40,
                'key' => 'delete_pages',
                'table_name' => 'pages',
                'created_at' => '2019-01-22 04:30:09',
                'updated_at' => '2019-01-22 04:30:09',
            ),
            40 => 
            array (
                'id' => 41,
                'key' => 'browse_hooks',
                'table_name' => NULL,
                'created_at' => '2019-01-22 04:30:12',
                'updated_at' => '2019-01-22 04:30:12',
            ),
            41 => 
            array (
                'id' => 42,
                'key' => 'browse_sensors',
                'table_name' => 'sensors',
                'created_at' => '2019-01-22 10:08:57',
                'updated_at' => '2019-01-22 10:08:57',
            ),
            42 => 
            array (
                'id' => 43,
                'key' => 'read_sensors',
                'table_name' => 'sensors',
                'created_at' => '2019-01-22 10:08:57',
                'updated_at' => '2019-01-22 10:08:57',
            ),
            43 => 
            array (
                'id' => 44,
                'key' => 'edit_sensors',
                'table_name' => 'sensors',
                'created_at' => '2019-01-22 10:08:57',
                'updated_at' => '2019-01-22 10:08:57',
            ),
            44 => 
            array (
                'id' => 45,
                'key' => 'add_sensors',
                'table_name' => 'sensors',
                'created_at' => '2019-01-22 10:08:57',
                'updated_at' => '2019-01-22 10:08:57',
            ),
            45 => 
            array (
                'id' => 46,
                'key' => 'delete_sensors',
                'table_name' => 'sensors',
                'created_at' => '2019-01-22 10:08:57',
                'updated_at' => '2019-01-22 10:08:57',
            ),
            46 => 
            array (
                'id' => 82,
                'key' => 'browse_locations',
                'table_name' => 'locations',
                'created_at' => '2019-01-23 02:15:56',
                'updated_at' => '2019-01-23 02:15:56',
            ),
            47 => 
            array (
                'id' => 83,
                'key' => 'read_locations',
                'table_name' => 'locations',
                'created_at' => '2019-01-23 02:15:56',
                'updated_at' => '2019-01-23 02:15:56',
            ),
            48 => 
            array (
                'id' => 84,
                'key' => 'edit_locations',
                'table_name' => 'locations',
                'created_at' => '2019-01-23 02:15:56',
                'updated_at' => '2019-01-23 02:15:56',
            ),
            49 => 
            array (
                'id' => 85,
                'key' => 'add_locations',
                'table_name' => 'locations',
                'created_at' => '2019-01-23 02:15:56',
                'updated_at' => '2019-01-23 02:15:56',
            ),
            50 => 
            array (
                'id' => 86,
                'key' => 'delete_locations',
                'table_name' => 'locations',
                'created_at' => '2019-01-23 02:15:56',
                'updated_at' => '2019-01-23 02:15:56',
            ),
            51 => 
            array (
                'id' => 87,
                'key' => 'browse_datapoints',
                'table_name' => 'datapoints',
                'created_at' => '2019-01-23 02:43:49',
                'updated_at' => '2019-01-23 02:43:49',
            ),
            52 => 
            array (
                'id' => 88,
                'key' => 'read_datapoints',
                'table_name' => 'datapoints',
                'created_at' => '2019-01-23 02:43:49',
                'updated_at' => '2019-01-23 02:43:49',
            ),
            53 => 
            array (
                'id' => 89,
                'key' => 'edit_datapoints',
                'table_name' => 'datapoints',
                'created_at' => '2019-01-23 02:43:49',
                'updated_at' => '2019-01-23 02:43:49',
            ),
            54 => 
            array (
                'id' => 90,
                'key' => 'add_datapoints',
                'table_name' => 'datapoints',
                'created_at' => '2019-01-23 02:43:50',
                'updated_at' => '2019-01-23 02:43:50',
            ),
            55 => 
            array (
                'id' => 91,
                'key' => 'delete_datapoints',
                'table_name' => 'datapoints',
                'created_at' => '2019-01-23 02:43:50',
                'updated_at' => '2019-01-23 02:43:50',
            ),
            56 => 
            array (
                'id' => 92,
                'key' => 'browse_usertokens',
                'table_name' => 'usertokens',
                'created_at' => '2019-02-01 08:52:26',
                'updated_at' => '2019-02-01 08:52:26',
            ),
            57 => 
            array (
                'id' => 93,
                'key' => 'read_usertokens',
                'table_name' => 'usertokens',
                'created_at' => '2019-02-01 08:52:26',
                'updated_at' => '2019-02-01 08:52:26',
            ),
            58 => 
            array (
                'id' => 94,
                'key' => 'edit_usertokens',
                'table_name' => 'usertokens',
                'created_at' => '2019-02-01 08:52:26',
                'updated_at' => '2019-02-01 08:52:26',
            ),
            59 => 
            array (
                'id' => 95,
                'key' => 'add_usertokens',
                'table_name' => 'usertokens',
                'created_at' => '2019-02-01 08:52:26',
                'updated_at' => '2019-02-01 08:52:26',
            ),
            60 => 
            array (
                'id' => 96,
                'key' => 'delete_usertokens',
                'table_name' => 'usertokens',
                'created_at' => '2019-02-01 08:52:26',
                'updated_at' => '2019-02-01 08:52:26',
            ),
            61 => 
            array (
                'id' => 97,
                'key' => 'browse_tests',
                'table_name' => 'tests',
                'created_at' => '2019-02-05 02:30:48',
                'updated_at' => '2019-02-05 02:30:48',
            ),
            62 => 
            array (
                'id' => 98,
                'key' => 'read_tests',
                'table_name' => 'tests',
                'created_at' => '2019-02-05 02:30:48',
                'updated_at' => '2019-02-05 02:30:48',
            ),
            63 => 
            array (
                'id' => 99,
                'key' => 'edit_tests',
                'table_name' => 'tests',
                'created_at' => '2019-02-05 02:30:48',
                'updated_at' => '2019-02-05 02:30:48',
            ),
            64 => 
            array (
                'id' => 100,
                'key' => 'add_tests',
                'table_name' => 'tests',
                'created_at' => '2019-02-05 02:30:48',
                'updated_at' => '2019-02-05 02:30:48',
            ),
            65 => 
            array (
                'id' => 101,
                'key' => 'delete_tests',
                'table_name' => 'tests',
                'created_at' => '2019-02-05 02:30:48',
                'updated_at' => '2019-02-05 02:30:48',
            ),
        ));
        
        
    }
}