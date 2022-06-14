<?php

use Illuminate\Http\Request;

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

Route::group([],function (){
    Route::get('/menus', 'MenuController@index');
    Route::get('/settings', 'SettingController@index');
    Route::get('/posts','PostController@index');
    Route::get('/links','UsefulLinkController@index');
    Route::get('/banners','BannerController@index');
    Route::get('/widgets','WidgetController@index');
    Route::get('/histories','HistoryController@index');
    Route::get('/stations','StationController@index');

});
//'middleware' => 'auth:api',
Route::group(['prefix'=>'admin','middleware' => 'auth:api','namespace'=>'Admin'],function () {
    Route::resource('menus', 'MenuController');
    Route::resource('childmenus','MenuItemController');
    Route::resource('settings', 'SettingController');
    Route::resource('posts','PostController');
    Route::resource('links','UsefulLinkController');
    Route::resource('languages','LenguageController');
    Route::resource('regions','RegionController');
    Route::resource('banners','BannerController');
    Route::resource('widgets','WidgetController');
    Route::resource('histories','HistoryController');
    Route::resource('stations','StationController');
    Route::post('upload','FileController@upload');
    Route::resource('file','FileController');


});


