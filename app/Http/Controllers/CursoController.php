<?php

namespace App\Http\Controllers;

use App\Models\Curso;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Inertia\Inertia;

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
        $curso = Curso::findOrFail($id); // Usar findOrFail para garantir que o curso seja encontrado
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

    public function update(Request $request, Curso $curso)
    {
        $validator = Validator::make($request->all(), [
            'titulo' => 'required|unique:cursos,titulo,' . $curso->id . '|max:255',
            'ano' => 'required|numeric',
            // Adicione outras validações conforme necessário
        ]);

        if ($validator->fails()) {
            return redirect()->route('curso.edit', $curso->id)
                ->withErrors($validator)
                ->withInput();
        }

        $curso->update($request->all());

        return redirect()->route('curso.index');
    }

    public function destroy(Curso $curso)
    {
        $curso->delete();
        return response()->json(['message' => 'Curso deletado com sucesso']);
    }
}
