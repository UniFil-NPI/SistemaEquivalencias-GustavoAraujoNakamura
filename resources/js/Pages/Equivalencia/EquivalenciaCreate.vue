<script setup>
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout.vue";
import MultiSelect from "primevue/multiselect";
import { ref } from 'vue';
import axios from "axios";
import {usePage} from "@inertiajs/vue3";

const props = defineProps({
    equivalencia: {
        type: Object,
        default: () => ({id: '', titulo: '', curso: '', equivalencia: ''}),
    },
    isEditing: {
        type: Boolean,
        default: false
    },
    disciplinas: {
        type: Array,
        default: () => [],
    },
    selectedDisciplinas: {
        type: Array,
        default: () => [],
    }
});

const disciplinas = ref([...props.disciplinas]);
const isEditing = ref(props.isEditing);

// Variáveis independentes para cada MultiSelect
const selectedDisciplina1 = ref([...props.selectedDisciplinas]);

const equivalencias = ref({...props.equivalencia});
const equivalenciaAtual = ref({...props.equivalencia});

const salvarEquivalencia = async () => {
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

const voltar = () => {
    window.location.href = '/equivalencia';
}

</script>
<template>
    <authenticated-layout>
        <div class="max-w-4xl mx-auto rounded px-8 pt-6 pb-8 mt-4">
            <h2 class="mb-4 text-2xl font-bold text-center">{{
                    isEditing ? 'Editar Equivalencia' : 'Criar Equivalencia'
                }}</h2>
            <div class="flex items-center justify-between">
                <button
                    class="bg-gray-500 hover:bg-gray-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline"
                    type="button"
                    @click="voltar">
                    Voltar
                </button>
            </div>

            <form @submit.prevent="salvarEquivalencia" class="space-y-4">
                <input type="hidden" name="_method" :value="isEditing ? 'patch' : 'post' ">
                <input type="hidden" name="_token" :value="$page.props.csrf_token">
                <input type="hidden" name="id" :value="equivalenciaAtual.id">

                <!-- Título -->
                <div class="w-full px-6">
                    <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="titulo">
                        Título da equivalência
                    </label>
                    <input v-model="equivalenciaAtual.titulo"
                           class="appearance-none block w-full bg-gray-200 text-gray-700 border rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white"
                           id="titulo" name="titulo" type="text" placeholder="Título da equivalencia" required>
                </div>

                <!-- Disciplina -->
                <div>
                    <label class="block text-sm font-bold mb-2" for="id_disciplina1">Disciplina</label>
                    <MultiSelect
                        v-model="selectedDisciplina1"
                        :options="disciplinas"
                        optionLabel="titulo"
                        name="id_disciplina1"
                        optionValue="id"
                        filter
                        placeholder="Escolha uma disciplina"
                        class="w-full md:w-20rem"
                    />
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
    </authenticated-layout>
</template>
