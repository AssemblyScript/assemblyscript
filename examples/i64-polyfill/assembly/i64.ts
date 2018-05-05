var lo: u32, hi: u32;

export function getLo(): u32 {
  return lo;
}

export function getHi(): u32 {
  return hi;
}

import { clz as builtin_clz } from "builtins";

export function clz(loLeft: u32, hiLeft: u32): void {
  var ret = builtin_clz<u64>(<u64>loLeft | <u64>hiLeft << 32);
  lo = <u32>ret;
  hi = 0;
}

import { ctz as builtin_ctz } from "builtins";

export function ctz(loLeft: u32, hiLeft: u32): void {
  var ret = builtin_ctz<u64>(<u64>loLeft | <u64>hiLeft << 32);
  lo = <u32>ret;
  hi = 0;
}

import { popcnt as builtin_popcnt } from "builtins";

export function popcnt(loLeft: u32, hiLeft: u32): void {
  var ret = builtin_popcnt<u64>(<u64>loLeft | <u64>hiLeft << 32);
  lo = <u32>ret;
  hi = 0;
}

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

import { rotl as builtin_rotl } from "builtins";

export function rotl(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void {
  var ret = builtin_rotl<u64>(<u64>loLeft | <u64>hiLeft << 32, <u64>loRight | <u64>hiRight << 32);
  lo = <u32>ret;
  hi = <u32>(ret >>> 32);
}

import { rotr as builtin_rotr } from "builtins";

export function rotr(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void {
  var ret = builtin_rotr<u64>(<u64>loLeft | <u64>hiLeft << 32, <u64>loRight | <u64>hiRight << 32);
  lo = <u32>ret;
  hi = <u32>(ret >>> 32);
}

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
