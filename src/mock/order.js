import Mock from 'mockjs';

var Random = Mock.Random;

var mock = Mock.mock({
    "orders|6-15": [{
        "orderid": /cj\d{10}/,
        "date": '@datetime',
        "person": '@cname',
        "phone": /13\d{9}/,
        "address": '@city',
        "detail": "我是金融产品名称",
        "carPrice|5-70": 1,
        "loanPrice|5-30": 1,
        "percent": '@integer(10, 90)',
        "deadline": "@integer(6,36)",
        "state": "@pick(['未发布','审核通过','审核不通过'])"
    }],
    "account|6-15": [{
        "orderid": /cj\d{10}/,
        "date": "@datetime",
        "oid": /\d{11}/,
        "type": "@pick(['入账','出账'])",
        "name": "北京燕德宝汽车销售有限公司",
        "price": "@integer(45678, 654321)",
        "remark": "@pick(['入款','放款','佣金结算'])",
        "state": "@pick(['成功','失败','冻结'])"
    }]
})

export default mock;