<?php

Route::get('/', 'HomeController@home');
Route::get('/gracias', 'HomeController@gracias');
Route::post('/sendTrack', 'HomeController@storeTrack');
Route::post('/sendData', 'HomeController@store');
// ruta para macro
Route::get('/sendByMacro', 'HomeController@storeByMacro');