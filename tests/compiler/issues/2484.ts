class Vec2 {
  constructor(public x: f64 = 0, public y: f64 = 0) {}
  @operator("==")
  eq(a: Vec2, b: Vec2): bool { // non-static but 2 args
    return a.x == b.x && a.y == b.y;
  }
  @operator.prefix("!")
  not(a: Vec2): bool { // non-static but 1 arg
    return true;
  }
  @operator.postfix("++")
  postInt(a: Vec2): Vec2 { // non-static but 1 arg
    return this;
  }
}

let v1 = new Vec2(1, 2);
assert(v1 == v1);
assert(!v1);
assert((v1++).x == v1.x);
