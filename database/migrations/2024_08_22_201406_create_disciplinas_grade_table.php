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
        Schema::create('disciplinas_grades', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->foreignId('disciplina_id')->constrained();
            $table->foreignId('grade_id')->constrained();
            $table->softDeletes();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('disciplinas_grades');
    }
};
