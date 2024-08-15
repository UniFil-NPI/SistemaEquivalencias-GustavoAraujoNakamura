<template>
    <GradeCreate :grade="grade" :isEditing="true"/>
</template>

<script>
import GradeCreate from './GradeCreate.vue';
import axios from 'axios';
import { usePage } from '@inertiajs/vue3';

export default {
    components: {
        GradeCreate,
    },
    data() {
        return {
            grade: { id: '', titulo: '', id_disciplina: '', ch: '', periodo: '', ativo: false },
        };
    },
    async mounted() {
        await this.carregarGrade();
    },
    methods: {
        async carregarGrade() {
            const page = usePage();
            try {
                const response = await axios.get(route('grade.show', page.props.grade.id));
                this.grade = response.data;
            } catch (error) {
                console.error("Erro ao carregar a grade:", error);
            }
        },
    },
};
</script>
