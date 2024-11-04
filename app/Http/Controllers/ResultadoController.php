<?php

namespace App\Http\Controllers;

use App\Models\GerarEquivalencia;
use App\Models\User;
use Spatie\LaravelPdf\Facades\Pdf;
use Spatie\Browsershot\Browsershot;
use App\Models\ResultadosDisciplinas;
use Illuminate\Http\Request;
use Inertia\Inertia;
use App\Models\Grade;
use Illuminate\Support\Facades\DB;
use Throwable;

class ResultadoController extends Controller
{

    public function index()
    {
        $resultados = ResultadosDisciplinas::with(['gradeAntiga', 'gradeNova'])->orderBy('created_at', 'desc')->get();

        return Inertia::render('Resultados/Index', ['resultados' => $resultados]);
    }

    public function show($id)
    {
        $resultado = ResultadosDisciplinas::with(['disciplinasCursadas', 'disciplinasAbatidas', 'disciplinasAtribuidas', 'gradeAntiga', 'gradeNova'])->find($id);

        return Inertia::render('Resultados/Resultado', ['resultado' => $resultado]);
    }

    function store($resultado_request)
    {
        try {

            DB::beginTransaction();

            $resultado_criado = ResultadosDisciplinas::create([
                'titulo' => $resultado_request['titulo'],
                'grade_antiga' => $resultado_request['grade_antiga']['id'],
                'grade_nova' => $resultado_request['grade_nova']['id'],
            ]);

            foreach ($resultado_request['disciplinas_cursadas_grade_antiga'] as $disciplina_antiga) {
                //this one comes as array instead of object, due to altered carga_horaria
                ResultadosDisciplinas::create([
                    'resultados_id' => $resultado_criado->id,
                    'disciplinas_id' => (int)$disciplina_antiga['id'],
                    'tipo' => 'cursada',
                    'carga_horaria' => (int)$disciplina_antiga['carga_horaria'] ?? 0
                ]);
            }


            if ($resultado_request['disciplinas_abatidas_grade_nova']) {
                foreach ($resultado_request['disciplinas_abatidas_grade_nova'] as $disciplina_abatida) {
                    ResultadosDisciplinas::create([
                        'resultados_id' => $resultado_criado->id,
                        'disciplinas_id' => $disciplina_abatida->id,
                        'tipo' => 'abatida',
                        'carga_horaria' => $disciplina_abatida->carga_horaria ?? 0
                    ]);
                }
            }

            foreach ($resultado_request['disciplinas_a_cursar_grade_nova'] as $disciplina_a_cursar) {
                ResultadosDisciplinas::create([
                    'resultados_id' => $resultado_criado->id,
                    'disciplinas_id' => $disciplina_a_cursar->id,
                    'tipo' => 'atribuida',
                    'carga_horaria' => $disciplina_a_cursar->carga_horaria ?? 0
                ]);
            }


            DB::commit();

            return $resultado_criado;
        } catch (Throwable $e) {
            DB::rollBack();
            return 'error';
        }
    }

    public function createPdf(Request $request)
    {
        $data = $request->all();

        $data['gradeAntiga'] = Grade::find($data['grade_antiga']);
        $data['gradeNova'] = Grade::find($data['grade_nova']);
        $data['user'] = User::find($data['user_id']);

        $equivalencia = GerarEquivalencia::find($data['id']);

        $data['disciplinasAbatidas'] = DB::table('gerar_equivalencia_disciplinas')
            ->where('gerar_equivalencia_id', $equivalencia->id)
            ->join('disciplinas', 'disciplinas.id', '=', 'gerar_equivalencia_disciplinas.disciplina_id')
            ->select('*')
            ->get();

        $data['disciplinasAtribuidas'] = DB::table('disciplinas')
            ->join('disciplina_grades', 'disciplina_grades.disciplina_id', '=', 'disciplinas.id')
            ->join('grades', 'grades.id', '=', 'disciplina_grades.grade_id')
            ->where('grades.id', $equivalencia->grade_nova)
            ->whereNotIn('disciplinas.id', DB::table('gerar_equivalencia_disciplinas')
                ->where('gerar_equivalencia_id', $equivalencia->id)
                ->select('disciplina_id'))
            ->select('*')
            ->get();

        $path = storage_path('app/public/' . $data['user_id'] . '.pdf');

        Pdf::view('resultadopdf', ['resultado' => $data])->save($path);

        return response()->download($path);
    }
}
