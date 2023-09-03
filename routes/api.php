<?php

use App\Http\Controllers\Api\AuthController;
use App\Models\Post;
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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::middleware('auth:api')->post('/email', 'App\Http\Controllers\Api\TodoController@sendEmail');



Route::controller(AuthController::class)->group(function () {
    Route::post('login', 'login');
    Route::post('register', 'register');
    Route::post('logout', 'logout');
    Route::post('refresh', 'refresh');

});

Route::get('/hello',function(){
    return response()->json("Bonjour tout le monde");
});

Route::get('/jobs',function(){
    $jobs = Post::all();
    return response()->json($jobs);
});

Route::post('/job',function(){
    $data = request()->all();
    dd($data);
});

Route::get('/staff','App\http\Controllers\Api\HelloController@getEmployees');
