var qs = require("qs");

var json = {
    name: "xiaogg",
    age: 23,
    sex: 'men',
    hobby: "women"
}

console.log(qs.stringify(json))