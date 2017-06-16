var MongoClient = require('mongodb').MongoClient;
var sprintf = require("sprintf-js").sprintf;
var DB_CONN_STR = 'mongodb://localhost:27017';

MongoClient.connect(DB_CONN_STR, function(err, db) {
    db.collection('site').insert([
        { name: 'zbq', age: '20' }
    ], function(err, result) {
        db.close()
    })
})