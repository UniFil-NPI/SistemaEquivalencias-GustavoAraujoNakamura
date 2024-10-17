<template>
    <DisciplinaCreate :disciplina="$page.props.disciplina" :isEditing="true"/>
</template>

<script>
import DisciplinaCreate from './DisciplinaCreate.vue';
import axios from 'axios';
import {router} from "@inertiajs/vue3"
import { usePage } from '@inertiajs/vue3';

const page = usePage();

export default {
    components: {
        DisciplinaCreate,
    },
    data() {
        return {
            disciplina: {id: '', codigo: '', titulo: '', tipo: '', periodo: '', carga_horaria: 0, ativo: '', modalidade: ''},
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
