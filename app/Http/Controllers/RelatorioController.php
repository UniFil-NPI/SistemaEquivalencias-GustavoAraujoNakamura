<?php

namespace App\Http\Controllers;

use App\Models\Relatorio;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Inertia\Inertia;

class RelatorioController extends Controller
{
    public function index()
    {
        return Inertia::render('Relatorio/Relatorio', [
            'relatorio' => Relatorio::all()
        ]);
    }

    public function create()
    {
        return Inertia::render('Relatorio/RelatorioCreate');
    }

    public function edit($id)
    {
        $relatorio = Relatorio::findOrFail($id);
        return Inertia::render('Relatorio/RelatorioEdit', [
            'relatorio' => $relatorio
        ]);
    }

    public function show($id)
    {
        $relatorio = Relatorio::find($id);
        return response()->json($relatorio);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'codigo' => 'required|unique:relatorios',
        ]);

        if ($validator->fails()) {
            return redirect('relatorio/create')
                ->withErrors($validator)
                ->withInput();
        }

        $relatorio = Relatorio::create($request->all());
        $relatorio = $relatorio->save();

        return redirect()->route('relatorio.index');
    }

    public function update(Request $request, Relatorio $relatorio)
    {
        $relatorio->update($request->all());
        return redirect()->route('relatorio.index');
    }

    public function destroy(Relatorio $relatorio)
    {
        $relatorio->delete();
        return response()->json(['message' => 'Relatorio deletada com sucesso']);
    }
}
