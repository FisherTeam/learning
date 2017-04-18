import Mock from 'mockjs';

var Random = Mock.Random;

var mock = Mock.mock({
    "orders|5-10": [{
        "orderid": /cj\d{10}/,
        "date": '@datetime',
        "person": '@cname',
        "phone": /13\d{9}/,
        "address": '@city',
        "detail": "悦动 2011款 1.6L 自动豪华型悦动 2011款ß",
        "carPrice|5-70": 1,
        "loanPrice|5-30": 1,
        "percent": '@integer(10, 90)',
        "deadline": "@integer(6,36)",
        "state": "@pick(['待签约','待放款','待审核','已放款'])"
    }],
    "account|5-12": [{
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