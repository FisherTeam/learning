import Mock from 'mockjs';

var Random = Mock.Random;

var users = Mock.mock({
    "users|8-14": [{
        "userid": /cj\d{10}/,
        "date": '@datetime',
        "person": '@cname',
        "phone": /13\d{9}/,
        "email": '@email',
        "state": "@pick(['正常','关闭','冻结'])"
    }]
})

export default users;