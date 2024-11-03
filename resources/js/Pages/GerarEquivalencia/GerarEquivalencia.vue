<script setup>
import { ref } from 'vue';
import DataTable from 'primevue/datatable';
import Column from 'primevue/column';
import Button from 'primevue/button';
import Dialog from 'primevue/dialog';
import { usePage } from '@inertiajs/vue3';
import { useRouter } from 'vue-router';
import axios from 'axios';
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout.vue";
import { useToast } from 'primevue/usetoast';
import Toast from 'primevue/toast';

const toast = useToast();

const page = usePage();
const gerarEquivalencias = page.props.gerarEquivalencias; // Recebe as gerações de equivalências
const router = useRouter();
const displayConfirmation = ref(false);
const selectedGerarEquivalenciaId = ref(null);

const confirmDeleteGerarEquivalencia = (id) => {
    selectedGerarEquivalenciaId.value = id;
    displayConfirmation.value = true;
};

const deleteGerarEquivalencia = async () => {
    try {
        await axios.delete(route('gerarEquivalencia.destroy', selectedGerarEquivalenciaId.value));
        displayConfirmation.value = false;
        window.location.reload();
    } catch (error) {
        console.error(error);
    }
};

const generatePDF = async (data) => {
    try {
        await axios.post(route('pdf.create', data));
    } catch (error) {
        console.error(error);
    }
}

</script>

<template>
    <Toast></Toast>
    <AuthenticatedLayout>
        <div class="max-w-4xl mx-auto shadow-md rounded px-8 pt-6 pb-8 mt-4">
            <h2 class="mb-4 text-2xl font-bold text-center">Lista de Geração de Equivalências</h2>
            <div class="flex justify-end mb-4">
                <a href="/gerarEquivalencia/create" class="p-button p-button-secondary" style="color: white;">
                    <i class="pi pi-plus" style="margin-right: 0.5rem;"></i>
                    Criar Nova Geração
                </a>
            </div>

            <DataTable :value="gerarEquivalencias" paginator :rows="10">
                <Column field="titulo" header="Título"></Column>
                <Column field="user_id" header="Aluno(a)"></Column>
                <Column field="curso_antigo" header="Curso Antigo"></Column>
                <Column field="curso_novo" header="Curso Novo"></Column>
                <Column field="grade_antiga" header="Grade Antiga"></Column>
                <Column field="grade_nova" header="Grade Nova"></Column>
                <Column field="disciplinas_cursadas" header="Disciplinas Cursadas"></Column>
                <Column field="disciplinas_abatidas" header="Disciplinas Abatidas"></Column>
                <Column field="disciplinas_atribuidas" header="Disciplinas Atribuídas"></Column>
                <Column>
                    <template #body="slotProps">
                        <div class="flex justify-end">
                            <a :href="route('gerarEquivalencia.edit', slotProps.data.id)">
                                <Button icon="pi pi-pencil"
                                        class="p-button-rounded p-button-success p-button-outlined p-mr-2"></Button>
                            </a>
                            <Button icon="pi pi-trash" class="p-button-rounded p-button-danger p-button-outlined"
                                    @click="confirmDeleteGerarEquivalencia(slotProps.data.id)">
                            </Button>
                            <Button icon="pi pi-file-pdf" class="p-button-rounded p-button-info p-button-outlined p-mr-2"
                                    @click="generatePDF(slotProps.data)">
                            </Button>
                        </div>
                    </template>
                </Column>
            </DataTable>

            <Dialog header="Confirmação" v-model:visible="displayConfirmation" :closable="false" :modal="true"
                    class="p-fluid">
                <p>Tem certeza que deseja excluir esta Geração de Equivalência?</p>
                <div class="button-group my-2">
                    <Button label="Não" icon="pi pi-times" class="p-button-text" @click="displayConfirmation = false"/>
                    <Button label="Sim" icon="pi pi-check" class="p-button-text p-button-danger"
                            @click="deleteGerarEquivalencia"/>
                </div>
            </Dialog>
        </div>
    </AuthenticatedLayout>
</template>

<style>
.button-group {
    display: flex;
    justify-content: flex-end;
    gap: 0.5rem;
}
</style>
