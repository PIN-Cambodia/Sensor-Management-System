<?php

use Illuminate\Database\Seeder;
use TCG\Voyager\Models\DataType;

class LocationsBreadRowAdded extends Seeder
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

            $dataType = DataType::where('name', 'locations')->first();

            \DB::table('data_rows')->insert([
                0 => 
                [
                    'data_type_id' => $dataType->id,
                    'field' => 'id',
                    'type' => 'text',
                    'display_name' => 'Id',
                    'required' => 1,
                    'browse' => 0,
                    'read' => 0,
                    'edit' => 0,
                    'add' => 0,
                    'delete' => 0,
                    'details' => '{}',
                    'order' => 1,
                ],
                1 => 
                [
                    'data_type_id' => $dataType->id,
                    'field' => 'name',
                    'type' => 'text',
                    'display_name' => 'Name',
                    'required' => 1,
                    'browse' => 1,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 1,
                    'details' => '{"validation":{"rule":"required|max:50","messages":{"required":"The name field is required.","max":"This  field maximum :max."}},"title":"Hello watch level"}',
                    'order' => 2,
                ],
                2 => 
                [
                    'data_type_id' => $dataType->id,
                    'field' => 'type',
                    'type' => 'select_dropdown',
                    'display_name' => 'Type',
                    'required' => 1,
                    'browse' => 1,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 1,
                'details' => '{"default":"River","options":{"River":"River","Air":"Air","Ground water":"Ground water"},"validation":{"rule":["required"],"messages":{"required":"The User Id field is required."}}}',
                    'order' => 3,
                ],
                3 => 
                [
                    'data_type_id' => $dataType->id,
                    'field' => 'latitude',
                    'type' => 'text',
                    'display_name' => 'Latitude',
                    'required' => 1,
                    'browse' => 1,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 1,
                'details' => '{"validation":{"rule":["numeric"]},"default":0}',
                    'order' => 4,
                ],
                4 => 
                [
                    'data_type_id' => $dataType->id,
                    'field' => 'longitude',
                    'type' => 'text',
                    'display_name' => 'Longitude',
                    'required' => 1,
                    'browse' => 1,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 1,
                'details' => '{"validation":{"rule":["numeric"]}}',
                    'order' => 5,
                ],
                5 => 
                [
                    'data_type_id' => $dataType->id,
                    'field' => 'sensor_id',
                    'type' => 'select_dropdown',
                    'display_name' => 'Sensor Id',
                    'required' => 0,
                    'browse' => 1,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 1,
                'details' => '{"validation":{"rule":["unique:locations,name"],"messages":{"unique":"The sensor has already been taken."}},"relationship":{"key":"id","label":"name","Sensor_slug":"Sensor"},"default":"","null":"","options":{"":"-- None --"}}',
                    'order' => 6,
                ],
                6 => 
                [
                    'data_type_id' => $dataType->id,
                    'field' => 'created_at',
                    'type' => 'timestamp',
                    'display_name' => 'Created At',
                    'required' => 0,
                    'browse' => 0,
                    'read' => 0,
                    'edit' => 0,
                    'add' => 0,
                    'delete' => 0,
                    'details' => '{}',
                    'order' => 7,
                ],
                7 => 
                [
                    'data_type_id' => $dataType->id,
                    'field' => 'updated_at',
                    'type' => 'timestamp',
                    'display_name' => 'Updated At',
                    'required' => 0,
                    'browse' => 0,
                    'read' => 0,
                    'edit' => 0,
                    'add' => 0,
                    'delete' => 0,
                    'details' => '{}',
                    'order' => 8,
                ],
                8 => 
                [
                    'data_type_id' => $dataType->id,
                    'field' => 'deleted_at',
                    'type' => 'timestamp',
                    'display_name' => 'Deleted At',
                    'required' => 0,
                    'browse' => 0,
                    'read' => 0,
                    'edit' => 0,
                    'add' => 0,
                    'delete' => 0,
                    'details' => '{}',
                    'order' => 9,
                ],
                9 => 
                [
                    'data_type_id' => $dataType->id,
                    'field' => 'location_belongsto_sensor_relationship',
                    'type' => 'relationship',
                    'display_name' => 'sensors',
                    'required' => 0,
                    'browse' => 1,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 1,
                    'details' => '{"model":"App\\\\Sensor","table":"sensors","type":"belongsTo","column":"sensor_id","key":"id","label":"external_id","pivot_table":"categories","pivot":"0","taggable":"0"}',
                    'order' => 10,
                ],
                10 => 
                [
                    'data_type_id' => $dataType->id,
                    'field' => 'sensor_height',
                    'type' => 'text',
                    'display_name' => 'Sensor installation height',
                    'required' => 0,
                    'browse' => 0,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 1,
                'details' => '{"validation":{"rule":["numeric"]},"default":0}',
                    'order' => 10,
                ],
                11 => 
                [
                    'data_type_id' => $dataType->id,
                    'field' => 'watch_level',
                    'type' => 'text',
                    'display_name' => 'Watch Level',
                    'required' => 0,
                    'browse' => 0,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 1,
                'details' => '{"validation":{"rule":["numeric"]},"default":0,"title":"Hello watch level"}',
                    'order' => 11,
                ],
                12 => 
                [
                    'data_type_id' => $dataType->id,
                    'field' => 'warning_level',
                    'type' => 'text',
                    'display_name' => 'Warning Level',
                    'required' => 0,
                    'browse' => 0,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 1,
                'details' => '{"validation":{"rule":["numeric"]},"default":0}',
                    'order' => 12,
                ],
                13 => 
                [
                    'data_type_id' => $dataType->id,
                    'field' => 'severe_level',
                    'type' => 'text',
                    'display_name' => 'Severe Warning Level',
                    'required' => 0,
                    'browse' => 0,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 1,
                'details' => '{"validation":{"rule":["numeric"]},"default":0}',
                    'order' => 13,
                ],
                14 => 
                [
                    'data_type_id' => $dataType->id,
                    'field' => 'status',
                    'type' => 'select_dropdown',
                    'display_name' => 'Status',
                    'required' => 1,
                    'browse' => 0,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 1,
                'details' => '{"default":"Test","options":{"Test":"Test","Planed":"Planed","Operational":"Operational"},"validation":{"rule":["required"],"messages":{"required":"The status field is required."}}}',
                    'order' => 14,
                ],
                15 => 
                [
                    'data_type_id' => $dataType->id,
                    'field' => 'comment',
                    'type' => 'text_area',
                    'display_name' => 'Comment',
                    'required' => 0,
                    'browse' => 0,
                    'read' => 0,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 1,
                    'details' => '{}',
                    'order' => 15,
                ],
            ]);
        } catch(Exception $e) {
            throw new Exception('exception occur ' . $e);

            \DB::rollBack();
        }

        \DB::commit();
    }
}
