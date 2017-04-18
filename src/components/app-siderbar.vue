<template>
    <el-col :span="4"
            class="menu">
    
        <el-menu default-active="1">
            <el-submenu index="1">
                <template slot="title"><i class="el-icon-setting"></i>JS练习</template>
                <el-menu-item index="1-1"
                              @click="goPath('/fp')">函数式</el-menu-item>
            </el-submenu>
            <el-menu-item @click="goPath('/order')"
                          index="2"><i class="el-icon-information"></i>订单</el-menu-item>
            <el-menu-item @click="goPath({ name: 'detail', params:{ userid: 1234 }})"
                          index="3"><i class="el-icon-date"></i>详情</el-menu-item>
            <el-menu-item index="6"><i class="el-icon-menu"></i>首页</el-menu-item>
            <el-menu-item index="4"><i class="el-icon-plus"></i>充值</el-menu-item>
            <el-menu-item index="5"><i class="el-icon-star-on"></i>放款</el-menu-item>
        </el-menu>
    </el-col>
</template>

<script>
export default {
    methods: {
        goPath(link) {
            this.$router.push(link)
        }
    }
}
</script>
