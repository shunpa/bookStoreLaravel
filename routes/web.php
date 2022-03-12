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

// Route::get('/', function () {
//     return view('welcome');
// });


Route::get('/', 'BookController@index');
Route::get('/books', 'BookController@index');

Route::get('/books/add', 'BookController@add');
Route::post('/books/add', 'BookController@create');
Route::get('/books/delete/{id}', 'BookController@delete');
Route::get('/books/edit/{id}', 'BookController@edit');
Route::patch('/books/edit/{id}', 'BookController@update');