<script setup>
import {ref} from 'vue';
import DataTable from 'primevue/datatable';
import Column from 'primevue/column';
import Button from 'primevue/button';
import Dialog from 'primevue/dialog';
import {usePage} from '@inertiajs/vue3';
import {useRouter} from 'vue-router';
import axios from 'axios';

const page = usePage();
const disciplina = page.props.disciplina;
const router = useRouter();
const displayConfirmation = ref(false);
const selectedDisciplinaId = ref(null);

const editDisciplina = (id) => {
    router.push({name: 'disciplina.edit', params: {id: id}});
};

const confirmDeleteDisciplina = (id) => {
    selectedDisciplinaId.value = id;
    displayConfirmation.value = true;
};

const deleteDisciplina = async () => {
    try {
        await axios.delete(route('disciplina.destroy', selectedDisciplinaId.value));
        displayConfirmation.value = false;
        window.location.reload();  // Reload the entire page
    } catch (error) {
        console.error(error);
    }
};
</script>

<template>
    <div class="max-w-4xl mx-auto bg-white shadow-md rounded px-8 pt-6 pb-8 mt-4">
        <h2 class="mb-4 text-2xl font-bold text-center">Listas Disciplinas</h2>
        <DataTable :value="$page.props.disciplina" paginator :rows="10">
            <Column field="codigo" header="Código"></Column>
            <Column field="titulo" header="Titulo"></Column>
            <column field="modalidade" header="Modalidade"></column>
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
                            @click="confirmDeleteDisciplina(slotProps.data.id)"></Button>
                </template>
            </Column>
        </DataTable>

        <Dialog header="Confirmação" v-model:visible="displayConfirmation" :closable="false" :modal="true"
                class="p-fluid">
            <p>Tem certeza que deseja excluir esta disciplina?</p>
            <div class="button-group my-2">
                <Button label="Não" icon="pi pi-times" class="p-button-text" @click="displayConfirmation = false"/>
                <Button label="Sim" icon="pi pi-check" class="p-button-text p-button-danger" @click="deleteDisciplina"/>
            </div>
        </Dialog>
    </div>
</template>

<style>
.button-group {
    display: flex;
    justify-content: flex-end;
    gap: 0.5rem; /* Adiciona um espaço entre os botões */
}
</style>
