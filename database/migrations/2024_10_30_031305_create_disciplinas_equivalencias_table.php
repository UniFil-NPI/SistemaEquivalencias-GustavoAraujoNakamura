<?php

use App\Models\Disciplina;
use App\Models\Equivalencia;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('disciplinas_equivalencias', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->foreignIdFor(Disciplina::class)->constrained();
            $table->foreignIdFor(Equivalencia::class)->constrained();
        });
    }
};
