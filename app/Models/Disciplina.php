<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Disciplina extends Model
{
    protected $fillable = ['codigo', 'titulo' , 'tipo' , 'periodo' , 'carga_horaria', 'ativo', 'modalidade' ];
}
