<?php

namespace App\Providers;

use App\Models\Cake;
use App\Observers\CakeObserver;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Cake::observe(CakeObserver::class);

    }
}
