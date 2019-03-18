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
<<<<<<< HEAD
        $this->seed(LocationsBreadTypeAdded::class);
        $this->seed(LocationsBreadRowAdded::class);
        $this->seed(DatapointsBreadTypeAdded::class);
        $this->seed(DatapointsBreadRowAdded::class);
        $this->seed(SensorsBreadTypeAdded::class);
        $this->seed(SensorsBreadRowAdded::class);
=======
        $this->seed(SensorsBreadTypeAdded::class);
        $this->seed(SensorsBreadRowAdded::class);
        $this->seed(DatapointsBreadTypeAdded::class);
        $this->seed(DatapointsBreadRowAdded::class);
        $this->seed(LocationsBreadTypeAdded::class);
        $this->seed(LocationsBreadRowAdded::class);
        $this->seed(UsertokensBreadTypeAdded::class);
        $this->seed(UsertokensBreadRowAdded::class);
>>>>>>> 2d9722f5439ed9ee9d1dadf9f3a9555389811861
    }
}
