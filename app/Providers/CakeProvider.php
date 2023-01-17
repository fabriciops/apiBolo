<?php

namespace App\Providers;

use App\Events\CakeEvents;
use App\Listeners\CakeListen;
use App\Models\Cake;

use Illuminate\Support\ServiceProvider;

class CakeProvider extends ServiceProvider
{
    protected $listen=[
            CakeEvents::class => [
                CakeListen::class
            ]
        ];

}
