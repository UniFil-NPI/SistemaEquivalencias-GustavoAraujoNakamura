<?php

use App\Models\Disciplina;
use App\Models\Grade;
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
        Schema::create('disciplina_grades', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->foreignIdFor(Disciplina::class)->constrained();
            $table->foreignIdFor(Grade::class)->constrained();
            $table->softDeletes();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('disciplina_grades');
    }
};
