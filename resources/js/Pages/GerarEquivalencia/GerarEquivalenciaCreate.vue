<script setup>
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout.vue";
import axios from 'axios';
import {usePage} from '@inertiajs/vue3';
import MultiSelect from 'primevue/multiselect';
import InputText from 'primevue/inputtext';
import Dropdown from 'primevue/dropdown';
import {onMounted, ref, watch} from "vue";

const props = defineProps({
    disciplinas: {
        type: Array,
        default: () => [],
    },
    disciplinasSelecionadas: {
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
    cursoAntiga: {
    },
    cursoNova: {
    },
    gradeAntiga: {},
    gradeNova: {},
    isEditing: {
        type: Boolean,
        default: false
    },
    equivalenciaAtual: {
        type: Object,
        default: () => ({id: '', titulo: '', curso: '', equivalencia: ''}),
    },
    usuarioSelecionado: {}
});

// setting options
const disciplinas = ref();
const cursos = ref([...props.cursos]);
const grades = ref([...props.grades]);
const alunos = ref([...props.alunos]);
const isEditing = ref(props.isEditing);
const equivalenciaAtual = ref({...props.equivalenciaAtual});

// setting state handlers
const cursoAntiga = ref(props.cursoAntiga);
const cursoNova = ref(props.cursoNova);
const gradeAntiga = ref(props.gradeAntiga);
const gradeNova = ref(props.gradeNova);
const disciplinaInsert = ref([...props.disciplinasSelecionadas]);
const usuarioSelecionado = ref(props.usuarioSelecionado);
const titulo = ref(props.equivalenciaAtual?.titulo ?? '');
const chSelecionada = ref(0);

const salvarEquiv = async () => {
    const url = isEditing.value ? `/gerarEquivalencia/${equivalenciaAtual.value.id}` : '/gerarEquivalencia';
    const method = isEditing.value ? 'put' : 'post';

    try {
        await axios[method](url, {
            titulo: titulo.value,
            disciplinas: disciplinaInsert.value,
            curso_antigo: cursoAntiga.value,
            curso_novo: cursoNova.value,
            grade_antiga: gradeAntiga.value,
            grade_nova: gradeNova.value,
            usuarioSelecionado: usuarioSelecionado.value,
            _token: usePage().props.csrf_token,
        });

        window.location.href = '/gerarEquivalencia';
    } catch (error) {
        console.error("Erro ao salvar a gerarEquivalencia:", error);
    }
}

const handleCh = (newVal) => {
    const totalCargaHoraria = newVal.reduce((total, disciplinaId) => {
        const disciplina = disciplinas.value.find(d => d.id === disciplinaId);
        return total + (disciplina ? parseInt(disciplina.carga_horaria, 10) : 0);
    }, 0);

    chSelecionada.value = totalCargaHoraria;
}

onMounted(() => {
    if (isEditing) {
        handleCh(disciplinaInsert.value);
    }
})

watch(disciplinaInsert, (newVal) => {
    handleCh(newVal);
});

watch(gradeNova, async (newVal) => {
    if (newVal) {
        try {
            const response = await axios.get(`/api/grades/${newVal}/disciplinas`);
            disciplinas.value = response.data;
        } catch (error) {
            console.error("Erro ao buscar disciplinas:", error);
        }
    }
});

const voltar = () => {
    window.location.href = '/gerarEquivalencia'; // Verifique se esta URL está correta
}
</script>

<template>
    <AuthenticatedLayout>
        <div class="max-w-4xl mx-auto shadow-md rounded px-8 pt-6 pb-8 mt-4">
            <h2 class="mb-4 text-2xl font-bold text-center">Criar Geração de Equivalência</h2>
            <div class="flex justify-start mb-4">
                <button
                    type="button"
                    @click="voltar"
                    class="bg-gray-500 hover:bg-gray-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline">
                    Voltar
                </button>
            </div>
            <form @submit.prevent="salvarEquiv" class="space-y-4">
                <input type="hidden" name="_token" :value="$page.props.csrf_token">

                <div class="mt-4">
                    <label class="block text-sm font-bold mb-2" for="usuario_selecionado">Nome do Aluno</label>
                    <Dropdown
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
                        <Dropdown
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
                        <Dropdown
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
                        <Dropdown
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
                        <Dropdown
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
                        <InputText
                            class="block w-full bg-transparent"
                            id="ch_insert" name="ch_insert" type="number" v-model="chSelecionada"
                            placeholder="Carga Horária" disabled="disabled" required/>
                    </div>
                </div>

                <!-- Título de Geração -->
                <div class="mt-4">
                    <label class="block text-sm font-bold mb-2" for="titulo_geracao">Título da Geração</label>
                    <input
                        class="block w-full bg-gray-200 text-gray-700 border rounded py-2 px-4 focus:outline-none focus:bg-white"
                        id="titulo_geracao" v-model="titulo" name="titulo_geracao" type="text"
                        placeholder="Título da geração de equivalências" required>
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
