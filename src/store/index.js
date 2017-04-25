import Vuex from 'vuex';
import Vue from 'vue';

Vue.use(Vuex);

export default new Vuex.Store({
    state: {
        token: window.sessionStorage.getItem('token')
    },
    mutations: {
        setToken(state, token) {
            state.token = token;
            window.sessionStorage.token = token;
        },
        logout(state) {
            state.token = '';
            window.sessionStorage.clear('token');
        }
    }
})