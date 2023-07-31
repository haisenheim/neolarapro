<?php

use App\Http\Controllers\EmployeeController;
use App\Http\Controllers\HelloController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function (Request $request) {
    //dd($request);
    return view('welcome');
});

Route::get('/hello',[HelloController::class,'index']);
Route::get('/employes',[EmployeeController::class,'showEmployees']);
Route::get('/employes/export', [EmployeeController::class, 'exportPDF']);

Route::prefix('admin')
->namespace('App\Http\Controllers\Admin')
->name('admin.')
->middleware('auth','actif')
->group(function(){
    Route::get('/articles','ArticleController@index');
});

Route::namespace('App\Http\Controllers\Visiteur')
->name('visiteur.')
->group(function(){
    Route::get('/articles','ArticleController@index');
});



Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
