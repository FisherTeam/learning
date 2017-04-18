<template>
    <div>
        <el-row>
            <el-col :span="10"
                    :offset="6"
                    class="login">
                <h1>用户登录</h1>
                <el-form ref="formLabelAlign"
                         :label-position="labelPosition"
                         label-width="80px"
                         :model="formLabelAlign"
                         :rules="validLogin">
                    <el-form-item label="用户名"
                                  prop="name">
                        <el-input v-model="formLabelAlign.name"></el-input>
                    </el-form-item>
                    <el-form-item label="密码"
                                  prop="pwd">
                        <el-input v-model="formLabelAlign.pwd"></el-input>
                    </el-form-item>
                    <el-button type="primary"
                               class="submit"
                               @click="submitForm('formLabelAlign')">登录</el-button>
                </el-form>
            </el-col>
        </el-row>
    </div>
</template>

<script>
export default {
    data() {
        let userObj = {
            user: 'admin',
            pass: '123456'
        };
        let validUser = function (rule, value, callback) {
            if (value !== userObj.user) {
                callback(new Error('请输入正确的用户名或密码！'))
            } else {
                callback();
            }
        }
        let validPass = function (rule, value, callback) {
            if (value !== userObj.pass) {
                callback(new Error('请输入正确的用户名或密码！'))
            } else {
                callback();
            }
        }
        return {
            labelPosition: 'left',
            formLabelAlign: {
                name: 'admin',
                pwd: '123456'
            },
            validLogin: {
                name: [
                    { type: 'string', required: true, message: '请输入用户名！', trigger: 'blur' }
                ],
                pwd: [{
                    required: true,
                    message: '请输入密码',
                    trigger: "blur"
                }, {
                    validator: validPass, trigger: 'zxc'
                }]
            }
        }
    },
    methods: {
        submitForm(formName) {
            this.$refs[formName].validate((valid) => {
                if (valid) {
                    this.$router.push('/home')
                }
            });
        }
    }
}
</script>

<style lang="less" scoped>
.login {
    margin-top: 80px;
    padding: 20px;
    border: 1px solid #eee;
    box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.3);
}

.submit {
    width: 150px;
    margin: 0 auto;
}
</style>

