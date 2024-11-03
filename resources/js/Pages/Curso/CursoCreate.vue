<script setup>
import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout.vue';
import axios from 'axios';
import MultiSelect from 'primevue/multiselect';
import {ref} from "vue";
import {usePage} from "@inertiajs/vue3";

const props = defineProps({
    curso: {
        type: Object,
        default: () => ({id: '', titulo: '', ano: '', ativo: false}),
    },
    grades: {
        type: Array,
        default: () => [],
    },
    isEditing: {
        type: Boolean,
        default: false,
    },
    availableGrades: {
        type: Array,
        default: () => [],
    },
    selectedGrade: {
        type: Array,
        default: () => [],
    }
});

const curso = ref({ ...props.curso });
const grades = ref(props.grades);
const isEditing = ref(props.isEditing);
const availableGrades = ref(props.availableGrades);
const selectedGrade = ref([...props.selectedGrade]);

const salvarCurso = async () => {
    const url = isEditing.value ? `/curso/${curso.value.id}` : '/curso';
    const method = isEditing.value ? 'put' : 'post';

    try {
        await axios[method](url, {
            id: curso.value,
            grade: selectedGrade.value,
            _token: usePage().props.csrf_token,
        });

        window.location.href = '/curso';
    } catch (error) {
        console.error("Erro ao salvar o curso:", error);
    }
    window.location.href = '/curso';
};

const voltar = () => {
    window.location.href = '/curso';
};

</script>

<template>
    <authenticated-layout>
        <div class="max-w-4xl mx-auto shadow-md rounded px-8 pt-6 pb-8 mt-4">
            <h2 class="mb-4 text-2xl font-bold text-center">{{ isEditing ? 'Editar Curso' : 'Criar Curso' }}</h2>
            <form @submit.prevent="salvarCurso" class="space-y-4">
                <input type="hidden" name="_token" :value="$page.props.csrf_token">
                <div class="flex justify-start mb-4">
                    <button
                        type="button"
                        @click="voltar"
                        class="bg-gray-500 hover:bg-gray-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline">
                        Voltar
                    </button>
                </div>
                <div>
                    <label class="block text-sm font-bold mb-2" for="titulo">Título do Curso</label>
                    <input v-model="curso.titulo"
                           class="block w-full bg-gray-200 text-gray-700 border rounded py-2 px-4 focus:outline-none focus:bg-white"
                           id="titulo" name="titulo" type="text" placeholder="Título do Curso" required>
                </div>

                <div>
                    <label class="block text-sm font-bold mb-2" for="ano">Ano do Curso</label>
                    <input v-model.number="curso.ano"
                           class="block w-full bg-gray-200 text-gray-700 border rounded py-2 px-4 focus:outline-none focus:bg-white"
                           id="ano" name="ano" type="number" placeholder="Ano do Curso" required>
                </div>

                <div>
                    <label class="block text-sm font-bold mb-2" for="grade">Grades</label>
                    <MultiSelect
                        v-model="selectedGrade"
                        :options="availableGrades"
                        optionLabel="titulo"
                        optionValue="id"
                        filter
                        placeholder="Escolha as grades"
                        class="w-full md:w-20rem"
                    />
                </div>
                <div class="flex items-center justify-between">
                    <button
                        class="bg-orange-500 hover:bg-orange-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline"
                        type="submit">
                        {{ isEditing ? 'Atualizar Curso' : 'Criar Curso' }}
                    </button>
                </div>
            </form>
        </div>
    </authenticated-layout>
</template>
