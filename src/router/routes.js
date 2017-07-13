const routes = [{
        path: '/login',
        name: 'login',
        component: require('../view/login.vue')
    }, {
        path: '/',
        redirect: '/login'
    }, {
        path: '/404',
        component: require('../view/notFound.vue')
    }, {
        path: '/index',
        component: require('../view/index.vue'),
        children: [{
            path: '/home',
            component: require('../view/home.vue')
        }, {
            path: '/order',
            component: require('../view/product/productManage.vue')
                // component: require('../view/order.vue')
        }, {
            path: '/account',
            component: require('../view/account.vue')
        }, {
            path: '/deposit',
            component: require('../view/deposit.vue')
        }, {
            path: '/user/detail/:userid',
            name: 'detail',
            component: require('../view/user/detail.vue')
        }, {
            path: '/user/manage',
            component: require('../view/user/manage.vue')
        }, {
            path: '/user/register',
            component: require('../view/user/register.vue')
        }, {
            path: '/password/forget',
            component: require('../view/user/forgetPwd.vue')
        }, {
            path: '/password/change',
            component: require('../view/user/changePwd.vue')
        }]
    },
    {
        path: '*',
        redirect: '/404'
    }
];

export default routes;