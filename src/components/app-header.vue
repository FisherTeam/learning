<template>
    <div class="app-header">
        <header>
            <img src="../assets/element-logo.svg" alt="element-logo" class="header-logo">
            <div class="header-operations">
                <el-dropdown trigger="click">
                    <span class="el-dropdown-link FFF">
                        你好，王晓天
                        <i class="el-icon-caret-bottom el-icon--right"></i>
                    </span>
                    <el-dropdown-menu slot="dropdown">
                        <el-dropdown-item>修改密码</el-dropdown-item>
                        <el-dropdown-item>公司信息</el-dropdown-item>
                        <el-dropdown-item>退出登录</el-dropdown-item>
                    </el-dropdown-menu>
                </el-dropdown>
            </div>
        </header>
    </div>
</template>

<script>
import qs from 'qs';
export default {
    computed: {
        username() {
            const user = this.$store.state.user;
            return user && user['userName'];
        }
    },
    methods: {
        logout() {
            let token = this.$store.getters.token;

            this.$http.post('/api/login/logout', qs.stringify({
                token
            })).then(res => {
                this.$store.dispatch('logout');
                this.$router.push('/login');
            })
        }
    },
}
</script>
<style lang="less">
.el-dropdown-link{
    cursor: pointer;
}
.app-header {
    height: 40px;
    background-color: #2880e4;
    border-bottom: 1px solid #2279dc;
    position: relative;
    z-index: 100000;
}
header {
    height: 40px;
    position: absolute;
    width: 1200PX;
    top: 0;
    left: 50%;
    margin-left: -600px;
    padding: 0 20px;
    z-index: 100;
    box-sizing: border-box;
}
</style>

