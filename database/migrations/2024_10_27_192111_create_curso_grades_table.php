<?php

use App\Models\Curso;
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
        Schema::create('curso_grades', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->foreignIdFor(Curso::class)->constrained();
            $table->foreignIdFor(Grade::class)->constrained();
        });
    }
};
