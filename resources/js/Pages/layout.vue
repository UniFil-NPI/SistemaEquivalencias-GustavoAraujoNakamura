<template>
    <div>
        <Sidebar />
        <Header /> <!-- Exemplo de um cabeçalho -->
        <div>
            <Button icon="pi pi-bars" label="Mostrar Sidebar" @click="toggleSidebar" />
            <slot></slot>
        </div>
        <Footer /> <!-- Exemplo de um rodapé -->
    </div>
</template>

<script>
import { defineComponent, ref } from 'vue';
import Sidebar from '../components/Sidebar.vue';
import Header from '../components/Header.vue'; // Componente de exemplo
import Footer from '../components/Footer.vue'; // Componente de exemplo
import Button from 'primevue/button';

export default defineComponent({
    components: {
        Sidebar,
        Header,
        Footer,
        Button
    },
    setup() {
        const visible = ref(true); // Controla a visibilidade da barra lateral

        const toggleSidebar = () => {
            visible.value = !visible.value;
        };

        return {
            visible,
            toggleSidebar
        };
    }
});
</script>

<style scoped>
/* Adicione estilos personalizados aqui, se necessário */
</style>
