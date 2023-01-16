<?php

namespace App\Jobs;

use App\Models\Cake;
use App\Models\CakeNotification;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldBeUnique;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Mail;


class JobcakeSubscription implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    private $cake;
    private string $email;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($email, $cake)
    {
        $this->cake = $cake;
        $this->email = $email;
        
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        // disparar um email
        CakeNotification::create([
            'email' => $this->email,
            'cake_id' => $this->cake
        ]);
    }
}
