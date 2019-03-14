<?php

use Illuminate\Database\Seeder;
use TCG\Voyager\Models\DataType;
use TCG\Voyager\Models\Menu;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Models\MenuItem;

class UsertokensBreadTypeAdded extends Seeder
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

            $dataType = DataType::where('name' , 'usertokens')->first();

            if (is_bread_translatable($dataType)) {
                $dataType->deleteAttributeTranslations($dataType->getTranslatableAttributes());
            }

            if ($dataType) {
                DataType::where('name', 'usertokens')->delete();
            }

            \DB::table('data_types')->insert([
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
                'created_at' => '2019-02-01 01:52:25',
                'updated_at' => '2019-03-14 04:22:21',
            ]);

            
            

            Voyager::model('Permission')->generateFor('usertokens');

            $menu = Menu::where('name', config('voyager.bread.default_menu'))->firstOrFail();

            $menuItem = MenuItem::firstOrNew([
                'menu_id' => $menu->id,
                'title' => 'Usertokens',
                'url' => '',
                'route' => 'voyager.usertokens.index',
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