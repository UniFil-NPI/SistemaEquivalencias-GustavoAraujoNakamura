<?php

use App\Http\Controllers\GradeApi;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');


Route::get('/grades/{grade}/disciplinas', GradeApi::class);
