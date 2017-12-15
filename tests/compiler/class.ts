class Animal {
  static MAX: i32 = 1;
  static add(a: i32, b: i32): i32 { return a + b; }
  static sub<T>(a: T, b: T): T { return a - b; } // tsc does not allow this
}

Animal.MAX;
Animal.add(1,2);
Animal.sub<f32>(1.0, 2.0);
