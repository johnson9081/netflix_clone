<?php

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
   /* Cache Clear Start*/
		Route::get('/cache', function(){
			Artisan::call('cache:clear');
			Artisan::call('config:clear');
			Artisan::call('route:clear');
			Artisan::call('view:clear');
			 return redirect('/');
		});
	/* Cache Clear End*/  
	Route::get('/','HomeController@index'); 
	Route::get('find_details','HomeController@find_details')->name('find_details');
	Route::get('find/{id}','HomeController@search_record')->name('search_record');
	
	
