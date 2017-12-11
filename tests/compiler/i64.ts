let lo: u32;
let hi: u32;

export function add(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void {
  const ret: i64 = (<i64>loLeft | <i64>hiLeft << 32) + (<i64>loRight | <i64>hiRight << 32);
  lo = <u32>ret;
  hi = <u32>(ret >>> 32);
}

export function sub(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void {
  const ret: i64 = (<i64>loLeft | <i64>hiLeft << 32) - (<i64>loRight | <i64>hiRight << 32);
  lo = <u32>ret;
  hi = <u32>(ret >>> 32);
}

export function mul(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void {
  const ret: i64 = (<i64>loLeft | <i64>hiLeft << 32) * (<i64>loRight | <i64>hiRight << 32);
  lo = <u32>ret;
  hi = <u32>(ret >>> 32);
}

export function div_s(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void {
  const ret: i64 = (<i64>loLeft | <i64>hiLeft << 32) / (<i64>loRight | <i64>hiRight << 32);
  lo = <u32>ret;
  hi = <u32>(ret >>> 32);
}

export function div_u(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void {
  const ret: u64 = (<u64>loLeft | <u64>hiLeft << 32) / (<u64>loRight | <u64>hiRight << 32);
  lo = <u32>ret;
  hi = <u32>(ret >>> 32);
}

export function rem_s(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void {
  const ret: i64 = (<i64>loLeft | <i64>hiLeft << 32) % (<i64>loRight | <i64>hiRight << 32);
  lo = <u32>ret;
  hi = <u32>(ret >>> 32);
}

export function rem_u(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void {
  const ret: u64 = (<u64>loLeft | <u64>hiLeft << 32) % (<u64>loRight | <u64>hiRight << 32);
  lo = <u32>ret;
  hi = <u32>(ret >>> 32);
}
