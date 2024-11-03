<script setup>
import CursoCreate from './CursoCreate.vue';

const props = defineProps({
    curso: {
        type: Object,
        default: () => ({id: '', titulo: '', id_disciplina: ''}),
    },
    selectedGrades: {
        type: Array,
        default: () => [],
    },
    availableGrades: {
        type: Array,
        default: () => [],
    }
});



</script>
<template>
    <CursoCreate :curso="curso" :selectedGrade="selectedGrades" :available-grades="availableGrades" :isEditing="true"/>
</template>
