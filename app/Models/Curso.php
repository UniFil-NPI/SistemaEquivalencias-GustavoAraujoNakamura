<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\SoftDeletes;

class Curso extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'titulo',
        'ano',
    ];

    public function grades(): BelongsToMany
    {
        return $this->belongsToMany(Grade::class, 'curso_grades');
    }
}
