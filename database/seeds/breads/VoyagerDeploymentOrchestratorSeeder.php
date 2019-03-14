<?php

use Illuminate\Database\Seeder;
use TCG\Voyager\Traits\Seedable;

class VoyagerDeploymentOrchestratorSeeder extends Seeder
{
    use Seedable;

    protected $seedersPath = 'database/breads/seeds/';

    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $this->seed(LocationsBreadTypeAdded::class);
        $this->seed(LocationsBreadRowAdded::class);
        $this->seed(DatapointsBreadTypeAdded::class);
        $this->seed(DatapointsBreadRowAdded::class);
        $this->seed(SensorsBreadTypeAdded::class);
        $this->seed(SensorsBreadRowAdded::class);
    }
}
