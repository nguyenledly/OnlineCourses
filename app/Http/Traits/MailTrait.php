<?php
namespace App\Http\Traits;

use Illuminate\Support\Facades\Mail;
use App\Mail\MailSendCode;
use App\Mail\MailVerify;
use App\Mail\MailResetPassword;
use App\Mail\MailBankAccount;


trait MailTrait{
    public function SendCode($code, $email)
    {
        // $code = "$code";
        Mail::to($email)->send(new MailSendCode($code));
        // return "Mail Sent!";
    }

    public function Verify($user, $email)
    {
        Mail::to($email)->send(new MailVerify($user));
    }
    public function ResetPassword($newPassword, $email)
    {
        Mail::to($email)->send(new MailResetPassword($newPassword));
    }
    public function BankAccount($GiangVien, $KhoaHoc, $email)
    {
        Mail::to($email)->send(new MailBankAccount($GiangVien, $KhoaHoc));
    }
}