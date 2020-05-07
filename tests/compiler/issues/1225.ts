class X {
  normal: i32;
  viaThis: i32;
  constructor(private x: i32) {
    this.viaThis = this.x;
    this.normal = x;
  }
}

var x = new X(4);
export function normal(): u32 {
  return x.normal;
}
export function viaThis(): u32 {
  return x.viaThis;
}

assert(normal() === 4);
assert(viaThis() === 4);

x = changetype<X>(0); // unleak
