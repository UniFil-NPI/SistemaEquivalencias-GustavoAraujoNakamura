<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use App\Models\Grade;

class Disciplina extends Model
{
    use SoftDeletes;
    protected $fillable = ['codigo', 'titulo' , 'tipo' , 'periodo' , 'carga_horaria', 'ativo', 'modalidade' ];

    public function grades(): BelongsToMany
    {
        return $this->belongsToMany(Grade::class);
    }
}
