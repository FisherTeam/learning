// 参数是按值传递

var obj = {
    name: "zbq"
}

function setName(obj) {
    obj = Object.create(obj);
    obj.name = "tangshao"
}
setName(obj);
console.log(obj);