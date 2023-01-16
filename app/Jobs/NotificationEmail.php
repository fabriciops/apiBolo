<?php

namespace App\Jobs;

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
    public function __construct($email, $cake)
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
        $data = [
            'email' => $this->email,
            'cake' => $this->cake
        ];

        Mail::send('emails.cakeNotification', ['data' => $data], function($message) {
            $message->to('fabriciopps19@gmail.com', 'teste')->subject
                ('CheckList');
            $message->from('CheckList.com','Eu mesmo');
        });
    }
}
