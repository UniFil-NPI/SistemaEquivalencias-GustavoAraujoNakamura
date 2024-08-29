<script>
import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout.vue';
import axios from 'axios';
import { usePage } from '@inertiajs/vue3';

export default {
    components: {
        AuthenticatedLayout,
    },
    props: {
        curso: {
            type: Object,
            default: () => ({ id: '', titulo: '', ano: '', ativo: false }),
        },
        isEditing: {
            type: Boolean,
            default: false,
        }
    },
    data() {
        return {
            cursoAtual: this.curso,
            csrfToken: usePage().props.csrf_token,
        };
    },
    methods: {
        async salvarCurso() {
            console.log("aaaa");

            const url = this.isEditing ? `/curso/${this.curso.id}` : '/curso';
            const method = this.isEditing ? 'put' : 'post';

            console.log("Dados enviados:", this.cursoAtual);
            console.log("CSRF Token:", this.csrfToken);

            try {
                await axios[method](url, {
                    ...this.curso,
                    _token: this.csrfToken,
                });

                window.location.href = '/curso';
            } catch (error) {
                console.error("Erro ao salvar o curso:", error);
                console.log("Detalhes do erro:", error.response);
            }
        }
    }

};
</script>
<template>
    <authenticated-layout>
        <div class="max-w-4xl mx-auto bg-white shadow-md rounded px-8 pt-6 pb-8 mt-4">
            <h2 class="mb-4 text-2xl font-bold text-center">{{ isEditing ? 'Editar Curso' : 'Criar Curso' }}</h2>
            <form @submit.prevent="salvarCurso" class="space-y-4">
                <input type="hidden" name="_token" :value="csrfToken">

                <div>
                    <label class="block text-sm font-bold mb-2" for="titulo">Título do Curso</label>
                    <input v-model="curso.titulo"
                           class="block w-full bg-gray-200 text-gray-700 border rounded py-2 px-4 focus:outline-none focus:bg-white"
                           id="titulo" name="titulo" type="text" placeholder="Título do Curso" required>
                </div>

                <div>
                    <label class="block text-sm font-bold mb-2" for="ano">Ano do Curso</label>
                    <input v-model.number="curso.ano"
                           class="block w-full bg-gray-200 text-gray-700 border rounded py-2 px-4 focus:outline-none focus:bg-white"
                           id="ano" name="ano" type="number" placeholder="Ano do Curso" required>
                </div>

                <div>
                    <label class="block text-sm font-bold mb-2" for="ativo">Curso Ativo</label>
                    <input type="checkbox" id="ativo" v-model="curso.ativo"
                           class="form-checkbox h-5 w-5 text-orange-600">
                </div>

                <div class="flex items-center justify-between">
                    <button
                        class="bg-orange-500 hover:bg-orange-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline"
                        type="submit">
                        {{ isEditing ? 'Atualizar Curso' : 'Criar Curso' }}
                    </button>
                </div>
            </form>
        </div>
    </authenticated-layout>
</template>
