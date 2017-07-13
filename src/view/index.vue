<template>
    <div class="wrapper">
        <app-header />
        <el-row class="container">
            <app-siderbar />
            <div class="content">
               
                    <transition name="fade" mode="out-in">
                        <router-view></router-view>
                    </transition>
                
            </div>
        </el-row>
    </div>
</template>

<script>
import appHeader from '~/components/app-header.vue'
import appSiderbar from '~/components/app-siderbar.vue';

export default {
    name: 'app',
    components: {
        appHeader, appSiderbar
    },
}
</script>


