<script>
export default {
    props: {
        disciplina: {
            type: Object,
            default: () => ({codigo: '', titulo: '', tipo: '', periodo: '', carga_horaria: '', ativo: false}),
        },
        isEditing: {
            type: Boolean,
            default: false
        }
    },
    data() {
        return {
            disciplinas: [],
            disciplinaAtual: this.disciplina,
        };
    },
    mounted() {
        this.carregarDisciplinas();
    },
    methods: {
        async carregarDisciplinas() {
            const response = await fetch(route('disciplina.create'));
            const data = await response.json();
            this.disciplinas = data.map(disciplina => ({
                ...disciplina,
                ativo: !!disciplina.ativo,
            }));
        },
        async atualizarDisciplina() {
            await fetch(route('disciplina.edit', this.disciplinaAtual.id), {
                method: 'PUT',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify(this.disciplinaAtual),
            });
            await this.carregarDisciplinas();
        },
    },
};
</script>

<template>
    <div class="max-w-4xl mx-auto bg-white shadow-md rounded px-8 pt-6 pb-8 mt-4">
        <h2 class="mb-4 text-2xl font-bold text-center">{{ isEditing ? 'Editar Disciplina' : 'Criar Disciplina' }}</h2>
        <form class="space-y-4" method="post"
              :action="isEditing ? '/disciplina/' + disciplinaAtual.id : '/disciplina'">
            <input type="hidden" name="_method" :value="isEditing ? 'patch' : 'post' ">
            <input type="hidden" name="_token" :value="$page.props.csrf_token">
            <div class="flex flex-wrap -mx-6">
                <div class="w-full px-6 mb-6 md:mb-0">
                    <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="codigo">
                        Código da disciplina
                    </label>
                    <input v-model="disciplinaAtual.codigo"
                           class="appearance-none block w-full bg-gray-200 text-gray-700 border rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white"
                           id="codigo" name="codigo" type="text" placeholder="Código da disciplina" required>
                </div>
                <div class="w-full px-6">
                    <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="titulo">
                        Título da disciplina
                    </label>
                    <input v-model="disciplinaAtual.titulo"
                           class="appearance-none block w-full bg-gray-200 text-gray-700 border rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white"
                           id="titulo" name="titulo" type="text" placeholder="Título da disciplina" required>
                </div>
            </div>
            <div class="flex flex-wrap -mx-6 mb-6">
                <div class="w-full md:w-1/2 px-6 mb-6 md:mb-0">
                    <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="tipo">
                        Tipo da disciplina
                    </label>
                    <select v-model="disciplinaAtual.tipo"
                            class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500"
                            id="tipo" name="tipo" required>
                        <option value="">Tipo da disciplina</option>
                        <option value="Core">Core</option>
                        <option value="Flex">Flex</option>
                    </select>
                </div>
                <div class="w-full md:w-1/2 px-6">
                    <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="periodo">
                        Período da disciplina
                    </label>
                    <input v-model.number="disciplinaAtual.periodo"
                           class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500"
                           id="periodo" name="periodo" type="number" placeholder="Período da disciplina" required>
                </div>
            </div>
            <div class="flex flex-wrap -mx-6 mb-2">
                <div class="w-full px-6 mb-6 md:mb-0">
                    <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
                           for="carga_horaria">
                        Carga horária
                    </label>
                    <input v-model.number="disciplinaAtual.carga_horaria"
                           class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-gray-500"
                           id="carga_horaria" name="carga_horaria" type="number" placeholder="Carga horária" required>
                </div>
                <div class="w-full px-6 mb-6 md:mb-0">
                    <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="ativo">
                        Disciplina ativa
                    </label>
                    <input type="hidden" name="ativo" :value="disciplinaAtual.ativo ? '1' : '0'">
                    <input type="checkbox" id="ativo" v-model="disciplinaAtual.ativo"
                           class="form-checkbox h-5 w-5 text-orange-600">
                </div>
            </div>
            <div class="flex items-center justify-between">
                <button
                    class="bg-orange-500 hover:bg-orange-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline"
                    type="submit">
                    Salvar
                </button>
            </div>
        </form>
    </div>
</template>
