<?php

namespace App\Http\Controllers;

use App\Models\Disciplina;
use Illuminate\Http\Request;
use Inertia\Inertia;

class DisciplinaController extends Controller
{
    public function index()
    {
        return Inertia::render('Disciplina', [
            'disciplina' => Disciplina::all()
        ]);
    }

    public function create()
    {
        return Inertia::render('DisciplinaCreate');
    }

    public function edit($id)
    {
        $disciplina = Disciplina::find($id);
        return Inertia::render('DisciplinaEdit', [
            'disciplina' => $disciplina
        ]);
    }

    public function show($id)
{
    $disciplina = Disciplina::find($id);
    if ($disciplina) {
        return response()->json($disciplina);
    } else {
        return response()->json(['error' => 'Disciplina not found'], 404);
    }
}


    public function store(Request $request)
{
    $disciplina = Disciplina::create($request->all());
    $disciplina = $disciplina->save();

    return redirect()->route('disciplina.index');
}

    public function update(Request $request, Disciplina $disciplina)
    {
        $disciplina->update($request->all());


        return $disciplina;
    }

    public function destroy(Disciplina $disciplina)
    {
        $disciplina->delete();
        return response()->json(['message' => 'Disciplina deletada com sucesso']);
    }
}
