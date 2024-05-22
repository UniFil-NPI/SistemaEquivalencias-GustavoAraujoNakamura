<script setup>
import DataTable from 'primevue/datatable';
import Column from 'primevue/column';
import 'primevue/resources/themes/saga-blue/theme.css'; // theme
import 'primevue/resources/primevue.min.css'; // core css
import 'primeicons/primeicons.css';
import {usePage} from "@inertiajs/vue3"; // icons

const page = usePage();
const empty = page.props.disciplina.length === 0;

</script>
<!--<template>-->
<!--    <div class="bg-orange-500">-->
<!--        <div class="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">-->
<!--            <div class="flex justify-between items-center h-16">-->
<!--                &lt;!&ndash; Logo &ndash;&gt;-->
<!--                <div class="flex-shrink-0">-->
<!--                    <img class="h-8" src="https://cdls.org.br/wp-content/uploads/cdlce_base/2018/09/Unifil1.jpg" alt="Logo UNIFIL">-->
<!--                </div>-->

<!--                &lt;!&ndash; Menu &ndash;&gt;-->
<!--                <nav class="flex flex-grow justify-center">-->
<!--                    <router-link to="/dashboard" class="text-white px-3 py-2 text-sm font-medium">Home</router-link>-->
<!--                    <router-link to="/disciplina" class="text-white px-3 py-2 text-sm font-medium">Disciplinas</router-link>-->
<!--                    <router-link to="/grade/create" class="text-white px-3 py-2 text-sm font-medium">Grades</router-link>-->
<!--                </nav>-->

<!--                &lt;!&ndash; Botão de login ou outro recurso &ndash;&gt;-->
<!--                <div class="ml-4 flex items-center">-->
<!--                    <button class="text-white hover:text-gray-300 focus:outline-none">-->
<!--                        <svg class="h-6 w-6 fill-current" viewBox="0 0 24 24">-->
<!--                            &lt;!&ndash; Ícone de login ou outro recurso &ndash;&gt;-->
<!--                        </svg>-->
<!--                    </button>-->
<!--                </div>-->
<!--            </div>-->
<!--        </div>-->
<!--    </div>-->

<template>
    <Head title="Disciplinas" />
    <AuthenticatedLayout>
        <template #header>
            <div class="flex justify-between">
                <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">Disciplinas</h2>
                <a :href="route('disciplinas.create')"
                   class="bg-primary hover:bg-amber-800 text-white font-bold py-2 px-4 rounded-full">+ Criar
                    Disciplina</a>
            </div>
        </template>
        <div class="py-12">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
                    <div v-if="empty">
                        <div class="flex justify-center flex-col gap-2 items-center h-60">
                            <h2 class="text-3xl text-gray-400">Nenhuma disciplina encontrada</h2>
                        </div>
                    </div>
                    <div v-if="!empty">
                        <DataTable v-model:filters="filters" filter removableSort stripedRows paginator :rows="25"
                                   :rowsPerPageOptions="[25, 50, 100]" :value="disciplinas"
                                   tableStyle="min-width: 20rem"
                                   :globalFilterFields="['codigo', 'titulo', 'tipo', 'modalidade', 'carga_horaria']">
                            <template #empty>Nenhuma disciplina encontrada.</template>
                            <template #header>
                                <div class="flex justify-start">
                                    <IconField class="pt-2" iconPosition="left">
                                        <InputIcon>
                                            <i class="pi pi-search" />
                                        </InputIcon>
                                        <InputText
                                            class="shadow appearance-none border rounded ps-10 w-96 py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline dark:bg-gray-700 dark:text-gray-300 dark:border-gray-600"
                                            v-model="filters['global'].value" placeholder="Pesquisa" />
                                    </IconField>
                                </div>
                            </template>
                            <Column field="codigo" header="Codigo" sortable></Column>
                            <Column field="titulo" header="Titulo" sortable></Column>
                            <Column field="carga_horaria" header="Carga Horaria" sortable></Column>
                            <Column field="tipo" header="Tipo" sortable></Column>
                            <Column field="modalidade" header="Modalidade" sortable></Column>
                            <Column field="grades" header="Grades" sortable>
                                <template #body="slotProps">
                                    <span>{{ slotProps.data.grades.map(grade => grade.titulo).join(', ') }}</span>
                                </template>
                            </Column>
                            <Column field="id" header="Açoes">
                                <template #body="slotProps">
                                    <div class="flex gap-4">
                                        <label class="flex cursor-pointer select-none items-center">
                                            <div class="relative">
                                                <input type="checkbox" class="sr-only" @change="changeDisciplinaStatus(slotProps.data.id)" />
                                                <div class="block h-6 w-10 rounded-full bg-[#111827]"></div>
                                                <div :class="{ 'translate-x-full !bg-green-500': slotProps.data.ativo === 1 }"
                                                     class="dot absolute left-1 top-1 h-4 w-4 rounded-full bg-gray-50/50 transition">
                                                </div>
                                            </div>
                                        </label>
                                        <a :href="route('disciplinas.edit', slotProps.data.id)"><i
                                            class="hover:text-amber-500 pi pi-pen-to-square"></i></a>
                                        <button @click="confirmDelete(slotProps.data.id)"><i
                                            class="hover:text-red-600 pi pi-trash"></i></button>
                                    </div>
                                </template>
                            </Column>
                        </DataTable>
                    </div>
                </div>
            </div>
        </div>
    </AuthenticatedLayout>
</template>
