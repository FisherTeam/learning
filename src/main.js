import Vue from 'vue';
import App from './App.vue';
import Element from 'element-ui';

import router from './router';

Vue.use(Element)
import './styles/index.css';
Vue.use(Element);
new Vue({ // eslint-disable-line
    el: '#app',
    router,
    render: h => h(App)
});