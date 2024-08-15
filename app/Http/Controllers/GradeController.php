<?php

namespace App\Http\Controllers;

use App\Models\Grade;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Inertia\Inertia;

class GradeController extends Controller
{
    public function index()
    {
        return Inertia::render('Grade/Grade', [
            'grades' => Grade::all(),
        ]);
    }

    public function create()
    {
        return Inertia::render('Grade/Create');
    }

    public function edit($id)
    {
        $grade = Grade::findOrFail($id);
        return Inertia::render('Grade/Edit', [
            'grade' => $grade,
        ]);
    }

    public function show($id)
    {
        $grade = Grade::findOrFail($id);
        return response()->json($grade);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'titulo' => 'required|unique:grades|max:255',
        ]);

        if ($validator->fails()) {
            return redirect()->route('grade.create')
                ->withErrors($validator)
                ->withInput();
        }

        Grade::create($request->all());

        return redirect()->route('grade.index');
    }

    public function update(Request $request, Grade $grade)
    {
        $validator = Validator::make($request->all(), [
            'titulo' => 'required|unique:grades,titulo,' . $grade->id . '|max:255',
        ]);

        if ($validator->fails()) {
            return redirect()->route('grade.edit', $grade->id)
                ->withErrors($validator)
                ->withInput();
        }

        $grade->update($request->all());

        return redirect()->route('grade.index');
    }

    public function destroy(Grade $grade)
    {
        $grade->delete();
        return response()->json(['message' => 'Grade deletada com sucesso']);
    }
}
