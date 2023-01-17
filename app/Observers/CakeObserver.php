<?php

namespace App\Observers;

use App\Jobs\NotificationEmail;
use App\Models\Cake;
use App\Models\CakeNotification;
use Illuminate\Support\Facades\Log;


class CakeObserver
{
    /**
     * Handle the Cake "created" event.
     *
     * @param  \App\Models\Cake  $cake
     * @return void
     */
    public function created(Cake $cake)
    {
        
    }

    /**
     * Handle the Cake "updated" event.
     *
     * @param  \App\Models\Cake  $cake
     * @return void
     */
    public function updated(Cake $cake)
    {
        // foreach ($this->emails as $key) {
        //     NotificationEmail::dispatch($key['email'], $cake);
        // }
        
    }

    /**
     * Handle the Cake "deleted" event.
     *
     * @param  \App\Models\Cake  $cake
     * @return void
     */
    public function deleted(Cake $cake)
    {
        //
    }

    /**
     * Handle the Cake "restored" event.
     *
     * @param  \App\Models\Cake  $cake
     * @return void
     */
    public function restored(Cake $cake)
    {
        //
    }

    /**
     * Handle the Cake "force deleted" event.
     *
     * @param  \App\Models\Cake  $cake
     * @return void
     */
    public function forceDeleted(Cake $cake)
    {
        //
    }
}
