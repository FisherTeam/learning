<template>
    <div>
        <el-alert :title="msg"
                  type="success" class="marginBottom30"></el-alert>
        <el-button type="info">{{ code | codeFilter }} </el-button>
        <el-button type="" @click="changeBtn">改变按钮</el-button>
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
        }
    },
    mounted(){
        this.axios.get('//127.0.0.1:8060/order').then(res =>{
            console.log(res.data)
        })
    }
}
</script>
