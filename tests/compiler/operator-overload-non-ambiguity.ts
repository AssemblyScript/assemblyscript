class Base {
  @operator("==") __eq(other: Base): bool {
    return true;
  }
}

class P1 extends Base {}
class P2 extends Base {}

assert(new P1() == new P2());

class T1 {
  @operator("==") __eq(other: i32): bool {
    assert(other == 123);
    return true;
  }
}
assert(new T1() == 123);
assert(123 == new T1());
