<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Disciplina extends Model
{
    use SoftDeletes;
    protected $fillable = ['codigo', 'titulo' , 'tipo' , 'periodo' , 'carga_horaria', 'ativo', 'modalidade' ];
}
