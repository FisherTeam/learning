import Vue from 'vue';
import App from './App.vue';
import Element from 'element-ui';
import router from './router';
import axios from 'axios';
import VueAxios from 'vue-axios';
import './styles/index.css';

Vue.use(VueAxios, axios);
Vue.use(Element)

new Vue({ // eslint-disable-line
    el: '#app',
    router,
    render: h => h(App)
});