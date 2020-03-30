class MyClass {
  constructor() {}
  constructor(a: i32) /* {a} */ {/* {a} */}
  constructor(a: i32, b: i32) /* {a,b} */ {/* {a,b} */}
}
class MyClassImplicit {
  constructor(public a: i32, private readonly b?: i32 = 2, c?: i32 = 3) /* {a,b,c} */ {/* {a,b,c} */}
}
