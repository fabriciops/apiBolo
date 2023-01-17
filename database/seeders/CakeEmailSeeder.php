<?php

namespace Database\Seeders;

use App\Models\Cake;
use App\Models\CakeNotification;
use Illuminate\Database\Seeder;

class CakeEmailSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\CakeNotification::factory(20)->create();

    }
}
