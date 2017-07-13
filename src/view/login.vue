<template>
    <div class="page-login">
        <div class="login-box">
            <div class="login-title">
                <h3>欢迎登录商家后台管理系统</h3>
            </div>
            <div class="login-form">
                <el-form label-position="top" :model="loginForm" :rules="loginRule" ref="loginForm">
                    <el-form-item prop="username">
                        <el-input placeholder="手机号" type="text" v-model="loginForm.username" auto-complete="off"></el-input>
                    </el-form-item>
                    <el-form-item prop="password">
                        <el-input placeholder="动态密码" type="password" class="login-pwd" v-model="loginForm.password" auto-complete="off" @keyup.enter="handleSubmit"></el-input>
                        <el-button class="login-sendPwd" @click="sendPwd" :disabled="disabled">{{getCodeText}}</el-button>
                    </el-form-item>
                    <el-form-item>
                        <el-button type="primary" class="login-submit" @click="handleSubmit">登录</el-button>
                    </el-form-item>
                    <div class="login-bottom">
                        <span>账号登录</span>
                        <span>商家入驻</span>
                        <span>忘记密码？</span>
                    </div>
                    <div class="login-footer">
                        <i class="el-icon-message"></i>
                        <span>服务热线（工作日9：00-17：00）400-897-3589</span>
                    </div>
                </el-form>
            </div>
        </div>
    </div>
</template>

<script>
import qs from 'qs';
import { putCode } from '~/api/common.js';
export default {
    name: 'login',
    data() {
        return {
            getCodeText:"获取动态密码",
            disabled:false,
            loginRule: {
                username: [
                    {
                        required: true,
                        message: '请输入用户名',
                        trigger: 'blur'
                    }
                ],
                password: [
                    {
                        required: true,
                        message: '请输入密码',
                        trigger: 'blur'
                    }
                ]
            },
            loginForm: {
                username: '',
                password: ''
            },
            api: '/api/login/getLoginToken'
        }
    },
    methods: {
        handleSubmit() {
            let _self = this;
            let params = {
                userName: _self.loginForm.username,
                password: _self.loginForm.password
            }
            this.$router.push('/order');
            this.$http.post(this.api, qs.stringify(params)).then(res => {
                let body = res.data;
                if (body.returncode === 0) {
                    this.$message({
                        type: 'success',
                        message: "登录成功"
                    })
                    new Promise((resolve, reject) => {
                        this.$store.dispatch('setUser', body.result);
                        resolve();
                    }).then(() => {
                        this.$router.push('/order');
                    })
                } else {
                    this.$message.error(body.message);
                }
            })
        },
        sendPwd(){
            putCode.call(this,50)
        }
    }
}
</script>

<style lang="less">
html,
body,
.page-login {
    min-height: 100vh;
}

.page-login {
    background-color: #f7f7f7;
    box-sizing: border-box;
    padding-top: 150px;
    background-image: url('http://pic.pp3.cn/uploads/allimg/111116/105J51443-2.jpg');
    background-repeat: no-repeat;
    background-size: cover;
}

.login-title {
    color: #2a323c;
    text-align: center;
    padding: 20px 0 0;
    h3 {
        margin: 0 0 30px 0;
    }
    p {
        font-weight: bold;
        color: #898989;
        margin: 0;
    }
}

.login-pwd {
    width: 190px;
}

.login-submit {
    width: 100%;
}

.login-sendPwd {
    float: right;
    width: 110px;
}

.login-bottom {
    font-size: 12px;
    display: flex;
    span {
        flex: 1;
        text-align: center;
        cursor: pointer;
        &:hover {
            color: #2880e4;
        }
    }
    span:first-child {
        text-align: left;
    }
    span:last-child {
        text-align: right;
    }
}

.login-footer {
    margin-top: 50px;
    font-size: 12px;
    text-align: center;
}

.login-box {
    margin: 0 auto;
    max-width: 380px;
    border-radius: 5px;
    background-color: #fff;
}

.login-form {
    padding: 20px 35px;
    border: 0;
}
</style>
