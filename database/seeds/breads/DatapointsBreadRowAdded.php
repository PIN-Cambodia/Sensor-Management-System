<?php

use Illuminate\Database\Seeder;
use TCG\Voyager\Models\DataType;

class DatapointsBreadRowAdded extends Seeder
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

            $dataType = DataType::where('name', 'datapoints')->first();

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
                    'field' => 'datapoint_belongsto_sensor_relationship',
                    'type' => 'relationship',
                    'display_name' => 'Sensor',
                    'required' => 0,
                    'browse' => 1,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 1,
                    'details' => '{"model":"App\\\\Sensor","table":"sensors","type":"belongsTo","column":"sensor_id","key":"id","label":"external_id","pivot_table":"categories","pivot":"0","taggable":"0"}',
                    'order' => 2,
                ],
                2 => 
                [
                    'data_type_id' => $dataType->id,
                    'field' => 'datapoint_belongsto_location_relationship',
                    'type' => 'relationship',
                    'display_name' => 'Location',
                    'required' => 0,
                    'browse' => 1,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 1,
                    'details' => '{"model":"App\\\\Location","table":"locations","type":"belongsTo","column":"location_id","key":"id","label":"name","pivot_table":"categories","pivot":"0","taggable":"0"}',
                    'order' => 3,
                ],
                3 => 
                [
                    'data_type_id' => $dataType->id,
                    'field' => 'data',
                    'type' => 'text',
                    'display_name' => 'Data',
                    'required' => 1,
                    'browse' => 0,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 0,
                    'details' => '{"placeholder":""}',
                    'order' => 4,
                ],
                4 => 
                [
                    'data_type_id' => $dataType->id,
                    'field' => 'created_at',
                    'type' => 'timestamp',
                    'display_name' => 'Created At',
                    'required' => 0,
                    'browse' => 1,
                    'read' => 1,
                    'edit' => 0,
                    'add' => 0,
                    'delete' => 0,
                    'details' => '{"placeholder":""}',
                    'order' => 5,
                ],
                5 => 
                [
                    'data_type_id' => $dataType->id,
                    'field' => 'sensor_height',
                    'type' => 'text',
                    'display_name' => 'Sensor Height',
                    'required' => 1,
                    'browse' => 1,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 1,
                    'details' => '{"placeholder":""}',
                    'order' => 5,
                ],
                6 => 
                [
                    'data_type_id' => $dataType->id,
                    'field' => 'sensor_id',
                    'type' => 'text',
                    'display_name' => 'Sensor Id',
                    'required' => 1,
                    'browse' => 1,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 1,
                'details' => '{"validation":{"rule":["required"],"messages":{"required":"The sensor field is required."}}}',
                    'order' => 6,
                ],
                7 => 
                [
                    'data_type_id' => $dataType->id,
                    'field' => 'distance_report',
                    'type' => 'text',
                    'display_name' => 'Distance Report',
                    'required' => 1,
                    'browse' => 1,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 1,
                    'details' => '{"placeholder":""}',
                    'order' => 6,
                ],
                8 => 
                [
                    'data_type_id' => $dataType->id,
                    'field' => 'location_id',
                    'type' => 'text',
                    'display_name' => 'Location Id',
                    'required' => 1,
                    'browse' => 1,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 1,
                'details' => '{"validation":{"rule":["required"],"messages":{"required":"The location field is required."}}}',
                    'order' => 7,
                ],
                9 => 
                [
                    'data_type_id' => $dataType->id,
                    'field' => 'water_height',
                    'type' => 'text',
                    'display_name' => 'Water Height',
                    'required' => 1,
                    'browse' => 1,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 1,
                    'details' => '{"placeholder":""}',
                    'order' => 7,
                ],
                10 => 
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
                11 => 
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
                    'order' => 10,
                ],
            ]);
        } catch(Exception $e) {
            throw new Exception('exception occur ' . $e);

            \DB::rollBack();
        }

        \DB::commit();
    }
}
