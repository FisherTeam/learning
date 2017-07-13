import Vuex from 'vuex';
import Vue from 'vue';
Vue.use(Vuex);
const store = new Vuex.Store({
    state: {
        user: JSON.parse(window.sessionStorage.getItem('user')),
        token: '',
        step: 'email',
        code: 0
    },
    getters: {
        token(state) {
            return state.user && state.user['token'];
        }
    },
    mutations: {
        setUser(state, user) {
            [state.user, state.token] = [user, user['token']];
        },
        logout(state, user) {
            [state.user, state.token] = [, ];
            window.sessionStorage.clear('user');
        },
        changeStep(state, step) {
            state.step = step;
        }
    },
    actions: {
        setUser({ commit }, user) {
            window.sessionStorage.user = JSON.stringify(user);
            commit('setUser', user)
        },
        logout({ commit }) {
            commit('logout')
        }
    }
})

export default store;