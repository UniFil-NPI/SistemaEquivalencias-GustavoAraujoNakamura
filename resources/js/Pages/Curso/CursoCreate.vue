<script>
import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout.vue';
import axios from 'axios';
import { usePage } from '@inertiajs/vue3';
import { ref, onMounted } from 'vue';
import MultiSelect from 'primevue/multiselect';

export default {
    components: {
        AuthenticatedLayout,
        MultiSelect,
    },
    props: {
        curso: {
            type: Object,
            default: () => ({ id: '', titulo: '', ano: '', ativo: false  }),
        },
        grades: {
            type: Array,
            default: () => [],
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
            selectedGrades: this.curso.grade || [],
            availableGrades: [],
        };
    },
    methods: {
        async salvarCurso() {
            const url = this.isEditing ? `/curso/${this.curso.id}` : '/curso';
            const method = this.isEditing ? 'put' : 'post';

            try {
                await axios[method](url, {
                    ...this.curso,
                    grade: this.selectedGrade,
                    _token: this.csrfToken,
                });

                window.location.href = '/curso';
            } catch (error) {
                console.error("Erro ao salvar o curso:", error);
            }
        },
        async carregarGrades() {
            try {
                if (this.grades.length > 0) {
                    this.availableGrades = this.grades;
                } else {
                    const response = await axios.get('/api/grade');
                    this.availableGrades = response.data;
                }
            } catch (error) {
                console.error("Erro ao carregar as grades:", error);
            }
        }
    },
    async mounted() {
        await this.carregarGrades();
    },



};
</script>

<template>
    <authenticated-layout>
        <div class="max-w-4xl mx-auto bg-white shadow-md rounded px-8 pt-6 pb-8 mt-4">
            <h2 class="mb-4 text-2xl font-bold text-center text-black">{{ isEditing ? 'Editar Curso' : 'Criar Curso' }}</h2>
            <form @submit.prevent="salvarCurso" class="space-y-4">
                <input type="hidden" name="_token" :value="csrfToken">

                <div>
                    <label class="block text-sm font-bold mb-2 text-black" for="titulo">Título do Curso</label>
                    <input v-model="curso.titulo"
                           class="block w-full bg-gray-200 text-gray-700 border rounded py-2 px-4 focus:outline-none focus:bg-white"
                           id="titulo" name="titulo" type="text" placeholder="Título do Curso" required>
                </div>

                <div>
                    <label class="block text-sm font-bold mb-2 text-black" for="ano">Ano do Curso</label>
                    <input v-model.number="curso.ano"
                           class="block w-full bg-gray-200 text-gray-700 border rounded py-2 px-4 focus:outline-none focus:bg-white"
                           id="ano" name="ano" type="number" placeholder="Ano do Curso" required>
                </div>

                <div>
                    <label class="block text-sm font-bold mb-2 text-black" for="grade">Grades</label>
                    <MultiSelect
                        v-model="selectedGrades"
                        :options="availableGrades"
                        optionLabel="titulo"
                        optionValue="id"
                        filter
                        placeholder="Escolha as grades"
                        class="w-full md:w-20rem"
                    />
                </div>

                <div>
                    <label class="block text-sm font-bold mb-2 text-black" for="ativo">Curso Ativo</label>
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
