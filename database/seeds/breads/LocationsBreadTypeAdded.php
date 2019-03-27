<?php

use Illuminate\Database\Seeder;
use TCG\Voyager\Models\DataType;
use TCG\Voyager\Models\Menu;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Models\MenuItem;

class LocationsBreadTypeAdded extends Seeder
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

            $dataType = DataType::where('name' , 'locations')->first();

            if (is_bread_translatable($dataType)) {
                $dataType->deleteAttributeTranslations($dataType->getTranslatableAttributes());
            }

            if ($dataType) {
                DataType::where('name', 'locations')->delete();
            }

            \DB::table('data_types')->insert([
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
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}',
                'created_at' => '2019-01-22 19:15:55',
                'updated_at' => '2019-03-27 04:23:33',
            ]);

            $dataType = DataType::where('name', 'locations')->first();
            \DB::table('translations')->insert([
                0 => 
                [
                    'table_name' => 'data_types',
                    'column_name' => 'display_name_plural',
                    'foreign_key' => $dataType->id,
                    'locale' => 'kh',
                    'value' => 'Locations',
                    'created_at' => '2019-03-25 02:02:47',
                    'updated_at' => '2019-03-25 02:02:47',
                ],
                1 => 
                [
                    'table_name' => 'data_types',
                    'column_name' => 'display_name_singular',
                    'foreign_key' => $dataType->id,
                    'locale' => 'kh',
                    'value' => 'Location',
                    'created_at' => '2019-03-25 02:02:47',
                    'updated_at' => '2019-03-25 02:02:47',
                ],
            ]);

            Voyager::model('Permission')->generateFor('locations');

            $menu = Menu::where('name', config('voyager.bread.default_menu'))->firstOrFail();

            $menuItem = MenuItem::firstOrNew([
                'menu_id' => $menu->id,
                'title' => 'Locations',
                'url' => '',
                'route' => 'voyager.locations.index',
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