<script setup>
import GradeCreate from './GradeCreate.vue';
import axios from 'axios';
import { usePage, useForm } from '@inertiajs/vue3';
import {onMounted} from "vue";

const props = defineProps({
    grade: {
        type: Object,
        default: () => ({id: '', titulo: '', id_disciplina: '', ch: '', periodo: '', ativo: false}),
    },
    selectedDisciplinas: {
        type: Array,
        default: () => [],
    },
    disciplinas: {
        type: Array,
        default: () => [],
    },
});

onMounted(async () => {
    console.log('props.grade:', props.selectedDisciplinas);
});

const carregarGrade = async () => {
    const page = usePage();
    try {
        const response = await axios.get(route('grade.show', page.props.grade.id));
        this.grade = response.data;
    } catch (error) {
        console.error("Erro ao carregar a grade:", error);
    }
};
</script>

<template>
    <GradeCreate :grade="grade" :disciplinas="disciplinas" :selected-disciplinas="selectedDisciplinas" :isEditing="true"/>
</template>
