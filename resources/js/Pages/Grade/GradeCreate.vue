<script>
import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout.vue';
import axios from 'axios';
import { usePage } from '@inertiajs/vue3';

export default {
    components: {
        AuthenticatedLayout,
    },
    props: {
        grade: {
            type: Object,
            default: () => ({ id: '', titulo: '', id_disciplina: '', ch: '', periodo: '', ativo: false }),
        },
        isEditing: {
            type: Boolean,
            default: false,
        },
    },
    async mounted() {
        if (this.isEditing && this.grade.id) {
            await this.carregarGrade();
        }
    },
    methods: {
        async carregarGrade() {
            try {
                const response = await axios.get(route('grade.show', this.grade.id));
                // Atualiza a prop grade com os dados carregados
                this.$emit('update:grade', response.data);
            } catch (error) {
                console.error('Erro ao carregar a grade:', error);
            }
        },
        async salvarGrade() {
            try {
                const url = this.isEditing ? route('grade.update', this.grade.id) : route('grade.store');
                const method = this.isEditing ? 'put' : 'post';
                const csrfToken = usePage().props.csrf_token;

                await axios[method](url, {
                    ...this.grade,
                    _token: csrfToken,
                });

                // Redireciona para a página de listagem de grades após salvar
                window.location.href = '/grade';
            } catch (error) {
                console.error('Erro ao salvar a grade:', error);
            }
        },
    },
};
</script>

<template>
    <authenticated-layout>
        <div class="max-w-4xl mx-auto bg-white shadow-md rounded px-8 pt-6 pb-8 mt-4">
            <h2 class="mb-4 text-2xl font-bold text-center">{{ isEditing ? 'Editar Grade' : 'Criar Grade' }}</h2>

            <!-- Formulário de Edição/Criação da Grade -->
            <form @submit.prevent="salvarGrade" class="space-y-4">
                <!-- Campo Título -->
                <div>
                    <label class="block text-sm font-bold mb-2" for="titulo">Título da Grade</label>
                    <input v-model="grade.titulo"
                           class="block w-full bg-gray-200 text-gray-700 border rounded py-2 px-4 focus:outline-none focus:bg-white"
                           id="titulo" name="titulo" type="text" placeholder="Título da Grade" required>
                </div>

                <!-- Campo ID da Disciplina -->
                <div>
                    <label class="block text-sm font-bold mb-2" for="id_disciplina">ID da Disciplina</label>
                    <input v-model.number="grade.id_disciplina"
                           class="block w-full bg-gray-200 text-gray-700 border rounded py-2 px-4 focus:outline-none focus:bg-white"
                           id="id_disciplina" name="id_disciplina" type="number" placeholder="ID da Disciplina" required>
                </div>

                <!-- Campo Carga Horária (CH) -->
                <div>
                    <label class="block text-sm font-bold mb-2" for="ch">Carga Horária (CH)</label>
                    <input v-model.number="grade.ch"
                           class="block w-full bg-gray-200 text-gray-700 border rounded py-2 px-4 focus:outline-none focus:bg-white"
                           id="ch" name="ch" type="number" placeholder="Carga Horária" required>
                </div>

                <!-- Campo Período -->
                <div>
                    <label class="block text-sm font-bold mb-2" for="periodo">Período</label>
                    <input v-model.number="grade.periodo"
                           class="block w-full bg-gray-200 text-gray-700 border rounded py-2 px-4 focus:outline-none focus:bg-white"
                           id="periodo" name="periodo" type="number" placeholder="Período" required>
                </div>

                <!-- Campo Grade Ativa -->
                <div class="flex items-center">
                    <label class="block text-sm font-bold mb-2 mr-2" for="ativo">Grade Ativa</label>
                    <input type="checkbox" id="ativo" v-model="grade.ativo"
                           class="form-checkbox h-5 w-5 text-orange-600">
                </div>

                <!-- Botão de Submissão -->
                <div class="flex items-center justify-between">
                    <button class="bg-orange-500 hover:bg-orange-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline"
                            type="submit">
                        {{ isEditing ? 'Atualizar Grade' : 'Criar Grade' }}
                    </button>
                </div>
            </form>
        </div>
    </authenticated-layout>
</template>
