<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ImportController;
use App\Http\Controllers\DuplicateController;
use App\Http\Controllers\ReportController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});



// We'll add more controllers here later

// Import Routes
Route::get('/', [ImportController::class, 'showUploadForm']);
Route::post('/import', [ImportController::class, 'handleImport']);


// Duplicate Routes
Route::get('/duplicates', [DuplicateController::class, 'index']);
Route::post('/duplicates/merge', [DuplicateController::class, 'merge']);


// Report Route
Route::get('/report', [ReportController::class, 'index']);