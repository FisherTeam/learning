<template>
    <el-form :model="ruleForm"
             label-width="150px"
             class="marginTop40"
             ref="ruleForm"
             :rules="rules">
        <el-form-item label="新密码"
                      prop="newPwd">
            <el-input type="password"
                      placeholder="长度为6-14个字符，支持数字大小写字母"
                      v-model="ruleForm.newPwd"></el-input>
        </el-form-item>
    
        <el-form-item label="确认新密码"
                      prop="againPwd">
            <el-input type="password"
                      placeholder="长度为6-14个字符，支持数字大小写字母"
                      v-model="ruleForm.againPwd"></el-input>
        </el-form-item>
    
        <el-form-item label=""
                      prop="">
            <el-button type="primary"
                       @click="submit"
                       v-loading.fullscreen.lock="loading">下一步</el-button>
        </el-form-item>
    </el-form>
</template>

<script>
export default {
    data() {
        let newPwd = (rule, value, callback) => {
            if (value === '') {
                callback(new Error('请输入密码'))
            } else if (value.length < 6) {
                callback(new Error('密码长度最短不能少于6位'))
            } else {
                if (this.againPwd !== '') {
                    this.$refs.ruleForm.validateField('againPwd')
                }
                callback()
            }
        }
        let againPwd = (rule, value, callback) => {
            if (value === '') {
                callback(new Error('请再次输入密码'))
            } else if (value !== this.ruleForm.newPwd) {
                callback(new Error('两次输入的密码不一致'))
            } else {
                callback()
            }
        }
        return {
            ruleForm: {
                newPwd: 'hehehe',
                againPwd: 'hehehe'
            },
            rules: {
                newPwd: [{
                    validator: newPwd,
                    trigger: 'blur'
                }],
                againPwd: [{
                    validator: againPwd,
                    trigger: 'blur'
                }]
            },
            loading: false
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
                    this.$alert('重置密码成功', '', {
                        confirmButtonText: '前往首页',
                        callback: () => {
                            this.$router.push('/order')
                        }
                    })
                })
            }).catch(err => {
                console.log('验证不通过')
            })
        }
    }
}
</script>
