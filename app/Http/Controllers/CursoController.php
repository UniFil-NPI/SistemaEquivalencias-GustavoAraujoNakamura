<?php

namespace App\Http\Controllers;

use App\Models\Curso;
use App\Models\Grade;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Inertia\Inertia;

/**
 *
 * @param Request $request
 * @param  int  $id
 * @return Response
 */

class CursoController extends Controller
{
    public function index()
    {
        return Inertia::render('Curso/Curso', [
            'cursos' => Curso::with('grades')->get(),
        ]);
    }

    public function create()
    {
        $grades = Grade::all();
        return Inertia::render('Curso/CursoCreate', [
            'grades' => $grades,
            'availableGrades' => Grade::all(),

        ]);
    }

    public function edit($id)
    {
        $curso = Curso::with('grades')->findOrFail($id);

        return Inertia::render('Curso/CursoEdit', [
            'curso' => $curso,
            'selectedGrades' => $curso->grades->pluck('id')->toArray(),
            'availableGrades' => Grade::all(),
        ]);
    }

    public function show($id)
    {
        $curso = Curso::findOrFail($id);
        return response()->json($curso);
    }

    public function store(Request $request)
    {
        $curso = Curso::create($request->all()['id']);
        $curso->save();

        foreach ($request->all()['grade'] as $key => $grade) {
            DB::table('curso_grades')->insert([
                'curso_id' => $curso->id,
                'grade_id' => $grade
            ]);
        }

//        return redirect()->route('curso.index');
    }

    public function update(Request $request, $id)
    {
        $data = $request->all();

        // Encontra o curso pelo ID
        $curso = Curso::find($id);

        if (!$curso) {
            return response()->json(['message' => 'Curso não encontrado'], 404);
        }

        // Atualiza os dados do curso
        $curso->titulo = $data['id']['titulo'];
        $curso->ano = $data['id']['ano'];
        $curso->ativo = $data['id']['ativo'];
        $curso->save();

        $curso->grades()->sync($data['grade']);

        // Retorna uma resposta de sucesso
        return response()->json(['message' => 'Curso atualizado com sucesso', 'curso' => $curso]);
    }

    public function destroy(Curso $curso)
    {
        $curso->delete();
        return response()->json(['message' => 'Curso deletado com sucesso']);
    }
}
