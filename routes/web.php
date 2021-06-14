<?php

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

Route::get('/clear', function() {
    \Illuminate\Support\Facades\Artisan::call('cache:clear');
    \Illuminate\Support\Facades\Artisan::call('config:clear');
    \Illuminate\Support\Facades\Artisan::call('config:cache');
    \Illuminate\Support\Facades\Artisan::call('view:clear');
    \Illuminate\Support\Facades\Artisan::call('route:clear');
    return 'Cleared!';
});

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/', 'FrontController@index')->name('front_home');

Route::get('/home', 'HomeController@index')->name('home');

Route::group(['as'=>'admin.','prefix'=>'admin','namespace'=>'Admin','middleware'=>['auth','admin']], function (){


    Route::get('logo','LogoController@index')->name('logo');
     Route::get('/logo/add','LogoController@create')->name('logo.create');
     Route::post('/logo/store','LogoController@store')->name('logo.store');
     Route::post('/logo/destroy/{id}','LogoController@destroy')->name('logo.destroy');
     Route::get('/logo/edit/{id}','LogoController@edit')->name('logo.edit');
     Route::post('/logo/update/','LogoController@update')->name('logo.update');


     Route::get('banner','BannerController@index')->name('banner');
     Route::get('/banner/add','BannerController@create')->name('banner.create');
     Route::post('/banner/store','BannerController@store')->name('banner.store');
     Route::post('/banner/destroy/{id}','BannerController@destroy')->name('banner.destroy');
     Route::get('/banner/edit/{id}','BannerController@edit')->name('banner.edit');
     Route::post('/banner/update/','BannerController@update')->name('banner.update');

     Route::get('about','AboutController@index')->name('about');
     Route::get('/about/add','AboutController@create')->name('about.create');
     Route::post('/about/store','AboutController@store')->name('about.store');
     Route::post('/about/destroy/{id}','AboutController@destroy')->name('about.destroy');
     Route::get('/about/edit/{id}','AboutController@edit')->name('about.edit');
     Route::post('/about/update/','AboutController@update')->name('about.update');

     Route::get('gallery','GalleryController@index')->name('gallery');
     Route::get('/gallery/add','GalleryController@create')->name('gallery.create');
     Route::post('/gallery/store','GalleryController@store')->name('gallery.store');
     Route::post('/gallery/destroy/{id}','GalleryController@destroy')->name('gallery.destroy');
     Route::get('/gallery/edit/{id}','GalleryController@edit')->name('gallery.edit');
     Route::post('/gallery/update/','GalleryController@update')->name('gallery.update');

     Route::get('event','EventController@index')->name('event');
     Route::get('/event/add','EventController@create')->name('event.create');
     Route::post('/event/store','EventController@store')->name('event.store');
     Route::post('/event/destroy/{id}','EventController@destroy')->name('event.destroy');
     Route::get('/event/edit/{id}','EventController@edit')->name('event.edit');
     Route::post('/event/update/','EventController@update')->name('event.update');

     Route::get('sponsor','SponsorController@index')->name('sponsor');
     Route::get('/sponsor/add','SponsorController@create')->name('sponsor.create');
     Route::post('/sponsor/store','SponsorController@store')->name('sponsor.store');
     Route::post('/sponsor/destroy/{id}','SponsorController@destroy')->name('sponsor.destroy');
     Route::get('/sponsor/edit/{id}','SponsorController@edit')->name('sponsor.edit');
     Route::post('/sponsor/update/','SponsorController@update')->name('sponsor.update');

    Route::get('contact','ContactController@index')->name('contact');
     Route::get('/contact/add','ContactController@create')->name('contact.create');
     Route::post('/contact/store','ContactController@store')->name('contact.store');
     Route::post('/contact/destroy/{id}','ContactController@destroy')->name('contact.destroy');
     Route::get('/contact/edit/{id}','ContactController@edit')->name('contact.edit');
     Route::post('/contact/update/','ContactController@update')->name('contact.update');

     Route::get('footer','FooterController@index')->name('footer');
     Route::get('/footer/add','FooterController@create')->name('footer.create');
     Route::post('/footer/store','FooterController@store')->name('footer.store');
     Route::post('/footer/destroy/{id}','FooterController@destroy')->name('footer.destroy');
     Route::get('/footer/edit/{id}','FooterController@edit')->name('footer.edit');
     Route::post('/footer/update/','FooterController@update')->name('footer.update');

	Route::get('dashboard','DashboardController@index')->name('dashboard');
    Route::get('settings','SettingController@index')->name('settings');
    Route::put('profile-update/{id}','SettingController@updateProfile')->name('profile.update');
    Route::put('password-update','SettingController@updatePassword')->name('password.update');

	 });

    Route::group(['as'=>'user.','prefix'=>'user','namespace'=>'User','middleware'=>['auth','user']], function (){

	Route::get('dashboard','DashboardController@index')->name('dashboard');
    Route::get('settings','SettingController@index')->name('settings');
    Route::put('profile-update/{id}','SettingController@updateProfile')->name('profile.update');
    Route::put('password-update','SettingController@updatePassword')->name('password.update');

	 });

Route::group(['as'=>'agent.','prefix'=>'agent','namespace'=>'Agent','middleware'=>['auth','agent']], function (){

	Route::get('dashboard','DashboardController@index')->name('dashboard');
    Route::get('settings','SettingController@index')->name('settings');
    Route::put('profile-update/{id}','SettingController@updateProfile')->name('profile.update');
    Route::put('password-update','SettingController@updatePassword')->name('password.update');

	 });

Route::group(['as'=>'merchant.','prefix'=>'merchant','namespace'=>'Merchant','middleware'=>['auth','merchant']], function (){

	Route::get('dashboard','DashboardController@index')->name('dashboard');
    Route::get('settings','SettingController@index')->name('settings');
    Route::put('profile-update/{id}','SettingController@updateProfile')->name('profile.update');
    Route::put('password-update','SettingController@updatePassword')->name('password.update');

	 });

Route::group(['as'=>'vip.','prefix'=>'vip','namespace'=>'Vip','middleware'=>['auth','vip']], function (){

	Route::get('dashboard','DashboardController@index')->name('dashboard');
    Route::get('settings','SettingController@index')->name('settings');
    Route::put('profile-update/{id}','SettingController@updateProfile')->name('profile.update');
    Route::put('password-update','SettingController@updatePassword')->name('password.update');

	 });