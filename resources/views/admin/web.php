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

Route::get('/', 'MainController@index')->name('index');
Route::get('/about', 'MainController@about')->name('about');
Route::get('/contact', 'MainController@contact')->name('contact');
Route::post('/send_message', 'MainController@send')->name('send');
Route::get('/team', 'MainController@team')->name('team');
Route::get('/service/{id}', 'MainController@service')->name('service');
Route::get('/service', 'MainController@serviceMain')->name('serviceMain');
Route::get('/privacy', 'MainController@privacy')->name('privacy');

Auth::routes();

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


     Route::get('LeadHeadline','LeadController@index')->name('leadheadline');
     Route::get('/LeadHeadline/add','LeadController@create')->name('leadheadline.create');
     Route::post('/LeadHeadline/store','LeadController@store')->name('leadheadline.store');
     Route::post('/LeadHeadline/destroy/{id}','LeadController@destroy')->name('banner.destroy');
     Route::get('/LeadHeadline/edit/{id}','LeadController@edit')->name('leadheadline.edit');
     Route::post('/LeadHeadline/update/','LeadController@update')->name('leadheadline.update');


     Route::get('LeadStep','LeadController@indexStep')->name('Leadstep');
     Route::get('/LeadStep/add','LeadController@createStep')->name('Leadstep.create');
     Route::post('/LeadStep/store','LeadController@storeStep')->name('Leadstep.store');
     Route::post('/LeadStep/destroy/{id}','LeadController@destroyStep')->name('Leadstep.destroy');
     Route::get('/LeadStep/edit/{id}','LeadController@editStep')->name('Leadstep.edit');
     Route::post('/LeadStep/update/','LeadController@updateStep')->name('Leadstep.update');

     Route::get('Leadtool','LeadController@indexTool')->name('Leadtool');
     Route::get('/Leadtool/add','LeadController@createTool')->name('Leadtool.create');
     Route::post('/Leadtool/store','LeadController@storeTool')->name('Leadtool.store');
     Route::post('/Leadtool/destroy/{id}','LeadController@destroyTool')->name('Leadtool.destroy');
     Route::get('/Leadtool/edit/{id}','LeadController@editTool')->name('Leadtool.edit');
     Route::post('/Leadtool/update/','LeadController@updateTool')->name('Leadtool.update');

     Route::get('contact','ContactController@index')->name('contact');
     Route::post('/contact/destroy/{id}','ContactController@destroy')->name('contact.destroy');
    

     Route::get('link','SocialController@index')->name('link');
     Route::get('/link/add','SocialController@create')->name('link.create');
     Route::post('/link/store','SocialController@store')->name('link.store');
     Route::post('/link/destroy/{id}','SocialController@destroy')->name('link.destroy');
     Route::get('/link/edit/{id}','SocialController@edit')->name('link.edit');
     Route::post('/link/update/','SocialController@update')->name('link.update');

     Route::get('privacy','PrivacyController@index')->name('privacy');
     Route::get('/privacy/add','PrivacyController@create')->name('privacy.create');
     Route::post('/privacy/store','PrivacyController@store')->name('privacy.store');
     Route::post('/privacy/destroy/{id}','PrivacyController@destroy')->name('privacy.destroy');
     Route::get('/privacy/edit/{id}','PrivacyController@edit')->name('privacy.edit');
     Route::post('/privacy/update/','PrivacyController@update')->name('privacy.update');

     Route::get('address','AddressController@index')->name('address');
     Route::get('/address/add','AddressController@create')->name('address.create');
     Route::post('/address/store','AddressController@store')->name('address.store');
     Route::post('/address/destroy/{id}','AddressController@destroy')->name('address.destroy');
     Route::get('/address/edit/{id}','AddressController@edit')->name('address.edit');
     Route::post('/address/update/','AddressController@update')->name('address.update');

     Route::get('about','AboutController@index')->name('about');
     Route::get('/about/add','AboutController@create')->name('about.create');
     Route::post('/about/store','AboutController@store')->name('about.store');
     Route::post('/about/destroy/{id}','AboutController@destroy')->name('about.destroy');
     Route::get('/about/edit/{id}','AboutController@edit')->name('about.edit');
     Route::post('/about/update/','AboutController@update')->name('about.update');

     Route::get('service','ServiceController@index')->name('service');
     Route::get('/service/add','ServiceController@create')->name('service.create');
     Route::post('/service/store','ServiceController@store')->name('service.store');
     Route::post('/service/destroy/{id}','ServiceController@destroy')->name('service.destroy');
     Route::get('/service/edit/{id}','ServiceController@edit')->name('service.edit');
     Route::post('/service/update/','ServiceController@update')->name('service.update');

     Route::get('whyChooseus','ChooseController@index')->name('whyChooseus');
     Route::get('/whyChooseus/add','ChooseController@create')->name('whyChooseus.create');
     Route::post('/whyChooseus/store','ChooseController@store')->name('whyChooseus.store');
     Route::post('/whyChooseus/destroy/{id}','ChooseController@destroy')->name('whyChooseus.destroy');
     Route::get('/whyChooseus/edit/{id}','ChooseController@edit')->name('whyChooseus.edit');
     Route::post('/whyChooseus/update/','ChooseController@update')->name('whyChooseus.update');


     Route::get('counter','ProtfoliocounterController@index')->name('counter');
     Route::get('/counter/add','ProtfoliocounterController@create')->name('counter.create');
     Route::post('/counter/store','ProtfoliocounterController@store')->name('counter.store');
     Route::post('/counter/destroy/{id}','ProtfoliocounterController@destroy')->name('counter.destroy');
     Route::get('/counter/edit/{id}','ProtfoliocounterController@edit')->name('counter.edit');
     Route::post('/counter/update/','ProtfoliocounterController@update')->name('counter.update');

     Route::get('team','TeamController@index')->name('team');
     Route::get('/team/add','TeamController@create')->name('team.create');
     Route::post('/team/store','TeamController@store')->name('team.store');
     Route::post('/team/destroy/{id}','TeamController@destroy')->name('team.destroy');
     Route::get('/team/edit/{id}','TeamController@edit')->name('team.edit');
     Route::post('/team/update/','TeamController@update')->name('team.update');

     Route::get('client','PartnerController@index')->name('client');
     Route::get('/client/add','PartnerController@create')->name('client.create');
     Route::post('/client/store','PartnerController@store')->name('client.store');
     Route::post('/client/destroy/{id}','PartnerController@destroy')->name('client.destroy');
     Route::get('/client/edit/{id}','PartnerController@edit')->name('client.edit');
     Route::post('/client/update/','PartnerController@update')->name('client.update');

     Route::get('portfolio-category','PortfoliocategoryController@index')->name('portfolio-category');
     Route::get('/portfolio-category/add','PortfoliocategoryController@create')->name('portfolio-category.create');
     Route::get('/portfolio-category/view/{id}','PortfoliocategoryController@view')->name('portfolio-category.view');
     Route::post('/portfolio-category/store','PortfoliocategoryController@store')->name('portfolio-category.store');
     Route::post('/portfolio-category/destroy/{id}','PortfoliocategoryController@destroy')->name('portfolio-category.destroy');
     Route::get('/portfolio-category/edit/{id}','PortfoliocategoryController@edit')->name('portfolio-category.edit');
     Route::post('/portfolio-category/update/','PortfoliocategoryController@update')->name('portfolio-category.update');

     Route::get('portfolio','PortfolioController@index')->name('portfolio');
     Route::get('/portfolio/add','PortfolioController@create')->name('portfolio.create');
     Route::post('/portfolio/store','PortfolioController@store')->name('portfolio.store');
     Route::post('/portfolio/destroy/{id}','PortfolioController@destroy')->name('portfolio.destroy');
     Route::get('/portfolio/edit/{id}','PortfolioController@edit')->name('portfolio.edit');
     Route::post('/portfolio/update/','PortfolioController@update')->name('portfolio.update');

     Route::get('blog','BlogController@index')->name('blog');
     Route::get('/blog/add','BlogController@create')->name('blog.create');
     Route::post('/blog/store','BlogController@store')->name('blog.store');
     Route::post('/blog/destroy/{id}','BlogController@destroy')->name('blog.destroy');
     Route::get('/blog/edit/{id}','BlogController@edit')->name('blog.edit');
     Route::post('/blog/update/','BlogController@update')->name('blog.update');

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