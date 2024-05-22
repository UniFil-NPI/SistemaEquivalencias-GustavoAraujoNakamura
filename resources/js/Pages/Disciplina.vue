<script setup>
import DataTable from 'primevue/datatable';
import Column from 'primevue/column';
import Button from 'primevue/button';
import {usePage} from '@inertiajs/vue3';
import {useRouter} from 'vue-router';
import axios from 'axios';

const page = usePage();
const disciplina = page.props.disciplina;
const router = useRouter();
const editDisciplina = (id) => {
    router.push({name: 'disciplina.edit', params: {id: id}});
};

const deleteDisciplina = async (id) => {
    try {
        await axios.delete(route('disciplina.destroy', id));
        router.go();
    } catch (error) {
        console.error(error);
    }
};
</script>

<template>
    <DataTable :value="$page.props.disciplina" paginator :rows="10">
        <Column field="codigo" header="Código"></Column>
        <Column field="titulo" header="Titulo"></Column>
        <Column field="tipo" header="Tipo"></Column>
        <Column field="periodo" header="Período"></Column>
        <Column field="carga_horaria" header="Carga Horária"></Column>
        <Column field="ativo" header="Ativo">
            <template #body="slotProps">
                <span>{{ slotProps.data.ativo ? 'Ativado' : 'Desativado' }}</span>
            </template>
        </Column>
        <Column>
            <template #body="slotProps">
                <Button icon="pi pi-pencil" class="p-button-rounded p-button-success p-button-outlined p-mr-2"
                        @click="editDisciplina(slotProps.data.id)"></Button>
                <Button icon="pi pi-trash" class="p-button-rounded p-button-danger p-button-outlined"
                        @click="deleteDisciplina(slotProps.data.id)"></Button>
            </template>
        </Column>
    </DataTable>
</template>
