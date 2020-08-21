exports.postInstantiate = function(instance) {
  const exports = instance.exports;
  
  // using an integer value
  var basic = exports["Basic#constructor"](0, 123); // retain $0
  (() => {
    var val = exports["Basic#get:val"](basic);
    if (val != 123) throw Error("invalid value");
    exports["Basic#set:val"](basic, 42);
    val = exports["Basic#get:val"](basic);
    if (val != 42) throw Error("invalid value");
  })();

  // using a managed value
  var managed = exports["Managed#constructor"](0, basic); // retain $1
  (() => {
    var foo = exports["Managed#get:foo"](managed); // retain $2
    if (foo != basic) throw Error("invalid value");
    exports.__release(foo); // release $2
  })();
  (() => {
    var foo = exports["Basic#constructor"](0, 321); // retain $3
    exports["Managed#set:foo"](managed, foo);
    exports.__release(foo); // release $3
    var expectedFoo = foo;
    foo = exports["Managed#get:foo"](managed); // retain $4
    if (foo != expectedFoo) throw Error("invalid value");
    exports.__release(foo); // releae $4
  })();

  // combining both
  (() => {
    var foo = exports["Managed#get:foo"](managed); // retain $5
    var val = exports["Basic#get:val"](foo);
    if (val != 321) throw Error("invalid value");
    exports.__release(foo); // release $5
  })();

  exports.__release(basic); // release $0
  exports.__release(managed); // release $1
};
