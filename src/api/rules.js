import axios from 'axios';

export default {
    userName: [{
            required: true,
            message: '请输入邮箱',
            trigger: 'blur'
        },
        {
            type: 'email',
            message: '请输入正确的邮箱格式',
            trigger: 'blur,change'
        }
    ],
    companyName: [{
        required: true,
        message: '请输入公司名称',
        trigger: 'blur'
    }],
    legalPersonName: [{
        required: true,
        message: '请输入姓名',
        trigger: 'blur'
    }],
    legalPersonIdcard: [{
        required: true,
        message: '请输入身份证号',
        trigger: 'blur'
    }],
    legalPersonPhone: [{
        required: true,
        message: '请输入手机号',
        trigger: 'blur'
    }],
    validateCode: [{
        required: true,
        message: '请输入验证码',
        trigger: 'blur'
    }, {
        // validator: validatorCode,
        trigger: 'none'
    }],
    file: [{
        // required: true,
        message: '请上传xx',
        trigger: 'change'
    }],
    password: [{
        required: true,
        message: '密码不能为空',
        trigger: 'blur'
    }],
    businessLicenseImg: [{
        required: true,
        message: '营业执照不能为空'
    }],
    orgCodeCertificateImg: [{
        required: true,
        message: '组织机构代码证不能为空'
    }],
    legalPersonIdcardFrontImg: [{
        required: true,
        message: '请上传身份证正面'
    }],
    legalPersonIdcardBackImg: [{
        required: true,
        message: '请上传身份证反面'
    }]
}

function validatorCode(rule, value, cb) {
    axios.get('/api/login/getLoginToken').then(res => {
        if (value === "edc") {
            cb(new Error('验证码不正确'))
        } else {
            cb()
        }
    })
}