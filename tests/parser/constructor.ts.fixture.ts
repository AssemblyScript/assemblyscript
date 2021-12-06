class MyClass {
  constructor() {}
  constructor(a: i32) {}
  constructor(a: i32, b: i32) {}
}
class MyClassImplicit {}
// ERROR 1005: "')' expected." in constructor.ts(8,30+7)
