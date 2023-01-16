<?php

namespace App\Listeners;

use App\Events\CakeEvents;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use App\Models\CakeNotification;
use Illuminate\Support\Facades\Log;


class CakeListen
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  \App\Events\CakeEvents  $event
     * @return void
     */
    public function handle(CakeEvents $event)
    {
        $cakeEvents = $event->cake;
        $notification = CakeNotification::find($cakeEvents->id);
        $notification->email = 'teste';
        $notification->save();
        Log::info(json_decode($notification));
        //criar job para disparo de email

    }
}
