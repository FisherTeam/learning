<template>
    <div id="register">
    
        <el-row>
            <el-col :span="10">
                <h3 class="marginTop40">账户信息</h3>
                <el-form :model="ruleForm"
                         label-width="150px"
                         class="marginTop40">
                    <el-form-item label="登录邮箱">
                        <span>abcd@vip.qq.com</span>
                    </el-form-item>
    
                    <el-form-item label="公司名称"
                                  prop="company">
                        <span>有车有价有限公司</span>
                    </el-form-item>
    
                    <el-form-item label="营业执照">
                        <app-img :src="ruleForm.pic1" width="180"/>
                    </el-form-item>
    
                    <el-form-item label="组织机构代码证"
                                  prop="file">
                         <app-img :src="ruleForm.pic2" width="180"/>
                    </el-form-item>
    
                    <el-form-item label="法人姓名">
                        <span>法人姓名</span>
                    </el-form-item>
    
                    <el-form-item label="法人身份证号码">
                        <span>120111223423455897</span>
                    </el-form-item>
    
                    <el-form-item label="法人身份证正面"
                                  prop="file">
                         <app-img :src="ruleForm.cardPicFront"/>
                    </el-form-item>
                    <el-form-item label="法人身份证反面"
                                  prop="file">
                         <app-img :src="ruleForm.cardPicBack" width="180"/>
    
                    </el-form-item>
                </el-form>
            </el-col>
            <el-col :span="10">
                <h3 class="marginTop40">线下结算账户</h3>
                <el-form label-width="100px">
                    <el-form-item label="开户行">
                        <span>招商银行中关村分行</span>
                    </el-form-item>
                    <el-form-item label="开户账号">
                        <span>110***0999222220</span>
                    </el-form-item>
                </el-form>
            </el-col>
        </el-row>
       
    </div>
</template>

<script>
import rules from '~/api/rules.js'
export default {
    data() {
        return {
           
            ruleForm: {
                email: '',
                company: '',
                pic1: 'http://pic.qiantucdn.com/58pic/17/89/47/058PIC758PICVKI_1024.jpg!/format/webp',
                pic2: 'http://www.wzsky.net/img2013/uploadimg/20140419/11202614.jpg',
                name: '',
                card: '',
                phone: '',
                qrcode: '',
                cardPicFront: 'http://www.wzsky.net/img2013/uploadimg/20140419/11202615.png',
                cardPicBack: 'http://www.wzsky.net/img2013/uploadimg/20140419/11202619.jpg',
            },
            rules,
            fileList: {
                pic1: [],
                pic2: [],
                cardPicFront: [],
                cardPicBack: []
            }
        }
    },
}
</script>
