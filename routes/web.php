<?php

use Illuminate\Support\Facades\Auth;
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

// Route::get('/', function () {
//     return view('welcome');
// });

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');


Route::get('/','LandingPageController@index')->name('landing-page');
Route::get('/shop','ShopController@index')->name('shop.index');
Route::get('/shop/{product}','ShopController@show')->name('shop.show');
Route::get('/cart','CartController@index')->name('cart.index');
Route::post('/cart/{product}','CartController@store')->name('cart.store');
Route::delete('/cart/{product}','CartController@destroy')->name('cart.destroy');
Route::post('/cart/save/{product}','CartController@save')->name('cart.save');
Route::delete('/saveForLater/{product}','SaveForLaterController@destroy')->name('saveForLater.destroy');
Route::post('/saveForLater/switch/{product}','SaveForLaterController@switch')->name('saveForLater.switchToCart');
Route::view('/checkout','checkout');
Route::view('/thankyou','thankyou');