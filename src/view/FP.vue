<template>
    <div>
        <el-alert :title="msg"
                  type="success" class="marginBottom30"></el-alert>
        <el-button type="info">{{ code | codeFilter }} </el-button>
        <el-button type="" @click="changeBtn">改变按钮</el-button>
        <el-button type="" @click="postBtn">POST</el-button>
    </div>
</template>

<script>
export default {
    data() {
        return {
            msg: 'filters实战',
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
            this.axios.post('/api/user',{
                userid:'2',
                name:'hello'
            }).then(res => {
                console.log(res)
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
