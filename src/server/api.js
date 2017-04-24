var router = require('express')['Router']();
var mock = require('./mock');


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
        res.json({ msg: '登录成功', returncode: 1 })

    } else {
        res.json({ msg: '用户名或密码错误', returncode: 0 })
    }
})


module.exports = router;