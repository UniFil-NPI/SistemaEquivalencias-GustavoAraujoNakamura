<?php

namespace App\Http\Controllers;

use App\Models\Grade;

class GradeApi extends Controller
{
    public function __invoke(Grade $grade)
    {
        return response()->json($grade->disciplinas);
    }
}
