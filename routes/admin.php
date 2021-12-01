<?php

//Route::get('/home', function () {
//    $users[] = Auth::user();
//    $users[] = Auth::guard()->user();
//    $users[] = Auth::guard('admin')->user();
//
//    //dd($users);
//
//    return view('admin.home');
//})->name('home');
//
Route::get('home','Admin\HomeController@home');
Route::resource('category','Admin\CategoryController');
Route::resource('user','Admin\UserController');
Route::resource('image_upload','Admin\ImageUploadController');
Route::resource('video_upload','Admin\VideoUploadController');
Route::resource('video_category','Admin\VideoCategoryController');
Route::resource('banner_upload','Admin\BannerUploadController');
Route::resource('slider','Admin\SliderUploadController');
Route::resource('business_category','Admin\BusinessCategoryController');
Route::resource('business_category_image_upload','Admin\BusinessCategoryImageUploadController');
Route::resource('business_video_upload','Admin\BusinessVideoUploadController');
Route::resource('festival_video_upload','Admin\FestivalVideoUploadController');
Route::resource('feedback','Admin\FeedbackController');
Route::resource('business','Admin\BusinessController');
Route::resource('greeting_category','Admin\GreetingCategoryController');
Route::resource('greeting_image','Admin\GreetingImageController');
Route::resource('pages','Admin\PagesController');
Route::resource('contactus','Admin\ContactUsController');
Route::resource('plan','Admin\PlanController');

Route::get('profile','Admin\HomeController@profile')->name('profile');
Route::post('profile_post','Admin\HomeController@profile_post')->name('profile_post');
Route::patch('user_update_company','Admin\UserController@user_update_company')->name('user_update_company');
Route::post('add_custom_frame','Admin\UserController@add_custom_frame')->name('add_custom_frame');
Route::get('delete_custom_frame/{id}','Admin\UserController@delete_custom_frame')->name('delete_custom_frame');





