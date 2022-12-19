<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

//Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//    return $request->user();
//});


//__Login Routes
Route::post('/login','App\Http\Controllers\AuthController@login');

//__Register
Route::post('/register','App\Http\Controllers\AuthController@register');

//__Forgot Pass
Route::post('/forgotpassword','App\Http\Controllers\ForgotController@forgotPassword');

//__Reset Pass
Route::post('/resetpassword','App\Http\Controllers\ForgotController@resetPassword');

//__Current User
Route::get('/user','App\Http\Controllers\UserController@user')->middleware('auth:api');

//__Person Route___
Route::get('/person','App\Http\Controllers\PersonController@index');
Route::post('/Insert','App\Http\Controllers\PersonController@store');
Route::post('/update/{id}','App\Http\Controllers\PersonController@update');
Route::get('/delete/{id}','App\Http\Controllers\PersonController@destroy');
