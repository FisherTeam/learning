var qs = require("qs");
var json = {
    name: 'zbq',
    arr: [{
        name: 'zbq',
        age: 12
    }, {
        name: 'hehehe',
        age: 20
    }]
}
console.log('====================================');
console.log(qs.stringify(json));
console.log('====================================');