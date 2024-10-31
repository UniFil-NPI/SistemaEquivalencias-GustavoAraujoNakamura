<?php

namespace App\Http\Controllers;

use App\Models\Disciplina;
use App\Models\DisciplinaEquivalencia;
use App\Models\Equivalencia;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
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
        $selectedDisciplinas = DB::table('disciplinas_equivalencias')
            ->where('equivalencia_id', $id)
            ->get()
            ->pluck('disciplina_id')
            ->toArray();

        $discplinas = Disciplina::all();

        return Inertia::render('Equivalencia/EquivalenciaEdit', [
            'equivalencia' => $equivalencia,
            'selectedDisciplinas' => $selectedDisciplinas,
            'disciplinas' => $discplinas
        ]);
    }

    public function show($id)
    {
        $equivalencia = Equivalencia::find($id);
        return response()->json($equivalencia);
    }

    public function store(Request $request)
    {
        try {
            DB::beginTransaction();

            $equivalencia = Equivalencia::create($request->only(['titulo']));
            $equivalencia->save();

            $equivalenciaDisciplinas = $request->only(['disciplinas']);

            foreach ($equivalenciaDisciplinas['disciplinas'] as $equivalenciaDisciplina) {
                DB::table('disciplinas_equivalencias')->insert([
                    'disciplina_id' => $equivalenciaDisciplina,
                    'equivalencia_id' => $equivalencia->id
                ]);
            }

            DB::commit();

            return redirect()->route('equivalencia.index');
        } catch (\Exception $e) {
            DB::rollBack();
            return response()->json(['message' => $e->getMessage()], 500);
        }
    }

    public function update(Request $request, Equivalencia $equivalencia)
    {
        try {
            DB::beginTransaction();

            $equivalencia = Equivalencia::find($request->equivalencium);
            $equivalencia->update($request->only(['titulo']));

            DB::table('disciplinas_equivalencias')->where('equivalencia_id', $request->equivalencium)->delete();

            $equivalenciaDisciplinas = $request->only(['disciplinas']);

            foreach ($equivalenciaDisciplinas['disciplinas'] as $equivalenciaDisciplina) {
                DB::table('disciplinas_equivalencias')->insert([
                    'disciplina_id' => $equivalenciaDisciplina,
                    'equivalencia_id' => $request->equivalencium
                ]);
            }

            DB::commit();

        } catch (\Exception $e) {
            DB::rollBack();
            return response()->json(['message' => $e->getMessage()], 500);
        }
    }

    public function destroy(Request $request, Equivalencia $equivalencia)
    {
        DB::table('disciplinas_equivalencias')->where('equivalencia_id', $request->equivalencium)->delete();

        DB::table('equivalencias')->where('id', $request->equivalencium)->delete();

        return response()->json(['message' => 'Equivalencia deletada com sucesso']);
    }
}
