var a = class {
  foo(): void {}
  bar: i32;
};
var b = class Foo {};
// ERROR 1005: "'{' expected."
var c = class [bar: i32];
// ERROR 1003: "Identifier expected."
// ERROR 1005: "'}' expected."
var d = class bat {
  
