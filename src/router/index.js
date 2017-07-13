import Vue from 'vue';
import VueRouter from 'vue-router';
import routes from './routes'
Vue.use(VueRouter);
const router = new VueRouter({
    mode: 'history',
    base: __dirname,
    routes
});

router.beforeEach((to, from, next) => {
    //     let not_auth = () => !sessionStorage.user;

    //     if (not_auth() && to.name != 'login') {
    //         next({ name: 'login' })
    //     } else {
    //         next();
    //     }
    next()
})
export default router;