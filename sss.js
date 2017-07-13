//  Function.prototype.addMethod = function(name, fn) {
//      this.prototype[name] = fn;
//      return this;
//  }

//  var methods = function() {};
//  methods.addMethod('checkName', function(name) {
//      console.log(name);
//      return this;
//  }).addMethod('checkAge', function(age) {
//      console.log(age);
//      return this;
//  })

//  var a = new methods();
//  a.checkName('cqp').checkAge('18');

Function.prototype.addMethod = function(name, fn) {
    this[name] = fn;
    this.prototype[name] = fn;
    return this;
}

var methods = function() {};
methods.addMethod('checkName', function(name) {
    console.log(name);
    return this;
}).addMethod('checkAge', function(age) {
    console.log(age);
    return this;
})

var a = new methods();
a.checkName('cqp').checkAge('18');