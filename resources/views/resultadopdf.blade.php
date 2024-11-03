<script src="https://cdn.tailwindcss.com"></script>
<div class="p-20">
    <div class="container mx-auto pt-12 pb-6">
        <div class="bg-white overflow-hidden">
            <div class="flex justify-between">
                <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                    Resultado da geração de equivalências -
                    <span class="text-amber-500">{{ $resultado['titulo'] }}</span>
                </h2>
            </div>
        </div>
        <div class="pt-6">
            <h2 class="text-xl font-bold">
                Disciplinas cursadas na grade antiga -
                <span class="text-amber-500">{{ $resultado->gradeAntiga['titulo'] ?? '' }}</span>
            </h2>
            <table class="min-w-full leading-normal">
                <thead>
                <tr>
                    <th
                        class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                        Código</th>
                    <th
                        class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                        Título</th>
                    <th
                        class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                        Carga Horária</th>
                </tr>
                </thead>
                <span>
                    {{ $resultado['disciplinas'] }}
                </span>
            </table>
        </div>
        <div class="pt-6">
            <h2 class="text-xl font-bold">
                Disciplinas abatidas da grade nova -
                <span class="text-amber-500">{{ $resultado->gradeNova['titulo'] ?? '' }}</span>
            </h2>
            <table class="min-w-full leading-normal">
                <thead>
                <tr>
                    <th
                        class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                        Código</th>
                    <th
                        class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                        Título</th>
                    <th
                        class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                        Carga Horária</th>
                </tr>
                </thead>
            </table>
        </div>
        <div class="pt-6">
            <h2 class="text-xl font-bold">
                Disciplinas a cursar na grade nova -
                <span class="text-amber-500">{{ $resultado->gradeNova['titulo'] ?? '' }}</span>
            </h2>
            <table class="min-w-full leading-normal">
                <thead>
                <tr>
                    <th
                        class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                        Código</th>
                    <th
                        class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                        Título</th>
                    <th
                        class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                        Carga Horária</th>
                </tr>
                </thead>
            </table>
        </div>
    </div>
</div>
</div>
