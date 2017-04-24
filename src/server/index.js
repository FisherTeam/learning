var express = require('express')
var app = express();
var cors = require('./cors')
var router = require('./api')
var bodyParser = require('body-parser');

app.use(bodyParser.json())
app.use(bodyParser.urlencoded({ extended: true }));

// app.use(cors());
app.use('/', router)

app.listen(8060, function() {
    console.log('express listening 8060...')
})