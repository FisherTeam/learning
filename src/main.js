import Vue from 'vue';
import App from './App.vue';
import Element from 'element-ui';
import router from './router';
import store from './store';
import axios from 'axios';
import VueAxios from 'vue-axios';
import './styles/index.css';

Vue.use(VueAxios, axios);
Vue.use(Element)

new Vue({ // eslint-disable-line
    el: '#app',
    router,
    store,
    render: h => h(App)
});

function once(fn, context) {
    var result;

    return function() {
        if (fn) {
            result = fn.apply(context || this, arguments);
            fn = null;
        }
        return result;
    };
}

// Usage
var canOnlyFireOnce = once(function() {
    console.log('Fired!');
});

canOnlyFireOnce(); // "Fired!"
canOnlyFireOnce(); //