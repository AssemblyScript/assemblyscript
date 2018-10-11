class MyClass {
  constructor() {}
  constructor(a: i32) {}
  constructor(a: i32, b: i32) {}
}
class MyClassImplicit {
  constructor(public a: i32, private readonly b?: i32 = 2, c?: i32 = 3) {}
}
