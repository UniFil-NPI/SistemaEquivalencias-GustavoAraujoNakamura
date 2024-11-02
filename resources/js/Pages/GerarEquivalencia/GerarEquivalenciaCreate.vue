<script setup>
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout.vue";
import axios from 'axios';
import { usePage } from '@inertiajs/vue3';
import MultiSelect from 'primevue/multiselect';
import {ref} from "vue";

const props = defineProps({
    disciplinas: {
        type: Array,
        default: () => [],
    },
    cursos: {
        type: Array,
        default: () => [],
    },
    grades: {
        type: Array,
        default: () => [],
    },
    alunos: {
        type: Array,
        default: () => [],
    },
});

const disciplinas = ref([...props.disciplinas]);
const cursos = ref([...props.cursos]);
const grades = ref([...props.grades]);
const alunos = ref([...props.alunos]);
console.log(props.alunos)
const cursoAntiga = ref();
const cursoNova = ref();
const gradeAntiga = ref();
const gradeNova = ref();
const disciplinaInsert = ref();
const usuarioSelecionado = ref();

const salvarEquiv = async () => {
    const url = isEditing.value ? `/equivalencia/${equivalenciaAtual.value.id}` : '/equivalencia';
    const method = isEditing.value ? 'put' : 'post';

    try {
        await axios[method](url, {
            titulo: equivalenciaAtual.value.titulo,
            disciplinas: selectedDisciplina1.value,
            _token: usePage().props.csrf_token,
        });

        window.location.href = '/equivalencia';
    } catch (error) {
        console.error("Erro ao salvar o curso:", error);
    }
}

</script>

<template>
    <AuthenticatedLayout>
        <div class="max-w-4xl mx-auto shadow-md rounded px-8 pt-6 pb-8 mt-4">
            <h2 class="mb-4 text-2xl font-bold text-center">Criar Geração de Equivalência</h2>
            <form @submit.prevent="salvarEquiv" class="space-y-4">
                <input type="hidden" name="_token" :value="$page.props.csrf_token">

                <div class="mt-4">
                    <label class="block text-sm font-bold mb-2" for="usuario_selecionado">Nome do Aluno</label>
                    <MultiSelect
                        v-model="usuarioSelecionado"
                        :options="alunos"
                        optionLabel="name"
                        optionValue="id"
                        filter
                        placeholder="escolha apenas um aluno"
                        class="w-full"
                    />
                </div>

                <!-- Seleção de Cursos -->
                <div class="flex flex-col md:flex-row gap-4">
                    <div class="w-full">
                        <label class="block text-sm font-bold mb-2" for="curso_antigo">Curso Antigo</label>
                        <MultiSelect
                            v-model="cursoAntiga"
                            :options="cursos"
                            optionLabel="titulo"
                            optionValue="id"
                            filter
                            placeholder="Selecione o curso antigo"
                            class="w-full"
                        />
                    </div>

                    <div class="w-full">
                        <label class="block text-sm font-bold mb-2" for="curso_novo">Curso Novo</label>
                        <MultiSelect
                            v-model="cursoNova"
                            :options="cursos"
                            optionLabel="titulo"
                            optionValue="id"
                            filter
                            placeholder="Selecione o curso novo"
                            class="w-full"
                        />
                    </div>
                </div>

                <!-- Seleção de Grades -->
                <div class="flex flex-col md:flex-row gap-4 mt-4">
                    <div class="w-full">
                        <label class="block text-sm font-bold mb-2" for="grade_antiga">Grade Antiga</label>
                        <MultiSelect
                            v-model="gradeAntiga"
                            :options="grades"
                            optionLabel="titulo"
                            optionValue="id"
                            filter
                            placeholder="Selecione a grade antiga"
                            class="w-full"
                        />
                    </div>

                    <div class="w-full">
                        <label class="block text-sm font-bold mb-2" for="grade_nova">Grade Nova</label>
                        <MultiSelect
                            v-model="gradeNova"
                            :options="grades"
                            optionLabel="titulo"
                            optionValue="id"
                            filter
                            placeholder="Selecione a grade nova"
                            class="w-full"
                        />
                    </div>
                </div>

                <!-- Seleção de Disciplinas -->
                <div>
                    <div>
                        <label class="block text-sm font-bold mb-2" for="disciplina_insert">Disciplinas</label>
                        <MultiSelect
                            v-model="disciplinaInsert"
                            :options="disciplinas"
                            optionLabel="titulo"
                            optionValue="id"
                            filter
                            placeholder="Selecione as disciplinas"
                            class="w-full"
                        />
                    </div>

                    <div class="w-full">
                        <label class="block text-sm font-bold mb-2" for="ch_insert">Carga Horária</label>
                        <input
                               class="block w-full bg-gray-200 text-gray-700 border rounded py-2 px-4 focus:outline-none focus:bg-white"
                               id="ch_insert" name="ch_insert" type="number" placeholder="Carga Horária" required>
                    </div>
                </div>

                <!-- Título de Geração -->
                <div class="mt-4">
                    <label class="block text-sm font-bold mb-2" for="titulo_geracao">Título da Geração</label>
                    <input
                           class="block w-full bg-gray-200 text-gray-700 border rounded py-2 px-4 focus:outline-none focus:bg-white"
                           id="titulo_geracao" name="titulo_geracao" type="text" placeholder="Título da geração de equivalências" required>
                </div>

                <!-- Botão de Envio -->
                <div class="flex items-center justify-center mt-4">
                    <button
                        class="bg-orange-500 hover:bg-orange-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline"
                        type="submit">
                        Criar Geração de Equivalência
                    </button>
                </div>
            </form>
        </div>
    </AuthenticatedLayout>
</template>
