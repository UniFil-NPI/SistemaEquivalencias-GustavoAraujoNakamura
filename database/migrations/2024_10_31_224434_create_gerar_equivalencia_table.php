<?php

use App\Models\User;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('gerar_equivalencia', function (Blueprint $table) {
            $table->id();

            $table->string('titulo');
            $table->foreignId('curso')->constrained('cursos');
            $table->foreignId('grade_antiga')->constrained('grades');
            $table->foreignId('grade_nova')->constrained('grades');

            $table->foreignIdFor(User::class)
                ->constrained()
                ->onUpdate('cascade')
                ->onDelete('cascade');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('gerar_equivalencia');
    }
};
