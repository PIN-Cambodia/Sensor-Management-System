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
<<<<<<< HEAD
                    'type' => 'text',
=======
                    'type' => 'hidden',
>>>>>>> 2d9722f5439ed9ee9d1dadf9f3a9555389811861
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
<<<<<<< HEAD
                    'required' => 1,
=======
                    'required' => 0,
>>>>>>> 2d9722f5439ed9ee9d1dadf9f3a9555389811861
                    'browse' => 1,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 1,
<<<<<<< HEAD
                    'details' => '{}',
=======
                'details' => '{"validation":{"rule":["required","unique:usertokens"],"messages":{"required":"The external id field is required.","unique":"The external id has already been taken."}}}',
>>>>>>> 2d9722f5439ed9ee9d1dadf9f3a9555389811861
                    'order' => 2,
                ],
                2 => 
                [
                    'data_type_id' => $dataType->id,
                    'field' => 'type',
<<<<<<< HEAD
                    'type' => 'text',
                    'display_name' => 'Type',
                    'required' => 1,
=======
                    'type' => 'select_dropdown',
                    'display_name' => 'Type',
                    'required' => 0,
>>>>>>> 2d9722f5439ed9ee9d1dadf9f3a9555389811861
                    'browse' => 1,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 1,
<<<<<<< HEAD
                    'details' => '{}',
=======
                'details' => '{"default":"Water","options":{"Water":"Water","Air":"Air","Ground water":"Ground water"},"validation":{"rule":["required"],"messages":{"required":"The external id field is required."}}}',
>>>>>>> 2d9722f5439ed9ee9d1dadf9f3a9555389811861
                    'order' => 3,
                ],
                3 => 
                [
                    'data_type_id' => $dataType->id,
                    'field' => 'parameters',
                    'type' => 'text',
                    'display_name' => 'Parameters',
<<<<<<< HEAD
                    'required' => 1,
                    'browse' => 1,
=======
                    'required' => 0,
                    'browse' => 0,
>>>>>>> 2d9722f5439ed9ee9d1dadf9f3a9555389811861
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 1,
<<<<<<< HEAD
                    'details' => '{"placeholder":"","default":"abd","cursor":"testing"}',
=======
                    'details' => '{}',
>>>>>>> 2d9722f5439ed9ee9d1dadf9f3a9555389811861
                    'order' => 4,
                ],
                4 => 
                [
                    'data_type_id' => $dataType->id,
<<<<<<< HEAD
                    'field' => 'firmware_version',
                    'type' => 'text',
                    'display_name' => 'Firmware Version',
                    'required' => 1,
                    'browse' => 1,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 1,
=======
                    'field' => 'created_at',
                    'type' => 'timestamp',
                    'display_name' => 'Created At',
                    'required' => 0,
                    'browse' => 1,
                    'read' => 1,
                    'edit' => 0,
                    'add' => 0,
                    'delete' => 0,
>>>>>>> 2d9722f5439ed9ee9d1dadf9f3a9555389811861
                    'details' => '{}',
                    'order' => 5,
                ],
                5 => 
                [
                    'data_type_id' => $dataType->id,
<<<<<<< HEAD
                    'field' => 'hardware_version',
                    'type' => 'text',
                    'display_name' => 'Hardware Version',
                    'required' => 1,
                    'browse' => 1,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 1,
=======
                    'field' => 'updated_at',
                    'type' => 'timestamp',
                    'display_name' => 'Updated At',
                    'required' => 0,
                    'browse' => 0,
                    'read' => 1,
                    'edit' => 0,
                    'add' => 0,
                    'delete' => 0,
>>>>>>> 2d9722f5439ed9ee9d1dadf9f3a9555389811861
                    'details' => '{}',
                    'order' => 6,
                ],
                6 => 
                [
                    'data_type_id' => $dataType->id,
<<<<<<< HEAD
                    'field' => 'hardware_des',
                    'type' => 'text',
                    'display_name' => 'Hardware Des',
                    'required' => 1,
                    'browse' => 1,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 1,
=======
                    'field' => 'deleted_at',
                    'type' => 'timestamp',
                    'display_name' => 'Deleted At',
                    'required' => 0,
                    'browse' => 0,
                    'read' => 0,
                    'edit' => 0,
                    'add' => 0,
                    'delete' => 0,
>>>>>>> 2d9722f5439ed9ee9d1dadf9f3a9555389811861
                    'details' => '{}',
                    'order' => 7,
                ],
                7 => 
                [
                    'data_type_id' => $dataType->id,
<<<<<<< HEAD
                    'field' => 'last_boot',
                    'type' => 'timestamp',
                    'display_name' => 'Last Boot',
                    'required' => 0,
                    'browse' => 1,
=======
                    'field' => 'sim_card',
                    'type' => 'text',
                    'display_name' => 'Sim Card',
                    'required' => 0,
                    'browse' => 0,
>>>>>>> 2d9722f5439ed9ee9d1dadf9f3a9555389811861
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
<<<<<<< HEAD
                    'field' => 'created_at',
                    'type' => 'timestamp',
                    'display_name' => 'Created At',
                    'required' => 0,
                    'browse' => 1,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 0,
=======
                    'field' => 'firmware_version',
                    'type' => 'text',
                    'display_name' => 'Firmware Version',
                    'required' => 0,
                    'browse' => 0,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
>>>>>>> 2d9722f5439ed9ee9d1dadf9f3a9555389811861
                    'delete' => 1,
                    'details' => '{}',
                    'order' => 9,
                ],
                9 => 
                [
                    'data_type_id' => $dataType->id,
<<<<<<< HEAD
                    'field' => 'updated_at',
                    'type' => 'timestamp',
                    'display_name' => 'Updated At',
                    'required' => 0,
                    'browse' => 0,
                    'read' => 0,
                    'edit' => 0,
                    'add' => 0,
                    'delete' => 0,
=======
                    'field' => 'hardware_version',
                    'type' => 'text',
                    'display_name' => 'Hardware Version',
                    'required' => 0,
                    'browse' => 0,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 1,
>>>>>>> 2d9722f5439ed9ee9d1dadf9f3a9555389811861
                    'details' => '{}',
                    'order' => 10,
                ],
                10 => 
                [
                    'data_type_id' => $dataType->id,
<<<<<<< HEAD
                    'field' => 'deleted_at',
                    'type' => 'timestamp',
                    'display_name' => 'Deleted At',
                    'required' => 0,
                    'browse' => 1,
=======
                    'field' => 'hardware_des',
                    'type' => 'text',
                    'display_name' => 'Hardware Des',
                    'required' => 0,
                    'browse' => 0,
>>>>>>> 2d9722f5439ed9ee9d1dadf9f3a9555389811861
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 1,
                    'details' => '{}',
                    'order' => 11,
                ],
<<<<<<< HEAD
=======
                11 => 
                [
                    'data_type_id' => $dataType->id,
                    'field' => 'last_boot',
                    'type' => 'text',
                    'display_name' => 'Last Boot',
                    'required' => 0,
                    'browse' => 0,
                    'read' => 1,
                    'edit' => 0,
                    'add' => 0,
                    'delete' => 0,
                    'details' => '{}',
                    'order' => 12,
                ],
>>>>>>> 2d9722f5439ed9ee9d1dadf9f3a9555389811861
            ]);
        } catch(Exception $e) {
            throw new Exception('exception occur ' . $e);

            \DB::rollBack();
        }

        \DB::commit();
    }
}
