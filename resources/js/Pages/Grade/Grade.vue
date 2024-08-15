<script setup>
import {ref} from 'vue';
import DataTable from 'primevue/datatable';
import Column from 'primevue/column';
import Button from 'primevue/button';
import Dialog from 'primevue/dialog';
import {usePage} from '@inertiajs/vue3';
import {useRouter} from 'vue-router';
import axios from 'axios';
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout.vue";
import { useToast } from 'primevue/usetoast';
import Toast from 'primevue/toast';

const toast = useToast();

const page = usePage();
const grade = page.props.grade;
const router = useRouter();
const displayConfirmation = ref(false);
const selectedGradeId = ref(null);

const confirmDeleteGrade = (id) => {
    selectedGradeId.value = id;
    displayConfirmation.value = true;
};

const deleteGrade = async () => {
    try {
        await axios.delete(route('grade.destroy', selectedGradeId.value));
        displayConfirmation.value = false;
        window.location.reload();
    } catch (error) {
        console.error(error);
    }
};
// function teste() {
//     toast.add({severity: 'success', summary: 'Success Message', detail: 'Message Content', life: 3000});
// }
</script>

<template>
    <Toast></Toast>
    <AuthenticatedLayout>
        <div class="max-w-4xl mx-auto bg-white shadow-md rounded px-8 pt-6 pb-8 mt-4">
            <h2 class="mb-4 text-2xl font-bold text-center">Lista de Grade</h2>
            <div class="flex justify-end mb-4">
                <a href="/grade/create" class="p-button p-button-secondary" style="color: white;">
                    <i class="pi pi-plus" style="margin-right: 0.5rem;"></i>
                    Criar Nova Grade
                </a>
            </div>
            <DataTable :value="grade" paginator :rows="10">
                <Column field="titulo" header="Título"></Column>
                <Column field="ch" header="Carga Horária"></Column>
                <Column field="periodo" header="Período"></Column>
                <Column field="ativo" header="Ativo">
                    <template #body="slotProps">
                        <span>{{ slotProps.data.ativo ? 'Ativado' : 'Desativado' }}</span>
                    </template>
                </Column>
                <Column>
                    <template #body="slotProps">
                        <a :href="route('grade.edit', slotProps.data.id)">
                            <Button icon="pi pi-pencil"
                                    class="p-button-rounded p-button-success p-button-outlined p-mr-2"></Button>
                        </a>
                        <Button icon="pi pi-trash" class="p-button-rounded p-button-danger p-button-outlined"
                                @click="confirmDeleteGrade(slotProps.data.id)"></Button>
                    </template>
                </Column>
            </DataTable>

            <Dialog header="Confirmação" v-model:visible="displayConfirmation" :closable="false" :modal="true"
                    class="p-fluid">
                <p>Tem certeza que deseja excluir esta grade?</p>
                <div class="button-group my-2">
                    <Button label="Não" icon="pi pi-times" class="p-button-text" @click="displayConfirmation = false"/>
                    <Button label="Sim" icon="pi pi-check" class="p-button-text p-button-danger"
                            @click="deleteGrade"/>
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
