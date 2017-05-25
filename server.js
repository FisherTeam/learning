var express = require('express')
var app = express();

// app.use(cors());

app.use(express.static('dist'))

app.listen(8090, function() {
    console.log('express listening 8060...')
})