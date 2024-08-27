<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DisciplinaGrade extends Model
{
    protected $fillable = ['disciplina_id', 'grade_id'];

    public function grade()
    {
        return $this->belongsTo(Grade::class);
    }
}
