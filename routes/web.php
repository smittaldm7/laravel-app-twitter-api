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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/site/index', 'SiteController@index');

Route::get('/site/search1', 'SiteController@search1');

Route::get('/site/search2', 'SiteController@search2');

Route::post('/site/results1', 'SiteController@results1');

Route::post('/site/results2', 'SiteController@results2');

Route::get('/site/listener', 'SiteController@listener');

Route::get('/site/gettweets', 'SiteController@getTweets');

