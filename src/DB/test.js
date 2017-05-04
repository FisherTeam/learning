var MongoClient = require('mongodb').MongoClient;
var DB_CONN_STR = 'mongodb://localhost:27017/test';

MongoClient.connect(DB_CONN_STR, function(err, db) {
    db.collection('site').remove({ 'name': "zbq" })
    db.collection('site').insert([
        { name: 'zbq', age: '20' }
    ], function(err, result) {
        db.close()
    })
})