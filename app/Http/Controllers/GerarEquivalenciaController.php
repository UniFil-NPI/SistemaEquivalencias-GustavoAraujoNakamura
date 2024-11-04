<?php

namespace App\Http\Controllers;

use App\Models\Curso;
use App\Models\Disciplina;
use App\Models\GerarEquivalencia;
use App\Models\Grade;
use App\Models\User;
use Exception;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Inertia\Inertia;

class GerarEquivalenciaController extends Controller
{
    public function index()
    {
        $equivs = GerarEquivalencia::all();

        foreach ($equivs as $equiv) {
            $equiv->disciplinas = DB::table('gerar_equivalencia_disciplinas')
                ->where('gerar_equivalencia_id', $equiv->id)
                ->join('disciplinas', 'disciplinas.id', '=', 'gerar_equivalencia_disciplinas.disciplina_id')
                ->select('disciplinas.titulo')
                ->pluck('titulo');

            $equiv->disciplinas = implode(', ', $equiv->disciplinas?->toArray());

            $equiv->gradeAntiga = Grade::find($equiv->grade_antiga)?->titulo;
            $equiv->selectedGradeAntiga = Grade::find($equiv->grade_antiga)?->id;
            $equiv->gradeNova = Grade::find($equiv->grade_nova)?->titulo;
            $equiv->selectedGradeNova = Grade::find($equiv->grade_nova)?->id;

            $equiv->cursoNovo = Curso::find($equiv->curso_novo)?->titulo;
            $equiv->cursoAntigo = Curso::find($equiv->curso_antigo)?->titulo;

            $equiv->usuario = User::find($equiv->user_id)?->name;

            $equiv->disciplinas_abatidas = $equiv?->disciplinas;

            $equiv->disciplinas_atribuidas = DB::table('disciplinas')
                ->join('disciplina_grades', 'disciplina_grades.disciplina_id', '=', 'disciplinas.id')
                ->join('grades', 'grades.id', '=', 'disciplina_grades.grade_id')
                ->where('grades.id', $equiv->grade_nova)
                ->whereNotIn('disciplinas.id', DB::table('gerar_equivalencia_disciplinas')
                    ->where('gerar_equivalencia_id', $equiv->id)
                    ->select('disciplina_id'))
                ->select('disciplinas.titulo')
                ->pluck('titulo');

            $equiv->disciplinas_atribuidas = implode(', ', $equiv?->disciplinas_atribuidas?->toArray());
        }

        return Inertia::render('GerarEquivalencia/GerarEquivalencia', [
            'gerarEquivalencias' => $equivs,
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

        return Inertia::render('GerarEquivalencia/GerarEquivalenciaCreate', [
            'usuarioSelecionado' => $gerarEquivalencia->user_id,
            'equivalenciaAtual' => $gerarEquivalencia,
            'isEditing' => true,
            'disciplinas' => Disciplina::all(),
            'disciplinasSelecionadas' => DB::table('gerar_equivalencia_disciplinas')
                ->where('gerar_equivalencia_id', $gerarEquivalencia->id)
                ->select('disciplina_id')
                ->pluck('disciplina_id'),
            'cursos' => Curso::all(),
            'grades' => Grade::all(),
            'alunos' => User::all(),
            'cursoAntiga' => $gerarEquivalencia->curso_antigo,
            'cursoNova' => $gerarEquivalencia->curso_novo,
            'gradeAntiga' => $gerarEquivalencia->grade_antiga,
            'gradeNova' => $gerarEquivalencia->grade_nova,
        ]);
    }

    public function show($id)
    {
        $gerarEquivalencia = GerarEquivalencia::findOrFail($id);
        return response()->json($gerarEquivalencia);
    }

    public function store(Request $request): JsonResponse|RedirectResponse
    {
        try {
            DB::beginTransaction();

            $data =
                [
                    ...$request->only([
                        'titulo',
                        'curso_novo',
                        'curso_antigo',
                        'grade_antiga',
                        'grade_nova'
                    ]),
                    'user_id' => $request->get('usuarioSelecionado'),
                ];

            $equiv = GerarEquivalencia::create($data);

            $equiv->save();

            $equivalenciaDisciplinas = $request->only(['disciplinas']);

            foreach ($equivalenciaDisciplinas['disciplinas'] as $equivalenciaDisciplina) {
                DB::table('gerar_equivalencia_disciplinas')->insert([
                    'disciplina_id' => $equivalenciaDisciplina,
                    'gerar_equivalencia_id' => $equiv->id
                ]);
            }

            DB::commit();

            return redirect()->route('gerarEquivalencia.index');
        } catch (Exception $e) {
            DB::rollBack();
            echo(var_dump($e->getMessage()));
            return response()->json(['message' => 'Erro ao criar a equivalência'], 500);
        }
    }

    public function update(Request $request, $id)
    {
        try {
            DB::beginTransaction();

            $equiv = GerarEquivalencia::find($id);

            $data =
                [
                    ...$request->only([
                        'titulo',
                        'curso_novo',
                        'curso_antigo',
                        'grade_antiga',
                        'grade_nova'
                    ]),
                    'user_id' => $request->get('usuarioSelecionado'),
                ];

            $equiv->update($data);

            $equivalenciaDisciplinas = $request->only(['disciplinas']);

            DB::table('gerar_equivalencia_disciplinas')
                ->where('gerar_equivalencia_id', $equiv->id)
                ->delete();

            foreach ($equivalenciaDisciplinas['disciplinas'] as $equivalenciaDisciplina) {
                DB::table('gerar_equivalencia_disciplinas')->insert([
                    'disciplina_id' => $equivalenciaDisciplina,
                    'gerar_equivalencia_id' => $equiv->id
                ]);
            }

            DB::commit();

            return response()->json(['message' => 'GerarEquivalencia atualizado com sucesso']);
        } catch (Exception $e) {
            DB::rollBack();
            echo(var_dump($e->getMessage()));
            return response()->json(['message' => 'Erro ao criar a equivalência'], 500);
        }
    }

    public function destroy(Request $request)
    {
        DB::table('gerar_equivalencia_disciplinas')
            ->where('gerar_equivalencia_id', $request->gerarEquivalencium)
            ->delete();

        DB::table('gerar_equivalencia')
            ->where('id', $request->gerarEquivalencium)
            ->delete();


        return response()->json(['message' => 'GerarEquivalencia deletado com sucesso']);
    }
}
