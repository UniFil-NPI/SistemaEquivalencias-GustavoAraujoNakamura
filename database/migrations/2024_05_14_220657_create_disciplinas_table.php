<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('disciplinas', function (Blueprint $table) {
            $table->timestamps();
            $table->id();
            $table->string('codigo');
            $table->string('titulo');
            $table->string('tipo');
            $table->string('periodo')->default(1);
            $table->string('carga_horaria');
            $table->boolean('ativo')->default(true);
            $table->string('modalidade')->nullable();
            $table->softDeletes();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('disciplinas');
    }
};
