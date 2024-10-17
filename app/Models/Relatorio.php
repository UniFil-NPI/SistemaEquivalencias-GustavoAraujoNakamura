<?php
namespace App\Models;

use App\Models\Grade;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Relatorio extends Model
{
    use SoftDeletes;
    protected $fillable = [
        'titulo',
    ];
}
