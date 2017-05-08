var MongoClient = require('mongodb').MongoClient;
var sprintf = require("sprintf-js").sprintf;
var DB_CONN_STR = 'mongodb://root:zbq1992-@dds-m5ec27fea7722c841.mongodb.rds.aliyuncs.com:3717';

var host1 = "dds-m5ec27fea7722c841.mongodb.rds.aliyuncs.com";
var port1 = 3717;
var host2 = "dds-m5ec27fea7722c842.mongodb.rds.aliyuncs.com";
var port2 = 3717;
var username = "root";
var password = "zbq1992-";
var replSetName = "mgset-3270637";
var demoDb = "test";
var demoColl = "testColl";
// 官方建议使用的方案
var url_str = sprintf("mongodb://%s:%d,%s:%d/%s?replicaSet=%s", host1, port1, host2, port2, demoDb, replSetName);

console.info("url:", url_str);
MongoClient.connect(url_str, function(err, db) {
    if (err) { console.log(err) }
    console.log(db)
    db.collection('site').remove({ 'name': "zbq" })
    db.collection('site').insert([
        { name: 'zbq', age: '20' }
    ], function(err, result) {
        db.close()
    })
})