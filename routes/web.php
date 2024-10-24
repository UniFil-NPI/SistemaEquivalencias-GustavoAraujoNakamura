<?php

use App\Http\Controllers\DisciplinaController;
use App\Http\Controllers\GradeController;
use App\Http\Controllers\ProfileController;
use Illuminate\Foundation\Application;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;
use App\Http\Controllers\CursoController;
use App\Http\Controllers\EquivalenciaController;
use App\Http\Controllers\RelatorioController;

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

require __DIR__.'/auth.php';

Route::resource('/disciplina', DisciplinaController::class);
Route::resource('/grade', GradeController::class);
Route::resource('/curso', CursoController::class);
Route::resource('/equivalencia', EquivalenciaController::class);
Route::resource('/gerarEquivalencia', RelatorioController::class);

Route::resource('/relatorio', EquivalenciaController::class);
Route::resource('/relatorio', RelatorioController::class);

Route::get('/grades', [GradeController::class, 'index'])->name('grades.index');
Route::get('/grade/create', [GradeController::class, 'create'])->name('grade.create');
Route::put('/grade/{id}', [GradeController::class, 'update'])->name('grade.update');

Route::put('/curso/{curso}', [CursoController::class, 'update'])->name('curso.update');
Route::post('/curso', [CursoController::class, 'store'])->name('curso.store');
