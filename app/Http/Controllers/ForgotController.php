<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Models\User;
use Mail;
use App\Mail\ForgotMail;
use Hash;

class ForgotController extends Controller
{
    public function forgotPassword(Request $request)
    {
        $email=$request->email;

        if (User::where('email',$email)->doesntExist()) {
            return response([
                'message'=>'Email Not Found / Invalid'
            ],201);
        }

        //__Generate Random Token
        $token=rand(100,100000);
        DB::table('password_resets')->insert([
            'email'=>$email,
            'token'=>$token
        ]);

        Mail::to($email)->send(new ForgotMail($token)); //Mail Send to User
        return response([
            'message'=>'Reset Password Mail Send On Your E-Mail!'
        ],200);
    }

    public function resetPassword(Request $request)
    {
        $request->validate([
            'token'=>'required',
            'email'=>'required|email',
            'password'=>'required|max:6|confirmed',
        ]);

        $email=$request->email;
        $token=$request->token;
        $password=Hash::make($request->password);

        $emailCheck=DB::table('password_resets')->where('email',$email)->first();
        $pinCheck=DB::table('password_resets')->where('token',$token)->first();

        if (!$emailCheck) {
            return response([
                'message'=> "Email Not Found"
            ],201);
        }
        if (!$pinCheck) {
            return response([
                'message'=> "Pin Invalid"
            ],201);
        }

        DB::table('users')->where('email',$email)->update(['password'=>$password]);
        DB::table('password_resets')->where('email',$email)->delete();

        return response([
            'message'=> "Password Changed Successfully"
        ],200);

    }
}
