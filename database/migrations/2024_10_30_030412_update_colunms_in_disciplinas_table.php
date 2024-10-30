<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('disciplinas', function (Blueprint $table) {
            $table->string('carga_horaria', 50)->default("10")->change();
            $table->string('modalidade', 50)->default("EAD")->change();
        });
    }
};
