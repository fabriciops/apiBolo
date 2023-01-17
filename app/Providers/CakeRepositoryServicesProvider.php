<?php

namespace App\Providers;

use App\Repository\CakeRep;
use App\Repository\CakeRepository;
use Illuminate\Support\ServiceProvider;

class CakeRepositoryServicesProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        $this->app->bind(CakeRepository::class, CakeRep::class);
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }
}
