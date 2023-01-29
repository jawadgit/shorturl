<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('/signup', [App\Http\Controllers\UserController::class, 'signup']);
Route::post('/signin', [App\Http\Controllers\UserController::class, 'signin']);
Route::post('/logout', [App\Http\Controllers\UserController::class, 'logout'])->middleware('auth:sanctum');
Route::post('/create', [App\Http\Controllers\UrlController::class, 'create'])->middleware('auth:sanctum');
Route::get('/list', [App\Http\Controllers\UrlController::class, 'list'])->middleware('auth:sanctum');
Route::get('/views/:id', [App\Http\Controllers\UrlController::class, 'views'])->middleware('auth:sanctum');
Route::post('/show', [App\Http\Controllers\UrlController::class, 'show'])->middleware('auth:sanctum');