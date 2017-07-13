<template>
    <el-row>
        <el-col :span="10">
            <new-pwd />
        </el-col>
    </el-row>
</template>
<script>
import newPwd from '~/components/password/newPwd.vue';
export default {
    data() { return {} },
    components: { newPwd }
}
</script> 
