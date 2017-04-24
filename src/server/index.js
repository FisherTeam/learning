var express = require('express')
var app = express();
var mock = require('./mock');
var cors = require('./cors')

app.use(cors());

app.get('/', function(req, res) {
    res.send('hello express')
})
app.get('/api/order', function(req, res) {
    res.send('hello proxy')
})
app.get('/order', function(req, res) {
    res.json(mock.orders)
})

app.listen(8060, function() {
    console.log('express listening 8060...')
})