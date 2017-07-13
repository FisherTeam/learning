<template>
    <el-form :model="ruleForm"
             label-width="150px"
             class="marginTop40"
             ref="ruleForm"
             :rules="rules">
        <el-form-item label="账户邮箱"
                      prop="email">
            <el-input type="text"
                      placeholder="长度为6-14个字符，支持数字大小写字母"
                      v-model="ruleForm.email"></el-input>
        </el-form-item>

        <el-form-item label="验证码"
                      prop="qrcode">
            <el-col :span="16">
                <el-input v-model="ruleForm.qrcode"
                          placeholder="输入邮箱收到的验证码"></el-input>
            </el-col>
            <el-col :span="4"
                    :offset="1">
                <el-button type="primary"
                           @click="getCode"
                           :disabled="disabled">{{ getCodeText }}</el-button>
            </el-col>
        </el-form-item>
    
        <el-form-item label=""
                      prop="">
            <el-button type="primary"
                       @click="submit"
                       element-loading-text="验证通过"
                       v-loading.fullscreen.lock="loading">下一步</el-button>
        </el-form-item>
    </el-form>
</template>

<script>
import rules from '~/api/rules';
import { putCode } from '~/api/common';
export default {
    data() {
        return {
            ruleForm: {
                email: 'zbq@qq.com',
                qrcode: 'edc'
            },
            rules,
            loading: false,
            disabled: false,
            getCodeText: '发送验证码'
        }
    },
    methods: {
        submit() {

            let posting = new Promise((resolve, reject) => {
                // 发送post请求
                setTimeout(() => {
                    this.loading = false
                    resolve('成功')
                }, 1000)
            })

            let validate = new Promise((resolve, reject) => {
                this.$refs.ruleForm.validate(valid => {
                    if (valid) {
                        resolve('验证通过')
                    } else {
                        reject('验证失败');
                    }
                })
            })
            validate.then(msg => {
                this.loading = true;
                posting.then(msg => {
                    this.$store.commit('changeStep', 'newPwd')
                })
            }).catch(err => {
                console.log(err)
            })
        },
        getCode() {
            const token = this.$store.getters.token;
            const email = this.ruleForm.email;
            putCode.bind(this)('/api/login/getLoginToken', {
                mobile:18500993663
            })
        }
    }
}
</script>
