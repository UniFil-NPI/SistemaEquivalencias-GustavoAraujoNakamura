<?php

namespace App\Http\Controllers;

use App\Models\Disciplina;
use App\Models\Grade;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Inertia\Inertia;
use Inertia\Response;

class GradeController extends Controller
{
    public function index()
    {
        return Inertia::render('Grade/Grade', [
            'grade' => Grade::all(),
        ]);
    }

    public function create(): Response
    {
        return Inertia::render('Grade/GradeCreate', ['disciplinas' => Disciplina::all()]);
    }

    public function edit($id)
    {
        $grade = Grade::with('disciplinas')->findOrFail($id);
        $disciplinas = Disciplina::all();
        return Inertia::render('Grade/GradeEdit', [
            'grade' => $grade,
            'disciplinas' => $disciplinas,
            'selectedDisciplinas' => $grade->disciplinas->pluck('id')->toArray()
        ]);
    }

    public function show($id)
    {
        $grade = Grade::findOrFail($id);
        return response()->json($grade);
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'body.grade.titulo' => 'required|string|max:255',
            'body.disciplinas' => 'required|array',
            'body.disciplinas.*' => 'integer|exists:disciplinas,id',
        ]);

        DB::beginTransaction();

        try {
            $grade = Grade::create([
                'titulo' => $validated['body']['grade']['titulo'],
            ]);

            $grade->disciplinas()->attach($validated['body']['disciplinas']);

            DB::commit();

            return response()->json(['message' => 'Grade created successfully'], 201);

        } catch (\Exception $e) {
            DB::rollBack();
            return response()->json(['error' => 'Failed to create grade', 'message' => $e->getMessage()], 500);
        }
    }

    public function update(Request $request, Grade $grade)
    {
        $validated = $request->validate([
            'body.grade.titulo' => 'required|string|max:255',
            'body.grade.ch' => 'required|integer',
            'body.grade.periodo' => 'required|integer',
            'body.grade.ativo' => 'required|boolean',
            'body.disciplinas' => 'required|array',
            'body.disciplinas.*' => 'integer|exists:disciplinas,id',
        ]);

        $grade->update($request->all());

        $grade->disciplinas()->sync($validated['body']['disciplinas']);

        return response()->json(['message' => 'Grade created successfully'], 201);
    }

    public function destroy(Grade $grade)
    {
        $grade->delete();
        return response()->json(['message' => 'Grade deletada com sucesso']);
    }
}
