var express = require('express');
var app = express();

app.get('/order', function(req, res) {
    res.json({
        name: '1234',
        id: 1,
        age: 22
    });
})
app.listen(3000)