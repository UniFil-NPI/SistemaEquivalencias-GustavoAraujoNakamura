<script setup>
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout.vue";
import axios from 'axios';
import { usePage } from '@inertiajs/vue3';
import MultiSelect from 'primevue/multiselect';

// export default {
//     components: {
//         AuthenticatedLayout,
//         MultiSelect,
//     },
//     props: {
//         grades: {
//             type: Array,
//             default: () => [],
//         },
//         disciplinas: {
//             type: Array,
//             default: () => [],
//         },
//         isEditing: {
//             type: Boolean,
//             default: false,
//         }
//     },
//     data() {
//         return {
//             csrfToken: usePage().props.csrf_token,
//             grades: this.grades,
//             disciplinas: this.disciplinas,
//             gradeAntiga: null,
//             gradeNova: null,
//             disciplinaInsert: null,
//             chInsert: '',
//             tituloGeracao: '',
//         };
//     },
//     methods: {
//         async SalvarGerarEquivalencias() {
//             const url = this.isEditing ? `/gerarEquivalencia/${this.GerarEquivalencia.id}` : '/GerarEquivalencia';
//             const method = this.isEditing ? 'put' : 'post';
//
//             try {
//                 await axios[method](url, {
//                     ...this.gerarEquivalencias,
//                     gerarEquivalencias: this.selectedGerarEquivalencias,
//                     _token: this.csrfToken,
//                 });
//
//                 window.location.href = '/gerarEquivalencia';
//             } catch (error) {
//                 console.error("Erro ao salvar o Gerar Equivalencia:", error);
//             }
//         },
//         async carregarGrades() {
//             try {
//                 if (this.grades.length > 0) {
//                     this.availableGrades = this.grades;
//                 } else {
//                     const response = await axios.get('/api/grade');
//                     this.availableGrades = response.data;
//                 }
//             } catch (error) {
//                 console.error("Erro ao carregar as grades:", error);
//             }
//         },
//         async carregarDisciplinas() {
//             try {
//                 if (this.disciplinas.length > 0) {
//                     this.availableDisciplinas = this.disciplinas;
//                 } else {
//                     const response = await axios.get('/api/disciplina');
//                     this.availableDisciplinas = response.data;
//                 }
//             } catch (error) {
//                 console.error("Erro ao carregar as disciplinas:", error);
//             }
//         }
//     },
//     async mounted() {
//         await this.carregarGrades();
//         await this.carregarDisciplinas();
//     },
// };
</script>
<template>
    <authenticated-layout>
        <div class="max-w-4xl mx-auto shadow-md rounded px-8 pt-6 pb-8 mt-4">
            <h2 class="mb-4 text-2xl font-bold text-center">{{ isEditing ? 'Editar Curso' : 'Criar Curso' }}</h2>
            <form @submit.prevent="SalvarGerarEquivalencias" class="space-y-4">
                <input type="hidden" name="_token" :value="csrfToken">

                <!-- Seleção de Grades -->
                <div class="flex flex-col md:flex-row gap-4">
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
                <div class="flex flex-col md:flex-row gap-4">
                    <div class="w-full">
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
                        <input v-model="chInsert"
                               class="block w-full bg-gray-200 text-gray-700 border rounded py-2 px-4 focus:outline-none focus:bg-white"
                               id="ch_insert" name="ch_insert" type="number" placeholder="Carga Horária" required>
                    </div>
                </div>

                <!-- Título de Geração -->
                <div>
                    <label class="block text-sm font-bold mb-2" for="titulo_geracao">Título da Geração</label>
                    <input v-model="tituloGeracao"
                           class="block w-full bg-gray-200 text-gray-700 border rounded py-2 px-4 focus:outline-none focus:bg-white"
                           id="titulo_geracao" name="titulo_geracao" type="text" placeholder="Título da geração de equivalências" required>
                </div>

                <!-- Botão de Envio -->
                <div class="flex items-center justify-center mt-4">
                    <button
                        class="bg-orange-500 hover:bg-orange-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline"
                        type="submit">
                        Gerar Equivalência
                    </button>
                </div>
            </form>
        </div>
    </authenticated-layout>
</template>
