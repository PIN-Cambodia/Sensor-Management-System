<?php

use Illuminate\Database\Seeder;
use TCG\Voyager\Models\DataType;
use TCG\Voyager\Models\Menu;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Models\MenuItem;

class DatapointsBreadTypeAdded extends Seeder
{
    /**
     * Auto generated seed file
     *
     * @return void
     *
     * @throws Exception
     */
    public function run()
    {
        try {
            \DB::beginTransaction();

            $dataType = DataType::where('name' , 'datapoints')->first();

            if (is_bread_translatable($dataType)) {
                $dataType->deleteAttributeTranslations($dataType->getTranslatableAttributes());
            }

            if ($dataType) {
                DataType::where('name', 'datapoints')->delete();
            }

            \DB::table('data_types')->insert([
                'name' => 'datapoints',
<<<<<<< HEAD
                'display_name_singular' => 'Datapoint',
                'display_name_plural' => 'Datapoints',
                'slug' => 'datapoints',
                'icon' => NULL,
                'model_name' => 'App\\Datapoint',
                'controller' => NULL,
                'policy_name' => NULL,
                'generate_permissions' => 1,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}',
                'description' => NULL,
                'server_side' => 0,
                'updated_at' => '2019-03-14 08:50:30',
                'created_at' => '2019-03-14 08:50:30',
=======
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
                'created_at' => '2019-01-22 19:43:49',
<<<<<<< HEAD
                'updated_at' => '2019-03-14 04:21:33',
>>>>>>> 2d9722f5439ed9ee9d1dadf9f3a9555389811861
=======
                'updated_at' => '2019-03-15 10:24:07',
>>>>>>> 68ef50381a1a8f90603233d2f80cc52d41a0bce6
            ]);

            
            

            Voyager::model('Permission')->generateFor('datapoints');

            $menu = Menu::where('name', config('voyager.bread.default_menu'))->firstOrFail();

            $menuItem = MenuItem::firstOrNew([
                'menu_id' => $menu->id,
                'title' => 'Datapoints',
                'url' => '',
                'route' => 'voyager.datapoints.index',
            ]);

            $order = Voyager::model('MenuItem')->highestOrderMenuItem();

            if (!$menuItem->exists) {
                $menuItem->fill([
                    'target' => '_self',
                    'icon_class' => '',
                    'color' => null,
                    'parent_id' => null,
                    'order' => $order,
                ])->save();
            }
        } catch(Exception $e) {
           throw new Exception('Exception occur ' . $e);

           \DB::rollBack();
        }

        \DB::commit();
    }
}