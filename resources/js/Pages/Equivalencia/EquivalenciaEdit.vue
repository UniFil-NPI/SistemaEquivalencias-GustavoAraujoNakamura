<template>
    <DisciplinaCreate :equivalencia="$page.props.equivalencia" :selectedDisciplinas="$page.props.selectedDisciplinas" :disciplinas="$page.props.disciplinas" :isEditing="true"/>
</template>

<script>
import DisciplinaCreate from './EquivalenciaCreate.vue';
import axios from 'axios';
import { usePage } from '@inertiajs/vue3';

const page = usePage();

export default {
    components: {
        DisciplinaCreate,
    },
    data() {
        return {
            equivalencia: {id: '', titulo: '', ativo: '', modalidade: ''},
            disciplinas: {
                type: Array,
                default: () => [],
            },
            selectedDisciplinas: [],
        };
    },
    async mounted() {
        await this.carregarDisciplina();
    },
    methods: {
        async carregarDisciplina() {
            try {
                const response = await axios.get(route('disciplina.show', page.props.disciplina.id));
                this.disciplina = response.data;
            } catch (error) {
                console.error(error);
            }
        },
    },
};
</script>
