<template>
    <DisciplinaCreate :disciplina="disciplina" :isEditing="true"/>
</template>

<script>
import DisciplinaCreate from './DisciplinaCreate.vue';
import axios from 'axios';

export default {
    components: {
        DisciplinaCreate,
    },
    data() {
        return {
            disciplina: {codigo: '', titulo: '', tipo: '', periodo: '', carga_horaria: 0, ativo: ''},
        };
    },
    mounted() {
        this.carregarDisciplina();
    },
    methods: {
        async carregarDisciplina() {
            try {
                const response = await axios.get(`/disciplina/${this.$route.params.id}`);
                if (response.data) {
                    this.disciplina = response.data;
                } else {
                    console.error('No data returned from the API');
                }
            } catch (error) {
                console.error(error);
            }
        }
    }
}
;
</script>
