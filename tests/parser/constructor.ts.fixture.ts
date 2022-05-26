class MyClass {
  constructor() {}
  constructor(a: i32) {}
  constructor(a: i32, b: i32) {}
  constructor(a: i32, b: i32, protected c: f32) {}
  constructor(a: i32, b: i32, protected c: f32, protected ...d: Array<i32>) {}
}
class MyClassImplicit {
  constructor(public a: i32, private readonly b: i32 = 2, c: i32 = 3) {}
}
// ERROR 1317: "A parameter property cannot be declared using a rest parameter." in constructor.ts(7,58+3)
