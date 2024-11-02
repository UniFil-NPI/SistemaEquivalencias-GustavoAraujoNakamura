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
const equivalencia = page.props.equivalencia;
const router = useRouter();
const displayConfirmation = ref(false);
const selectedEquivalenciaId = ref(null);

const confirmDeleteEquivalencia = (id) => {
    selectedEquivalenciaId.value = id;
    displayConfirmation.value = true;
};

const deleteEquivalencia = async () => {
    try {
        await axios.delete(route('equivalencia.destroy', selectedEquivalenciaId.value));
        displayConfirmation.value = false;
        window.location.reload();
    } catch (error) {
        console.error(error);
    }
};
</script>

<template>
    <Toast></Toast>
    <AuthenticatedLayout>
        <div class="max-w-4xl mx-auto shadow-md rounded px-8 pt-6 pb-8 mt-4">
            <h2 class="mb-4 text-2xl font-bold text-center">Lista de Definição Equivalências</h2>
            <div class="flex justify-end mb-4">
                <a href="/equivalencia/create" class="p-button p-button-secondary" style="color: white;">
                    <i class="pi pi-plus" style="margin-right: 0.5rem;"></i>
                    Criar Nova Equivalência
                </a>
            </div>
            <DataTable :value="equivalencia" paginator :rows="10">
                <Column field="titulo" header="Titulo"></Column>
                <Column field="disciplinas" header="Disciplinas"></Column>
<!--                <Column field="ativo" header="Ativo">-->
<!--                    <template #body="slotProps">-->
<!--                        <span>{{ slotProps.data.ativo ? 'Ativado' : 'Desativado' }}</span>-->
<!--                    </template>-->
<!--                </Column>-->
                <Column>
                    <template #body="slotProps">
                        <div class="flex justify-end">
                            <a :href="route('equivalencia.edit', slotProps.data.id)">
                                <Button icon="pi pi-pencil"
                                        class="p-button-rounded p-button-success p-button-outlined p-mr-2"></Button>
                            </a>
                            <Button icon="pi pi-trash" class="p-button-rounded p-button-danger p-button-outlined"
                                    @click="confirmDeleteEquivalencia(slotProps.data.id)"></Button>
                        </div>
                    </template>
                </Column>
            </DataTable>

            <Dialog header="Confirmação" v-model:visible="displayConfirmation" :closable="false" :modal="true"
                    class="p-fluid">
                <p>Tem certeza que deseja excluir esta Equivalência?</p>
                <div class="button-group my-2">
                    <Button label="Não" icon="pi pi-times" class="p-button-text" @click="displayConfirmation = false"/>
                    <Button label="Sim" icon="pi pi-check" class="p-button-text p-button-danger"
                            @click="deleteEquivalencia"/>
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
