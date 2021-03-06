<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
// use Illuminate\Support\Facades\Mail;
// use App\Mail\MailSendCode;
use App\Http\Traits\MailTrait;
use App\User;
use App\CodeKhoaHoc;

class MailController extends Controller
{
    use MailTrait;
    // public function __construct()
    // {
    //     $this->middleware('auth:api')->only('ResetPasswordEmail');
    //     $this->middleware('VerifyEmail')->only('ResetPasswordEmail');
    // }

    // public function SendCode()
    // {
    //     $code = "abcdef";
    //     Mail::to('nguyenledly1997@gmail.com')->send(new MailSendCode($code));

    //     return "Mail Sent!";
    // }

    public function Code()
    {
        $code = "123abcd";
        $email = "nguyenledly1997@gmail.com";
        $this->SendCode($code,$email);
        return "Mail Sent!";
    }
    public function ResendCode(Request $request)
    {
        $code_id_array = explode(",",$request->Code);
        $code_object_array = [];
        foreach($code_id_array as $code_id)
        {
            $code_object = CodeKhoaHoc::find($code_id);
            $code_object_array[] = $code_object; 
        }
         
        $this->SendCode($code_object_array,$request->Email);
    }
    public function VerifyEmail(User $User)
    {
        if($User->email_verified_at != "")
        {
            // return "Email bạn đã được xác thực."; 
            echo '<html>
            <head>
                <meta http-equiv="refresh" content="5;url=https://www.khoahocdt.com/" />
            </head>
            <body>';
            echo 'Email bạn đã được xác thực <br>';
            echo "Redirecting https://khoahocdt.com/......";
            echo '</body></html>';
        }
        else
        {
            $User->email_verified_at = new \DateTime();
            $User->save();
            // return response()->json([
            //     'data' => "Xác thực email $User->email thành công."
            // ],200);
            echo '<html>
            <head>
                <meta http-equiv="refresh" content="5;url=https://www.khoahocdt.com/" />
            </head>
            <body>';
            echo '<p style="color: #82e070; text-align: center;"><h2> Xác thực email '."$User->email".' thành công.</h2></p>';
            echo "Redirecting https://khoahocdt.com/......";
            echo '</body></html>';
        }
    }
    public function ResendVerifyEmail(User $User)
    {
        $this->Verify($User, $User->email);
    }
    public function ResetPasswordEmail(Request $request)
    {
        request()->validate(
            [
                'email' => 'required|email',
            ],
            []
        );
        $user = User::where('email',$request->email)->first();
        if($user == "")
            return response()->json("Người dùng không tồn tại"); 
        else 
        {
            $newPassword = \str_random(6);
            $user->password = bcrypt($newPassword);
            $user->save();

            $this->ResetPassword($newPassword, $request->email);

            return response()->json([
                'data' => "Email Reset Password Was Sent."
            ],200);
        }
    }
}
