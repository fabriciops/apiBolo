<?php

namespace App\Jobs;

use App\Models\Cake;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldBeUnique;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Mail;

class NotificationEmail implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    protected $email, $cake;


    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($email,Cake $cake)
    {
        $this->email = $email;
        $this->cake = $cake;
        
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        Mail::send('emails.cakeNotification', ['data' => $this->cake], function($message) {
            $message->from('fabriciopps19@gmail.com','Eu mesmo');
            $message->to($this->email, 'teste')->subject
                ('CheckList');
        });
    }
}
