<?php

use Illuminate\Database\Seeder;
use TCG\Voyager\Models\DataType;

class SensorsBreadRowAdded extends Seeder
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

            $dataType = DataType::where('name', 'sensors')->first();

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
                    'field' => 'external_id',
                    'type' => 'text',
                    'display_name' => 'External Id',
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
                    'field' => 'parameters',
                    'type' => 'text',
                    'display_name' => 'Parameters',
                    'required' => 1,
                    'browse' => 1,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 1,
                    'details' => '{"placeholder":"","default":"abd","display":"testing","name":"testing"}',
                    'order' => 4,
                ],
                4 => 
                [
                    'data_type_id' => $dataType->id,
                    'field' => 'firmware_version',
                    'type' => 'text',
                    'display_name' => 'Firmware Version',
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
                    'field' => 'hardware_version',
                    'type' => 'text',
                    'display_name' => 'Hardware Version',
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
                    'field' => 'hardware_des',
                    'type' => 'text',
                    'display_name' => 'Hardware Des',
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
                    'field' => 'last_boot',
                    'type' => 'timestamp',
                    'display_name' => 'Last Boot',
                    'required' => 0,
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
                    'order' => 9,
                ],
                9 => 
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
                    'order' => 10,
                ],
                10 => 
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
                    'order' => 11,
                ],
            ]);
        } catch(Exception $e) {
            throw new Exception('exception occur ' . $e);

            \DB::rollBack();
        }

        \DB::commit();
    }
}
