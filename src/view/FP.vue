<template>
    <div>
        <el-alert :title="msg"
                  type="success" class="marginBottom30"></el-alert>
        <el-button type="info">{{ code | codeFilter }} </el-button>
        <el-button type="" @click="changeBtn">改变按钮</el-button>
        <el-button type="" @click="postBtn">POST</el-button>
        <el-button type="" @click="postToken">验证Token</el-button>
    </div>
</template>

<script>
export default {
    data() {
        return {
            msg: '测试接口页面',
            code:+new Date() % 4
        }
    },
    filters: {
        codeFilter(value) {
            switch (value) {
                case 0: 
                    return 'Go!'
                case 1:
                    return '运行中'
                case 2:
                    return '创建中'
                case 3:
                    return '充气中'
            }
        }
    },
    methods:{
        changeBtn(){
            this.code = +new Date() % 4;
        },
        postBtn(){
            this.axios.post('/api/login',{
                userid:'2',
                name:'hello'
            }).then(res => {
                console.log(res)
            })
        },
        postToken(){
            let token = this.$store.state.token;
            this.axios.post('/api/token',{
                token
            }).then(res => {
               if(res.data.returncode == 1) this.$message.success(res.data.msg);
               else this.$message.error(res.data.msg);
            })
        }
    },
    mounted(){
        this.axios.get('/api/order').then(res =>{
            console.log(res.data)
        })
    }
}
</script>


