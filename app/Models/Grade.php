<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\SoftDeletes;

class Grade extends Model
{
    use SoftDeletes;
    protected $fillable = ['titulo',
                          'id_disciplina',
                          'ch',
                          'periodo',
                          'ativo'
    ];

    public function disciplinas(): BelongsToMany
    {
        return $this->belongsToMany(Disciplina::class, DisciplinaGrade::class);
    }
}
