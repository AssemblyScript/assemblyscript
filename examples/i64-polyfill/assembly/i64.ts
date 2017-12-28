let lo: u32;
let hi: u32;

export function getLo(): u32 {
  return lo;
}

export function getHi(): u32 {
  return hi;
}

function clz_(loLeft: u32, hiLeft: u32): void {
  var ret = clz<u64>(<u64>loLeft | <u64>hiLeft << 32);
  lo = <u32>ret;
  hi = 0;
}
export { clz_ as clz };

function ctz_(loLeft: u32, hiLeft: u32): void {
  var ret = ctz<u64>(<u64>loLeft | <u64>hiLeft << 32);
  lo = <u32>ret;
  hi = 0;
}
export { ctz_ as ctz };

function popcnt_(loLeft: u32, hiLeft: u32): void {
  var ret = popcnt<u64>(<u64>loLeft | <u64>hiLeft << 32);
  lo = <u32>ret;
  hi = 0;
}
export { popcnt_ as popcnt };

export function eqz(loLeft: u32, hiLeft: u32): void {
  var ret: bool = !(<u64>loLeft | <u64>hiLeft << 32);
  lo = <u32>ret;
  hi = 0;
}

export function add(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void {
  var ret = (<u64>loLeft | <u64>hiLeft << 32) + (<u64>loRight | <u64>hiRight << 32);
  lo = <u32>ret;
  hi = <u32>(ret >> 32);
}

export function sub(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void {
  var ret = (<u64>loLeft | <u64>hiLeft << 32) - (<u64>loRight | <u64>hiRight << 32);
  lo = <u32>ret;
  hi = <u32>(ret >> 32);
}

export function mul(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void {
  var ret = (<u64>loLeft | <u64>hiLeft << 32) * (<u64>loRight | <u64>hiRight << 32);
  lo = <u32>ret;
  hi = <u32>(ret >> 32);
}

export function div_s(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void {
  var ret = <u64>(<i64>(<u64>loLeft | <u64>hiLeft << 32) / <i64>(<u64>loRight | <u64>hiRight << 32));
  lo = <u32>ret;
  hi = <u32>(ret >> 32);
}

export function div_u(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void {
  var ret = (<u64>loLeft | <u64>hiLeft << 32) / (<u64>loRight | <u64>hiRight << 32);
  lo = <u32>ret;
  hi = <u32>(ret >> 32);
}

export function rem_s(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void {
  var ret = <u64>(<i64>(<u64>loLeft | <u64>hiLeft << 32) % <i64>(<u64>loRight | <u64>hiRight << 32));
  lo = <u32>ret;
  hi = <u32>(ret >> 32);
}

export function rem_u(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void {
  var ret = (<u64>loLeft | <u64>hiLeft << 32) % (<u64>loRight | <u64>hiRight << 32);
  lo = <u32>ret;
  hi = <u32>(ret >>> 32);
}

export function and(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void {
  var ret = (<u64>loLeft | <u64>hiLeft << 32) & (<u64>loRight | <u64>hiRight << 32);
  lo = <u32>ret;
  hi = <u32>(ret >>> 32);
}

export function or(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void {
  var ret = (<u64>loLeft | <u64>hiLeft << 32) | (<u64>loRight | <u64>hiRight << 32);
  lo = <u32>ret;
  hi = <u32>(ret >>> 32);
}

export function xor(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void {
  var ret = (<u64>loLeft | <u64>hiLeft << 32) ^ (<u64>loRight | <u64>hiRight << 32);
  lo = <u32>ret;
  hi = <u32>(ret >>> 32);
}

export function shl(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void {
  var ret = (<u64>loLeft | <u64>hiLeft << 32) << (<u64>loRight | <u64>hiRight << 32);
  lo = <u32>ret;
  hi = <u32>(ret >>> 32);
}

export function shr_s(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void {
  var ret = <u64>(<i64>(<u64>loLeft | <u64>hiLeft << 32) >> <i64>(<u64>loRight | <u64>hiRight << 32));
  lo = <u32>ret;
  hi = <u32>(ret >>> 32);
}

export function shr_u(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void {
  var ret = (<u64>loLeft | <u64>hiLeft << 32) >> (<u64>loRight | <u64>hiRight << 32);
  lo = <u32>ret;
  hi = <u32>(ret >>> 32);
}

function rotl_(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void {
  var ret = rotl<u64>(<u64>loLeft | <u64>hiLeft << 32, <u64>loRight | <u64>hiRight << 32);
  lo = <u32>ret;
  hi = <u32>(ret >>> 32);
}
export { rotl_ as rotl };

function rotr_(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void {
  var ret = rotr<u64>(<u64>loLeft | <u64>hiLeft << 32, <u64>loRight | <u64>hiRight << 32);
  lo = <u32>ret;
  hi = <u32>(ret >>> 32);
}
export { rotr_ as rotr };

export function eq(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void {
  var ret: bool = (<u64>loLeft | <u64>hiLeft << 32) == (<u64>loRight | <u64>hiRight << 32);
  lo = <u32>ret;
  hi = 0;
}

export function ne(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void {
  var ret: bool = (<u64>loLeft | <u64>hiLeft << 32) != (<u64>loRight | <u64>hiRight << 32);
  lo = <u32>ret;
  hi = 0;
}

export function lt_s(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void {
  var ret: bool = <i64>(<u64>loLeft | <u64>hiLeft << 32) < <i64>(<u64>loRight | <u64>hiRight << 32);
  lo = <u32>ret;
  hi = 0;
}

export function lt_u(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void {
  var ret: bool = (<u64>loLeft | <u64>hiLeft << 32) < (<u64>loRight | <u64>hiRight << 32);
  lo = <u32>ret;
  hi = 0;
}

export function le_s(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void {
  var ret: bool = <i64>(<u64>loLeft | <u64>hiLeft << 32) <= <i64>(<u64>loRight | <u64>hiRight << 32);
  lo = <u32>ret;
  hi = 0;
}

export function le_u(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void {
  var ret: bool = (<u64>loLeft | <u64>hiLeft << 32) <= (<u64>loRight | <u64>hiRight << 32);
  lo = <u32>ret;
  hi = 0;
}

export function gt_s(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void {
  var ret: bool = <i64>(<u64>loLeft | <u64>hiLeft << 32) > <i64>(<u64>loRight | <u64>hiRight << 32);
  lo = <u32>ret;
  hi = 0;
}

export function gt_u(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void {
  var ret: bool = (<u64>loLeft | <u64>hiLeft << 32) > (<u64>loRight | <u64>hiRight << 32);
  lo = <u32>ret;
  hi = 0;
}

export function ge_s(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void {
  var ret: bool = <i64>(<u64>loLeft | <u64>hiLeft << 32) >= <i64>(<u64>loRight | <u64>hiRight << 32);
  lo = <u32>ret;
  hi = 0;
}

export function ge_u(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void {
  var ret: bool = (<u64>loLeft | <u64>hiLeft << 32) >= (<u64>loRight | <u64>hiRight << 32);
  lo = <u32>ret;
  hi = 0;
}
