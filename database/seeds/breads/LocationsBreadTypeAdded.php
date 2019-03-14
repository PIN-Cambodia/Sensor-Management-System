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
                'display_name_singular' => 'Location',
                'display_name_plural' => 'Locations',
                'slug' => 'locations',
                'icon' => NULL,
                'model_name' => 'App\\Location',
                'controller' => NULL,
                'policy_name' => NULL,
                'generate_permissions' => 1,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}',
                'description' => NULL,
                'server_side' => 0,
                'updated_at' => '2019-03-14 08:44:48',
                'created_at' => '2019-03-14 08:44:48',
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