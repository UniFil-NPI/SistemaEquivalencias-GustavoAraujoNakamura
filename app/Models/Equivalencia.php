<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
//use App\Models\Grade;

class Equivalencia extends Model
{
    use SoftDeletes;
    protected $fillable = [
        'titulo'
    ];
    public function disciplinas()
    {
        return $this->belongsToMany(Disciplina::class, 'disciplinas_equivalencias', 'equivalencia_id', 'disciplina_id');
    }
}
