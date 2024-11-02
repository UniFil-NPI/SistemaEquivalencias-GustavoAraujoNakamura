<?php

use App\Models\Disciplina;
use App\Models\GerarEquivalencia;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('gerar_equivalencia_disciplinas', function (Blueprint $table) {
            $table->id();

            $table->foreignId('gerar_equivalencia_id')->constrained('gerar_equivalencia');


            $table->foreignIdFor(Disciplina::class)
                ->constrained()
                ->cascadeOnDelete()
                ->cascadeOnUpdate();

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('gerar_equivalencia_disciplinas');
    }
};
