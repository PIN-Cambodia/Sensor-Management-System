<?php

use Illuminate\Database\Seeder;
use TCG\Voyager\Models\DataType;
use TCG\Voyager\Models\Menu;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Models\MenuItem;

class SensorsBreadTypeAdded extends Seeder
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

            $dataType = DataType::where('name' , 'sensors')->first();

            if (is_bread_translatable($dataType)) {
                $dataType->deleteAttributeTranslations($dataType->getTranslatableAttributes());
            }

            if ($dataType) {
                DataType::where('name', 'sensors')->delete();
            }

            \DB::table('data_types')->insert([
                'name' => 'sensors',
                'slug' => 'sensors',
                'display_name_singular' => 'Sensor',
                'display_name_plural' => 'Sensors',
<<<<<<< HEAD
                'icon' => NULL,
=======
                'icon' => 'voyager-terminal',
>>>>>>> 2d9722f5439ed9ee9d1dadf9f3a9555389811861
                'model_name' => 'App\\Sensor',
                'policy_name' => NULL,
                'controller' => NULL,
                'description' => NULL,
                'generate_permissions' => 1,
                'server_side' => 0,
<<<<<<< HEAD
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}',
                'created_at' => '2019-03-14 08:52:02',
                'updated_at' => '2019-03-18 04:59:27',
=======
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}',
                'created_at' => '2019-01-22 10:08:56',
                'updated_at' => '2019-03-14 07:05:46',
>>>>>>> 2d9722f5439ed9ee9d1dadf9f3a9555389811861
            ]);

            
            

            Voyager::model('Permission')->generateFor('sensors');

            $menu = Menu::where('name', config('voyager.bread.default_menu'))->firstOrFail();

            $menuItem = MenuItem::firstOrNew([
                'menu_id' => $menu->id,
                'title' => 'Sensors',
                'url' => '',
                'route' => 'voyager.sensors.index',
            ]);

            $order = Voyager::model('MenuItem')->highestOrderMenuItem();

            if (!$menuItem->exists) {
                $menuItem->fill([
                    'target' => '_self',
<<<<<<< HEAD
                    'icon_class' => '',
=======
                    'icon_class' => 'voyager-terminal',
>>>>>>> 2d9722f5439ed9ee9d1dadf9f3a9555389811861
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