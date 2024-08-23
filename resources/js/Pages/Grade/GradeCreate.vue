<script setup>
import { ref, onMounted, watch } from 'vue';
import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout.vue';
import MultiSelect from 'primevue/multiselect';
import axios from 'axios';
import { usePage, useForm } from '@inertiajs/vue3';

const props = defineProps({
    grade: {
        type: Object,
        default: () => ({id: '', titulo: '', id_disciplina: '', ch: '', periodo: '', ativo: false}),
    },
    disciplinas: {
        type: Array,
        default: () => [],
    },
    isEditing: {
        type: Boolean,
        default: false,
    },
});

const grade = ref({ ...props.grade });
const isIdDisciplinaEnabled = ref(false);
const selectedDisciplinas = ref([]);
const disciplinas = ref(props.disciplinas);
const isEditing = ref(props.isEditing);

onMounted(async () => {
    if (isEditing.value && grade.value.id) {
        await carregarGrade();
    }

    verificarCH();

    console.log('Disciplinas:', disciplinas.value);
    console.log('Selected Disciplinas:', selectedDisciplinas.value);
});

const verificarCH = () => {
    const chInput = document.getElementById('ch');
    const idDisciplinaInput = document.getElementById('id_disciplina');

    chInput.addEventListener('input', () => {
        idDisciplinaInput.disabled = chInput.value <= 0;
    });
};

const carregarGrade = async () => {
    try {
        const response = await axios.get(route('grade.show', grade.value.id));
        grade.value = response.data;
    } catch (error) {
        console.error('Erro ao carregar a grade:', error);
    }
};

const salvarGrade = async () => {
    try {
        const url = isEditing.value ? route('grade.update', grade.value.id) : route('grade.store');
        const method = isEditing.value ? 'put' : 'post';
        const csrfToken = usePage().props.csrf_token;

        await axios[method](url, {
            ...grade.value,
            _token: csrfToken,
        });

        window.location.href = '/grade';
    } catch (error) {
        console.error('Erro ao salvar a grade:', error);
    }
};
</script>

<template>
    <authenticated-layout>
        <div class="max-w-4xl mx-auto bg-white shadow-md rounded px-8 pt-6 pb-8 mt-4">
            <h2 class="mb-4 text-2xl font-bold text-center">{{ isEditing ? 'Editar Grade' : 'Criar Grade' }}</h2>
            <form @submit.prevent="salvarGrade" class="space-y-4">
                <div>
                    <label class="block text-sm font-bold mb-2" for="titulo">Título da Grade</label>
                    <input v-model="grade.titulo"
                           class="block w-full bg-gray-200 text-gray-700 border rounded py-2 px-4 focus:outline-none focus:bg-white"
                           id="titulo" name="titulo" type="text" placeholder="Título da Grade" required>
                </div>

                <div>
                    <label class="block text-sm font-bold mb-2" for="ch">Carga Horária (CH)</label>
                    <input v-model.number="grade.ch"
                           class="block w-full bg-gray-200 text-gray-700 border rounded py-2 px-4 focus:outline-none focus:bg-white"
                           id="ch" name="ch" type="number" placeholder="Carga Horária" required>
                </div>

                <div>
                    <label class="block text-sm font-bold mb-2" for="id_disciplina">ID da Disciplina</label>
                    <MultiSelect v-model="selectedDisciplinas" :options="disciplinas" optionLabel="titulo" filter placeholder="Disciplinas" class="w-full md:w-20rem" />
                </div>

                <div>
                    <label class="block text-sm font-bold mb-2" for="periodo">Período</label>
                    <input v-model.number="grade.periodo"
                           class="block w-full bg-gray-200 text-gray-700 border rounded py-2 px-4 focus:outline-none focus:bg-white"
                           id="periodo" name="periodo" type="number" placeholder="Período" required>
                </div>

                <div class="flex items-center">
                    <label class="block text-sm font-bold mb-2 mr-2" for="ativo">Grade Ativa</label>
                    <input type="checkbox" id="ativo" v-model="grade.ativo"
                           class="form-checkbox h-5 w-5 text-orange-600">
                </div>

                <div class="flex items-center justify-between">
                    <button
                        class="bg-orange-500 hover:bg-orange-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline"
                        type="submit">
                        {{ isEditing ? 'Atualizar Grade' : 'Criar Grade' }}
                    </button>
                </div>
            </form>
        </div>
    </authenticated-layout>
</template>
