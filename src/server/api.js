var router = require('express')['Router']();
var mock = require('./mock');
var utils = require('../utils')

let token = '';

router.get('/test', function(req, res) {
    res.json('hello router')
})

router.get('/order', function(req, res) {
    res.json(mock.orders)
})

router.get('/', function(req, res) {
    res.send('hello world')
})

router.post('/login', function(req, res) {
    var data = req.body;
    if (data.userName == 'admin' && data.password == '123456') {
        token = utils.getToken();
        res.json({ msg: '登录成功', returncode: 1, token })

    } else {
        res.json({ msg: '用户名或密码错误', returncode: 0 })
    }
})


// test api

router.post('/token', function(req, res) {
    var data = req.body;
    if (data.token === token) res.json({ msg: '验证通过', returncode: 1 });
    else res.json({ msg: '验证失败', returncode: 0 })
})
module.exports = router;