<?php

namespace App\Http\Controllers;

use App\Models\Disciplina;
use App\Models\Equivalencia;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Inertia\Inertia;

class EquivalenciaController extends Controller
{
    public function index()
    {
        return Inertia::render('Equivalencia/Equivalencia', [
            'equivalencia' => Equivalencia::all()
        ]);
    }

    public function create()
    {
        return Inertia::render('Equivalencia/EquivalenciaCreate', [
            'disciplinas' => Disciplina::all()
        ]);
    }

    public function edit($id)
    {
        $equivalencia = Equivalencia::findOrFail($id);
        return Inertia::render('Equivalencia/EquivalenciaEdit', [
            'equivalencia' => $equivalencia
        ]);
    }

    public function show($id)
    {
        $equivalencia = Equivalencia::find($id);
        return response()->json($equivalencia);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'codigo' => 'required|unique:equivalencias',
        ]);

        if ($validator->fails()) {
            return redirect('equivalencia/create')
                ->withErrors($validator)
                ->withInput();
        }

        $equivalencia = Equivalencia::create($request->all());
        $equivalencia = $equivalencia->save();

        return redirect()->route('equivalencia.index');
    }

    public function update(Request $request, Equivalencia $equivalencia)
    {
        $equivalencia->update($request->all());
        return redirect()->route('equivalencia.index');
    }

    public function destroy(Equivalencia $equivalencia)
    {
        $equivalencia->delete();
        return response()->json(['message' => 'Equivalencia deletada com sucesso']);
    }
}
