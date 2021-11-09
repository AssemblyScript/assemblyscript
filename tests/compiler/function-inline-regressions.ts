@unmanaged class Struct {
  v0: u32;
  v1: u32;
  v2: u32;
}

// @inline
function loadZ() : u32 {
  return load<u32>(16);
}

// @inline
function loadX(a: i32, b: i32): u32 {
  return load<u32>(2 * a + b);
}

export function baz(v: u32): void {
  if (v) unreachable();
}

export function foo(v0: i32, v1: i32, v2: i32): u32 {
  const x = loadX(v0, 0);
  const y = loadX(v0, 1);
  const z = loadZ();

  baz(z + x + y);

  struct.v0 = v0;
  struct.v1 = v1;
  struct.v2 = v2;

  return z;
}

const struct = changetype<Struct>(0);
