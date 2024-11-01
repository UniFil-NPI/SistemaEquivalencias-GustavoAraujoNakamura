<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class GerarEquivalencia extends Model
{
    use HasFactory;
    // use SoftDeletes;

    protected $table = 'gerar_equivalencia';

    protected $fillable = [
        'titulo',
        'curso',
        'grade_antiga',
        'grade_nova'
    ];

    public function disciplinasCursadas()
    {
        return $this->belongsToMany(Disciplinas::class, 'resultados_disciplinas', 'resultados_id', 'disciplinas_id')
            ->wherePivot('tipo', 'cursada')
            ->withPivot('carga_horaria');

    }

    public function disciplinasAbatidas()
    {
        return $this->belongsToMany(Disciplinas::class, 'resultados_disciplinas', 'resultados_id', 'disciplinas_id')
            ->wherePivot('tipo', 'abatida');
    }

    public function disciplinasAtribuidas()
    {
        return $this->belongsToMany(Disciplinas::class, 'resultados_disciplinas', 'resultados_id', 'disciplinas_id')
            ->wherePivot('tipo', 'atribuida');
    }

    public function gradeAntiga()
    {
        return $this->belongsTo(Grades::class, 'grade_antiga');
    }

    public function gradeNova()
    {
        return $this->belongsTo(Grades::class, 'grade_nova');
    }
}
