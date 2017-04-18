<template>
    <div>
        <header :style="{ 'background-color': '#f62' }">
            <img src="../assets/element-logo.svg"
                 alt="element-logo"
                 class="header-logo">
            <ul class="header-operations">
                <li>
                    <span>{{ username }}</span>
                    <span>/</span>
                    <span class="header-lang">退出</span>
                </li>
            </ul>
        </header>
    </div>
</template>

<script>
import qs from 'qs';
export default {
    computed: {
        username() {
            return '登录'
        }
    },
    methods: {

    }
}
</script>
