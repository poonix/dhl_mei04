<?php


Route::get('/dms/{id}/barcode', 'Dms\DockController@barcode');
 
Route::get('/dms/login', 'Login\LoginController@show');
Route::post('/dms/login', 'Login\LoginController@login');
Route::get('/dms/logout', 'Login\LoginController@logout');

Route::get('/cms/login', 'Login\LoginController@showcms');
Route::post('/cms/login', 'Login\LoginController@logincms');
Route::get('/cms/logout', 'Login\LoginController@logoutcms');

Route::get('/', 'Dms\DockController@show');
Route::get('/cms/dashboard', 'Cms\Dashboard_cmsController@show');

Route::get('/dms/dashboard', 'Dms\DockController@show');

Route::get('/dms/input', 'Dms\DockController@input');
Route::post('/dms/input_id', 'Dms\DockController@input_id');
Route::get('/dms/all_list', 'Dms\DockController@all_list');

Route::post('/dms/input', 'Dms\DockController@insert');
Route::delete('/dms/{id}/delete', 'Dms\DockController@delete');
Route::get('/dms/{id}/edit','Dms\DockController@edit');
Route::put('/dms/{id}/edit','Dms\DockController@update');

Route::get('/test/{id}', 'Dms\DockController@sms_gateway');
Route::get('/test', 'Dms\DockController@all_list_json');
Route::get('/dms/autofill/{id}', 'Dms\DockController@autofill');
Route::get('/if_notif', 'Dms\DockController@if_notif');
Route::get('/reminder', 'Dms\DockController@reminder_sms');
Route::get('/sms', 'Dms\DockController@testapi');
Route::post('/report', 'Dms\DockController@export');
Route::get('/report', 'Dms\DockController@export');
Route::get('/dashboard_json', 'Dms\DockController@dashboard_json');
Route::get('/fcm/{id_user}/{id_fcm}', 'Dms\NotificationController@fcm_notif');
Route::get('/testcreate', 'Dms\DockController@testcreate');

Route::get('/tprint', 'Dms\DockController@test_print');
// ---------------------------------------------------AUTOCOMPLETE
Route::get('/plat_no', 'Dms\DockController@plat_no');
Route::get('/driver_phone', 'Dms\DockController@driver_phone');
Route::get('/asal', 'Dms\DockController@asal');
Route::get('/tujuan', 'Dms\DockController@tujuan');
Route::get('/driver_name', 'Dms\DockController@driver_name');
Route::get('/transporter_company', 'Dms\DockController@transporter_company');
// ---------------------------------------------------END

Route::delete('cms/master_plat/{id}/delete','Cms\Master_platController@delete');




// memanggil blog index
Route::get('/blog', 'BlogController@index');

// memanggil blog single
Route::get('/blog/{id}', 'BlogController@show');
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');


// plat ==============================================================
Route::get('/cms/master_plat', 'Cms\Master_platController@showcms');
Route::get('/cms/master_plat/input', 'Cms\Master_platController@input');
Route::get('cms/master_plat/{id}/edit','Cms\Master_platController@edit');
// call
Route::post('/cms/master_plat/input','Cms\Master_platController@insert'); 
Route::put('/cms/master_plat/{id}/edit','Cms\Master_platController@update'); 
Route::delete('cms/master_plat/{id}/delete','Cms\Master_platController@delete');

// location ==============================================================
Route::get('/cms/master_location', 'Cms\Master_locationController@showcms');
Route::get('/cms/master_location/input', 'Cms\Master_locationController@input');
Route::get('cms/master_location/{id}/edit','Cms\Master_locationController@edit');
// call
Route::post('/cms/master_location/input','Cms\Master_locationController@insert'); 
Route::put('/cms/master_location/{id}/edit','Cms\Master_locationController@update'); 
Route::delete('cms/master_location/{id}/delete','Cms\Master_locationController@delete');

// asal ==============================================================
Route::get('/cms/master_asal', 'Cms\Master_asalController@showcms');
Route::get('/cms/master_asal/input', 'Cms\Master_asalController@input');
Route::get('cms/master_asal/{id}/edit','Cms\Master_asalController@edit');
// call
Route::post('/cms/master_asal/input','Cms\Master_asalController@insert'); 
Route::put('/cms/master_asal/{id}/edit','Cms\Master_asalController@update'); 
Route::delete('cms/master_asal/{id}/delete','Cms\Master_asalController@delete');

// tujuan ==============================================================
Route::get('/cms/master_tujuan', 'Cms\Master_tujuanController@showcms');
Route::get('/cms/master_tujuan/input', 'Cms\Master_tujuanController@input');
Route::get('cms/master_tujuan/{id}/edit','Cms\Master_tujuanController@edit');
// call
Route::post('/cms/master_tujuan/input','Cms\Master_tujuanController@insert'); 
Route::put('/cms/master_tujuan/{id}/edit','Cms\Master_tujuanController@update'); 
Route::delete('cms/master_tujuan/{id}/delete','Cms\Master_tujuanController@delete');

// nama ==============================================================
Route::get('/cms/master_nama', 'Cms\Master_namaController@showcms');
Route::get('/cms/master_nama/input', 'Cms\Master_namaController@input');
Route::get('cms/master_nama/{id}/edit','Cms\Master_namaController@edit');
// call
Route::post('/cms/master_nama/input','Cms\Master_namaController@insert'); 
Route::put('/cms/master_nama/{id}/edit','Cms\Master_namaController@update'); 
Route::delete('cms/master_nama/{id}/delete','Cms\Master_namaController@delete');


// phone ==============================================================
Route::get('/cms/master_phone', 'Cms\Master_phoneController@showcms');
Route::get('/cms/master_phone/input', 'Cms\Master_phoneController@input');
Route::get('cms/master_phone/{id}/edit','Cms\Master_phoneController@edit');
// call
Route::post('/cms/master_phone/input','Cms\Master_phoneController@insert'); 
Route::put('/cms/master_phone/{id}/edit','Cms\Master_phoneController@update'); 
Route::delete('cms/master_phone/{id}/delete','Cms\Master_phoneController@delete');

// Status ==============================================================
Route::get('/cms/master_status', 'Cms\Master_statusController@showcms');
Route::get('/cms/master_status/input', 'Cms\Master_statusController@input');
Route::get('cms/master_status/{id}/edit','Cms\Master_statusController@edit');
// call
Route::post('/cms/master_status/input','Cms\Master_statusController@insert'); 
Route::put('/cms/master_status/{id}/edit','Cms\Master_statusController@update'); 
Route::delete('cms/master_status/{id}/delete','Cms\Master_statusController@delete');

// project ==============================================================
Route::get('/cms/master_project', 'Cms\Master_projectController@showcms');
Route::get('/cms/master_project/input', 'Cms\Master_projectController@input');
Route::get('cms/master_project/{id}/edit','Cms\Master_projectController@edit');
// call
Route::post('/cms/master_project/input','Cms\Master_projectController@insert'); 
Route::put('/cms/master_project/{id}/edit','Cms\Master_projectController@update'); 
Route::delete('cms/master_project/{id}/delete','Cms\Master_projectController@delete');

// tc ==============================================================
Route::get('/cms/master_tc', 'Cms\Master_tcController@showcms');
Route::get('/cms/master_tc/input', 'Cms\Master_tcController@input');
Route::get('cms/master_tc/{id}/edit','Cms\Master_tcController@edit');
// call
Route::post('/cms/master_tc/input','Cms\Master_tcController@insert'); 
Route::put('/cms/master_tc/{id}/edit','Cms\Master_tcController@update'); 
Route::delete('cms/master_tc/{id}/delete','Cms\Master_tcController@delete');

// vehicle ==============================================================
Route::get('/cms/master_vehicle', 'Cms\Master_vehicleController@showcms');
Route::get('/cms/master_vehicle/input', 'Cms\Master_vehicleController@input');
Route::get('cms/master_vehicle/{id}/edit','Cms\Master_vehicleController@edit');
// call
Route::post('/cms/master_vehicle/input','Cms\Master_vehicleController@insert'); 
Route::put('/cms/master_vehicle/{id}/edit','Cms\Master_vehicleController@update'); 
Route::delete('cms/master_vehicle/{id}/delete','Cms\Master_vehicleController@delete');

// user_group ==============================================================
Route::get('/cms/user_management', 'Cms\User_managementController@showcms');
Route::get('/cms/user_management/input', 'Cms\User_managementController@input');
Route::get('cms/user_management/{id}/edit','Cms\User_managementController@edit');
// call
Route::post('/cms/user_management/input','Cms\User_managementController@insert'); 
Route::put('/cms/user_management/{id}/edit','Cms\User_managementController@update'); 
Route::delete('cms/user_management/{id}/delete','Cms\User_managementController@delete');

// user_group_management ==============================================================
Route::get('/cms/user_group', 'Cms\User_groupController@showcms');
Route::get('/cms/user_group/input', 'Cms\User_groupController@input');
Route::get('cms/user_group/{id}/edit','Cms\User_groupController@edit');
// call
Route::post('/cms/user_group/input','Cms\User_groupController@insert'); 
Route::put('/cms/user_group/{id}/edit','Cms\User_groupController@update'); 
Route::delete('cms/user_group/{id}/delete','Cms\User_groupController@delete'); 

