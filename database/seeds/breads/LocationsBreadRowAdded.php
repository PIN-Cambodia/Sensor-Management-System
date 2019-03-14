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
                    'details' => '{}',
                    'order' => 2,
                ],
                2 => 
                [
                    'data_type_id' => $dataType->id,
                    'field' => 'type',
                    'type' => 'text',
                    'display_name' => 'Type',
                    'required' => 1,
                    'browse' => 1,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 1,
                    'details' => '{}',
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
                    'details' => '{}',
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
                    'details' => '{}',
                    'order' => 5,
                ],
                5 => 
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
                    'details' => '{}',
                    'order' => 6,
                ],
                6 => 
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
                    'details' => '{}',
                    'order' => 7,
                ],
                7 => 
                [
                    'data_type_id' => $dataType->id,
                    'field' => 'watch_level',
                    'type' => 'text',
                    'display_name' => 'Watch Level',
                    'required' => 1,
                    'browse' => 1,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 1,
                    'details' => '{}',
                    'order' => 8,
                ],
                8 => 
                [
                    'data_type_id' => $dataType->id,
                    'field' => 'warning_level',
                    'type' => 'text',
                    'display_name' => 'Warning Level',
                    'required' => 1,
                    'browse' => 1,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 1,
                    'details' => '{}',
                    'order' => 9,
                ],
                9 => 
                [
                    'data_type_id' => $dataType->id,
                    'field' => 'severe_level',
                    'type' => 'text',
                    'display_name' => 'Severe Level',
                    'required' => 1,
                    'browse' => 1,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 1,
                    'details' => '{}',
                    'order' => 10,
                ],
                10 => 
                [
                    'data_type_id' => $dataType->id,
                    'field' => 'status',
                    'type' => 'text',
                    'display_name' => 'Status',
                    'required' => 1,
                    'browse' => 1,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 1,
                    'details' => '{}',
                    'order' => 11,
                ],
                11 => 
                [
                    'data_type_id' => $dataType->id,
                    'field' => 'created_at',
                    'type' => 'timestamp',
                    'display_name' => 'Created At',
                    'required' => 0,
                    'browse' => 1,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 0,
                    'delete' => 1,
                    'details' => '{}',
                    'order' => 12,
                ],
                12 => 
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
                    'order' => 13,
                ],
                13 => 
                [
                    'data_type_id' => $dataType->id,
                    'field' => 'deleted_at',
                    'type' => 'timestamp',
                    'display_name' => 'Deleted At',
                    'required' => 0,
                    'browse' => 1,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 1,
                    'details' => '{}',
                    'order' => 14,
                ],
            ]);
        } catch(Exception $e) {
            throw new Exception('exception occur ' . $e);

            \DB::rollBack();
        }

        \DB::commit();
    }
}
