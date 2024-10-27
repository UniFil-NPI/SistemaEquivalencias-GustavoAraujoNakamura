<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\SoftDeletes;

class Grade extends Model
{
    use SoftDeletes;

    protected $fillable = ['titulo'];

    public function disciplinas(): BelongsToMany
    {
        return $this->belongsToMany(Disciplina::class, DisciplinaGrade::class);
    }

    public function cursos(): BelongsToMany
    {
        return $this->belongsToMany(Curso::class, CursoGrade::class);
    }
}
