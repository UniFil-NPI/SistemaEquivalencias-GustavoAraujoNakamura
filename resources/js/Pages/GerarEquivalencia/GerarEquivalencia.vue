<script setup>
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout.vue"
import axios from 'axios';
import { usePage } from '@inertiajs/vue3';
import MultiSelect from 'primevue/multiselect';
// import { ref } from 'vue';

// const grades = ref([]);             // Lista de grades disponíveis
// const disciplinas = ref([]);         // Lista de disciplinas disponíveis
// const gradeAntiga = ref(null);       // Grade antiga selecionada
// const gradeNova = ref(null);         // Grade nova selecionada
// const disciplinaInsert = ref(null);  // Disciplina selecionada
// const chInsert = ref('');            // Carga horária da disciplina
// const tituloGeracao = ref('');       // Título da geração de equivalência
// const isEditing = ref(false);        // Variável condicional para título

export default {
    components: {
        AuthenticatedLayout,
        MultiSelect,
    },
    props: {
        grades: {
            type: Array,
            default: () => [],
        },
        disciplinas: {
            type: Array,
            default: () => [],
        },
        isEditing: {
            type: Boolean,
            default: false,
        }
    },
    data() {
        return {
            csrfToken: usePage().props.csrf_token,
            grades: this.grades,
            disciplinas: this.disciplinas,
            gradeAntiga: null,
            gradeNova: null,
            disciplinaInsert: null,
            chInsert: '',
            tituloGeracao: '',
        };
    },
}
</script>

<template>
    <authenticated-layout>
        <div class="max-w-4xl mx-auto shadow-md rounded px-8 pt-6 pb-8 mt-4">
            <h2 class="mb-4 text-2xl font-bold text-center">{{ isEditing ? 'Editar Curso' : 'Criar Curso' }}</h2>
            <form @submit.prevent="gerarEquivalencias" class="space-y-4">
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
                        <label class="block text-sm font-bold mb-2" for="disciplina_insert">Disciplina</label>
                        <MultiSelect
                            v-model="disciplinaInsert"
                            :options="disciplinas"
                            optionLabel="titulo"
                            optionValue="id"
                            filter
                            placeholder="Selecione uma disciplina"
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
