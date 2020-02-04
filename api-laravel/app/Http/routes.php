<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function () {
    return view('welcome');
});


Route::group(['middleware' => ['cors']], function () {
    Route::post('/api/register', 'UserController@register');
    Route::post('/api/login', 'UserController@login');
    Route::resource('/api/cars', 'CarController');
    Route::resource('/api/servicios', 'ServicioController');
});




// Cache
Route::get('/clear-cache', function(){
	$code = Artisan::call('cache:clear');
});
