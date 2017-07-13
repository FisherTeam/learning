<template>
    <div id="register">
    
        <el-row>
            <el-col :span="10">
                <el-form :model="ruleForm"
                         ref="ruleForm"
                         label-width="150px"
                         class="marginTop40"
                         :rules="rules">
                    <el-form-item label="登录邮箱"
                                  prop="userName">
                        <el-input v-model="ruleForm.userName"></el-input>
                    </el-form-item>
    
                    <el-form-item label="公司名称"
                                  prop="companyName">
                        <el-input v-model="ruleForm.companyName"></el-input>
                    </el-form-item>
    
                    <el-form-item label="营业执照"
                                  prop="businessLicenseImg">
                        <el-upload class="upload-demo"
                                   :on-success="handleSuccess('businessLicenseImg')"
                                   :file-list="fileList.businessLicenseImg"
                                   action="/api/upload/image"
                                   name="image"
                                   list-type="picture">
                            <el-button size="small"
                                       type="primary">点击上传</el-button>
                            <div slot="tip"
                                 class="el-upload__tip">只能上传jpg/png文件，且不超过500kb</div>
                        </el-upload>
                    </el-form-item>
    
                    <el-form-item label="组织机构代码证"
                                  prop="orgCodeCertificateImg">
                        <el-upload class="upload-demo"
                                   :on-success="handleSuccess('orgCodeCertificateImg')"
                                   :file-list="fileList.orgCodeCertificateImg"
                                   action="/api/upload/image"
                                   name="image"
                                   list-type="picture">
                            <el-button size="small"
                                       type="primary">点击上传</el-button>
                            <div slot="tip"
                                 class="el-upload__tip">只能上传jpg/png文件，且不超过500kb</div>
                        </el-upload>
                    </el-form-item>
    
                    <el-form-item label="法人姓名"
                                  prop="legalPersonName">
                        <el-input v-model="ruleForm.legalPersonName"></el-input>
                    </el-form-item>
    
                    <el-form-item label="法人身份证号码"
                                  prop="legalPersonIdcard">
                        <el-input v-model="ruleForm.legalPersonIdcard"></el-input>
                    </el-form-item>
    
                    <el-form-item label="法人手机号"
                                  prop="legalPersonPhone">
                        <el-col :span="16">
                            <el-input v-model="ruleForm.legalPersonPhone"></el-input>
                        </el-col>
                        <el-col :span="4"
                                :offset="1">
                            <el-button type="primary"
                                       @click="getCode"
                                       :disabled="disabled">{{getCodeText}}</el-button>
                        </el-col>
                    </el-form-item>
                    <el-form-item label="验证码"
                                  prop="validateCode">
                        <el-input v-model="ruleForm.validateCode"></el-input>
                    </el-form-item>
                    <el-form-item label="法人身份证正面"
                                  prop="legalPersonIdcardFrontImg">
                        <el-upload class="upload-demo"
                                   :on-success="handleSuccess('legalPersonIdcardFrontImg')"
                                   :file-list="fileList.legalPersonIdcardFrontImg"
                                   action="/api/upload/image"
                                   name="image"
                                   list-type="picture">
                            <el-button size="small"
                                       type="primary">点击上传</el-button>
                            <div slot="tip"
                                 class="el-upload__tip">只能上传jpg/png文件，且不超过500kb</div>
                        </el-upload>
                    </el-form-item>
                    <el-form-item label="法人身份证反面"
                                  prop="legalPersonIdcardBackImg">
                        <el-upload class="upload-demo"
                                   :on-success="handleSuccess('legalPersonIdcardBackImg')"
                                   :file-list="fileList.legalPersonIdcardBackImg"
                                   action="/api/upload/image"
                                   name="image"
                                   list-type="picture">
                            <el-button size="small"
                                       type="primary">点击上传</el-button>
                            <div slot="tip"
                                 class="el-upload__tip">只能上传jpg/png文件，且不超过500kb</div>
                        </el-upload>
    
                    </el-form-item>
                    <el-form-item class="el-upload__submit">
                        <el-button type="primary"
                                   @click="submit">提交</el-button>
                        <div class="el-upload__tip">邮件通知，设置密码，1天有效</div>
                    </el-form-item>
                </el-form>
            </el-col>
        </el-row>
    </div>
</template>

<script>
import rules from '~/api/rules.js'
import { putCode } from '~/api/common'
export default {
    data() {
        return {
            ruleForm: {
                token: this.$store.getters.token,
                userName: 'zbq@qq.com',
                companyName: '企业名字',
                businessLicenseImg: '',
                orgCodeCertificateImg: '',
                legalPersonName: '法人姓名',
                legalPersonIdcard: '18900335577',
                legalPersonPhone: '1897654321',
                validateCode: '111111',
                legalPersonIdcardFrontImg: '',
                legalPersonIdcardBackImg: '',
            },
            rules,
            fileList: {
                businessLicenseImg: [],
                orgCodeCertificateImg: [],
                legalPersonIdcardFrontImg: [],
                legalPersonIdcardBackImg: []
            },
            getCodeText: '发送验证码',
            loading: false,
            disabled: false,
        }
    },
    methods: {

        handleSuccess(value) {
            return function (res, file, fileList) {
                this.ruleForm[value] = res.result.relativeURL;
                this.fileList[value] = fileList.slice(-1);
            }.bind(this)
        },

        submit() {
            this.$refs.ruleForm.validate(valid => {
                if (!valid) return false;
                this.$http.post('/api/account/addBusinessAccount', this.$qs.stringify(this.ruleForm)).then(res => {
                    const code = res.data.returncode;
                    // 邮箱已注册
                    if (code == 10015) {
                        this.$notify({
                            title: '错误',
                            message: res.data.message,
                            type: 'error'
                        })
                        return false
                    }

                    // token 过期
                    if (code == 10016) {
                        this.$notify({
                            title: '错误',
                            message: 'token已过期，请重新登录',
                            type: 'error'
                        })
                        return false
                    }

                    // 邮件发送失败
                    if (code == 50003) {
                        this.$notify({
                            title: '错误',
                            message: res.data.message,
                            type: 'error'
                        })
                        return false
                    }

                    // 注册成功
                    if (code == 0) {
                        this.$notify({
                            // title: '开通成功',
                            message: res.data.message,
                            type: 'success'
                        })
                    }
                })
            })
        },
        getCode() {
            const token = this.$store.getters.token;
            const email = this.ruleForm.userName;
            putCode.call(this, '/api/login/getLoginToken', {
                email
            })
        }
    }
}
</script>

<style lang="less">
.el-upload__submit {
    margin-top: 20px;
}
</style>
