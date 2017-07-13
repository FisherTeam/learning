import Vue from 'vue';
import App from './App.vue';
import router from './router';
import Element from 'element-ui';
import axios from 'axios';
import VueAxios from 'vue-axios';
import store from './store';

import appImg from './components/app-img.vue';
import './styles/index.css';

Vue.component('app-img', appImg)
Vue.use(Element);
Vue.use(VueAxios, axios);

axios.interceptors.request.use(function(config) {
    return config;
}, function(error) {
    // Do something with request error
    return Promise.reject(error);
});

new Vue({ // eslint-disable-line
    el: '#app',
    router,
    store,
    render: h => h(App)
});