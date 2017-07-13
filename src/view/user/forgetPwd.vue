<template>
    <div class="marginTop40">
        <el-breadcrumb separator="/"
                       class="lf">
            <el-breadcrumb-item>账户验证</el-breadcrumb-item>
            <el-breadcrumb-item>设置新密码</el-breadcrumb-item>
        </el-breadcrumb>
    
        <el-row>
            <el-col :span="10">
                <keep-alive>
                    <component :is="show"></component>
                </keep-alive>
            </el-col>
        </el-row>
    </div>
</template>
<script>
import newPwd from '~/components/password/newPwd.vue';
import email from '~/components/password/email.vue';
export default {
    data() {
        return {
            
        }
    },
    components: { newPwd, email },
    computed:{
        show(){
            return this.$store.state['step']
        }
    },
    mounted(){
        this.$store.commit('changeStep','email')
    }
}
</script>

<style lang="less">
.lf {
    margin-left: 150px;
}
</style>
