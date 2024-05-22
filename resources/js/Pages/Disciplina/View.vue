<template>
    <DataTable :value="disciplina">
        <Column field="codigo" header="Codigo"></Column>
        <Column field="titulo" header="Titulo"></Column>
        <Column field="carga_horaria" header="Carga Horaria"></Column>
        <Column field="tipo" header="Tipo"></Column>
    </DataTable>
</template>


<script setup>
import { ref } from 'vue';

const disciplinaAtual = ref({
    codigo: '',
    titulo: '',
    tipo: '',
    periodo: '',
    carga_horaria: '',
    ativo: false
});

// ...other reactive properties and methods...
</script>
