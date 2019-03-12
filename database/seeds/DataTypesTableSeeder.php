<?php

use Illuminate\Database\Seeder;

class DataTypesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('data_types')->delete();
        
        \DB::table('data_types')->insert(array (
            0 => 
            array (
                'id' => 1,
                'name' => 'users',
                'slug' => 'users',
                'display_name_singular' => 'User',
                'display_name_plural' => 'Users',
                'icon' => 'voyager-person',
                'model_name' => 'TCG\\Voyager\\Models\\User',
                'policy_name' => 'TCG\\Voyager\\Policies\\UserPolicy',
                'controller' => '',
                'description' => '',
                'generate_permissions' => 1,
                'server_side' => 0,
                'details' => NULL,
                'created_at' => '2019-01-22 04:28:21',
                'updated_at' => '2019-01-22 04:28:21',
            ),
            1 => 
            array (
                'id' => 2,
                'name' => 'menus',
                'slug' => 'menus',
                'display_name_singular' => 'Menu',
                'display_name_plural' => 'Menus',
                'icon' => 'voyager-list',
                'model_name' => 'TCG\\Voyager\\Models\\Menu',
                'policy_name' => NULL,
                'controller' => '',
                'description' => '',
                'generate_permissions' => 1,
                'server_side' => 0,
                'details' => NULL,
                'created_at' => '2019-01-22 04:28:22',
                'updated_at' => '2019-01-22 04:28:22',
            ),
            2 => 
            array (
                'id' => 3,
                'name' => 'roles',
                'slug' => 'roles',
                'display_name_singular' => 'Role',
                'display_name_plural' => 'Roles',
                'icon' => 'voyager-lock',
                'model_name' => 'TCG\\Voyager\\Models\\Role',
                'policy_name' => NULL,
                'controller' => '',
                'description' => '',
                'generate_permissions' => 1,
                'server_side' => 0,
                'details' => NULL,
                'created_at' => '2019-01-22 04:28:22',
                'updated_at' => '2019-01-22 04:28:22',
            ),
            3 => 
            array (
                'id' => 4,
                'name' => 'categories',
                'slug' => 'categories',
                'display_name_singular' => 'Category',
                'display_name_plural' => 'Categories',
                'icon' => 'voyager-categories',
                'model_name' => 'TCG\\Voyager\\Models\\Category',
                'policy_name' => NULL,
                'controller' => '',
                'description' => '',
                'generate_permissions' => 1,
                'server_side' => 0,
                'details' => NULL,
                'created_at' => '2019-01-22 04:30:05',
                'updated_at' => '2019-01-22 04:30:05',
            ),
            4 => 
            array (
                'id' => 5,
                'name' => 'posts',
                'slug' => 'posts',
                'display_name_singular' => 'Post',
                'display_name_plural' => 'Posts',
                'icon' => 'voyager-news',
                'model_name' => 'TCG\\Voyager\\Models\\Post',
                'policy_name' => 'TCG\\Voyager\\Policies\\PostPolicy',
                'controller' => '',
                'description' => '',
                'generate_permissions' => 1,
                'server_side' => 0,
                'details' => NULL,
                'created_at' => '2019-01-22 04:30:06',
                'updated_at' => '2019-01-22 04:30:06',
            ),
            5 => 
            array (
                'id' => 6,
                'name' => 'pages',
                'slug' => 'pages',
                'display_name_singular' => 'Page',
                'display_name_plural' => 'Pages',
                'icon' => 'voyager-file-text',
                'model_name' => 'TCG\\Voyager\\Models\\Page',
                'policy_name' => NULL,
                'controller' => '',
                'description' => '',
                'generate_permissions' => 1,
                'server_side' => 0,
                'details' => NULL,
                'created_at' => '2019-01-22 04:30:08',
                'updated_at' => '2019-01-22 04:30:08',
            ),
            6 => 
            array (
                'id' => 8,
                'name' => 'sensors',
                'slug' => 'sensors',
                'display_name_singular' => 'Sensor',
                'display_name_plural' => 'Sensors',
                'icon' => 'voyager-terminal',
                'model_name' => 'App\\Sensor',
                'policy_name' => NULL,
                'controller' => NULL,
                'description' => NULL,
                'generate_permissions' => 1,
                'server_side' => 0,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}',
                'created_at' => '2019-01-22 10:08:56',
                'updated_at' => '2019-02-26 07:30:59',
            ),
            7 => 
            array (
                'id' => 16,
                'name' => 'locations',
                'slug' => 'locations',
                'display_name_singular' => 'Location',
                'display_name_plural' => 'Locations',
                'icon' => NULL,
                'model_name' => 'App\\Location',
                'policy_name' => NULL,
                'controller' => NULL,
                'description' => NULL,
                'generate_permissions' => 1,
                'server_side' => 0,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}',
                'created_at' => '2019-01-23 02:15:55',
                'updated_at' => '2019-02-25 04:34:41',
            ),
            8 => 
            array (
                'id' => 17,
                'name' => 'datapoints',
                'slug' => 'datapoints',
                'display_name_singular' => 'Datapoint',
                'display_name_plural' => 'Datapoints',
                'icon' => NULL,
                'model_name' => 'App\\Datapoint',
                'policy_name' => NULL,
                'controller' => NULL,
                'description' => NULL,
                'generate_permissions' => 1,
                'server_side' => 0,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}',
                'created_at' => '2019-01-23 02:43:49',
                'updated_at' => '2019-02-26 07:51:20',
            ),
            9 => 
            array (
                'id' => 19,
                'name' => 'usertokens',
                'slug' => 'usertokens',
                'display_name_singular' => 'Usertoken',
                'display_name_plural' => 'Usertokens',
                'icon' => NULL,
                'model_name' => 'App\\Usertoken',
                'policy_name' => NULL,
                'controller' => '\\App\\Http\\Controllers\\Voyager\\UserTokensController',
                'description' => NULL,
                'generate_permissions' => 1,
                'server_side' => 0,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}',
                'created_at' => '2019-02-01 08:52:25',
                'updated_at' => '2019-02-07 02:01:32',
            ),
            10 => 
            array (
                'id' => 21,
                'name' => 'tests',
                'slug' => 'tests',
                'display_name_singular' => 'Test',
                'display_name_plural' => 'Tests',
                'icon' => NULL,
                'model_name' => 'App\\Test',
                'policy_name' => NULL,
                'controller' => NULL,
                'description' => NULL,
                'generate_permissions' => 1,
                'server_side' => 0,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}',
                'created_at' => '2019-02-05 02:30:48',
                'updated_at' => '2019-02-05 02:30:48',
            ),
        ));
        
        
    }
}