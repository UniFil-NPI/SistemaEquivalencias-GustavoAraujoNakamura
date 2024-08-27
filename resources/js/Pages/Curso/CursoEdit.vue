<template>
    <CursoCreate :curso="curso" :isEditing="true"/>
</template>

<script>
import CursoCreate from './CursoCreate.vue';
import axios from 'axios';
import { usePage } from '@inertiajs/vue3';

const page = usePage();

export default {
    components: {
        CursoCreate,
    },
    data() {
        return {
            curso: { id: '', titulo: '', ano: '', ativo: false },
        };
    },
    async mounted() {
        await this.carregarCurso();
    },
    methods: {
        async carregarCurso() {
            const page = usePage();
            try {
                const response = await axios.get(route('curso.show', page.props.curso.id));
                this.curso = response.data;
            } catch (error) {
                console.error("Erro ao carregar a curso:", error);
            }
        },
    },
};
</script>
