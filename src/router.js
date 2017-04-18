import Vue from 'vue';
import VueRouter from 'vue-router';
Vue.use(VueRouter);

const routes = [{
    path: '/login',
    component: require('./view/login.vue')
}, {
    path: '/home',
    component: require('./view/Home.vue'),
    children: [{
        path: '/order',
        component: require('./view/order.vue')
    }, {
        path: '/detail/:userid',
        name: 'detail',
        component: require('./view/detail.vue')
    }, {
        path: '/fp',
        component: require('./view/FP.vue')
    }, {
        path: '/',
        redirect: '/fp'
    }]
}, {
    path: '/',
    redirect: '/login'
}]

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