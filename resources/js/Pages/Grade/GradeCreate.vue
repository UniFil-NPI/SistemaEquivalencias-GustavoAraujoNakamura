<script setup>
    import { ref, onMounted } from 'vue';
import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout.vue';
import MultiSelect from 'primevue/multiselect';
import axios from 'axios';
import { usePage } from '@inertiajs/vue3';

const props = defineProps({
    grade: {
        type: Object,
        default: () => ({id: '', titulo: '', id_disciplina: ''}),
    },
    disciplinas: {
        type: Array,
        default: () => [],
    },
    isEditing: {
        type: Boolean,
        default: false,
    },
    selectedDisciplinas: {
        type: Array,
        default: () => [],
    }
});

const grade = ref({ ...props.grade });
const selectedDisciplinas = ref([]);
const disciplinas = ref(props.disciplinas);
const isEditing = ref(props.isEditing);

onMounted(async () => {
    selectedDisciplinas.value = props.selectedDisciplinas;
});


const salvarGrade = async () => {
    try {
        const url = isEditing.value ? route('grade.update', grade.value.id) : route('grade.store');
        const method = isEditing.value ? 'patch' : 'post';
        const csrfToken = usePage().props.csrf_token;
        const body = {grade:grade.value, disciplinas: selectedDisciplinas.value}

        await axios[method](url, {
            body,
            _token: csrfToken,
        });

        window.location.href = '/grade';
    } catch (error) {
        console.error('Erro ao salvar a grade:', error);
    }
};
    const voltar = () => {
        window.location.href = '/grade';
    };
</script>

<template>
    <authenticated-layout>
        <div class="max-w-4xl mx-auto shadow-md rounded px-8 pt-6 pb-8 mt-4">
            <h2 class="mb-4 text-2xl font-bold text-center">{{ isEditing ? 'Editar Grade' : 'Criar Grade' }}</h2>
            <form @submit.prevent="salvarGrade" class="space-y-4">
                <div class="flex justify-start mb-4">
                    <button
                        type="button"
                        @click="voltar"
                        class="bg-gray-500 hover:bg-gray-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline">
                        Voltar
                    </button>
                </div>

                <div>
                    <label class="block text-sm font-bold mb-2" for="titulo">Título da Grade</label>
                    <input v-model="grade.titulo"
                           class="block w-full bg-gray-200 text-gray-700 border rounded py-2 px-4 focus:outline-none focus:bg-white"
                           id="titulo" name="titulo" type="text" placeholder="Título da Grade" required>
                </div>

                <div>
                    <label class="block text-sm font-bold mb-2" for="id_disciplina">Disciplinas</label>
                    <MultiSelect
                        v-model="selectedDisciplinas"
                        :options="disciplinas"
                        optionLabel="titulo"
                        optionValue="id"
                        filter
                        placeholder="Disciplinas"
                        class="w-full md:w-20rem"
                    />
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
