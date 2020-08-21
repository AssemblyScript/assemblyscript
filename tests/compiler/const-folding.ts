export function test(value: u64): u64 {
  var mod1: u64 = -1;
  var mod2: u64 = -1;

  var rlo = value << 1;
  var rhi = rlo & ~mod2;

  rhi |= rhi << 1;
  rhi |= (value >> 63) & mod1;
  return rlo + rhi;
}
