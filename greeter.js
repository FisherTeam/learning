function greeter(person) {
    return "Hello, " + person;
}
var user = '111';
// document.body.innerHTML = greeter(user);
outer: for (var i = 0; i < 10; i++) {
    for (var j = 10; j > i; j--) {
        console.log(j);
        if (i == 5) {
            break outer;
        }
    }
}