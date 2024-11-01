<?php

namespace App\Http\Controllers;

use App\Models\Curso;
use App\Models\Disciplina;
use App\Models\Grade;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Validator;
use Inertia\Inertia;
use App\Models\GerarEquivalencia;

/**
 *
 * @param Request $request
 * @param  int  $id
 * @return Response
 */

class GerarEquivalenciaController extends Controller
{
    public function index()
    {
        return Inertia::render('GerarEquivalencia/GerarEquivalencia', [
            'gerarEquivalencias' => GerarEquivalencia::all(),
        ]);
    }

    public function create()
    {
        return Inertia::render('GerarEquivalencia/GerarEquivalenciaCreate', [
            'disciplinas' => Disciplina::all(),
            'cursos' => Curso::all(),
            'grades' => Grade::all(),
            'alunos' => User::all()
        ]);
    }

    public function edit($id)
    {
        $gerarEquivalencia = GerarEquivalencia::findOrFail($id);
        return Inertia::render('GerarEquivalencia/GerarEquivalenciaEdit', [
            'gerarEquivalencia' => $gerarEquivalencia,
        ]);
    }

    public function show($id)
    {
        $gerarEquivalencia = GerarEquivalencia::findOrFail($id);
        return response()->json($gerarEquivalencia);
    }

    public function store(Request $request)
    {
        GerarEquivalencia::create($request->all());

        return redirect()->route('gerarEquivalencia.index');
    }

    public function update(Request $request, $id)
    {
        $validated = $request->validate([
            'titulo' => 'required|string|max:255',
            'ano' => 'required|integer|min:1900|max:2099',
            'ativo' => 'required|boolean',
        ]);

        // Encontra o gerarEquivalencia pelo ID
        $gerarEquivalencia = GerarEquivalencia::find($id);

        if (!$gerarEquivalencia) {
            return response()->json(['message' => 'GerarEquivalencia não encontrado'], 404);
        }

        // Atualiza os dados do gerarEquivalencia
        $gerarEquivalencia->titulo = $validated['titulo'];
        $gerarEquivalencia->ano = $validated['ano'];
        $gerarEquivalencia->ativo = $validated['ativo'];
        $gerarEquivalencia->save();

        // Retorna uma resposta de sucesso
        return response()->json(['message' => 'GerarEquivalencia atualizado com sucesso', 'gerarEquivalencia' => $gerarEquivalencia]);
    }

    public function destroy(GerarEquivalencia $gerarEquivalencia)
    {
        $gerarEquivalencia->delete();
        return response()->json(['message' => 'GerarEquivalencia deletado com sucesso']);
    }
}
