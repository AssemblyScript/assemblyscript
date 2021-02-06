exports.postInstantiate = function(instance) {
  const exports = instance.exports;
  
  // using an integer value
  var basic = exports["Basic#constructor"](0, 123);
  (() => {
    var val = exports["Basic#get:val"](basic);
    if (val != 123) throw Error("invalid value");
    exports["Basic#set:val"](basic, 42);
    val = exports["Basic#get:val"](basic);
    if (val != 42) throw Error("invalid value");
  })();

  // using a managed value
  var managed = exports["Managed#constructor"](0, basic);
  (() => {
    var foo = exports["Managed#get:foo"](managed);
    if (foo != basic) throw Error("invalid value");
  })();
  (() => {
    var foo = exports["Basic#constructor"](0, 321);
    exports["Managed#set:foo"](managed, foo);
    var expectedFoo = foo;
    foo = exports["Managed#get:foo"](managed);
    if (foo != expectedFoo) throw Error("invalid value");
  })();

  // combining both
  (() => {
    var foo = exports["Managed#get:foo"](managed);
    var val = exports["Basic#get:val"](foo);
    if (val != 321) throw Error("invalid value");
  })();
};
