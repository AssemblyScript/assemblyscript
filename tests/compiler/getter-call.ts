import "allocator/arena";

class C {
  get x(): () => i32 {
    return (): i32 => 42;
  }
}

export function test(): i32 {
  // TODO: GH#251 return new C().x();
  let c = new C();
  return c.x();
}
