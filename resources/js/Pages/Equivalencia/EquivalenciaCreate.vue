<script setup>
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout.vue";
import MultiSelect from "primevue/multiselect";
import { ref, onMounted } from 'vue';

const props = defineProps({
    equivalencia: {
        type: Object,
        default: () => ({titulo: '', curso: '', equivalencia: ''}),
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

const selectedDisciplinas = ref([]);
const disciplinas = ref(props.disciplinas);
const isEditing = ref(props.isEditing);

onMounted(async () => {
    selectedDisciplinas.value = props.selectedDisciplinas;
});

const equivalencias = ref({...props.equivalencia});
const equivalenciaAtual = ref({...props.equivalencia});

// Variáveis independentes para cada MultiSelect
const selectedDisciplina1 = ref([]);
const selectedDisciplina2 = ref([]);

</script>
<template>
    <authenticated-layout>
        <div class="max-w-4xl mx-auto shadow-md rounded px-8 pt-6 pb-8 mt-4">
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

            <form class="space-y-4" method="post"
                  :action="isEditing ? '/equivalencia/' + equivalenciaAtual.id : '/equivalencia'">
                <input type="hidden" name="_method" :value="isEditing ? 'patch' : 'post' ">
                <input type="hidden" name="_token" :value="$page.props.csrf_token">

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
                        optionValue="id"
                        filter
                        placeholder="Escolha uma disciplina"
                        class="w-full md:w-20rem"
                    />
                </div>

                <div>
                    <label class="block text-sm font-bold mb-2" for="id_disciplina2">Disciplina 2</label>
                    <MultiSelect
                        v-model="selectedDisciplina2"
                        :options="disciplinas"
                        optionLabel="titulo"
                        optionValue="id"
                        filter
                        placeholder="Escolha as disciplinas equivalentes da disciplina acima"
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
