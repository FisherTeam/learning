var express = require('express')
var app = express()

app.use(function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "X-Requested-With");
    next();
});
app.get('/hello', function(req, res) {
    res.json({ name: 'zbq', age: 25 })
})

app.listen(3000)