<?php

use App\Http\Controllers\DisciplinaController;
use App\Http\Controllers\ProfileController;
use Illuminate\Foundation\Application;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

Route::get('/', function () {
    return Inertia::render('Welcome', [
        'canLogin' => Route::has('login'),
        'canRegister' => Route::has('register'),
        'laravelVersion' => Application::VERSION,
        'phpVersion' => PHP_VERSION,
    ]);
});

Route::get('/dashboard', function () {
    return Inertia::render('Dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

Route::resource('/disciplina', DisciplinaController::class);
Route::get('/disciplina/{id}', [DisciplinaController::class, 'show'])->name('disciplina.show');
Route::patch('/disciplina/{id}', [DisciplinaController::class, 'update'])->name('disciplina.update');
Route::delete('/disciplina/{disciplina}', [DisciplinaController::class, 'destroy'])->name('disciplina.destroy');
Route::put('/disciplina/{id}', [DisciplinaController::class, 'update'])->name('disciplina.update');

Route::post('/disciplina', [DisciplinaController::class, 'create'])->name('disciplina.create');
Route::post('/disciplina', [DisciplinaController::class, 'store'])->name('disciplina.store');
// preciso fazer route index
 Route::get('/disciplina', [DisciplinaController::class, 'index'])->name('disciplina.index');
require __DIR__.'/auth.php';
