import './bootstrap';
import '../css/app.css';

import { createApp, h } from 'vue';
import { createInertiaApp } from '@inertiajs/vue3';
import { resolvePageComponent } from 'laravel-vite-plugin/inertia-helpers';
import { ZiggyVue } from '../../vendor/tightenco/ziggy';
import 'primevue/resources/themes/lara-dark-amber/theme.css'; // tema
import 'primevue/resources/primevue.min.css'; // core css
import 'primeicons/primeicons.css'; // ícones
import PrimeVue from 'primevue/config';
import ToastService from 'primevue/toastservice';
import MultiSelect  from "primevue/multiselect";
// import Vue from 'vue';

const appName = import.meta.env.VITE_APP_NAME || 'Laravel';

createInertiaApp({
    title: (title) => `${title} - ${appName}`,
    resolve: (name) => resolvePageComponent(`./Pages/${name}.vue`, import.meta.glob('./Pages/**/*.vue')),
    setup({ el, App, props, plugin }) {
        return createApp({ render: () => h(App, props) })
            .use(plugin)
            .use(ToastService)
            .use(PrimeVue)
            .use(MultiSelect)
            .use(ZiggyVue)
            .mount(el);
    },
    progress: {
        color: '#4B5563',
    },
});
