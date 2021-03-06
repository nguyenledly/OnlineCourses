<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class MailSendCode extends Mailable
{
    use Queueable, SerializesModels;
    public $code_object_array;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($code_object_array)
    {
        $this->code_object_array = $code_object_array;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->view('email.code2');
        // return $this->view('layouts.app');
    }
}
