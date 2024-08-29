<?php

namespace App\Http\Controllers;

use App\Models\Curso;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
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
            'cursos' => Curso::all(),
        ]);
    }

    public function create()
    {
        return Inertia::render('Curso/CursoCreate');
    }

    public function edit($id)
    {
        $curso = Curso::findOrFail($id);
        return Inertia::render('Curso/CursoEdit', [
            'curso' => $curso,
        ]);
    }

    public function show($id)
    {
        $curso = Curso::findOrFail($id);
        return response()->json($curso);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'titulo' => 'required|unique:cursos|max:255',
            'ano' => 'required|numeric',
            // Adicione outras validações conforme necessário
        ]);

        if ($validator->fails()) {
            return redirect()->route('curso.create')
                ->withErrors($validator)
                ->withInput();
        }

        Curso::create($request->all());

        return redirect()->route('curso.index');
    }

    public function update(Request $request, $id)
    {
        $validated = $request->validate([
            'titulo' => 'required|string|max:255',
            'ano' => 'required|integer|min:1900|max:2099',
            'ativo' => 'required|boolean',
        ]);

        // Encontra o curso pelo ID
        $curso = Curso::find($id);

        if (!$curso) {
            return response()->json(['message' => 'Curso não encontrado'], 404);
        }

        // Atualiza os dados do curso
        $curso->titulo = $validated['titulo'];
        $curso->ano = $validated['ano'];
        $curso->ativo = $validated['ativo'];
        $curso->save();

        // Retorna uma resposta de sucesso
        return response()->json(['message' => 'Curso atualizado com sucesso', 'curso' => $curso]);
    }

    public function destroy(Curso $curso)
    {
        $curso->delete();
        return response()->json(['message' => 'Curso deletado com sucesso']);
    }
}
