var a = class {
  foo(): void {}
  bar: i32;
};
var b = class Foo {};
// ERROR 1005: "'{' expected." in class-expression.ts(7,14+0)
// ERROR 1003: "Identifier expected." in class-expression.ts(10,19+1)
// ERROR 1005: "'}' expected." in class-expression.ts(11,3+1)
