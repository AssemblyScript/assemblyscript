/**
 * Built-in elements providing WebAssembly core functionality.
 * @module builtins
 *//***/

 import {
  Compiler,
  Constraints,
  RuntimeFeatures,
  flatten
} from "./compiler";

import {
  DiagnosticCode
} from "./diagnostics";

import {
  Node,
  NodeKind,
  Expression,
  LiteralKind,
  LiteralExpression,
  StringLiteralExpression,
  CallExpression
} from "./ast";

import {
  Type,
  TypeKind,
  TypeFlags,
  Signature
} from "./types";

import {
  BinaryOp,
  UnaryOp,
  HostOp,
  AtomicRMWOp,
  SIMDExtractOp,
  SIMDReplaceOp,
  SIMDShiftOp,
  NativeType,
  ExpressionRef,
  ExpressionId,
  getExpressionId,
  getExpressionType,
  getConstValueI64High,
  getConstValueI64Low,
  getConstValueI32,
  getConstValueF32,
  getConstValueF64,
  Relooper,
  RelooperBlockRef
} from "./module";

import {
  ElementKind,
  FunctionPrototype,
  Field,
  Global,
  DecoratorFlags,
  Element
} from "./program";

import {
  FlowFlags,
  LocalFlags
} from "./flow";

import {
  ReportMode
} from "./resolver";

import {
  CommonFlags,
  Feature,
  TypeinfoFlags
} from "./common";

import {
  writeI8,
  writeI16,
  writeI32,
  writeF32,
  writeF64,
  isPowerOf2
} from "./util";

/** Symbols of various compiler built-ins. */
export namespace BuiltinSymbols {
  // std/builtins.ts
  export const isInteger = "~lib/builtins/isInteger";
  export const isFloat = "~lib/builtins/isFloat";
  export const isBoolean = "~lib/builtins/isBoolean";
  export const isSigned = "~lib/builtins/isSigned";
  export const isReference = "~lib/builtins/isReference";
  export const isString = "~lib/builtins/isString";
  export const isArray = "~lib/builtins/isArray";
  export const isArrayLike = "~lib/builtins/isArrayLike";
  export const isFunction = "~lib/builtins/isFunction";
  export const isNullable = "~lib/builtins/isNullable";
  export const isDefined = "~lib/builtins/isDefined";
  export const isConstant = "~lib/builtins/isConstant";
  export const isManaged = "~lib/builtins/isManaged";
  export const isVoid = "~lib/builtins/isVoid";

  export const clz = "~lib/builtins/clz";
  export const ctz = "~lib/builtins/ctz";
  export const popcnt = "~lib/builtins/popcnt";
  export const rotl = "~lib/builtins/rotl";
  export const rotr = "~lib/builtins/rotr";
  export const abs = "~lib/builtins/abs";
  export const max = "~lib/builtins/max";
  export const min = "~lib/builtins/min";
  export const ceil = "~lib/builtins/ceil";
  export const floor = "~lib/builtins/floor";
  export const copysign = "~lib/builtins/copysign";
  export const nearest = "~lib/builtins/nearest";
  export const reinterpret = "~lib/builtins/reinterpret";
  export const sqrt = "~lib/builtins/sqrt";
  export const trunc = "~lib/builtins/trunc";
  export const load = "~lib/builtins/load";
  export const store = "~lib/builtins/store";
  export const atomic_load = "~lib/builtins/atomic.load";
  export const atomic_store = "~lib/builtins/atomic.store";
  export const atomic_add = "~lib/builtins/atomic.add";
  export const atomic_sub = "~lib/builtins/atomic.sub";
  export const atomic_and = "~lib/builtins/atomic.and";
  export const atomic_or = "~lib/builtins/atomic.or";
  export const atomic_xor = "~lib/builtins/atomic.xor";
  export const atomic_xchg = "~lib/builtins/atomic.xchg";
  export const atomic_cmpxchg = "~lib/builtins/atomic.cmpxchg";
  export const atomic_wait = "~lib/builtins/atomic.wait";
  export const atomic_notify = "~lib/builtins/atomic.notify";

  export const sizeof = "~lib/builtins/sizeof";
  export const alignof = "~lib/builtins/alignof";
  export const offsetof = "~lib/builtins/offsetof";
  export const nameof = "~lib/builtins/nameof";
  export const lengthof = "~lib/builtins/lengthof";
  export const select = "~lib/builtins/select";
  export const unreachable = "~lib/builtins/unreachable";
  export const changetype = "~lib/builtins/changetype";
  export const assert = "~lib/builtins/assert";
  export const unchecked = "~lib/builtins/unchecked";
  export const call_direct = "~lib/builtins/call_direct";
  export const call_indirect = "~lib/builtins/call_indirect";
  export const instantiate = "~lib/builtins/instantiate";
  export const idof = "~lib/builtins/idof";

  export const i8 = "~lib/builtins/i8";
  export const i16 = "~lib/builtins/i16";
  export const i32 = "~lib/builtins/i32";
  export const i64 = "~lib/builtins/i64";
  export const isize = "~lib/builtins/isize";
  export const u8 = "~lib/builtins/u8";
  export const u16 = "~lib/builtins/u16";
  export const u32 = "~lib/builtins/u32";
  export const u64 = "~lib/builtins/u64";
  export const usize = "~lib/builtins/usize";
  export const bool = "~lib/builtins/bool";
  export const f32 = "~lib/builtins/f32";
  export const f64 = "~lib/builtins/f64";
  export const v128 = "~lib/builtins/v128";
  export const void_ = "~lib/builtins/void";

  export const i32_clz = "~lib/builtins/i32.clz";
  export const i64_clz = "~lib/builtins/i64.clz";
  export const i32_ctz = "~lib/builtins/i32.ctz";
  export const i64_ctz = "~lib/builtins/i64.ctz";
  export const i32_popcnt = "~lib/builtins/i32.popcnt";
  export const i64_popcnt = "~lib/builtins/i64.popcnt";
  export const i32_rotl = "~lib/builtins/i32.rotl";
  export const i64_rotl = "~lib/builtins/i64.rotl";
  export const i32_rotr = "~lib/builtins/i32.rotr";
  export const i64_rotr = "~lib/builtins/i64.rotr";

  export const f32_abs = "~lib/builtins/f32.abs";
  export const f64_abs = "~lib/builtins/f64.abs";
  export const f32_max = "~lib/builtins/f32.max";
  export const f64_max = "~lib/builtins/f64.max";
  export const f32_min = "~lib/builtins/f32.min";
  export const f64_min = "~lib/builtins/f64.min";
  export const f32_ceil = "~lib/builtins/f32.ceil";
  export const f64_ceil = "~lib/builtins/f64.ceil";
  export const f32_floor = "~lib/builtins/f32.floor";
  export const f64_floor = "~lib/builtins/f64.floor";
  export const f32_copysign = "~lib/builtins/f32.copysign";
  export const f64_copysign = "~lib/builtins/f64.copysign";
  export const f32_nearest = "~lib/builtins/f32.nearest";
  export const f64_nearest = "~lib/builtins/f64.nearest";
  export const i32_reinterpret_f32 = "~lib/builtins/i32.reinterpret_f32";
  export const i64_reinterpret_f64 = "~lib/builtins/i64.reinterpret_f64";
  export const f32_reinterpret_i32 = "~lib/builtins/f32.reinterpret_i32";
  export const f64_reinterpret_i64 = "~lib/builtins/f64.reinterpret_i64";
  export const f32_sqrt = "~lib/builtins/f32.sqrt";
  export const f64_sqrt = "~lib/builtins/f64.sqrt";
  export const f32_trunc = "~lib/builtins/f32.trunc";
  export const f64_trunc = "~lib/builtins/f64.trunc";

  export const i32_load8_s = "~lib/builtins/i32.load8_s";
  export const i32_load8_u = "~lib/builtins/i32.load8_u";
  export const i32_load16_s = "~lib/builtins/i32.load16_s";
  export const i32_load16_u = "~lib/builtins/i32.load16_u";
  export const i32_load = "~lib/builtins/i32.load";
  export const i64_load8_s = "~lib/builtins/i64.load8_s";
  export const i64_load8_u = "~lib/builtins/i64.load8_u";
  export const i64_load16_s = "~lib/builtins/i64.load16_s";
  export const i64_load16_u = "~lib/builtins/i64.load16_u";
  export const i64_load32_s = "~lib/builtins/i64.load32_s";
  export const i64_load32_u = "~lib/builtins/i64.load32_u";
  export const i64_load = "~lib/builtins/i64.load";
  export const f32_load = "~lib/builtins/f32.load";
  export const f64_load = "~lib/builtins/f64.load";
  export const i32_store8 = "~lib/builtins/i32.store8";
  export const i32_store16 = "~lib/builtins/i32.store16";
  export const i32_store = "~lib/builtins/i32.store";
  export const i64_store8 = "~lib/builtins/i64.store8";
  export const i64_store16 = "~lib/builtins/i64.store16";
  export const i64_store32 = "~lib/builtins/i64.store32";
  export const i64_store = "~lib/builtins/i64.store";
  export const f32_store = "~lib/builtins/f32.store";
  export const f64_store = "~lib/builtins/f64.store";

  export const i32_atomic_load8_u = "~lib/builtins/i32.atomic.load8_u";
  export const i32_atomic_load16_u = "~lib/builtins/i32.atomic.load16_u";
  export const i32_atomic_load = "~lib/builtins/i32.atomic.load";
  export const i64_atomic_load8_u = "~lib/builtins/i64.atomic.load8_u";
  export const i64_atomic_load16_u = "~lib/builtins/i64.atomic.load16_u";
  export const i64_atomic_load32_u = "~lib/builtins/i64.atomic.load32_u";
  export const i64_atomic_load = "~lib/builtins/i64.atomic.load";
  export const i32_atomic_store8 = "~lib/builtins/i32.atomic.store8";
  export const i32_atomic_store16 = "~lib/builtins/i32.atomic.store16";
  export const i32_atomic_store = "~lib/builtins/i32.atomic.store";
  export const i64_atomic_store8 = "~lib/builtins/i64.atomic.store8";
  export const i64_atomic_store16 = "~lib/builtins/i64.atomic.store16";
  export const i64_atomic_store32 = "~lib/builtins/i64.atomic.store32";
  export const i64_atomic_store = "~lib/builtins/i64.atomic.store";
  export const i32_atomic_rmw8_add_u = "~lib/builtins/i32.atomic.rmw8.add_u";
  export const i32_atomic_rmw16_add_u = "~lib/builtins/i32.atomic.rmw16.add_u";
  export const i32_atomic_rmw_add = "~lib/builtins/i32.atomic.rmw.add";
  export const i64_atomic_rmw8_add_u = "~lib/builtins/i64.atomic.rmw8.add_u";
  export const i64_atomic_rmw16_add_u = "~lib/builtins/i64.atomic.rmw16.add_u";
  export const i64_atomic_rmw32_add_u = "~lib/builtins/i64.atomic.rmw32.add_u";
  export const i64_atomic_rmw_add = "~lib/builtins/i64.atomic.rmw.add";
  export const i32_atomic_rmw8_sub_u = "~lib/builtins/i32.atomic.rmw8.sub_u";
  export const i32_atomic_rmw16_sub_u = "~lib/builtins/i32.atomic.rmw16.sub_u";
  export const i32_atomic_rmw_sub = "~lib/builtins/i32.atomic.rmw.sub";
  export const i64_atomic_rmw8_sub_u = "~lib/builtins/i64.atomic.rmw8.sub_u";
  export const i64_atomic_rmw16_sub_u = "~lib/builtins/i64.atomic.rmw16.sub_u";
  export const i64_atomic_rmw32_sub_u = "~lib/builtins/i64.atomic.rmw32.sub_u";
  export const i64_atomic_rmw_sub = "~lib/builtins/i64.atomic.rmw.sub";
  export const i32_atomic_rmw8_and_u = "~lib/builtins/i32.atomic.rmw8.and_u";
  export const i32_atomic_rmw16_and_u = "~lib/builtins/i32.atomic.rmw16.and_u";
  export const i32_atomic_rmw_and = "~lib/builtins/i32.atomic.rmw.and";
  export const i64_atomic_rmw8_and_u = "~lib/builtins/i64.atomic.rmw8.and_u";
  export const i64_atomic_rmw16_and_u = "~lib/builtins/i64.atomic.rmw16.and_u";
  export const i64_atomic_rmw32_and_u = "~lib/builtins/i64.atomic.rmw32.and_u";
  export const i64_atomic_rmw_and = "~lib/builtins/i64.atomic.rmw.and";
  export const i32_atomic_rmw8_or_u = "~lib/builtins/i32.atomic.rmw8.or_u";
  export const i32_atomic_rmw16_or_u = "~lib/builtins/i32.atomic.rmw16.or_u";
  export const i32_atomic_rmw_or = "~lib/builtins/i32.atomic.rmw.or";
  export const i64_atomic_rmw8_or_u = "~lib/builtins/i64.atomic.rmw8.or_u";
  export const i64_atomic_rmw16_or_u = "~lib/builtins/i64.atomic.rmw16.or_u";
  export const i64_atomic_rmw32_or_u = "~lib/builtins/i64.atomic.rmw32.or_u";
  export const i64_atomic_rmw_or = "~lib/builtins/i64.atomic.rmw.or";
  export const i32_atomic_rmw8_u_xor = "~lib/builtins/i32.atomic.rmw8.xor_u";
  export const i32_atomic_rmw16_u_xor = "~lib/builtins/i32.atomic.rmw16.xor_u";
  export const i32_atomic_rmw_xor = "~lib/builtins/i32.atomic.rmw.xor";
  export const i64_atomic_rmw8_xor_u = "~lib/builtins/i64.atomic.rmw8.xor_u";
  export const i64_atomic_rmw16_xor_u = "~lib/builtins/i64.atomic.rmw16.xor_u";
  export const i64_atomic_rmw32_xor_u = "~lib/builtins/i64.atomic.rmw32.xor_u";
  export const i64_atomic_rmw_xor = "~lib/builtins/i64.atomic.rmw.xor";
  export const i32_atomic_rmw8_xchg_u = "~lib/builtins/i32.atomic.rmw8.xchg_u";
  export const i32_atomic_rmw16_xchg_u = "~lib/builtins/i32.atomic.rmw16.xchg_u";
  export const i32_atomic_rmw_xchg = "~lib/builtins/i32.atomic.rmw.xchg";
  export const i64_atomic_rmw8_xchg_u = "~lib/builtins/i64.atomic.rmw8.xchg_u";
  export const i64_atomic_rmw16_xchg_u = "~lib/builtins/i64.atomic.rmw16.xchg_u";
  export const i64_atomic_rmw32_xchg_u = "~lib/builtins/i64.atomic.rmw32.xchg_u";
  export const i64_atomic_rmw_xchg = "~lib/builtins/i64.atomic.rmw.xchg";
  export const i32_atomic_rmw8_cmpxchg_u = "~lib/builtins/i32.atomic.rmw8.cmpxchg_u";
  export const i32_atomic_rmw16_cmpxchg_u = "~lib/builtins/i32.atomic.rmw16.cmpxchg_u";
  export const i32_atomic_rmw_cmpxchg = "~lib/builtins/i32.atomic.rmw.cmpxchg";
  export const i64_atomic_rmw8_cmpxchg_u = "~lib/builtins/i64.atomic.rmw8.cmpxchg_u";
  export const i64_atomic_rmw16_cmpxchg_u = "~lib/builtins/i64.atomic.rmw16.cmpxchg_u";
  export const i64_atomic_rmw32_cmpxchg_u = "~lib/builtins/i64.atomic.rmw32.cmpxchg_u";
  export const i64_atomic_rmw_cmpxchg = "~lib/builtins/i64.atomic.rmw.cmpxchg";
  export const i32_wait = "~lib/builtins/i32.wait";
  export const i64_wait = "~lib/builtins/i64.wait";

  export const v128_splat = "~lib/builtins/v128.splat";
  export const v128_extract_lane = "~lib/builtins/v128.extract_lane";
  export const v128_replace_lane = "~lib/builtins/v128.replace_lane";
  export const v128_shuffle = "~lib/builtins/v128.shuffle";
  export const v128_load = "~lib/builtins/v128.load";
  export const v128_store = "~lib/builtins/v128.store";
  export const v128_add = "~lib/builtins/v128.add";
  export const v128_sub = "~lib/builtins/v128.sub";
  export const v128_mul = "~lib/builtins/v128.mul";
  export const v128_div = "~lib/builtins/v128.div";
  export const v128_neg = "~lib/builtins/v128.neg";
  export const v128_add_saturate = "~lib/builtins/v128.add_saturate";
  export const v128_sub_saturate = "~lib/builtins/v128.sub_saturate";
  export const v128_shl = "~lib/builtins/v128.shl";
  export const v128_shr = "~lib/builtins/v128.shr";
  export const v128_and = "~lib/builtins/v128.and";
  export const v128_or = "~lib/builtins/v128.or";
  export const v128_xor = "~lib/builtins/v128.xor";
  export const v128_not = "~lib/builtins/v128.not";
  export const v128_bitselect = "~lib/builtins/v128.bitselect";
  export const v128_any_true = "~lib/builtins/v128.any_true";
  export const v128_all_true = "~lib/builtins/v128.all_true";
  export const v128_min = "~lib/builtins/v128.min";
  export const v128_max = "~lib/builtins/v128.max";
  export const v128_abs = "~lib/builtins/v128.abs";
  export const v128_sqrt = "~lib/builtins/v128.sqrt";
  export const v128_eq = "~lib/builtins/v128.eq";
  export const v128_ne = "~lib/builtins/v128.ne";
  export const v128_lt = "~lib/builtins/v128.lt";
  export const v128_le = "~lib/builtins/v128.le";
  export const v128_gt = "~lib/builtins/v128.gt";
  export const v128_ge = "~lib/builtins/v128.ge";
  export const v128_convert = "~lib/builtins/v128.convert";
  export const v128_trunc = "~lib/builtins/v128.trunc";

  export const i8x16 = "~lib/builtins/i8x16";
  export const i16x8 = "~lib/builtins/i16x8";
  export const i32x4 = "~lib/builtins/i32x4";
  export const i64x2 = "~lib/builtins/i64x2";
  export const f32x4 = "~lib/builtins/f32x4";
  export const f64x2 = "~lib/builtins/f64x2";

  export const i8x16_splat = "~lib/builtins/i8x16.splat";
  export const i8x16_extract_lane_s = "~lib/builtins/i8x16.extract_lane_s";
  export const i8x16_extract_lane_u = "~lib/builtins/i8x16.extract_lane_u";
  export const i8x16_replace_lane = "~lib/builtins/i8x16.replace_lane";
  export const i8x16_add = "~lib/builtins/i8x16.add";
  export const i8x16_sub = "~lib/builtins/i8x16.sub";
  export const i8x16_mul = "~lib/builtins/i8x16.mul";
  export const i8x16_neg = "~lib/builtins/i8x16.neg";
  export const i8x16_add_saturate_s = "~lib/builtins/i8x16.add_saturate_s";
  export const i8x16_add_saturate_u = "~lib/builtins/i8x16.add_saturate_u";
  export const i8x16_sub_saturate_s = "~lib/builtins/i8x16.sub_saturate_s";
  export const i8x16_sub_saturate_u = "~lib/builtins/i8x16.sub_saturate_u";
  export const i8x16_shl = "~lib/builtins/i8x16.shl";
  export const i8x16_shr_s = "~lib/builtins/i8x16.shr_s";
  export const i8x16_shr_u = "~lib/builtins/i8x16.shr_u";
  export const i8x16_any_true = "~lib/builtins/i8x16.any_true";
  export const i8x16_all_true = "~lib/builtins/i8x16.all_true";
  export const i8x16_eq = "~lib/builtins/i8x16.eq";
  export const i8x16_ne = "~lib/builtins/i8x16.ne";
  export const i8x16_lt_s = "~lib/builtins/i8x16.lt_s";
  export const i8x16_lt_u = "~lib/builtins/i8x16.lt_u";
  export const i8x16_le_s = "~lib/builtins/i8x16.le_s";
  export const i8x16_le_u = "~lib/builtins/i8x16.le_u";
  export const i8x16_gt_s = "~lib/builtins/i8x16.gt_s";
  export const i8x16_gt_u = "~lib/builtins/i8x16.gt_u";
  export const i8x16_ge_s = "~lib/builtins/i8x16.ge_s";
  export const i8x16_ge_u = "~lib/builtins/i8x16.ge_u";

  export const i16x8_splat = "~lib/builtins/i16x8.splat";
  export const i16x8_extract_lane_s = "~lib/builtins/i16x8.extract_lane_s";
  export const i16x8_extract_lane_u = "~lib/builtins/i16x8.extract_lane_u";
  export const i16x8_replace_lane = "~lib/builtins/i16x8.replace_lane";
  export const i16x8_add = "~lib/builtins/i16x8.add";
  export const i16x8_sub = "~lib/builtins/i16x8.sub";
  export const i16x8_mul = "~lib/builtins/i16x8.mul";
  export const i16x8_neg = "~lib/builtins/i16x8.neg";
  export const i16x8_add_saturate_s = "~lib/builtins/i16x8.add_saturate_s";
  export const i16x8_add_saturate_u = "~lib/builtins/i16x8.add_saturate_u";
  export const i16x8_sub_saturate_s = "~lib/builtins/i16x8.sub_saturate_s";
  export const i16x8_sub_saturate_u = "~lib/builtins/i16x8.sub_saturate_u";
  export const i16x8_shl = "~lib/builtins/i16x8.shl";
  export const i16x8_shr_s = "~lib/builtins/i16x8.shr_s";
  export const i16x8_shr_u = "~lib/builtins/i16x8.shr_u";
  export const i16x8_any_true = "~lib/builtins/i16x8.any_true";
  export const i16x8_all_true = "~lib/builtins/i16x8.all_true";
  export const i16x8_eq = "~lib/builtins/i16x8.eq";
  export const i16x8_ne = "~lib/builtins/i16x8.ne";
  export const i16x8_lt_s = "~lib/builtins/i16x8.lt_s";
  export const i16x8_lt_u = "~lib/builtins/i16x8.lt_u";
  export const i16x8_le_s = "~lib/builtins/i16x8.le_s";
  export const i16x8_le_u = "~lib/builtins/i16x8.le_u";
  export const i16x8_gt_s = "~lib/builtins/i16x8.gt_s";
  export const i16x8_gt_u = "~lib/builtins/i16x8.gt_u";
  export const i16x8_ge_s = "~lib/builtins/i16x8.ge_s";
  export const i16x8_ge_u = "~lib/builtins/i16x8.ge_u";

  export const i32x4_splat = "~lib/builtins/i32x4.splat";
  export const i32x4_extract_lane = "~lib/builtins/i32x4.extract_lane";
  export const i32x4_replace_lane = "~lib/builtins/i32x4.replace_lane";
  export const i32x4_add = "~lib/builtins/i32x4.add";
  export const i32x4_sub = "~lib/builtins/i32x4.sub";
  export const i32x4_mul = "~lib/builtins/i32x4.mul";
  export const i32x4_neg = "~lib/builtins/i32x4.neg";
  export const i32x4_shl = "~lib/builtins/i32x4.shl";
  export const i32x4_shr_s = "~lib/builtins/i32x4.shr_s";
  export const i32x4_shr_u = "~lib/builtins/i32x4.shr_u";
  export const i32x4_any_true = "~lib/builtins/i32x4.any_true";
  export const i32x4_all_true = "~lib/builtins/i32x4.all_true";
  export const i32x4_eq = "~lib/builtins/i32x4.eq";
  export const i32x4_ne = "~lib/builtins/i32x4.ne";
  export const i32x4_lt_s = "~lib/builtins/i32x4.lt_s";
  export const i32x4_lt_u = "~lib/builtins/i32x4.lt_u";
  export const i32x4_le_s = "~lib/builtins/i32x4.le_s";
  export const i32x4_le_u = "~lib/builtins/i32x4.le_u";
  export const i32x4_gt_s = "~lib/builtins/i32x4.gt_s";
  export const i32x4_gt_u = "~lib/builtins/i32x4.gt_u";
  export const i32x4_ge_s = "~lib/builtins/i32x4.ge_s";
  export const i32x4_ge_u = "~lib/builtins/i32x4.ge_u";
  export const i32x4_trunc_s_f32x4_sat = "~lib/builtins/i32x4.trunc_s_f32x4_sat";
  export const i32x4_trunc_u_f32x4_sat = "~lib/builtins/i32x4.trunc_u_f32x4_sat";

  export const i64x2_splat = "~lib/builtins/i64x2.splat";
  export const i64x2_extract_lane = "~lib/builtins/i64x2.extract_lane";
  export const i64x2_replace_lane = "~lib/builtins/i64x2.replace_lane";
  export const i64x2_add = "~lib/builtins/i64x2.add";
  export const i64x2_sub = "~lib/builtins/i64x2.sub"; // i64x2 has no .mul
  export const i64x2_neg = "~lib/builtins/i64x2.neg";
  export const i64x2_shl = "~lib/builtins/i64x2.shl";
  export const i64x2_shr_s = "~lib/builtins/i64x2.shr_s";
  export const i64x2_shr_u = "~lib/builtins/i64x2.shr_u";
  export const i64x2_any_true = "~lib/builtins/i64x2.any_true";
  export const i64x2_all_true = "~lib/builtins/i64x2.all_true"; // i64x2 has no .eq etc.
  export const i64x2_trunc_s_f64x2_sat = "~lib/builtins/i64x2.trunc_s_f64x2_sat";
  export const i64x2_trunc_u_f64x2_sat = "~lib/builtins/i64x2.trunc_u_f64x2_sat";

  export const f32x4_splat = "~lib/builtins/f32x4.splat";
  export const f32x4_extract_lane = "~lib/builtins/f32x4.extract_lane";
  export const f32x4_replace_lane = "~lib/builtins/f32x4.replace_lane";
  export const f32x4_add = "~lib/builtins/f32x4.add";
  export const f32x4_sub = "~lib/builtins/f32x4.sub";
  export const f32x4_mul = "~lib/builtins/f32x4.mul";
  export const f32x4_div = "~lib/builtins/f32x4.div";
  export const f32x4_neg = "~lib/builtins/f32x4.neg";
  export const f32x4_min = "~lib/builtins/f32x4.min";
  export const f32x4_max = "~lib/builtins/f32x4.max";
  export const f32x4_abs = "~lib/builtins/f32x4.abs";
  export const f32x4_sqrt = "~lib/builtins/f32x4.sqrt";
  export const f32x4_eq = "~lib/builtins/f32x4.eq";
  export const f32x4_ne = "~lib/builtins/f32x4.ne";
  export const f32x4_lt = "~lib/builtins/f32x4.lt";
  export const f32x4_le = "~lib/builtins/f32x4.le";
  export const f32x4_gt = "~lib/builtins/f32x4.gt";
  export const f32x4_ge = "~lib/builtins/f32x4.ge";
  export const f32x4_convert_s_i32x4 = "~lib/builtins/f32x4.convert_s_i32x4";
  export const f32x4_convert_u_i32x4 = "~lib/builtins/f32x4.convert_u_i32x4";

  export const f64x2_splat = "~lib/builtins/f64x2.splat";
  export const f64x2_extract_lane = "~lib/builtins/f64x2.extract_lane";
  export const f64x2_replace_lane = "~lib/builtins/f64x2.replace_lane";
  export const f64x2_add = "~lib/builtins/f64x2.add";
  export const f64x2_sub = "~lib/builtins/f64x2.sub";
  export const f64x2_mul = "~lib/builtins/f64x2.mul";
  export const f64x2_div = "~lib/builtins/f64x2.div";
  export const f64x2_neg = "~lib/builtins/f64x2.neg";
  export const f64x2_min = "~lib/builtins/f64x2.min";
  export const f64x2_max = "~lib/builtins/f64x2.max";
  export const f64x2_abs = "~lib/builtins/f64x2.abs";
  export const f64x2_sqrt = "~lib/builtins/f64x2.sqrt";
  export const f64x2_eq = "~lib/builtins/f64x2.eq";
  export const f64x2_ne = "~lib/builtins/f64x2.ne";
  export const f64x2_lt = "~lib/builtins/f64x2.lt";
  export const f64x2_le = "~lib/builtins/f64x2.le";
  export const f64x2_gt = "~lib/builtins/f64x2.gt";
  export const f64x2_ge = "~lib/builtins/f64x2.ge";
  export const f64x2_convert_s_i64x2 = "~lib/builtins/f64x2.convert_s_i64x2";
  export const f64x2_convert_u_i64x2 = "~lib/builtins/f64x2.convert_u_i64x2";

  export const v8x16_shuffle = "~lib/builtins/v8x16.shuffle";

  // internals
  export const heap_base = "~lib/heap/__heap_base";
  export const rtti_base = "~lib/rt/__rtti_base";
  export const visit_globals = "~lib/rt/__visit_globals";
  export const visit_members = "~lib/rt/__visit_members";

  // std/diagnostics.ts
  export const ERROR = "~lib/diagnostics/ERROR";
  export const WARNING = "~lib/diagnostics/WARNING";
  export const INFO = "~lib/diagnostics/INFO";

  // std/memory.ts
  export const memory_size = "~lib/memory/memory.size";
  export const memory_grow = "~lib/memory/memory.grow";
  export const memory_copy = "~lib/memory/memory.copy";
  export const memory_fill = "~lib/memory/memory.fill";
  export const memory_allocate = "~lib/memory/memory.allocate";
  export const memory_free = "~lib/memory/memory.free";
  export const memory_reset = "~lib/memory/memory.reset";

  // std/runtime.ts
  export const runtime_instanceof = "~lib/runtime/runtime.instanceof";
  export const runtime_flags = "~lib/runtime/runtime.flags";
  export const runtime_allocate = "~lib/util/runtime/allocate";
  export const runtime_reallocate = "~lib/util/runtime/reallocate";
  export const runtime_register = "~lib/util/runtime/register";
  export const runtime_discard = "~lib/util/runtime/discard";
  export const runtime_makeArray = "~lib/util/runtime/makeArray";

  // std/typedarray.ts
  export const Int8Array = "~lib/typedarray/Int8Array";
  export const Uint8Array = "~lib/typedarray/Uint8Array";
  export const Int16Array = "~lib/typedarray/Int16Array";
  export const Uint16Array = "~lib/typedarray/Uint16Array";
  export const Int32Array = "~lib/typedarray/Int32Array";
  export const Uint32Array = "~lib/typedarray/Uint32Array";
  export const Int64Array = "~lib/typedarray/Int64Array";
  export const Uint64Array = "~lib/typedarray/Uint64Array";
  export const Uint8ClampedArray = "~lib/typedarray/Uint8ClampedArray";
  export const Float32Array = "~lib/typedarray/Float32Array";
  export const Float64Array = "~lib/typedarray/Float64Array";

  // compiler generated
  export const started = "~lib/started";
  export const argc = "~lib/argc";
  export const setargc = "~lib/setargc";
  export const capabilities = "~lib/capabilities";
}

/** Compiles a call to a built-in function. */
export function compileCall(
  /* Compiler reference. */
  compiler: Compiler,
  /** Respective function prototype. */
  prototype: FunctionPrototype,
  /** Pre-resolved type arguments. */
  typeArguments: Type[] | null,
  /** Operand expressions. */
  operands: Expression[],
  /** Contextual type. */
  contextualType: Type,
  /** Respective call expression. */
  reportNode: CallExpression,
  /** Indicates that contextual type is ASM type. */
  isAsm: bool = false
): ExpressionRef {
  var module = compiler.module;

  // NOTE that some implementations below make use of the select expression where straight-forward.
  // whether worth or not should probably be tested once it's known if/how embedders handle it.
  // search: createSelect

  // NOTE that consolidation of individual instructions into a single case isn't exactly scientific
  // below, but rather done to make this file easier to work with. If there was a general rule it'd
  // most likely be "three or more instructions that only differ in their actual opcode".

  var directize = false;

  switch (prototype.internalName) {

    // === Static type evaluation =================================================================

    case BuiltinSymbols.isInteger: { // isInteger<T!>() / isInteger<T?>(value: T) -> bool
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.bool;
      if (!type) return module.unreachable();
      return type.is(TypeFlags.INTEGER) && !type.is(TypeFlags.REFERENCE)
        ? module.i32(1)
        : module.i32(0);
    }
    case BuiltinSymbols.isFloat: { // isFloat<T!>() / isFloat<T?>(value: T) -> bool
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.bool;
      if (!type) return module.unreachable();
      return type.is(TypeFlags.FLOAT)
        ? module.i32(1)
        : module.i32(0);
    }
    case BuiltinSymbols.isBoolean: { // isBoolean<T!>() / isBoolean<T?>(value: T) -> bool
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.bool;
      if (!type) return module.unreachable();
      return type == Type.bool
        ? module.i32(1)
        : module.i32(0);
    }
    case BuiltinSymbols.isSigned: { // isSigned<T!>() / isSigned<T?>(value: T) -> bool
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.bool;
      if (!type) return module.unreachable();
      return type.is(TypeFlags.SIGNED)
        ? module.i32(1)
        : module.i32(0);
    }
    case BuiltinSymbols.isReference: { // isReference<T!>() / isReference<T?>(value: T) -> bool
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.bool;
      if (!type) return module.unreachable();
      return type.is(TypeFlags.REFERENCE)
        ? module.i32(1)
        : module.i32(0);
    }
    case BuiltinSymbols.isString: { // isString<T!>() / isString<T?>(value: T) -> bool
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.bool;
      if (!type) return module.unreachable();
      let classType = type.classReference;
      if (classType) {
        let stringInstance = compiler.program.stringInstance;
        if (stringInstance && classType.isAssignableTo(stringInstance)) return module.i32(1);
      }
      return module.i32(0);
    }
    case BuiltinSymbols.isArray: { // isArray<T!>() / isArray<T?>(value: T) -> bool
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.bool;
      if (!type) return module.unreachable();
      let classReference = type.classReference;
      if (!classReference) return module.i32(0);
      let classPrototype = classReference.prototype;
      return module.i32(classPrototype.extends(compiler.program.arrayPrototype) ? 1 : 0);
    }
    case BuiltinSymbols.isArrayLike: { // isArrayLike<T!>() / isArrayLike<T?>(value: T) -> bool
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.bool;
      if (!type) return module.unreachable();
      let classReference = type.classReference;
      if (!classReference) return module.i32(0);
      return module.i32(classReference.isArrayLike ? 1 : 0);
    }
    case BuiltinSymbols.isFunction: { // isFunction<T!> / isFunction<T?>(value: T) -> bool
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.bool;
      if (!type) return module.unreachable();
      return module.i32(type.signatureReference ? 1 : 0);
    }
    case BuiltinSymbols.isNullable: { // isNullable<T!> / isNullable<T?>(value: T) -> bool
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.bool;
      if (!type) return module.unreachable();
      return module.i32(type.is(TypeFlags.NULLABLE) ? 1 : 0);
    }
    case BuiltinSymbols.isDefined: { // isDefined(expression) -> bool
      compiler.currentType = Type.bool;
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) return module.unreachable();
      let element = compiler.resolver.resolveExpression(
        operands[0],
        compiler.currentFlow,
        Type.auto,
        ReportMode.SWALLOW
      );
      return module.i32(element ? 1 : 0);
    }
    case BuiltinSymbols.isConstant: { // isConstant(expression) -> bool
      compiler.currentType = Type.bool;
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) return module.unreachable();
      let expr = compiler.compileExpression(operands[0], Type.auto);
      compiler.currentType = Type.bool;
      return module.i32(getExpressionId(expr) == ExpressionId.Const ? 1 : 0);
    }
    case BuiltinSymbols.isManaged: { // isManaged<T>() -> bool
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.bool;
      if (!type) return module.unreachable();
      return module.i32(type.isManaged ? 1 : 0);
    }
    case BuiltinSymbols.isVoid: { // isVoid<T>() -> bool
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.bool;
      if (!type) return module.unreachable();
      return module.i32(type.kind == TypeKind.VOID ? 1 : 0);
    }
    case BuiltinSymbols.lengthof: { // lengthof<T>(): i32
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.i32;
      if (!type) return module.unreachable();

      // Report if there is no call signature
      let signatureReference = type.signatureReference;
      if (!signatureReference) {
        compiler.error(
          DiagnosticCode.Type_0_has_no_call_signatures,
          reportNode.range, "1", (typeArguments ? typeArguments.length : 1).toString(10)
        );
        return module.unreachable();
      }

      let parameterNames = signatureReference.parameterNames;
      return module.i32(!parameterNames ? 0 : parameterNames.length);
    }
    case BuiltinSymbols.sizeof: { // sizeof<T!>() -> usize
      compiler.currentType = compiler.options.usizeType;
      if (
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 0, reportNode, compiler)
      ) return module.unreachable();
      let byteSize = (<Type[]>typeArguments)[0].byteSize;
      let expr: ExpressionRef;
      if (compiler.options.isWasm64) {
        // implicitly wrap if contextual type is a 32-bit integer
        if (contextualType.is(TypeFlags.INTEGER) && contextualType.size <= 32) {
          compiler.currentType = Type.u32;
          expr = module.i32(byteSize);
        } else {
          expr = module.i64(byteSize, 0);
        }
      } else {
        // implicitly extend if contextual type is a 64-bit integer
        if (contextualType.is(TypeFlags.INTEGER) && contextualType.size == 64) {
          compiler.currentType = Type.u64;
          expr = module.i64(byteSize, 0);
        } else {
          expr = module.i32(byteSize);
        }
      }
      return expr;
    }
    case BuiltinSymbols.alignof: { // alignof<T!>() -> usize
      compiler.currentType = compiler.options.usizeType;
      if (
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 0, reportNode, compiler)
      ) return module.unreachable();
      let byteSize = (<Type[]>typeArguments)[0].byteSize;
      assert(isPowerOf2(byteSize));
      let alignLog2 = ctz<i32>(byteSize);
      let expr: ExpressionRef;
      if (compiler.options.isWasm64) {
        // implicitly wrap if contextual type is a 32-bit integer
        if (contextualType.is(TypeFlags.INTEGER) && contextualType.size <= 32) {
          compiler.currentType = Type.u32;
          expr = module.i32(alignLog2);
        } else {
          expr = module.i64(alignLog2, 0);
        }
      } else {
        // implicitly extend if contextual type is a 64-bit integer
        if (contextualType.is(TypeFlags.INTEGER) && contextualType.size == 64) {
          compiler.currentType = Type.u64;
          expr = module.i64(alignLog2, 0);
        } else {
          expr = module.i32(alignLog2);
        }
      }
      return expr;
    }
    case BuiltinSymbols.offsetof: { // offsetof<T!>(fieldName?: string) -> usize
      compiler.currentType = compiler.options.usizeType;
      if (
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsOptional(operands, 0, 1, reportNode, compiler)
      ) return module.unreachable();
      let classType = typeArguments![0].classReference;
      if (!classType) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.typeArgumentsRange
        );
        return module.unreachable();
      }
      let offset: i32;
      if (operands.length) {
        if (
          operands[0].kind != NodeKind.LITERAL ||
          (<LiteralExpression>operands[0]).literalKind != LiteralKind.STRING
        ) {
          compiler.error(
            DiagnosticCode.String_literal_expected,
            operands[0].range
          );
          return module.unreachable();
        }
        let fieldName = (<StringLiteralExpression>operands[0]).value;
        let field = classType.members ? classType.members.get(fieldName) : null;
        if (!(field && field.kind == ElementKind.FIELD)) {
          compiler.error(
            DiagnosticCode.Type_0_has_no_property_1,
            operands[0].range, classType.internalName, fieldName
          );
          return module.unreachable();
        }
        offset = (<Field>field).memoryOffset;
      } else {
        offset = classType.currentMemoryOffset;
      }
      if (compiler.options.isWasm64) {
        // implicitly wrap if contextual type is a 32-bit integer
        if (contextualType.is(TypeFlags.INTEGER) && contextualType.size <= 32) {
          compiler.currentType = Type.u32;
          return module.i32(offset);
        } else {
          return module.i64(offset);
        }
      } else {
        // implicitly extend if contextual type is a 64-bit integer
        if (contextualType.is(TypeFlags.INTEGER) && contextualType.size == 64) {
          compiler.currentType = Type.u64;
          return module.i64(offset);
        } else {
          return module.i32(offset);
        }
      }
    }
    case BuiltinSymbols.nameof: {
      // Check to make sure a parameter or a type was passed to the builtin
      let resultType = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      if (!resultType) return module.unreachable();

      let value: string;
      if (resultType.is(TypeFlags.REFERENCE)) {
        let classReference = resultType.classReference;
        if (!classReference) {
          assert(resultType.signatureReference);
          value = "Function";
        } else {
          value = classReference.name;
        }
      } else {
        switch (resultType.kind) {
          case TypeKind.BOOL: { value = "bool"; break; }
          case TypeKind.I8: { value = "i8"; break; }
          case TypeKind.U8: { value = "u8"; break; }
          case TypeKind.I16: { value = "i16"; break; }
          case TypeKind.U16: { value = "u16"; break; }
          case TypeKind.I32: { value = "i32"; break; }
          case TypeKind.U32: { value = "u32"; break; }
          case TypeKind.F32: { value = "f32"; break; }
          case TypeKind.I64: { value = "i64"; break; }
          case TypeKind.U64: { value = "u64"; break; }
          case TypeKind.F64: { value = "f64"; break; }
          case TypeKind.ISIZE: { value = "isize"; break; }
          case TypeKind.USIZE: { value = "usize"; break; }
          case TypeKind.V128: { value = "v128"; break; }
          // If the kind is not set properly, throw an error.
          // The default case falls through to satisfy that value is always set, and never null.
          default: assert(false);
          case TypeKind.VOID: { value = "void"; break; }
        }
      }

      return compiler.ensureStaticString(value);
    }

    // === Math ===================================================================================

    case BuiltinSymbols.clz: // any_bitcount<T?>(value: T) -> T
    case BuiltinSymbols.ctz:
    case BuiltinSymbols.popcnt: {
      if (
        checkTypeOptional(typeArguments, reportNode, compiler, true) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) return module.unreachable();
      let arg0 = typeArguments
        ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT | Constraints.MUST_WRAP)
        : compiler.compileExpression(operands[0], Type.i32, Constraints.MUST_WRAP);
      let type = compiler.currentType;
      if (type.is(TypeFlags.REFERENCE)) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.typeArgumentsRange
        );
        return module.unreachable();
      }
      let op: UnaryOp = -1;
      switch (prototype.internalName) {
        case BuiltinSymbols.clz: {
          switch (type.kind) {
            case TypeKind.BOOL:
            case TypeKind.I8:
            case TypeKind.U8:
            case TypeKind.I16:
            case TypeKind.U16:
            case TypeKind.I32:
            case TypeKind.U32: { op = UnaryOp.ClzI32; break; }
            case TypeKind.USIZE:
            case TypeKind.ISIZE: {
              op = compiler.options.isWasm64
                ? UnaryOp.ClzI64
                : UnaryOp.ClzI32;
              break;
            }
            case TypeKind.I64:
            case TypeKind.U64: { op = UnaryOp.ClzI64; break; }
          }
          break;
        }
        case BuiltinSymbols.ctz: {
          switch (type.kind) {
            case TypeKind.BOOL:
            case TypeKind.I8:
            case TypeKind.U8:
            case TypeKind.I16:
            case TypeKind.U16:
            case TypeKind.I32:
            case TypeKind.U32: { op = UnaryOp.CtzI32; break; }
            case TypeKind.USIZE:
            case TypeKind.ISIZE: {
              op = compiler.options.isWasm64
                ? UnaryOp.CtzI64
                : UnaryOp.CtzI32;
              break;
            }
            case TypeKind.I64:
            case TypeKind.U64: { op = UnaryOp.CtzI64; break; }
          }
          break;
        }
        case BuiltinSymbols.popcnt: {
          switch (compiler.currentType.kind) {
            case TypeKind.BOOL:
            case TypeKind.I8:
            case TypeKind.U8:
            case TypeKind.I16:
            case TypeKind.U16:
            case TypeKind.I32:
            case TypeKind.U32: { op = UnaryOp.PopcntI32; break; }
            case TypeKind.USIZE:
            case TypeKind.ISIZE: {
              op = compiler.options.isWasm64
                ? UnaryOp.PopcntI64
                : UnaryOp.PopcntI32;
              break;
            }
            case TypeKind.I64:
            case TypeKind.U64: { op = UnaryOp.PopcntI64; break; }
          }
          break;
        }
      }
      if (op == -1) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.typeArgumentsRange
        );
        return module.unreachable();
      }
      return module.unary(op, arg0);
    }
    case BuiltinSymbols.rotl: { // rotl<T?>(value: T, shift: T) -> T
      if (
        checkTypeOptional(typeArguments, reportNode, compiler, true) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) return module.unreachable();
      let arg0 = typeArguments
        ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT | Constraints.MUST_WRAP)
        : compiler.compileExpression(operands[0], Type.i32, Constraints.MUST_WRAP);
      let type = compiler.currentType;
      if (type.is(TypeFlags.REFERENCE)) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.typeArgumentsRange
        );
        return module.unreachable();
      }
      let arg1 = compiler.compileExpression(operands[1], type, Constraints.CONV_IMPLICIT);
      let expr: ExpressionRef;
      switch (type.kind) {
        case TypeKind.I8:
        case TypeKind.I16:
        case TypeKind.U8:
        case TypeKind.U16:
        case TypeKind.BOOL: {
          expr = compiler.ensureSmallIntegerWrap(
            module.binary(BinaryOp.RotlI32, arg0, arg1),
            type
          );
          // fall-through
        }
        case TypeKind.I32:
        case TypeKind.U32: {
          expr = module.binary(BinaryOp.RotlI32, arg0, arg1);
          break;
        }
        case TypeKind.USIZE:
        case TypeKind.ISIZE: {
          expr = module.binary(
            compiler.options.isWasm64
              ? BinaryOp.RotlI64
              : BinaryOp.RotlI32,
            arg0, arg1
          );
          break;
        }
        case TypeKind.I64:
        case TypeKind.U64: {
          expr = module.binary(BinaryOp.RotlI64, arg0, arg1);
          break;
        }
        default: {
          compiler.error(
            DiagnosticCode.Operation_not_supported,
            reportNode.typeArgumentsRange
          );
          expr = module.unreachable();
          break;
        }
      }
      return expr; // possibly overflows
    }
    case BuiltinSymbols.rotr: { // rotr<T?>(value: T, shift: T) -> T
      if (
        checkTypeOptional(typeArguments, reportNode, compiler, true) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) return module.unreachable();
      let arg0 = typeArguments
        ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT | Constraints.MUST_WRAP)
        : compiler.compileExpression(operands[0], Type.i32, Constraints.MUST_WRAP);
      let type = compiler.currentType;
      if (type.is(TypeFlags.REFERENCE)) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.typeArgumentsRange
        );
        return module.unreachable();
      }
      let arg1 = compiler.compileExpression(operands[1], type, Constraints.CONV_IMPLICIT);
      let expr: ExpressionRef;
      switch (type.kind) {
        case TypeKind.I8:
        case TypeKind.I16:
        case TypeKind.U8:
        case TypeKind.U16:
        case TypeKind.BOOL: {
          expr = compiler.ensureSmallIntegerWrap(
            module.binary(BinaryOp.RotrI32, arg0, arg1),
            type
          );
          break;
        }
        case TypeKind.I32:
        case TypeKind.U32: {
          expr = module.binary(BinaryOp.RotrI32, arg0, arg1);
          break;
        }
        case TypeKind.USIZE:
        case TypeKind.ISIZE: {
          expr = module.binary(
            compiler.options.isWasm64
              ? BinaryOp.RotrI64
              : BinaryOp.RotrI32,
            arg0, arg1
          );
          break;
        }
        case TypeKind.I64:
        case TypeKind.U64: {
          expr = module.binary(BinaryOp.RotrI64, arg0, arg1);
          break;
        }
        default: {
          compiler.error(
            DiagnosticCode.Operation_not_supported,
            reportNode.typeArgumentsRange
          );
          expr = module.unreachable();
          break;
        }
      }
      return expr; // possibly overflowws
    }
    case BuiltinSymbols.abs: { // abs<T?>(value: T) -> T
      if (
        checkTypeOptional(typeArguments, reportNode, compiler, true) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) return module.unreachable();
      let arg0 = typeArguments
        ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT | Constraints.MUST_WRAP)
        : compiler.compileExpression(operands[0], Type.f64, Constraints.MUST_WRAP);
      let type = compiler.currentType;
      if (type.is(TypeFlags.REFERENCE)) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.typeArgumentsRange
        );
        return module.unreachable();
      }
      let expr: ExpressionRef;
      switch (type.kind) {
        case TypeKind.I8:
        case TypeKind.I16:
        case TypeKind.I32: {
          let flow = compiler.currentFlow;

          // possibly overflows, e.g. abs<i8>(-128) == 128
          let tempLocal1 = flow.getTempLocal(Type.i32);
          let tempLocalIndex2 = flow.getAndFreeTempLocal(Type.i32).index;
          let tempLocalIndex1 = tempLocal1.index;

          // (x + (x >> 31)) ^ (x >> 31)
          expr = module.binary(BinaryOp.XorI32,
            module.binary(BinaryOp.AddI32,
              module.local_tee(
                tempLocalIndex2,
                module.binary(BinaryOp.ShrI32,
                  module.local_tee(tempLocalIndex1, arg0),
                  module.i32(31)
                )
              ),
              module.local_get(tempLocalIndex1, NativeType.I32)
            ),
            module.local_get(tempLocalIndex2, NativeType.I32)
          );

          flow.freeTempLocal(tempLocal1);
          break;
        }
        case TypeKind.ISIZE: {
          let options = compiler.options;
          let flow = compiler.currentFlow;
          let wasm64 = options.isWasm64;

          let tempLocal1 = flow.getTempLocal(options.usizeType);
          let tempLocalIndex2 = flow.getAndFreeTempLocal(options.usizeType).index;
          let tempLocalIndex1 = tempLocal1.index;

          expr = module.binary(wasm64 ? BinaryOp.XorI64 : BinaryOp.XorI32,
            module.binary(wasm64 ? BinaryOp.AddI64 : BinaryOp.AddI32,
              module.local_tee(
                tempLocalIndex2,
                module.binary(wasm64 ? BinaryOp.ShrI64 : BinaryOp.ShrI32,
                  module.local_tee(tempLocalIndex1, arg0),
                  wasm64 ? module.i64(63) : module.i32(31)
                )
              ),
              module.local_get(tempLocalIndex1, options.nativeSizeType)
            ),
            module.local_get(tempLocalIndex2, options.nativeSizeType)
          );

          flow.freeTempLocal(tempLocal1);
          break;
        }
        case TypeKind.I64: {
          let flow = compiler.currentFlow;

          let tempLocal1 = flow.getTempLocal(Type.i64);
          let tempLocalIndex2 = flow.getAndFreeTempLocal(Type.i64).index;
          let tempLocalIndex1 = tempLocal1.index;

          // (x + (x >> 63)) ^ (x >> 63)
          expr = module.binary(BinaryOp.XorI64,
            module.binary(BinaryOp.AddI64,
              module.local_tee(
                tempLocalIndex2,
                module.binary(BinaryOp.ShrI64,
                  module.local_tee(tempLocalIndex1, arg0),
                  module.i64(63)
                )
              ),
              module.local_get(tempLocalIndex1, NativeType.I64)
            ),
            module.local_get(tempLocalIndex2, NativeType.I64)
          );

          flow.freeTempLocal(tempLocal1);
          break;
        }
        case TypeKind.USIZE:
        case TypeKind.U8:
        case TypeKind.U16:
        case TypeKind.U32:
        case TypeKind.U64:
        case TypeKind.BOOL: {
          expr = arg0;
          break;
        }
        case TypeKind.F32: {
          expr = module.unary(UnaryOp.AbsF32, arg0);
          break;
        }
        case TypeKind.F64: {
          expr = module.unary(UnaryOp.AbsF64, arg0);
          break;
        }
        default: {
          compiler.error(
            DiagnosticCode.Operation_not_supported,
            reportNode.typeArgumentsRange
          );
          expr = module.unreachable();
          break;
        }
      }
      return expr;
    }
    case BuiltinSymbols.max: { // max<T?>(left: T, right: T) -> T
      if (
        checkTypeOptional(typeArguments, reportNode, compiler, true) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) return module.unreachable();
      let arg0 = typeArguments
        ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT | Constraints.MUST_WRAP)
        : compiler.compileExpression(operands[0], Type.f64, Constraints.MUST_WRAP);
      let type = compiler.currentType;
      if (type.is(TypeFlags.REFERENCE)) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.typeArgumentsRange
        );
        return module.unreachable();
      }
      let arg1 = compiler.compileExpression(operands[1], type, Constraints.CONV_IMPLICIT | Constraints.MUST_WRAP);
      let op: BinaryOp;
      switch (type.kind) {
        case TypeKind.I8:
        case TypeKind.I16:
        case TypeKind.I32: { op = BinaryOp.GtI32; break; }
        case TypeKind.U8:
        case TypeKind.U16:
        case TypeKind.U32:
        case TypeKind.BOOL: { op = BinaryOp.GtU32; break; }
        case TypeKind.I64: { op = BinaryOp.GtI64; break; }
        case TypeKind.U64: { op = BinaryOp.GtU64; break; }
        case TypeKind.ISIZE: {
          op = compiler.options.isWasm64
            ? BinaryOp.GtI64
            : BinaryOp.GtI32;
          break;
        }
        case TypeKind.USIZE: {
          op = compiler.options.isWasm64
            ? BinaryOp.GtU64
            : BinaryOp.GtU32;
          break;
        }
        case TypeKind.F32: {
          return module.binary(BinaryOp.MaxF32, arg0, arg1);
        }
        case TypeKind.F64: {
          return module.binary(BinaryOp.MaxF64, arg0, arg1);
        }
        default: {
          compiler.error(
            DiagnosticCode.Operation_not_supported,
            reportNode.typeArgumentsRange
          );
          return module.unreachable();
        }
      }
      let flow = compiler.currentFlow;
      let nativeType = type.toNativeType();
      let tempLocal0 = flow.getTempLocal(type);
      flow.setLocalFlag(tempLocal0.index, LocalFlags.WRAPPED);
      let tempLocal1 = flow.getAndFreeTempLocal(type);
      flow.setLocalFlag(tempLocal1.index, LocalFlags.WRAPPED);
      flow.freeTempLocal(tempLocal0);
      return module.select(
        module.local_tee(tempLocal0.index, arg0),
        module.local_tee(tempLocal1.index, arg1),
        module.binary(op,
          module.local_get(tempLocal0.index, nativeType),
          module.local_get(tempLocal1.index, nativeType)
        )
      );
    }
    case BuiltinSymbols.min: { // min<T?>(left: T, right: T) -> T
      if (
        checkTypeOptional(typeArguments, reportNode, compiler, true) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) return module.unreachable();
      let arg0 = typeArguments
        ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT | Constraints.MUST_WRAP)
        : compiler.compileExpression(operands[0], Type.f64, Constraints.MUST_WRAP);
      let type = compiler.currentType;
      if (type.is(TypeFlags.REFERENCE)) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.typeArgumentsRange
        );
        return module.unreachable();
      }
      let arg1 = compiler.compileExpression(operands[1], type, Constraints.CONV_IMPLICIT | Constraints.MUST_WRAP);
      let op: BinaryOp;
      switch (type.kind) {
        case TypeKind.I8:
        case TypeKind.I16:
        case TypeKind.I32: { op = BinaryOp.LtI32; break; }
        case TypeKind.U8:
        case TypeKind.U16:
        case TypeKind.U32:
        case TypeKind.BOOL: { op = BinaryOp.LtU32; break; }
        case TypeKind.I64:  { op = BinaryOp.LtI64; break; }
        case TypeKind.U64:  { op = BinaryOp.LtU64; break; }
        case TypeKind.ISIZE: {
          op = compiler.options.isWasm64
            ? BinaryOp.LtI64
            : BinaryOp.LtI32;
          break;
        }
        case TypeKind.USIZE: {
          op = compiler.options.isWasm64
            ? BinaryOp.LtU64
            : BinaryOp.LtU32;
          break;
        }
        case TypeKind.F32: {
          return module.binary(BinaryOp.MinF32, arg0, arg1);
        }
        case TypeKind.F64: {
          return module.binary(BinaryOp.MinF64, arg0, arg1);
        }
        default: {
          compiler.error(
            DiagnosticCode.Operation_not_supported,
            reportNode.typeArgumentsRange
          );
          return module.unreachable();
        }
      }
      let flow = compiler.currentFlow;
      let nativeType = type.toNativeType();
      let tempLocal0 = flow.getTempLocal(type);
      flow.setLocalFlag(tempLocal0.index, LocalFlags.WRAPPED);
      let tempLocal1 = flow.getAndFreeTempLocal(type);
      flow.setLocalFlag(tempLocal1.index, LocalFlags.WRAPPED);
      flow.freeTempLocal(tempLocal0);
      return module.select(
        module.local_tee(tempLocal0.index, arg0),
        module.local_tee(tempLocal1.index, arg1),
        module.binary(op,
          module.local_get(tempLocal0.index, nativeType),
          module.local_get(tempLocal1.index, nativeType)
        )
      );
    }
    case BuiltinSymbols.ceil: // any_rounding<T?>(value: T) -> T
    case BuiltinSymbols.floor: {
      if (
        checkTypeOptional(typeArguments, reportNode, compiler, true) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) return module.unreachable();
      let arg0 = typeArguments
        ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT)
        : compiler.compileExpression(operands[0], Type.f64, Constraints.NONE);
      let type = compiler.currentType;
      if (type.is(TypeFlags.REFERENCE)) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.typeArgumentsRange
        );
        return module.unreachable();
      }
      let op: UnaryOp;
      switch (type.kind) {
        case TypeKind.I8:
        case TypeKind.I16:
        case TypeKind.I32:
        case TypeKind.I64:
        case TypeKind.ISIZE:
        case TypeKind.U8:
        case TypeKind.U16:
        case TypeKind.U32:
        case TypeKind.U64:
        case TypeKind.USIZE:
        case TypeKind.BOOL: return arg0; // considered rounded
        case TypeKind.F32: {
          op = prototype.internalName == BuiltinSymbols.ceil
            ? UnaryOp.CeilF32
            : UnaryOp.FloorF32;
          break;
        }
        case TypeKind.F64: {
          op = prototype.internalName == BuiltinSymbols.ceil
            ? UnaryOp.CeilF64
            : UnaryOp.FloorF64;
          break;
        }
        default: {
          compiler.error(
            DiagnosticCode.Operation_not_supported,
            reportNode.typeArgumentsRange
          );
          return module.unreachable();
        }
      }
      return module.unary(op, arg0);
    }
    case BuiltinSymbols.copysign: { // copysign<T?>(left: T, right: T) -> T
      if (
        checkTypeOptional(typeArguments, reportNode, compiler, true) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) return module.unreachable();
      let arg0 = typeArguments
        ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT)
        : compiler.compileExpression(operands[0], Type.f64, Constraints.NONE);
      let type = compiler.currentType;
      if (type.is(TypeFlags.REFERENCE)) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.typeArgumentsRange
        );
        return module.unreachable();
      }
      let arg1 = compiler.compileExpression(operands[1], type, Constraints.CONV_IMPLICIT);
      let op: BinaryOp;
      switch (type.kind) {
        // TODO: does an integer version make sense?
        case TypeKind.F32: { op = BinaryOp.CopysignF32; break; }
        case TypeKind.F64: { op = BinaryOp.CopysignF64; break; }
        default: {
          compiler.error(
            DiagnosticCode.Operation_not_supported,
            reportNode.typeArgumentsRange
          );
          return module.unreachable();
        }
      }
      return module.binary(op, arg0, arg1);
    }
    case BuiltinSymbols.nearest: { // nearest<T?>(value: T) -> T
      if (
        checkTypeOptional(typeArguments, reportNode, compiler, true) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) return module.unreachable();
      let arg0 = typeArguments
        ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT)
        : compiler.compileExpression(operands[0], Type.f64, Constraints.NONE);
      let type = compiler.currentType;
      if (type.is(TypeFlags.REFERENCE)) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.typeArgumentsRange
        );
        return module.unreachable();
      }
      let expr: ExpressionRef;
      switch (type.kind) {
        case TypeKind.I8:
        case TypeKind.I16:
        case TypeKind.I32:
        case TypeKind.I64:
        case TypeKind.ISIZE:
        case TypeKind.U8:
        case TypeKind.U16:
        case TypeKind.U32:
        case TypeKind.U64:
        case TypeKind.USIZE:
        case TypeKind.BOOL: {
          expr = arg0;
          break;
        }
        case TypeKind.F32: {
          expr = module.unary(UnaryOp.NearestF32, arg0);
          break;
        }
        case TypeKind.F64: {
          expr = module.unary(UnaryOp.NearestF64, arg0);
          break;
        }
        default: {
          compiler.error(
            DiagnosticCode.Operation_not_supported,
            reportNode.typeArgumentsRange
          );
          expr = module.unreachable();
          break;
        }
      }
      return expr;
    }
    case BuiltinSymbols.reinterpret: { // reinterpret<T!>(value: *) -> T
      if (
        checkTypeRequired(typeArguments, reportNode, compiler, true) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) return module.unreachable();
      let type = typeArguments![0];
      if (type.is(TypeFlags.REFERENCE)) {
        compiler.currentType = type;
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.typeArgumentsRange
        );
        return module.unreachable();
      }
      let expr: ExpressionRef;
      switch (type.kind) {
        case TypeKind.I32:
        case TypeKind.U32: {
          let arg0 = compiler.compileExpression(operands[0], Type.f32, Constraints.CONV_IMPLICIT);
          expr = module.unary(UnaryOp.ReinterpretF32, arg0);
          break;
        }
        case TypeKind.I64:
        case TypeKind.U64: {
          let arg0 = compiler.compileExpression(operands[0], Type.f64, Constraints.CONV_IMPLICIT);
          expr = module.unary(UnaryOp.ReinterpretF64, arg0);
          break;
        }
        case TypeKind.ISIZE:
        case TypeKind.USIZE: {
          let arg0 = compiler.compileExpression(operands[0],
            compiler.options.isWasm64
              ? Type.f64
              : Type.f32,
            Constraints.CONV_IMPLICIT
          );
          expr = module.unary(
            compiler.options.isWasm64
              ? UnaryOp.ReinterpretF64
              : UnaryOp.ReinterpretF32,
            arg0
          );
          break;
        }
        case TypeKind.F32: {
          let arg0 = compiler.compileExpression(operands[0], Type.i32, Constraints.CONV_IMPLICIT);
          expr = module.unary(UnaryOp.ReinterpretI32, arg0);
          break;
        }
        case TypeKind.F64: {
          let arg0 = compiler.compileExpression(operands[0], Type.i64, Constraints.CONV_IMPLICIT);
          expr = module.unary(UnaryOp.ReinterpretI64, arg0);
          break;
        }
        default: {
          compiler.error(
            DiagnosticCode.Operation_not_supported,
            reportNode.typeArgumentsRange
          );
          expr = module.unreachable();
          break;
        }
      }
      compiler.currentType = type;
      return expr;
    }
    case BuiltinSymbols.sqrt: { // sqrt<T?>(value: T) -> T
      if (
        checkTypeOptional(typeArguments, reportNode, compiler, true) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) return module.unreachable();
      let arg0 = typeArguments
        ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT)
        : compiler.compileExpression(operands[0], Type.f64, Constraints.NONE);
      let type = compiler.currentType;
      if (type.is(TypeFlags.REFERENCE)) {
        compiler.currentType = type;
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.typeArgumentsRange
        );
        return module.unreachable();
      }
      let expr: ExpressionRef;
      switch (type.kind) { // TODO: integer versions (that return f64 or convert)?
        case TypeKind.F32: {
          expr = module.unary(UnaryOp.SqrtF32, arg0);
          break;
        }
        case TypeKind.F64: {
          expr = module.unary(UnaryOp.SqrtF64, arg0);
          break;
        }
        default: {
          compiler.error(
            DiagnosticCode.Operation_not_supported,
            reportNode.typeArgumentsRange
          );
          expr = module.unreachable();
          break;
        }
      }
      return expr;
    }
    case BuiltinSymbols.trunc: { // trunc<T?>(value: T) -> T
      if (
        checkTypeOptional(typeArguments, reportNode, compiler, true) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) return module.unreachable();
      let arg0 = typeArguments
        ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT)
        : compiler.compileExpression(operands[0], Type.f64, Constraints.NONE);
      let type = compiler.currentType;
      if (type.is(TypeFlags.REFERENCE)) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.range
        );
        return module.unreachable();
      }
      let expr: ExpressionRef;
      switch (type.kind) {
        case TypeKind.I8:
        case TypeKind.I16:
        case TypeKind.I32:
        case TypeKind.I64:
        case TypeKind.ISIZE:
        case TypeKind.U8:
        case TypeKind.U16:
        case TypeKind.U32:
        case TypeKind.U64:
        case TypeKind.USIZE:
        case TypeKind.BOOL: {
          expr = arg0;
          break;
        }
        // TODO: truncate to contextual type directly (if not void etc.)?
        case TypeKind.F32: {
          expr = module.unary(UnaryOp.TruncF32, arg0);
          break;
        }
        case TypeKind.F64: {
          expr = module.unary(UnaryOp.TruncF64, arg0);
          break;
        }
        default: {
          compiler.error(
            DiagnosticCode.Operation_not_supported,
            reportNode.typeArgumentsRange
          );
          expr = module.unreachable();
          break;
        }
      }
      return expr;
    }

    // === Memory access ==========================================================================

    case BuiltinSymbols.load: { // load<T!>(offset: usize, immOffset?: usize, immAlign?: usize) -> T*
      if (
        checkTypeRequired(typeArguments, reportNode, compiler, true) |
        checkArgsOptional(operands, 1, 3, reportNode, compiler)
      ) return module.unreachable();
      let type = typeArguments![0];
      let outType = (
        contextualType != Type.auto &&
        type.is(TypeFlags.INTEGER) &&
        contextualType.is(TypeFlags.INTEGER) &&
        contextualType.size > type.size
      ) ? contextualType : type;
      let arg0 = compiler.compileExpression(operands[0],
        compiler.options.usizeType,
        Constraints.CONV_IMPLICIT
      );
      let numOperands = operands.length;
      let immOffset = numOperands >= 2 ? evaluateImmediateOffset(operands[1], compiler) : 0; // reports
      if (immOffset < 0) {
        compiler.currentType = outType;
        return module.unreachable();
      }
      let immAlign: i32;
      let naturalAlign = type.byteSize;
      if (numOperands == 3) {
        immAlign = evaluateImmediateOffset(operands[2], compiler);
        if (immAlign < 0) {
          compiler.currentType = outType;
          return module.unreachable();
        }
        if (immAlign > naturalAlign) {
          compiler.error(
            DiagnosticCode._0_must_be_a_value_between_1_and_2_inclusive,
            operands[2].range, "Alignment", "0", naturalAlign.toString()
          );
          compiler.currentType = outType;
          return module.unreachable();
        }
        if (!isPowerOf2(immAlign)) {
          compiler.error(
            DiagnosticCode._0_must_be_a_power_of_two,
            operands[2].range, "Alignment"
          );
          compiler.currentType = outType;
          return module.unreachable();
        }
      } else {
        immAlign = naturalAlign;
      }
      compiler.currentType = outType;
      return module.load(
        type.byteSize,
        type.is(TypeFlags.SIGNED | TypeFlags.INTEGER),
        arg0,
        outType.toNativeType(),
        immOffset,
        immAlign
      );
    }
    case BuiltinSymbols.store: { // store<T!>(offset: usize, value: T*, offset?: usize, align?: usize) -> void
      compiler.currentType = Type.void;
      if (
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsOptional(operands, 2, 4, reportNode, compiler)
      ) return module.unreachable();
      let type = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0],
        compiler.options.usizeType,
        Constraints.CONV_IMPLICIT
      );
      let arg1 = isAsm
        ? compiler.compileExpression(operands[1],
            contextualType,
            Constraints.CONV_IMPLICIT
          )
        : compiler.compileExpression(
            operands[1],
            type,
            type.is(TypeFlags.INTEGER)
              ? Constraints.NONE // no need to convert to small int (but now might result in a float)
              : Constraints.CONV_IMPLICIT
          );
      let inType = compiler.currentType;
      if (
        type.is(TypeFlags.INTEGER) &&
        (
          !inType.is(TypeFlags.INTEGER) || // float to int
          inType.size < type.size          // int to larger int (clear garbage bits)
        )
      ) {
        arg1 = compiler.convertExpression(arg1,
          inType, type,
          false, false, // still clears garbage bits when not wrapping
          operands[1]
        );
        inType = type;
      }
      let immOffset = operands.length >= 3 ? evaluateImmediateOffset(operands[2], compiler) : 0; // reports
      if (immOffset < 0) {
        compiler.currentType = Type.void;
        return module.unreachable();
      }
      let immAlign: i32;
      let naturalAlign = type.byteSize;
      if (operands.length == 4) {
        immAlign = evaluateImmediateOffset(operands[3], compiler);
        if (immAlign < 0) {
          compiler.currentType = Type.void;
          return module.unreachable();
        }
        if (immAlign > naturalAlign) {
          compiler.error(
            DiagnosticCode._0_must_be_a_value_between_1_and_2_inclusive,
            operands[3].range, "Alignment", "0", naturalAlign.toString()
          );
          compiler.currentType = Type.void;
          return module.unreachable();
        }
        if (!isPowerOf2(immAlign)) {
          compiler.error(
            DiagnosticCode._0_must_be_a_power_of_two,
            operands[3].range, "Alignment"
          );
          compiler.currentType = Type.void;
          return module.unreachable();
        }
      } else {
        immAlign = naturalAlign;
      }
      compiler.currentType = Type.void;
      return module.store(type.byteSize, arg0, arg1, inType.toNativeType(), immOffset, immAlign);
    }

    // === Atomics ================================================================================

    case BuiltinSymbols.atomic_load: { // load<T!>(offset: usize, immOffset?: usize) -> T*
      if (!compiler.options.hasFeature(Feature.THREADS)) break;
      if (
        checkTypeRequired(typeArguments, reportNode, compiler, true) |
        checkArgsOptional(operands, 1, 2, reportNode, compiler)
      ) return module.unreachable();
      let type = typeArguments![0];
      let outType = (
        type.is(TypeFlags.INTEGER) &&
        contextualType.is(TypeFlags.INTEGER) &&
        contextualType.size > type.size
      ) ? contextualType : type;
      if (!type.is(TypeFlags.INTEGER)) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.typeArgumentsRange
        );
        compiler.currentType = outType;
        return module.unreachable();
      }
      let arg0 = compiler.compileExpression(operands[0],
        compiler.options.usizeType,
        Constraints.CONV_IMPLICIT
      );
      let immOffset = operands.length == 2 ? evaluateImmediateOffset(operands[1], compiler) : 0; // reports
      if (immOffset < 0) {
        compiler.currentType = outType;
        return module.unreachable();
      }
      compiler.currentType = outType;
      return module.atomic_load(
        type.byteSize,
        arg0,
        outType.toNativeType(),
        immOffset
      );
    }
    case BuiltinSymbols.atomic_store: { // store<T!>(offset: usize, value: T*, immOffset?: usize) -> void
      if (!compiler.options.hasFeature(Feature.THREADS)) break;
      compiler.currentType = Type.void;
      if (
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsOptional(operands, 2, 3, reportNode, compiler)
      ) return module.unreachable();
      let type = typeArguments![0];
      if (!type.is(TypeFlags.INTEGER) || type.size < 8) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.typeArgumentsRange
        );
        return module.unreachable();
      }
      let arg0 = compiler.compileExpression(operands[0],
        compiler.options.usizeType,
        Constraints.CONV_IMPLICIT
      );
      let arg1 = isAsm
        ? compiler.compileExpression(
            operands[1],
            contextualType,
            Constraints.CONV_IMPLICIT
          )
        : compiler.compileExpression(
            operands[1],
            type,
            type.is(TypeFlags.INTEGER)
              ? Constraints.NONE // no need to convert to small int (but now might result in a float)
              : Constraints.CONV_IMPLICIT
          );
      let inType = compiler.currentType;
      if (
        type.is(TypeFlags.INTEGER) &&
        (
          !inType.is(TypeFlags.INTEGER) || // float to int
          inType.size < type.size          // int to larger int (clear garbage bits)
        )
      ) {
        arg1 = compiler.convertExpression(arg1,
          inType, type,
          false, false, // still clears garbage bits when not wrapping
          operands[1]
        );
        inType = type;
      }
      let immOffset = operands.length == 3 ? evaluateImmediateOffset(operands[2], compiler) : 0; // reports
      if (immOffset < 0) {
        compiler.currentType = Type.void;
        return module.unreachable();
      }
      compiler.currentType = Type.void;
      return module.atomic_store(type.byteSize, arg0, arg1, inType.toNativeType(), immOffset);
    }
    case BuiltinSymbols.atomic_add: // any_atomic_binary<T!>(ptr, value: T, immOffset?: usize) -> T
    case BuiltinSymbols.atomic_sub:
    case BuiltinSymbols.atomic_and:
    case BuiltinSymbols.atomic_or:
    case BuiltinSymbols.atomic_xor:
    case BuiltinSymbols.atomic_xchg: {
      if (!compiler.options.hasFeature(Feature.THREADS)) break;
      if (
        checkTypeRequired(typeArguments, reportNode, compiler, true) |
        checkArgsOptional(operands, 2, 3, reportNode, compiler)
      ) return module.unreachable();
      let type = typeArguments![0];
      if (!type.is(TypeFlags.INTEGER) || type.size < 8) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.typeArgumentsRange
        );
        return module.unreachable();
      }
      let arg0 = compiler.compileExpression(operands[0],
        compiler.options.usizeType,
        Constraints.CONV_IMPLICIT
      );
      let arg1 = isAsm
        ? compiler.compileExpression(operands[1],
            contextualType,
            Constraints.CONV_IMPLICIT
          )
        : compiler.compileExpression(
            operands[1],
            type,
            type.is(TypeFlags.INTEGER)
              ? Constraints.NONE // no need to convert to small int (but now might result in a float)
              : Constraints.CONV_IMPLICIT
          );
      let inType = compiler.currentType;
      if (
        type.is(TypeFlags.INTEGER) &&
        (
          !inType.is(TypeFlags.INTEGER) || // float to int
          inType.size < type.size       // int to larger int (clear garbage bits)
        )
      ) {
        arg1 = compiler.convertExpression(arg1,
          inType, type,
          false, false, // still clears garbage bits when not wrapping
          operands[1]
        );
        inType = type;
      }
      let immOffset = operands.length == 3 ? evaluateImmediateOffset(operands[2], compiler) : 0; // reports
      if (immOffset < 0) {
        compiler.currentType = inType;
        return module.unreachable();
      }
      let op: AtomicRMWOp;
      switch (prototype.internalName) {
        default: assert(false);
        case BuiltinSymbols.atomic_add:  { op = AtomicRMWOp.Add;  break; }
        case BuiltinSymbols.atomic_sub:  { op = AtomicRMWOp.Sub;  break; }
        case BuiltinSymbols.atomic_and:  { op = AtomicRMWOp.And;  break; }
        case BuiltinSymbols.atomic_or:   { op = AtomicRMWOp.Or;   break; }
        case BuiltinSymbols.atomic_xor:  { op = AtomicRMWOp.Xor;  break; }
        case BuiltinSymbols.atomic_xchg: { op = AtomicRMWOp.Xchg; break; }
      }
      compiler.currentType = inType;
      return module.atomic_rmw(
        op, type.byteSize, immOffset, arg0, arg1, inType.toNativeType()
      );
    }
    case BuiltinSymbols.atomic_cmpxchg: { // cmpxchg<T!>(ptr: usize, expected: T, replacement: T, off?: usize): T
      if (!compiler.options.hasFeature(Feature.THREADS)) break;
      if (
        checkTypeRequired(typeArguments, reportNode, compiler, true) |
        checkArgsOptional(operands, 3, 4, reportNode, compiler)
      ) return module.unreachable();
      let type = typeArguments![0];
      if (!type.is(TypeFlags.INTEGER) || type.size < 8) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.typeArgumentsRange
        );
        return module.unreachable();
      }
      let arg0 = compiler.compileExpression(operands[0],
        compiler.options.usizeType,
        Constraints.CONV_IMPLICIT
      );
      let arg1 = isAsm
        ? compiler.compileExpression(operands[1],
            contextualType,
            Constraints.CONV_IMPLICIT
          )
        : compiler.compileExpression(
            operands[1],
            type,
            type.is(TypeFlags.INTEGER)
              ? Constraints.NONE // no need to convert to small int (but now might result in a float)
              : Constraints.CONV_IMPLICIT
          );
      let inType = compiler.currentType;
      let arg2 = compiler.compileExpression(operands[2],
        inType,
        Constraints.CONV_IMPLICIT
      );
      if (
        type.is(TypeFlags.INTEGER) &&
        (
          !inType.is(TypeFlags.INTEGER) || // float to int
          inType.size < type.size       // int to larger int (clear garbage bits)
        )
      ) {
        arg1 = compiler.convertExpression(arg1,
          inType, type,
          false, false, // still clears garbage bits when not wrapping
          operands[1]
        );
        arg2 = compiler.convertExpression(arg2,
          inType, type,
          false, false, // still clears garbage bits when not wrapping
          operands[2]
        );
        inType = type;
      }
      let immOffset = operands.length == 4 ? evaluateImmediateOffset(operands[3], compiler) : 0; // reports
      if (immOffset < 0) {
        compiler.currentType = inType;
        return module.unreachable();
      }
      compiler.currentType = inType;
      return module.atomic_cmpxchg(
        type.byteSize, immOffset, arg0, arg1, arg2, inType.toNativeType()
      );
    }
    case BuiltinSymbols.atomic_wait: { // wait<T!>(ptr: usize, expected: T, timeout: i64): i32;
      if (!compiler.options.hasFeature(Feature.THREADS)) break;
      compiler.currentType = Type.i32;
      if (
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 3, reportNode, compiler)
      ) return module.unreachable();
      let type = typeArguments![0];
      if (!type.is(TypeFlags.INTEGER) || type.size < 32) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.typeArgumentsRange
        );
        return module.unreachable();
      }
      let arg0 = compiler.compileExpression(operands[0],
        compiler.options.usizeType,
        Constraints.CONV_IMPLICIT
      );
      let arg1 = compiler.compileExpression(operands[1], type,
        Constraints.CONV_IMPLICIT
      );
      let arg2 = compiler.compileExpression(operands[2],
        Type.i64,
        Constraints.CONV_IMPLICIT
      );
      compiler.currentType = Type.i32;
      return module.atomic_wait(arg0, arg1, arg2, type.toNativeType());
    }
    case BuiltinSymbols.atomic_notify: { // notify(ptr: usize, count: i32): i32;
      if (!compiler.options.hasFeature(Feature.THREADS)) break;
      compiler.currentType = Type.i32;
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) return module.unreachable();
      let arg0 = compiler.compileExpression(operands[0],
        compiler.options.usizeType,
        Constraints.CONV_IMPLICIT
      );
      let arg1 = compiler.compileExpression(operands[1],
        Type.i32,
        Constraints.CONV_IMPLICIT
      );
      compiler.currentType = Type.i32;
      return module.atomic_notify(arg0, arg1);
    }

    // === Control flow ===========================================================================

    case BuiltinSymbols.select: { // select<T?>(ifTrue: T, ifFalse: T, condition: bool) -> T
      if (
        checkTypeOptional(typeArguments, reportNode, compiler, true) |
        checkArgsRequired(operands, 3, reportNode, compiler)
      ) return module.unreachable();
      let arg0 = typeArguments
        ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT)
        : compiler.compileExpression(operands[0], Type.auto);
      let type = compiler.currentType;
      if (!type.isAny(TypeFlags.VALUE | TypeFlags.REFERENCE)) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.typeArgumentsRange
        );
        return module.unreachable();
      }
      let arg1 = compiler.compileExpression(operands[1], type, Constraints.CONV_IMPLICIT);
      let arg2 = compiler.makeIsTrueish(
        compiler.compileExpression(operands[2], Type.bool),
        compiler.currentType // ^
      );
      compiler.currentType = type;
      return module.select(arg0, arg1, arg2);
    }
    case BuiltinSymbols.unreachable: { // unreachable() -> *
      if (typeArguments) {
        compiler.error(
          DiagnosticCode.Type_0_is_not_generic,
          reportNode.typeArgumentsRange, prototype.internalName
        );
      }
      checkArgsRequired(operands, 0, reportNode, compiler);
      return module.unreachable();
    }

    // === Memory =================================================================================

    case BuiltinSymbols.memory_size: { // memory.size() -> i32
      compiler.currentType = Type.i32;
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 0, reportNode, compiler)
      ) return module.unreachable();
      return module.host(HostOp.MemorySize);
    }
    case BuiltinSymbols.memory_grow: { // memory.grow(pages: i32) -> i32
      compiler.currentType = Type.i32;
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) return module.unreachable();
      return module.host(HostOp.MemoryGrow, null, [
        compiler.compileExpression(operands[0], Type.i32, Constraints.CONV_IMPLICIT)
      ]);
    }
    case BuiltinSymbols.memory_copy: { // memory.copy(dest: usize, src: usize: n: usize) -> void
      compiler.currentType = Type.void;
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 3, reportNode, compiler)
      ) return module.unreachable();
      if (!compiler.options.hasFeature(Feature.BULK_MEMORY)) {
        let instance = compiler.resolver.resolveFunction(prototype, null); // reports
        compiler.currentType = Type.void;
        if (!instance) return module.unreachable();
        return compiler.compileCallDirect(instance, operands, reportNode);
      }
      let usizeType = compiler.options.usizeType;
      let arg0 = compiler.compileExpression(operands[0], usizeType, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.compileExpression(operands[1], usizeType, Constraints.CONV_IMPLICIT);
      let arg2 = compiler.compileExpression(operands[2], usizeType, Constraints.CONV_IMPLICIT);
      compiler.currentType = Type.void;
      return module.memory_copy(arg0, arg1, arg2);
    }
    case BuiltinSymbols.memory_fill: { // memory.fill(dest: usize, value: u8, n: usize) -> void
      compiler.currentType = Type.void;
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 3, reportNode, compiler)
      ) return module.unreachable();
      if (!compiler.options.hasFeature(Feature.BULK_MEMORY)) {
        let instance = compiler.resolver.resolveFunction(prototype, null); // reports
        compiler.currentType = Type.void;
        if (!instance) return module.unreachable();
        return compiler.compileCallDirect(instance, operands, reportNode);
      }
      let usizeType = compiler.options.usizeType;
      let arg0 = compiler.compileExpression(operands[0], usizeType, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.compileExpression(operands[1], Type.u8, Constraints.CONV_IMPLICIT);
      let arg2 = compiler.compileExpression(operands[2], usizeType, Constraints.CONV_IMPLICIT);
      compiler.currentType = Type.void;
      return module.memory_fill(arg0, arg1, arg2);
    }

    // === Helpers ================================================================================

    case BuiltinSymbols.changetype: { // changetype<T!>(value: *) -> T
      if (
        checkTypeRequired(typeArguments, reportNode, compiler, true) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) return module.unreachable();
      let toType = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], toType);
      let fromType = compiler.currentType;
      compiler.currentType = toType;
      if (fromType.size != toType.size) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.range
        );
        return module.unreachable();
      }
      return arg0;
    }
    case BuiltinSymbols.assert: { // assert<T?>(isTrueish: T, message?: string) -> T{!= null}
      if (
        checkTypeOptional(typeArguments, reportNode, compiler) |
        checkArgsOptional(operands, 1, 2, reportNode, compiler)
      ) {
        if (typeArguments) {
          assert(typeArguments.length); // otherwise invalid, should not been set at all
          compiler.currentType = typeArguments[0].nonNullableType;
        }
        return module.unreachable();
      }
      let arg0 = typeArguments
        ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT | Constraints.MUST_WRAP)
        : compiler.compileExpression(operands[0], Type.bool, Constraints.MUST_WRAP);
      let type = compiler.currentType;
      compiler.currentType = type.nonNullableType;

      // if the assertion can be proven statically, omit it
      if (getExpressionId(arg0 = module.precomputeExpression(arg0)) == ExpressionId.Const) {
        switch (getExpressionType(arg0)) {
          case NativeType.I32: {
            if (getConstValueI32(arg0) != 0) {
              if (contextualType == Type.void) {
                compiler.currentType = Type.void;
                return module.nop();
              }
              return arg0;
            }
            break;
          }
          case NativeType.I64: {
            if (getConstValueI64Low(arg0) != 0 || getConstValueI64High(arg0) != 0) {
              if (contextualType == Type.void) {
                compiler.currentType = Type.void;
                return module.nop();
              }
              return arg0;
            }
            break;
          }
          case NativeType.F32: {
            if (getConstValueF32(arg0) != 0) {
              if (contextualType == Type.void) {
                compiler.currentType = Type.void;
                return module.nop();
              }
              return arg0;
            }
            break;
          }
          case NativeType.F64: {
            if (getConstValueF64(arg0) != 0) {
              if (contextualType == Type.void) {
                compiler.currentType = Type.void;
                return module.nop();
              }
              return arg0;
            }
            break;
          }
        }
      }

      // return ifTrueish if assertions are disabled
      if (compiler.options.noAssert) {
        if (contextualType == Type.void) { // simplify if dropped anyway
          compiler.currentType = Type.void;
          return module.nop();
        }
        return arg0;
      }

      // otherwise call abort if the assertion is false-ish
      let abort = compileAbort(compiler, operands.length == 2 ? operands[1] : null, reportNode);
      compiler.currentType = type.nonNullableType;
      let expr: ExpressionRef;
      if (contextualType == Type.void) { // simplify if dropped anyway
        compiler.currentType = Type.void;
        switch (type.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL: {
            expr = module.if(
              module.unary(UnaryOp.EqzI32, arg0),
              abort
            );
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            expr = module.if(
              module.unary(UnaryOp.EqzI64, arg0),
              abort
            );
            break;
          }
          case TypeKind.ISIZE:
          case TypeKind.USIZE: {
            expr = module.if(
              module.unary(
                compiler.options.isWasm64
                  ? UnaryOp.EqzI64
                  : UnaryOp.EqzI32,
                arg0
              ),
              abort
            );
            break;
          }
          // TODO: also check for NaN in float assertions, as in `Boolean(NaN) -> false`?
          case TypeKind.F32: {
            expr = module.if(
              module.binary(BinaryOp.EqF32,
                arg0,
                module.f32(0)
              ),
              abort
            );
            break;
          }
          case TypeKind.F64: {
            expr = module.if(
              module.binary(BinaryOp.EqF64,
                arg0,
                module.f64(0)
              ),
              abort
            );
            break;
          }
          default: {
            compiler.error(
              DiagnosticCode.Operation_not_supported,
              reportNode.typeArgumentsRange
            );
            expr = abort;
            break;
          }
        }
      } else {
        compiler.currentType = type.nonNullableType;
        switch (compiler.currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL: {
            let flow = compiler.currentFlow;
            let tempLocal = flow.getAndFreeTempLocal(type);
            flow.setLocalFlag(tempLocal.index, LocalFlags.WRAPPED); // arg0 is wrapped
            expr = module.if(
              module.local_tee(tempLocal.index, arg0),
              module.local_get(tempLocal.index, NativeType.I32),
              abort
            );
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            let tempLocal = compiler.currentFlow.getAndFreeTempLocal(Type.i64);
            expr = module.if(
              module.unary(UnaryOp.EqzI64,
                module.local_tee(tempLocal.index, arg0)
              ),
              abort,
              module.local_get(tempLocal.index, NativeType.I64)
            );
            break;
          }
          case TypeKind.ISIZE:
          case TypeKind.USIZE: {
            let tempLocal = compiler.currentFlow.getAndFreeTempLocal(compiler.options.usizeType);
            expr = module.if(
              module.unary(
                compiler.options.isWasm64
                  ? UnaryOp.EqzI64
                  : UnaryOp.EqzI32,
                module.local_tee(tempLocal.index, arg0)
              ),
              abort,
              module.local_get(tempLocal.index, compiler.options.nativeSizeType)
            );
            break;
          }
          case TypeKind.F32: {
            let tempLocal = compiler.currentFlow.getAndFreeTempLocal(Type.f32);
            expr = module.if(
              module.binary(BinaryOp.EqF32,
                module.local_tee(tempLocal.index, arg0),
                module.f32(0)
              ),
              abort,
              module.local_get(tempLocal.index, NativeType.F32)
            );
            break;
          }
          case TypeKind.F64: {
            let tempLocal = compiler.currentFlow.getAndFreeTempLocal(Type.f64);
            expr = module.if(
              module.binary(BinaryOp.EqF64,
                module.local_tee(tempLocal.index, arg0),
                module.f64(0)
              ),
              abort,
              module.local_get(tempLocal.index, NativeType.F64)
            );
            break;
          }
          default: {
            compiler.error(
              DiagnosticCode.Operation_not_supported,
              reportNode.typeArgumentsRange
            );
            expr = abort;
            break;
          }
        }
      }
      return expr;
    }
    case BuiltinSymbols.unchecked: { // unchecked(expr: *) -> *
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) return module.unreachable();
      let flow = compiler.currentFlow;
      let alreadyUnchecked = flow.is(FlowFlags.UNCHECKED_CONTEXT);
      flow.set(FlowFlags.UNCHECKED_CONTEXT);
      // eliminate unnecessary tees by preferring contextualType(=void):
      let expr = compiler.compileExpression(operands[0], contextualType);
      if (!alreadyUnchecked) flow.unset(FlowFlags.UNCHECKED_CONTEXT);
      return expr;
    }
    case BuiltinSymbols.call_direct: directize = true;
    case BuiltinSymbols.call_indirect: { // call_indirect<T?>(target: Function | u32, ...args: *[]) -> T
      if (
        checkTypeOptional(typeArguments, reportNode, compiler, true) |
        checkArgsOptional(operands, 1, i32.MAX_VALUE, reportNode, compiler)
      ) return module.unreachable();
      let returnType = typeArguments ? typeArguments[0] : contextualType;
      let arg0 = compiler.compileExpression(operands[0], Type.u32);
      let arg0Type = compiler.currentType;
      if (!(
        arg0Type == Type.u32 ||                                      // either plain index
        arg0Type.kind == TypeKind.U32 && arg0Type.signatureReference // or function reference
      )) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          operands[0].range
        );
        return module.unreachable();
      }
      let numOperands = operands.length - 1;
      let operandExprs = new Array<ExpressionRef>(numOperands);
      let nativeReturnType = returnType.toNativeType();
      let parameterTypes = new Array<Type>(numOperands);
      let nativeParamTypes = new Array<NativeType>(numOperands);
      for (let i = 0; i < numOperands; ++i) {
        operandExprs[i] = compiler.compileExpression(operands[1 + i], Type.i32);
        let operandType = compiler.currentType;
        parameterTypes[i] = operandType;
        nativeParamTypes[i] = operandType.toNativeType();
      }
      let typeName = Signature.makeSignatureString(parameterTypes, returnType);
      let typeRef = module.getFunctionTypeBySignature(nativeReturnType, nativeParamTypes);
      if (!typeRef) typeRef = module.addFunctionType(typeName, nativeReturnType, nativeParamTypes);
      compiler.currentType = returnType;
      if (directize) {
        // if the index expression is precomputable to a constant value, emit a direct call
        if (getExpressionId(arg0 = module.precomputeExpression(arg0)) == ExpressionId.Const) {
          assert(getExpressionType(arg0) == NativeType.I32);
          let index = getConstValueI32(arg0);
          let functionTable = compiler.functionTable;
          if (index >= 0 && index < functionTable.length) {
            return module.call(functionTable[index], operandExprs, nativeReturnType);
          }
        }
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          operands[0].range
        );
        return module.unreachable();
      }
      // of course this can easily result in a 'RuntimeError: function signature mismatch' trap and
      // thus must be used with care. it exists because it *might* be useful in specific scenarios.
      return module.call_indirect(arg0, operandExprs, typeName);
    }
    case BuiltinSymbols.instantiate: { // instantiate<T!>(...args: *[]) -> T
      if (
        checkTypeRequired(typeArguments, reportNode, compiler, true)
      ) return module.unreachable();
      let classInstance = typeArguments![0].classReference;
      if (!classInstance) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.typeArgumentsRange
        );
        return module.unreachable();
      }
      compiler.currentType = classInstance.type;
      return compiler.compileInstantiate(classInstance, operands, Constraints.NONE, reportNode);
    }

    // === User-defined diagnostics ===============================================================

    case BuiltinSymbols.ERROR: {
      checkTypeAbsent(typeArguments, reportNode, prototype);
      compiler.error(
        DiagnosticCode.User_defined_0,
        reportNode.range, (operands.length ? operands[0] : reportNode).range.toString()
      );
      return module.unreachable();
    }
    case BuiltinSymbols.WARNING: {
      checkTypeAbsent(typeArguments, reportNode, prototype);
      compiler.warning(
        DiagnosticCode.User_defined_0,
        reportNode.range, (operands.length ? operands[0] : reportNode).range.toString()
      );
      return module.nop();
    }
    case BuiltinSymbols.INFO: {
      checkTypeAbsent(typeArguments, reportNode, prototype);
      compiler.info(
        DiagnosticCode.User_defined_0,
        reportNode.range, (operands.length ? operands[0] : reportNode).range.toString()
      );
      return module.nop();
    }

    // === Portable type conversions ==============================================================

    case BuiltinSymbols.i8: {
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = Type.i8;
        return module.unreachable();
      }
      return compiler.compileExpression(operands[0], Type.i8, Constraints.CONV_EXPLICIT);
    }
    case BuiltinSymbols.i16: {
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = Type.i16;
        return module.unreachable();
      }
      return compiler.compileExpression(operands[0], Type.i16, Constraints.CONV_EXPLICIT);
    }
    case BuiltinSymbols.i32: {
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = Type.i32;
        return module.unreachable();
      }
      return compiler.compileExpression(operands[0], Type.i32, Constraints.CONV_EXPLICIT);
    }
    case BuiltinSymbols.i64: {
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = Type.i64;
        return module.unreachable();
      }
      return compiler.compileExpression(operands[0], Type.i64, Constraints.CONV_EXPLICIT);
    }
    case BuiltinSymbols.isize: {
      let isizeType = compiler.options.isizeType;
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = isizeType;
        return module.unreachable();
      }
      return compiler.compileExpression(operands[0], isizeType, Constraints.CONV_EXPLICIT);
    }
    case BuiltinSymbols.u8: {
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = Type.u8;
        return module.unreachable();
      }
      return compiler.compileExpression(operands[0], Type.u8, Constraints.CONV_EXPLICIT);
    }
    case BuiltinSymbols.u16: {
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = Type.u16;
        return module.unreachable();
      }
      return compiler.compileExpression(operands[0], Type.u16, Constraints.CONV_EXPLICIT);
    }
    case BuiltinSymbols.u32: {
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = Type.u32;
        return module.unreachable();
      }
      return compiler.compileExpression(operands[0], Type.u32, Constraints.CONV_EXPLICIT);
    }
    case BuiltinSymbols.u64: {
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = Type.u64;
        return module.unreachable();
      }
      return compiler.compileExpression(operands[0], Type.u64, Constraints.CONV_EXPLICIT);
    }
    case BuiltinSymbols.usize: {
      let usizeType = compiler.options.usizeType;
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = usizeType;
        return module.unreachable();
      }
      return compiler.compileExpression(operands[0], usizeType, Constraints.CONV_EXPLICIT);
    }
    case BuiltinSymbols.bool: {
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = Type.bool;
        return module.unreachable();
      }
      return compiler.compileExpression(operands[0], Type.bool, Constraints.CONV_EXPLICIT);
    }
    case BuiltinSymbols.f32: {
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = Type.f32;
        return module.unreachable();
      }
      return compiler.compileExpression(operands[0], Type.f32, Constraints.CONV_EXPLICIT);
    }
    case BuiltinSymbols.f64: {
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = Type.f64;
        return module.unreachable();
      }
      return compiler.compileExpression(operands[0], Type.f64, Constraints.CONV_EXPLICIT);
    }

    // === SIMD ===================================================================================

    case BuiltinSymbols.v128: // alias for now
    case BuiltinSymbols.i8x16: {
      if (!compiler.options.hasFeature(Feature.SIMD)) break;
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 16, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let bytes = new Uint8Array(16);
      for (let i = 0; i < 16; ++i) {
        let value = operands[i];
        if (value) {
          let expr = compiler.precomputeExpression(value, Type.i8, Constraints.CONV_IMPLICIT);
          if (getExpressionId(expr) != ExpressionId.Const) {
            compiler.error(
              DiagnosticCode.Expression_must_be_a_compile_time_constant,
              value.range
            );
            compiler.currentType = Type.v128;
            return module.unreachable();
          }
          assert(getExpressionType(expr) == NativeType.I32);
          writeI8(getConstValueI32(expr), bytes, i);
        }
      }
      compiler.currentType = Type.v128;
      return module.v128(bytes);
    }
    case BuiltinSymbols.i16x8: {
      if (!compiler.options.hasFeature(Feature.SIMD)) break;
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 8, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let bytes = new Uint8Array(16);
      for (let i = 0; i < 8; ++i) {
        let value = operands[i];
        if (value) {
          let expr = compiler.precomputeExpression(value, Type.i16, Constraints.CONV_IMPLICIT);
          if (getExpressionId(expr) != ExpressionId.Const) {
            compiler.error(
              DiagnosticCode.Expression_must_be_a_compile_time_constant,
              value.range
            );
            compiler.currentType = Type.v128;
            return module.unreachable();
          }
          assert(getExpressionType(expr) == NativeType.I32);
          writeI16(getConstValueI32(expr), bytes, i << 1);
        }
      }
      compiler.currentType = Type.v128;
      return module.v128(bytes);
    }
    case BuiltinSymbols.i32x4: {
      if (!compiler.options.hasFeature(Feature.SIMD)) break;
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 4, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let bytes = new Uint8Array(16);
      for (let i = 0; i < 4; ++i) {
        let value = operands[i];
        if (value) {
          let expr = compiler.precomputeExpression(value, Type.i32, Constraints.CONV_IMPLICIT);
          if (getExpressionId(expr) != ExpressionId.Const) {
            compiler.error(
              DiagnosticCode.Expression_must_be_a_compile_time_constant,
              value.range
            );
            compiler.currentType = Type.v128;
            return module.unreachable();
          }
          assert(getExpressionType(expr) == NativeType.I32);
          writeI32(getConstValueI32(expr), bytes, i << 2);
        }
      }
      compiler.currentType = Type.v128;
      return module.v128(bytes);
    }
    case BuiltinSymbols.i64x2: {
      if (!compiler.options.hasFeature(Feature.SIMD)) break;
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let bytes = new Uint8Array(16);
      for (let i = 0; i < 2; ++i) {
        let value = operands[i];
        if (value) {
          let expr = compiler.precomputeExpression(value, Type.i64, Constraints.CONV_IMPLICIT);
          if (getExpressionId(expr) != ExpressionId.Const) {
            compiler.error(
              DiagnosticCode.Expression_must_be_a_compile_time_constant,
              value.range
            );
            compiler.currentType = Type.v128;
            return module.unreachable();
          }
          assert(getExpressionType(expr) == NativeType.I64);
          let off = i << 3;
          writeI32(getConstValueI64Low(expr), bytes, off);
          writeI32(getConstValueI64High(expr), bytes, off + 4);
        }
      }
      compiler.currentType = Type.v128;
      return module.v128(bytes);
    }
    case BuiltinSymbols.f32x4: {
      if (!compiler.options.hasFeature(Feature.SIMD)) break;
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 4, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let bytes = new Uint8Array(16);
      for (let i = 0; i < 4; ++i) {
        let value = operands[i];
        if (value) {
          let expr = compiler.precomputeExpression(value, Type.f32, Constraints.CONV_IMPLICIT);
          if (getExpressionId(expr) != ExpressionId.Const) {
            compiler.error(
              DiagnosticCode.Expression_must_be_a_compile_time_constant,
              value.range
            );
            compiler.currentType = Type.v128;
            return module.unreachable();
          }
          assert(getExpressionType(expr) == NativeType.F32);
          writeF32(getConstValueF32(expr), bytes, i << 2);
        }
      }
      compiler.currentType = Type.v128;
      return module.v128(bytes);
    }
    case BuiltinSymbols.f64x2: {
      if (!compiler.options.hasFeature(Feature.SIMD)) break;
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let bytes = new Uint8Array(16);
      for (let i = 0; i < 2; ++i) {
        let value = operands[i];
        if (value) {
          let expr = compiler.precomputeExpression(value, Type.f64, Constraints.CONV_IMPLICIT);
          if (getExpressionId(expr) != ExpressionId.Const) {
            compiler.error(
              DiagnosticCode.Expression_must_be_a_compile_time_constant,
              value.range
            );
            compiler.currentType = Type.v128;
            return module.unreachable();
          }
          assert(getExpressionType(expr) == NativeType.F64);
          writeF64(getConstValueF64(expr), bytes, i << 3);
        }
      }
      compiler.currentType = Type.v128;
      return module.v128(bytes);
    }
    case BuiltinSymbols.v128_splat: { // splat<T!>(x: T) -> v128
      if (!compiler.options.hasFeature(Feature.SIMD)) break;
      if (
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let type = typeArguments![0];
      if (type.is(TypeFlags.REFERENCE)) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.typeArgumentsRange
        );
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let op: UnaryOp;
      switch (type.kind) {
        case TypeKind.I8:
        case TypeKind.U8:  { op = UnaryOp.SplatVecI8x16; break; }
        case TypeKind.I16:
        case TypeKind.U16: { op = UnaryOp.SplatVecI16x8; break; }
        case TypeKind.I32:
        case TypeKind.U32: { op = UnaryOp.SplatVecI32x4; break; }
        case TypeKind.I64:
        case TypeKind.U64: { op = UnaryOp.SplatVecI64x2; break; }
        case TypeKind.ISIZE:
        case TypeKind.USIZE: {
          op = compiler.options.isWasm64
            ? UnaryOp.SplatVecI64x2
            : UnaryOp.SplatVecI32x4;
          break;
        }
        case TypeKind.F32: { op = UnaryOp.SplatVecF32x4; break; }
        case TypeKind.F64: { op = UnaryOp.SplatVecF64x2; break; }
        default: {
          compiler.error(
            DiagnosticCode.Operation_not_supported,
            reportNode.typeArgumentsRange
          );
          compiler.currentType = Type.v128;
          return module.unreachable();
        }
      }
      let arg0 = compiler.compileExpression(operands[0], type, Constraints.CONV_IMPLICIT);
      compiler.currentType = Type.v128;
      return module.unary(op, arg0);
    }
    case BuiltinSymbols.v128_extract_lane: { // extract_lane<T!>(x: v128, idx: u8) -> T
      if (!compiler.options.hasFeature(Feature.SIMD)) break;
      if (
        checkTypeRequired(typeArguments, reportNode, compiler, true) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) return module.unreachable();
      let type = typeArguments![0];
      if (type.is(TypeFlags.REFERENCE)) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.typeArgumentsRange
        );
        compiler.currentType = type;
        return module.unreachable();
      }
      let op: SIMDExtractOp;
      switch (type.kind) {
        case TypeKind.I8:  { op = SIMDExtractOp.ExtractLaneSVecI8x16; break; }
        case TypeKind.U8:  { op = SIMDExtractOp.ExtractLaneUVecI8x16; break; }
        case TypeKind.I16: { op = SIMDExtractOp.ExtractLaneSVecI16x8; break; }
        case TypeKind.U16: { op = SIMDExtractOp.ExtractLaneUVecI16x8; break; }
        case TypeKind.I32:
        case TypeKind.U32: { op = SIMDExtractOp.ExtractLaneVecI32x4; break; }
        case TypeKind.I64:
        case TypeKind.U64: { op = SIMDExtractOp.ExtractLaneVecI64x2; break; }
        case TypeKind.ISIZE:
        case TypeKind.USIZE: {
          op = compiler.options.isWasm64
            ? SIMDExtractOp.ExtractLaneVecI64x2
            : SIMDExtractOp.ExtractLaneVecI32x4;
          break;
        }
        case TypeKind.F32: { op = SIMDExtractOp.ExtractLaneVecF32x4; break; }
        case TypeKind.F64: { op = SIMDExtractOp.ExtractLaneVecF64x2; break; }
        default: {
          compiler.error(
            DiagnosticCode.Operation_not_supported,
            reportNode.typeArgumentsRange
          );
          compiler.currentType = type;
          return module.unreachable();
        }
      }
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.precomputeExpression(operands[1], Type.u8, Constraints.CONV_IMPLICIT);
      compiler.currentType = type;
      if (getExpressionId(arg1) != ExpressionId.Const) {
        compiler.error(
          DiagnosticCode.Expression_must_be_a_compile_time_constant,
          operands[1].range
        );
        return module.unreachable();
      }
      assert(getExpressionType(arg1) == NativeType.I32);
      let maxIdx = (16 / type.byteSize) - 1;
      let idx = getConstValueI32(arg1);
      if (idx < 0 || idx > maxIdx) {
        compiler.error(
          DiagnosticCode._0_must_be_a_value_between_1_and_2_inclusive,
          operands[1].range, "Lane index", "0", maxIdx.toString()
        );
        return module.unreachable();
      }
      return module.simd_extract(op, arg0, idx);
    }
    case BuiltinSymbols.v128_replace_lane: { // replace_lane<T!>(x: v128, idx: u8, value: T) -> v128
      if (!compiler.options.hasFeature(Feature.SIMD)) break;
      if (
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 3, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let type = typeArguments![0];
      if (type.is(TypeFlags.REFERENCE)) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.typeArgumentsRange
        );
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let op: SIMDReplaceOp;
      switch (type.kind) {
        case TypeKind.I8:
        case TypeKind.U8:  { op = SIMDReplaceOp.ReplaceLaneVecI8x16; break; }
        case TypeKind.I16:
        case TypeKind.U16: { op = SIMDReplaceOp.ReplaceLaneVecI16x8; break; }
        case TypeKind.I32:
        case TypeKind.U32: { op = SIMDReplaceOp.ReplaceLaneVecI32x4; break; }
        case TypeKind.I64:
        case TypeKind.U64: { op = SIMDReplaceOp.ReplaceLaneVecI64x2; break; }
        case TypeKind.ISIZE:
        case TypeKind.USIZE: {
          op = compiler.options.isWasm64
            ? SIMDReplaceOp.ReplaceLaneVecI64x2
            : SIMDReplaceOp.ReplaceLaneVecI32x4;
          break;
        }
        case TypeKind.F32: { op = SIMDReplaceOp.ReplaceLaneVecF32x4; break; }
        case TypeKind.F64: { op = SIMDReplaceOp.ReplaceLaneVecF64x2; break; }
        default: {
          compiler.error(
            DiagnosticCode.Operation_not_supported,
            reportNode.typeArgumentsRange
          );
          compiler.currentType = Type.v128;
          return module.unreachable();
        }
      }
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.precomputeExpression(operands[1], Type.u8, Constraints.CONV_IMPLICIT);
      if (getExpressionId(arg1) != ExpressionId.Const) {
        compiler.error(
          DiagnosticCode.Expression_must_be_a_compile_time_constant,
          operands[1].range
        );
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      assert(getExpressionType(arg1) == NativeType.I32);
      let maxIdx = (16 / type.byteSize) - 1;
      let idx = getConstValueI32(arg1);
      if (idx < 0 || idx > maxIdx) {
        compiler.error(
          DiagnosticCode._0_must_be_a_value_between_1_and_2_inclusive,
          operands[1].range, "Lane index", "0", maxIdx.toString()
        );
        return module.unreachable();
      }
      let arg2 = compiler.compileExpression(operands[2], type, Constraints.CONV_IMPLICIT);
      compiler.currentType = Type.v128;
      return module.simd_replace(op, arg0, idx, arg2);
    }
    case BuiltinSymbols.v128_shuffle: { // shuffle<T!>(a: v128, b: v128, ...lanes: u8[]) -> v128
      if (!compiler.options.hasFeature(Feature.SIMD)) break;
      if (
        checkTypeRequired(typeArguments, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let type = typeArguments![0];
      if (type.is(TypeFlags.REFERENCE)) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.typeArgumentsRange
        );
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let laneWidth = type.byteSize;
      let laneCount = 16 / laneWidth;
      assert(isInteger(laneCount) && isPowerOf2(laneCount));
      if (
        checkArgsRequired(operands, 2 + laneCount, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      switch (type.kind) {
        case TypeKind.I8:
        case TypeKind.I16:
        case TypeKind.I32:
        case TypeKind.I64:
        case TypeKind.ISIZE:
        case TypeKind.U8:
        case TypeKind.U16:
        case TypeKind.U32:
        case TypeKind.U64:
        case TypeKind.USIZE:
        case TypeKind.F32:
        case TypeKind.F64: break;
        default: {
          compiler.error(
            DiagnosticCode.Operation_not_supported,
            reportNode.typeArgumentsRange
          );
          compiler.currentType = Type.v128;
          return module.unreachable();
        }
      }
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
      let mask = new Uint8Array(16);
      let maxIdx = (laneCount << 1) - 1;
      for (let i = 0; i < laneCount; ++i) {
        let operand = operands[2 + i];
        let argN = compiler.precomputeExpression(operand, Type.u8, Constraints.CONV_IMPLICIT);
        if (getExpressionId(argN) != ExpressionId.Const) {
          compiler.error(
            DiagnosticCode.Expression_must_be_a_compile_time_constant,
            operand.range
          );
          compiler.currentType = Type.v128;
          return module.unreachable();
        }
        assert(getExpressionType(argN) == NativeType.I32);
        let idx = getConstValueI32(argN);
        if (idx < 0 || idx > maxIdx) {
          compiler.error(
            DiagnosticCode._0_must_be_a_value_between_1_and_2_inclusive,
            operand.range, "Lane index", "0", maxIdx.toString()
          );
          compiler.currentType = Type.v128;
          return module.unreachable();
        }
        switch (laneWidth) {
          case 1: {
            writeI8(idx, mask, i);
            break;
          }
          case 2: {
            let off8 = i << 1;
            let idx8 = idx << 1;
            writeI8(idx8    , mask, off8);
            writeI8(idx8 + 1, mask, off8 + 1);
            break;
          }
          case 4: {
            let off8 = i << 2;
            let idx8 = idx << 2;
            writeI8(idx8    , mask, off8);
            writeI8(idx8 + 1, mask, off8 + 1);
            writeI8(idx8 + 2, mask, off8 + 2);
            writeI8(idx8 + 3, mask, off8 + 3);
            break;
          }
          case 8: {
            let off8 = i << 3;
            let idx8 = idx << 3;
            writeI8(idx8    , mask, off8);
            writeI8(idx8 + 1, mask, off8 + 1);
            writeI8(idx8 + 2, mask, off8 + 2);
            writeI8(idx8 + 3, mask, off8 + 3);
            writeI8(idx8 + 4, mask, off8 + 4);
            writeI8(idx8 + 5, mask, off8 + 5);
            writeI8(idx8 + 6, mask, off8 + 6);
            writeI8(idx8 + 7, mask, off8 + 7);
            break;
          }
          default: assert(false);
        }
      }
      compiler.currentType = Type.v128;
      return module.simd_shuffle(arg0, arg1, mask);
    }
    case BuiltinSymbols.v128_add: // any_binary<T!>(a: v128, b: v128) -> v128
    case BuiltinSymbols.v128_sub:
    case BuiltinSymbols.v128_mul:
    case BuiltinSymbols.v128_div:
    case BuiltinSymbols.v128_add_saturate:
    case BuiltinSymbols.v128_sub_saturate:
    case BuiltinSymbols.v128_min:
    case BuiltinSymbols.v128_max:
    case BuiltinSymbols.v128_eq:
    case BuiltinSymbols.v128_ne:
    case BuiltinSymbols.v128_lt:
    case BuiltinSymbols.v128_le:
    case BuiltinSymbols.v128_gt:
    case BuiltinSymbols.v128_ge: {
      if (!compiler.options.hasFeature(Feature.SIMD)) break;
      if (
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let type = typeArguments![0];
      if (type.is(TypeFlags.REFERENCE)) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.typeArgumentsRange
        );
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let op: BinaryOp = -1;
      switch (prototype.internalName) {
        case BuiltinSymbols.v128_add: {
          switch (type.kind) {
            case TypeKind.I8:
            case TypeKind.U8:  { op = BinaryOp.AddVecI8x16; break; }
            case TypeKind.I16:
            case TypeKind.U16: { op = BinaryOp.AddVecI16x8; break; }
            case TypeKind.I32:
            case TypeKind.U32: { op = BinaryOp.AddVecI32x4; break; }
            case TypeKind.I64:
            case TypeKind.U64: { op = BinaryOp.AddVecI64x2; break; }
            case TypeKind.ISIZE:
            case TypeKind.USIZE: {
              op = compiler.options.isWasm64
                ? BinaryOp.AddVecI64x2
                : BinaryOp.AddVecI32x4;
              break;
            }
            case TypeKind.F32: { op = BinaryOp.AddVecF32x4; break; }
            case TypeKind.F64: { op = BinaryOp.AddVecF64x2; break; }
          }
          break;
        }
        case BuiltinSymbols.v128_sub: {
          switch (type.kind) {
            case TypeKind.I8:
            case TypeKind.U8:  { op = BinaryOp.SubVecI8x16; break; }
            case TypeKind.I16:
            case TypeKind.U16: { op = BinaryOp.SubVecI16x8; break; }
            case TypeKind.I32:
            case TypeKind.U32: { op = BinaryOp.SubVecI32x4; break; }
            case TypeKind.I64:
            case TypeKind.U64: { op = BinaryOp.SubVecI64x2; break; }
            case TypeKind.ISIZE:
            case TypeKind.USIZE: {
              op = compiler.options.isWasm64
                ? BinaryOp.SubVecI64x2
                : BinaryOp.SubVecI32x4;
              break;
            }
            case TypeKind.F32: { op = BinaryOp.SubVecF32x4; break; }
            case TypeKind.F64: { op = BinaryOp.SubVecF64x2; break; }
          }
          break;
        }
        case BuiltinSymbols.v128_mul: {
          switch (type.kind) {
            case TypeKind.I8:
            case TypeKind.U8:  { op = BinaryOp.MulVecI8x16; break; }
            case TypeKind.I16:
            case TypeKind.U16: { op = BinaryOp.MulVecI16x8; break; }
            case TypeKind.I32:
            case TypeKind.U32: { op = BinaryOp.MulVecI32x4; break; }
            case TypeKind.F32: { op = BinaryOp.MulVecF32x4; break; }
            case TypeKind.F64: { op = BinaryOp.MulVecF64x2; break; }
            case TypeKind.ISIZE:
            case TypeKind.USIZE: {
              if (!compiler.options.isWasm64) op = BinaryOp.MulVecI32x4;
              break;
            }
          }
          break;
        }
        case BuiltinSymbols.v128_div: {
          switch (type.kind) {
            case TypeKind.F32: { op = BinaryOp.DivVecF32x4; break; }
            case TypeKind.F64: { op = BinaryOp.DivVecF64x2; break; }
          }
          break;
        }
        case BuiltinSymbols.v128_add_saturate: {
          switch (type.kind) {
            case TypeKind.I8:  { op = BinaryOp.AddSatSVecI8x16; break; }
            case TypeKind.U8:  { op = BinaryOp.AddSatUVecI8x16; break; }
            case TypeKind.I16: { op = BinaryOp.AddSatSVecI16x8; break; }
            case TypeKind.U16: { op = BinaryOp.AddSatUVecI16x8; break; }
          }
          break;
        }
        case BuiltinSymbols.v128_sub_saturate: {
          switch (type.kind) {
            case TypeKind.I8:  { op = BinaryOp.SubSatSVecI8x16; break; }
            case TypeKind.U8:  { op = BinaryOp.SubSatUVecI8x16; break; }
            case TypeKind.I16: { op = BinaryOp.SubSatSVecI16x8; break; }
            case TypeKind.U16: { op = BinaryOp.SubSatUVecI16x8; break; }
          }
          break;
        }
        case BuiltinSymbols.v128_min: {
          switch (type.kind) {
            case TypeKind.F32: { op = BinaryOp.MinVecF32x4; break; }
            case TypeKind.F64: { op = BinaryOp.MinVecF64x2; break; }
          }
          break;
        }
        case BuiltinSymbols.v128_max: {
          switch (type.kind) {
            case TypeKind.F32: { op = BinaryOp.MaxVecF32x4; break; }
            case TypeKind.F64: { op = BinaryOp.MaxVecF64x2; break; }
          }
          break;
        }
        case BuiltinSymbols.v128_eq: {
          switch (type.kind) {
            case TypeKind.I8:
            case TypeKind.U8:  { op = BinaryOp.EqVecI8x16; break; }
            case TypeKind.I16:
            case TypeKind.U16: { op = BinaryOp.EqVecI16x8; break; }
            case TypeKind.I32:
            case TypeKind.U32: { op = BinaryOp.EqVecI32x4; break; }
            case TypeKind.F32: { op = BinaryOp.EqVecF32x4; break; }
            case TypeKind.F64: { op = BinaryOp.EqVecF64x2; break; }
            case TypeKind.ISIZE:
            case TypeKind.USIZE: {
              if (!compiler.options.isWasm64) op = BinaryOp.EqVecI32x4;
              break;
            }
          }
          break;
        }
        case BuiltinSymbols.v128_ne: {
          switch (type.kind) {
            case TypeKind.I8:
            case TypeKind.U8:  { op = BinaryOp.NeVecI8x16; break; }
            case TypeKind.I16:
            case TypeKind.U16: { op = BinaryOp.NeVecI16x8; break; }
            case TypeKind.I32:
            case TypeKind.U32: { op = BinaryOp.NeVecI32x4; break; }
            case TypeKind.F32: { op = BinaryOp.NeVecF32x4; break; }
            case TypeKind.F64: { op = BinaryOp.NeVecF64x2; break; }
            case TypeKind.ISIZE:
            case TypeKind.USIZE: {
              if (!compiler.options.isWasm64) op = BinaryOp.NeVecI32x4;
              break;
            }
          }
          break;
        }
        case BuiltinSymbols.v128_lt: {
          switch (type.kind) {
            case TypeKind.I8:  { op = BinaryOp.LtSVecI8x16; break; }
            case TypeKind.U8:  { op = BinaryOp.LtUVecI8x16; break; }
            case TypeKind.I16: { op = BinaryOp.LtSVecI16x8; break; }
            case TypeKind.U16: { op = BinaryOp.LtUVecI16x8; break; }
            case TypeKind.I32: { op = BinaryOp.LtSVecI32x4; break; }
            case TypeKind.U32: { op = BinaryOp.LtUVecI32x4; break; }
            case TypeKind.F32: { op = BinaryOp.LtVecF32x4; break; }
            case TypeKind.F64: { op = BinaryOp.LtVecF64x2; break; }
            case TypeKind.ISIZE:
            case TypeKind.USIZE: {
              if (!compiler.options.isWasm64) {
                op = type.kind == TypeKind.ISIZE
                  ? BinaryOp.LtSVecI32x4
                  : BinaryOp.LtUVecI32x4;
              }
              break;
            }
          }
          break;
        }
        case BuiltinSymbols.v128_le: {
          switch (type.kind) {
            case TypeKind.I8:  { op = BinaryOp.LeSVecI8x16; break; }
            case TypeKind.U8:  { op = BinaryOp.LeUVecI8x16; break; }
            case TypeKind.I16: { op = BinaryOp.LeSVecI16x8; break; }
            case TypeKind.U16: { op = BinaryOp.LeUVecI16x8; break; }
            case TypeKind.I32: { op = BinaryOp.LeSVecI32x4; break; }
            case TypeKind.U32: { op = BinaryOp.LeUVecI32x4; break; }
            case TypeKind.F32: { op = BinaryOp.LeVecF32x4; break; }
            case TypeKind.F64: { op = BinaryOp.LeVecF64x2; break; }
            case TypeKind.ISIZE:
            case TypeKind.USIZE: {
              if (!compiler.options.isWasm64) {
                op = type.kind == TypeKind.ISIZE
                  ? BinaryOp.LeSVecI32x4
                  : BinaryOp.LeUVecI32x4;
              }
              break;
            }
          }
          break;
        }
        case BuiltinSymbols.v128_gt: {
          switch (type.kind) {
            case TypeKind.I8:  { op = BinaryOp.GtSVecI8x16; break; }
            case TypeKind.U8:  { op = BinaryOp.GtUVecI8x16; break; }
            case TypeKind.I16: { op = BinaryOp.GtSVecI16x8; break; }
            case TypeKind.U16: { op = BinaryOp.GtUVecI16x8; break; }
            case TypeKind.I32: { op = BinaryOp.GtSVecI32x4; break; }
            case TypeKind.U32: { op = BinaryOp.GtUVecI32x4; break; }
            case TypeKind.F32: { op = BinaryOp.GtVecF32x4; break; }
            case TypeKind.F64: { op = BinaryOp.GtVecF64x2; break; }
            case TypeKind.ISIZE:
            case TypeKind.USIZE: {
              if (!compiler.options.isWasm64) {
                op = type.kind == TypeKind.ISIZE
                  ? BinaryOp.GtSVecI32x4
                  : BinaryOp.GtUVecI32x4;
              }
              break;
            }
          }
          break;
        }
        case BuiltinSymbols.v128_ge: {
          switch (type.kind) {
            case TypeKind.I8:  { op = BinaryOp.GeSVecI8x16; break; }
            case TypeKind.U8:  { op = BinaryOp.GeUVecI8x16; break; }
            case TypeKind.I16: { op = BinaryOp.GeSVecI16x8; break; }
            case TypeKind.U16: { op = BinaryOp.GeUVecI16x8; break; }
            case TypeKind.I32: { op = BinaryOp.GeSVecI32x4; break; }
            case TypeKind.U32: { op = BinaryOp.GeUVecI32x4; break; }
            case TypeKind.F32: { op = BinaryOp.GeVecF32x4; break; }
            case TypeKind.F64: { op = BinaryOp.GeVecF64x2; break; }
            case TypeKind.ISIZE:
            case TypeKind.USIZE: {
              if (!compiler.options.isWasm64) {
                op = type.kind == TypeKind.ISIZE
                  ? BinaryOp.GeSVecI32x4
                  : BinaryOp.GeUVecI32x4;
              }
              break;
            }
          }
          break;
        }
      }
      if (op == -1) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.typeArgumentsRange
        );
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
      compiler.currentType = Type.v128;
      return module.binary(op, arg0, arg1);
    }
    case BuiltinSymbols.v128_neg: // any_unary<T!>(a: v128) -> v128
    case BuiltinSymbols.v128_abs:
    case BuiltinSymbols.v128_sqrt:
    case BuiltinSymbols.v128_convert:
    case BuiltinSymbols.v128_trunc: {
      if (!compiler.options.hasFeature(Feature.SIMD)) break;
      if (
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let type = typeArguments![0];
      if (type.is(TypeFlags.REFERENCE)) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.range
        );
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let op: UnaryOp = -1;
      switch (prototype.internalName) {
        case BuiltinSymbols.v128_neg: {
          switch (type.kind) {
            case TypeKind.I8:
            case TypeKind.U8:  { op = UnaryOp.NegVecI8x16; break; }
            case TypeKind.I16:
            case TypeKind.U16: { op = UnaryOp.NegVecI16x8; break; }
            case TypeKind.I32:
            case TypeKind.U32: { op = UnaryOp.NegVecI32x4; break; }
            case TypeKind.I64:
            case TypeKind.U64: { op = UnaryOp.NegVecI64x2; break; }
            case TypeKind.ISIZE:
            case TypeKind.USIZE: {
              op = compiler.options.isWasm64
                ? UnaryOp.NegVecI64x2
                : UnaryOp.NegVecI32x4;
              break;
            }
            case TypeKind.F32: { op = UnaryOp.NegVecF32x4; break; }
            case TypeKind.F64: { op = UnaryOp.NegVecF64x2; break; }
          }
          break;
        }
        case BuiltinSymbols.v128_abs: {
          switch (type.kind) {
            case TypeKind.F32: { op = UnaryOp.AbsVecF32x4; break; }
            case TypeKind.F64: { op = UnaryOp.AbsVecF64x2; break; }
          }
          break;
        }
        case BuiltinSymbols.v128_sqrt: {
          switch (type.kind) {
            case TypeKind.F32: { op = UnaryOp.SqrtVecF32x4; break; }
            case TypeKind.F64: { op = UnaryOp.SqrtVecF64x2; break; }
          }
          break;
        }
        case BuiltinSymbols.v128_convert: {
          switch (type.kind) {
            case TypeKind.I32: { op = UnaryOp.ConvertSVecI32x4ToVecF32x4; break; }
            case TypeKind.U32: { op = UnaryOp.ConvertUVecI32x4ToVecF32x4; break; }
            case TypeKind.I64: { op = UnaryOp.ConvertSVecI64x2ToVecF64x2; break; }
            case TypeKind.U64: { op = UnaryOp.ConvertUVecI64x2ToVecF64x2; break; }
          }
          break;
        }
        case BuiltinSymbols.v128_trunc: {
          switch (type.kind) {
            case TypeKind.I32: { op = UnaryOp.TruncSatSVecF32x4ToVecI32x4; break; }
            case TypeKind.U32: { op = UnaryOp.TruncSatUVecF32x4ToVecI32x4; break; }
            case TypeKind.I64: { op = UnaryOp.TruncSatSVecF64x2ToVecI64x2; break; }
            case TypeKind.U64: { op = UnaryOp.TruncSatUVecF64x2ToVecI64x2; break; }
          }
          break;
        }
      }
      if (op == -1) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.typeArgumentsRange
        );
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      compiler.currentType = Type.v128;
      return module.unary(op, arg0);
    }
    case BuiltinSymbols.v128_shl: // any_shift<T!>(a: v128, b: i32) -> v128
    case BuiltinSymbols.v128_shr: {
      if (!compiler.options.hasFeature(Feature.SIMD)) break;
      if (
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let type = typeArguments![0];
      if (type.is(TypeFlags.REFERENCE)) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.typeArgumentsRange
        );
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let op: SIMDShiftOp = -1;
      switch (prototype.internalName) {
        case BuiltinSymbols.v128_shl: {
          switch (type.kind) {
            case TypeKind.I8:
            case TypeKind.U8:  { op = SIMDShiftOp.ShlVecI8x16; break; }
            case TypeKind.I16:
            case TypeKind.U16: { op = SIMDShiftOp.ShlVecI16x8; break; }
            case TypeKind.I32:
            case TypeKind.U32: { op = SIMDShiftOp.ShlVecI32x4; break; }
            case TypeKind.I64:
            case TypeKind.U64: { op = SIMDShiftOp.ShlVecI64x2; break; }
            case TypeKind.ISIZE:
            case TypeKind.USIZE: {
              op = compiler.options.isWasm64
                ? SIMDShiftOp.ShlVecI64x2
                : SIMDShiftOp.ShlVecI32x4;
              break;
            }
          }
          break;
        }
        case BuiltinSymbols.v128_shr: {
          switch (type.kind) {
            case TypeKind.I8:  { op = SIMDShiftOp.ShrSVecI8x16; break; }
            case TypeKind.U8:  { op = SIMDShiftOp.ShrUVecI8x16; break; }
            case TypeKind.I16: { op = SIMDShiftOp.ShrSVecI16x8; break; }
            case TypeKind.U16: { op = SIMDShiftOp.ShrUVecI16x8; break; }
            case TypeKind.I32: { op = SIMDShiftOp.ShrSVecI32x4; break; }
            case TypeKind.U32: { op = SIMDShiftOp.ShrUVecI32x4; break; }
            case TypeKind.I64: { op = SIMDShiftOp.ShrSVecI64x2; break; }
            case TypeKind.U64: { op = SIMDShiftOp.ShrUVecI64x2; break; }
            case TypeKind.ISIZE: {
              op = compiler.options.isWasm64
                ? SIMDShiftOp.ShrSVecI64x2
                : SIMDShiftOp.ShrSVecI32x4;
              break;
            }
            case TypeKind.USIZE: {
              op = compiler.options.isWasm64
                ? SIMDShiftOp.ShrUVecI64x2
                : SIMDShiftOp.ShrUVecI32x4;
              break;
            }
          }
          break;
        }
      }
      if (op == -1) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.range
        );
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.compileExpression(operands[1], Type.i32, Constraints.CONV_IMPLICIT);
      compiler.currentType = Type.v128;
      return module.simd_shift(op, arg0, arg1);
    }
    case BuiltinSymbols.v128_and: // any_bitwise_binary(a: v128, b: v128) -> v128
    case BuiltinSymbols.v128_or:
    case BuiltinSymbols.v128_xor: {
      if (!compiler.options.hasFeature(Feature.SIMD)) break;
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let op: BinaryOp = -1;
      switch (prototype.internalName) {
        default: assert(false);
        case BuiltinSymbols.v128_and: { op = BinaryOp.AndVec128; break; }
        case BuiltinSymbols.v128_or:  { op = BinaryOp.OrVec128; break; }
        case BuiltinSymbols.v128_xor: { op = BinaryOp.XorVec128; break; }
      }
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
      return module.binary(op, arg0, arg1);
    }
    case BuiltinSymbols.v128_not: { // any_bitwise_unary(a: v128) -> v128
      if (!compiler.options.hasFeature(Feature.SIMD)) break;
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      return module.unary(UnaryOp.NotVec128, arg0);
    }
    case BuiltinSymbols.v128_bitselect: { // bitselect(v1: v128, v2: v128, c: v128) -> v128
      if (!compiler.options.hasFeature(Feature.SIMD)) break;
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 3, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
      let arg2 = compiler.compileExpression(operands[2], Type.v128, Constraints.CONV_IMPLICIT);
      return module.simd_bitselect(arg0, arg1, arg2);
    }
    case BuiltinSymbols.v128_any_true: // any_test<T!>(a: v128) -> bool
    case BuiltinSymbols.v128_all_true: {
      if (!compiler.options.hasFeature(Feature.SIMD)) break;
      if (
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = Type.bool;
        return module.unreachable();
      }
      let type = typeArguments![0];
      if (type.is(TypeFlags.REFERENCE)) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.typeArgumentsRange
        );
        return module.unreachable();
      }
      let op: UnaryOp = -1;
      switch (prototype.internalName) {
        default: assert(false);
        case BuiltinSymbols.v128_any_true: {
          switch (type.kind) {
            case TypeKind.I8:
            case TypeKind.U8:  { op = UnaryOp.AnyTrueVecI8x16; break; }
            case TypeKind.I16:
            case TypeKind.U16: { op = UnaryOp.AnyTrueVecI16x8; break; }
            case TypeKind.I32:
            case TypeKind.U32: { op = UnaryOp.AnyTrueVecI32x4; break; }
            case TypeKind.I64:
            case TypeKind.U64: { op = UnaryOp.AnyTrueVecI64x2; break; }
            case TypeKind.ISIZE:
            case TypeKind.USIZE: {
              op = compiler.options.isWasm64
                ? UnaryOp.AnyTrueVecI64x2
                : UnaryOp.AnyTrueVecI32x4;
              break;
            }
          }
          break;
        }
        case BuiltinSymbols.v128_all_true: {
          switch (type.kind) {
            case TypeKind.I8:
            case TypeKind.U8:  { op = UnaryOp.AllTrueVecI8x16; break; }
            case TypeKind.I16:
            case TypeKind.U16: { op = UnaryOp.AllTrueVecI16x8; break; }
            case TypeKind.I32:
            case TypeKind.U32: { op = UnaryOp.AllTrueVecI32x4; break; }
            case TypeKind.I64:
            case TypeKind.U64: { op = UnaryOp.AllTrueVecI64x2; break; }
            case TypeKind.ISIZE:
            case TypeKind.USIZE: {
              op = compiler.options.isWasm64
                ? UnaryOp.AllTrueVecI64x2
                : UnaryOp.AllTrueVecI32x4;
              break;
            }
          }
          break;
        }
      }
      if (op == -1) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.typeArgumentsRange
        );
        compiler.currentType = Type.bool;
        return module.unreachable();
      }
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      compiler.currentType = Type.bool;
      return module.unary(op, arg0);
    }

    // === Internal runtime =======================================================================

    case BuiltinSymbols.idof: {
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.u32;
      if (!type) return module.unreachable();
      let signatureReference = type.signatureReference;
      if (type.is(TypeFlags.REFERENCE) && signatureReference !== null) {
        return module.i32(signatureReference.id);
      }

      let classReference = type.classReference;
      if (!classReference || classReference.hasDecorator(DecoratorFlags.UNMANAGED)) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.range
        );
        return module.unreachable();
      }
      return module.i32(classReference.id);
    }
    case BuiltinSymbols.visit_globals: {
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 1, reportNode, compiler) // cookie
      ) {
        compiler.currentType = Type.void;
        return module.unreachable();
      }
      let arg0 = compiler.compileExpression(operands[0], Type.u32, Constraints.CONV_IMPLICIT);
      compiler.runtimeFeatures |= RuntimeFeatures.visitGlobals;
      compiler.currentType = Type.void;
      return module.call(BuiltinSymbols.visit_globals, [ arg0 ], NativeType.None);
    }
    case BuiltinSymbols.visit_members: {
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 2, reportNode, compiler) // ref, cookie
      ) {
        compiler.currentType = Type.void;
        return module.unreachable();
      }
      let arg0 = compiler.compileExpression(operands[0], compiler.options.usizeType, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.compileExpression(operands[1], Type.u32, Constraints.CONV_IMPLICIT);
      compiler.runtimeFeatures |= RuntimeFeatures.visitMembers;
      compiler.currentType = Type.void;
      return module.call(BuiltinSymbols.visit_members, [ arg0, arg1 ], NativeType.None);
    }
  }

  // try to defer inline asm to a concrete built-in
  {
    let expr = tryDeferASM(compiler, prototype, operands, reportNode);
    if (expr) {
      if (typeArguments) {
        compiler.error(
          DiagnosticCode.Type_0_is_not_generic,
          reportNode.typeArgumentsRange, prototype.internalName
        );
      }
      return expr;
    }
  }
  compiler.error(
    DiagnosticCode.Cannot_find_name_0,
    reportNode.expression.range, prototype.internalName
  );
  return module.unreachable();
}

/** Tries to defer an inline-assembler-like call to a built-in function. */
function tryDeferASM(
  compiler: Compiler,
  prototype: FunctionPrototype,
  operands: Expression[],
  reportNode: CallExpression
): ExpressionRef {
  /* tslint:disable:max-line-length */
  switch (prototype.internalName) {

    // TODO: Operators can't be just deferred (don't have a corresponding generic built-in)
    //   add, sub, mul, div_s, div_u, rem_s, rem_u
    //   and, or, xor, shl, shr_u, shr_s
    //   eq, eqz, ne, lt_s, lt_u, le_s, le_u, gt_s, gt_u, ge_s, ge_u

    case BuiltinSymbols.i32_clz: return deferASM(BuiltinSymbols.clz, compiler, Type.i32, operands, Type.i32, reportNode);
    case BuiltinSymbols.i64_clz: return deferASM(BuiltinSymbols.clz, compiler, Type.i64, operands, Type.i64, reportNode);
    case BuiltinSymbols.i32_ctz: return deferASM(BuiltinSymbols.ctz, compiler, Type.i32, operands, Type.i32, reportNode);
    case BuiltinSymbols.i64_ctz: return deferASM(BuiltinSymbols.ctz, compiler, Type.i64, operands, Type.i64, reportNode);
    case BuiltinSymbols.i32_popcnt: return deferASM(BuiltinSymbols.popcnt, compiler, Type.i32, operands, Type.i32, reportNode);
    case BuiltinSymbols.i64_popcnt: return deferASM(BuiltinSymbols.popcnt, compiler, Type.i64, operands, Type.i64, reportNode);
    case BuiltinSymbols.i32_rotl: return deferASM(BuiltinSymbols.rotl, compiler, Type.i32, operands, Type.i32, reportNode);
    case BuiltinSymbols.i64_rotl: return deferASM(BuiltinSymbols.rotl, compiler, Type.i64, operands, Type.i64, reportNode);
    case BuiltinSymbols.i32_rotr: return deferASM(BuiltinSymbols.rotr, compiler, Type.i32, operands, Type.i32, reportNode);
    case BuiltinSymbols.i64_rotr: return deferASM(BuiltinSymbols.rotr, compiler, Type.i64, operands, Type.i64, reportNode);
    case BuiltinSymbols.f32_abs: return deferASM(BuiltinSymbols.abs, compiler, Type.f32, operands, Type.f32, reportNode);
    case BuiltinSymbols.f64_abs: return deferASM(BuiltinSymbols.abs, compiler, Type.f64, operands, Type.f64, reportNode);
    case BuiltinSymbols.f32_max: return deferASM(BuiltinSymbols.max, compiler, Type.f32, operands, Type.f32, reportNode);
    case BuiltinSymbols.f64_max: return deferASM(BuiltinSymbols.max, compiler, Type.f64, operands, Type.f64, reportNode);
    case BuiltinSymbols.f32_min: return deferASM(BuiltinSymbols.min, compiler, Type.f32, operands, Type.f32, reportNode);
    case BuiltinSymbols.f64_min: return deferASM(BuiltinSymbols.min, compiler, Type.f64, operands, Type.f64, reportNode);
    case BuiltinSymbols.f32_ceil: return deferASM(BuiltinSymbols.ceil, compiler, Type.f32, operands, Type.f32, reportNode);
    case BuiltinSymbols.f64_ceil: return deferASM(BuiltinSymbols.ceil, compiler, Type.f64, operands, Type.f64, reportNode);
    case BuiltinSymbols.f32_floor: return deferASM(BuiltinSymbols.floor, compiler, Type.f32, operands, Type.f32, reportNode);
    case BuiltinSymbols.f64_floor: return deferASM(BuiltinSymbols.floor, compiler, Type.f64, operands, Type.f64, reportNode);
    case BuiltinSymbols.f32_copysign: return deferASM(BuiltinSymbols.copysign, compiler, Type.f32, operands, Type.f32, reportNode);
    case BuiltinSymbols.f64_copysign: return deferASM(BuiltinSymbols.copysign, compiler, Type.f64, operands, Type.f64, reportNode);
    case BuiltinSymbols.f32_nearest: return deferASM(BuiltinSymbols.nearest, compiler, Type.f32, operands, Type.f32, reportNode);
    case BuiltinSymbols.f64_nearest: return deferASM(BuiltinSymbols.nearest, compiler, Type.f64, operands, Type.f64, reportNode);
    case BuiltinSymbols.i32_reinterpret_f32: return deferASM(BuiltinSymbols.reinterpret, compiler, Type.i32, operands, Type.f32, reportNode);
    case BuiltinSymbols.i64_reinterpret_f64: return deferASM(BuiltinSymbols.reinterpret, compiler, Type.i64, operands, Type.f64, reportNode);
    case BuiltinSymbols.f32_reinterpret_i32: return deferASM(BuiltinSymbols.reinterpret, compiler, Type.f32, operands, Type.i32, reportNode);
    case BuiltinSymbols.f64_reinterpret_i64: return deferASM(BuiltinSymbols.reinterpret, compiler, Type.f64, operands, Type.i64, reportNode);
    case BuiltinSymbols.f32_sqrt: return deferASM(BuiltinSymbols.sqrt, compiler, Type.f32, operands, Type.f32, reportNode);
    case BuiltinSymbols.f64_sqrt: return deferASM(BuiltinSymbols.sqrt, compiler, Type.f64, operands, Type.f64, reportNode);
    case BuiltinSymbols.f32_trunc: return deferASM(BuiltinSymbols.trunc, compiler, Type.f32, operands, Type.f32, reportNode);
    case BuiltinSymbols.f64_trunc: return deferASM(BuiltinSymbols.trunc, compiler, Type.f64, operands, Type.f64, reportNode);
    case BuiltinSymbols.i32_load8_s: return deferASM(BuiltinSymbols.load, compiler, Type.i8, operands, Type.i32, reportNode);
    case BuiltinSymbols.i32_load8_u: return deferASM(BuiltinSymbols.load, compiler, Type.u8, operands, Type.i32, reportNode);
    case BuiltinSymbols.i32_load16_s: return deferASM(BuiltinSymbols.load, compiler, Type.i16, operands, Type.i32, reportNode);
    case BuiltinSymbols.i32_load16_u: return deferASM(BuiltinSymbols.load, compiler, Type.u16, operands, Type.i32, reportNode);
    case BuiltinSymbols.i32_load: return deferASM(BuiltinSymbols.load, compiler, Type.i32, operands, Type.i32, reportNode);
    case BuiltinSymbols.i64_load8_s: return deferASM(BuiltinSymbols.load, compiler, Type.i8, operands, Type.i64, reportNode);
    case BuiltinSymbols.i64_load8_u: return deferASM(BuiltinSymbols.load, compiler, Type.u8, operands, Type.i64, reportNode);
    case BuiltinSymbols.i64_load16_s: return deferASM(BuiltinSymbols.load, compiler, Type.i16, operands, Type.i64, reportNode);
    case BuiltinSymbols.i64_load16_u: return deferASM(BuiltinSymbols.load, compiler, Type.u16, operands, Type.i64, reportNode);
    case BuiltinSymbols.i64_load32_s: return deferASM(BuiltinSymbols.load, compiler, Type.i32, operands, Type.i64, reportNode);
    case BuiltinSymbols.i64_load32_u: return deferASM(BuiltinSymbols.load, compiler, Type.u32, operands, Type.i64, reportNode);
    case BuiltinSymbols.i64_load: return deferASM(BuiltinSymbols.load, compiler, Type.i64, operands, Type.i64, reportNode);
    case BuiltinSymbols.f32_load: return deferASM(BuiltinSymbols.load, compiler, Type.f32, operands, Type.f32, reportNode);
    case BuiltinSymbols.f64_load: return deferASM(BuiltinSymbols.load, compiler, Type.f64, operands, Type.f64, reportNode);
    case BuiltinSymbols.i32_store8: return deferASM(BuiltinSymbols.store, compiler, Type.i8, operands, Type.i32, reportNode);
    case BuiltinSymbols.i32_store16: return deferASM(BuiltinSymbols.store, compiler, Type.i16, operands, Type.i32, reportNode);
    case BuiltinSymbols.i32_store: return deferASM(BuiltinSymbols.store, compiler, Type.i32, operands, Type.i32, reportNode);
    case BuiltinSymbols.i64_store8: return deferASM(BuiltinSymbols.store, compiler, Type.i8, operands, Type.i64, reportNode);
    case BuiltinSymbols.i64_store16: return deferASM(BuiltinSymbols.store, compiler, Type.i16, operands, Type.i64, reportNode);
    case BuiltinSymbols.i64_store32: return deferASM(BuiltinSymbols.store, compiler, Type.i32, operands, Type.i64, reportNode);
    case BuiltinSymbols.i64_store: return deferASM(BuiltinSymbols.store, compiler, Type.i64, operands, Type.i64, reportNode);
    case BuiltinSymbols.f32_store: return deferASM(BuiltinSymbols.store, compiler, Type.f32, operands, Type.f32, reportNode);
    case BuiltinSymbols.f64_store: return deferASM(BuiltinSymbols.store, compiler, Type.f64, operands, Type.f64, reportNode);
  }
  if (compiler.options.hasFeature(Feature.THREADS)) {
    switch (prototype.internalName) {

      case BuiltinSymbols.i32_atomic_load8_u: return deferASM(BuiltinSymbols.atomic_load, compiler, Type.u8, operands, Type.i32, reportNode);
      case BuiltinSymbols.i32_atomic_load16_u: return deferASM(BuiltinSymbols.atomic_load, compiler, Type.u16, operands, Type.i32, reportNode);
      case BuiltinSymbols.i32_atomic_load: return deferASM(BuiltinSymbols.atomic_load, compiler, Type.i32, operands, Type.i32, reportNode);
      case BuiltinSymbols.i64_atomic_load8_u: return deferASM(BuiltinSymbols.atomic_load, compiler, Type.u8, operands, Type.i64, reportNode);
      case BuiltinSymbols.i64_atomic_load16_u: return deferASM(BuiltinSymbols.atomic_load, compiler, Type.u16, operands, Type.i64, reportNode);
      case BuiltinSymbols.i64_atomic_load32_u: return deferASM(BuiltinSymbols.atomic_load, compiler, Type.u32, operands, Type.i64, reportNode);
      case BuiltinSymbols.i64_atomic_load: return deferASM(BuiltinSymbols.atomic_load, compiler, Type.i64, operands, Type.i64, reportNode);

      case BuiltinSymbols.i32_atomic_store8: return deferASM(BuiltinSymbols.atomic_store, compiler, Type.u8, operands, Type.i32, reportNode);
      case BuiltinSymbols.i32_atomic_store16: return deferASM(BuiltinSymbols.atomic_store, compiler, Type.u16, operands, Type.i32, reportNode);
      case BuiltinSymbols.i32_atomic_store: return deferASM(BuiltinSymbols.atomic_store, compiler, Type.i32, operands, Type.i32, reportNode);
      case BuiltinSymbols.i64_atomic_store8: return deferASM(BuiltinSymbols.atomic_store, compiler, Type.u8, operands, Type.i64, reportNode);
      case BuiltinSymbols.i64_atomic_store16: return deferASM(BuiltinSymbols.atomic_store, compiler, Type.u16, operands, Type.i64, reportNode);
      case BuiltinSymbols.i64_atomic_store32: return deferASM(BuiltinSymbols.atomic_store, compiler, Type.u32, operands, Type.i64, reportNode);
      case BuiltinSymbols.i64_atomic_store: return deferASM(BuiltinSymbols.atomic_store, compiler, Type.i64, operands, Type.i64, reportNode);

      case BuiltinSymbols.i32_atomic_rmw8_add_u: return deferASM(BuiltinSymbols.atomic_add, compiler, Type.u8, operands, Type.i32, reportNode);
      case BuiltinSymbols.i32_atomic_rmw16_add_u: return deferASM(BuiltinSymbols.atomic_add, compiler, Type.u16, operands, Type.i32, reportNode);
      case BuiltinSymbols.i32_atomic_rmw_add: return deferASM(BuiltinSymbols.atomic_add, compiler, Type.i32, operands, Type.i32, reportNode);
      case BuiltinSymbols.i64_atomic_rmw8_add_u: return deferASM(BuiltinSymbols.atomic_add, compiler, Type.u8, operands, Type.i64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw16_add_u: return deferASM(BuiltinSymbols.atomic_add, compiler, Type.u16, operands, Type.i64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw32_add_u: return deferASM(BuiltinSymbols.atomic_add, compiler, Type.u32, operands, Type.i64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw_add: return deferASM(BuiltinSymbols.atomic_add, compiler, Type.i64, operands, Type.i64, reportNode);

      case BuiltinSymbols.i32_atomic_rmw8_sub_u: return deferASM(BuiltinSymbols.atomic_sub, compiler, Type.u8, operands, Type.i32, reportNode);
      case BuiltinSymbols.i32_atomic_rmw16_sub_u: return deferASM(BuiltinSymbols.atomic_sub, compiler, Type.u16, operands, Type.i32, reportNode);
      case BuiltinSymbols.i32_atomic_rmw_sub: return deferASM(BuiltinSymbols.atomic_sub, compiler, Type.i32, operands, Type.i32, reportNode);
      case BuiltinSymbols.i64_atomic_rmw8_sub_u: return deferASM(BuiltinSymbols.atomic_sub, compiler, Type.u8, operands, Type.i64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw16_sub_u: return deferASM(BuiltinSymbols.atomic_sub, compiler, Type.u16, operands, Type.i64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw32_sub_u: return deferASM(BuiltinSymbols.atomic_sub, compiler, Type.u32, operands, Type.i64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw_sub: return deferASM(BuiltinSymbols.atomic_sub, compiler, Type.i64, operands, Type.i64, reportNode);

      case BuiltinSymbols.i32_atomic_rmw8_and_u: return deferASM(BuiltinSymbols.atomic_and, compiler, Type.u8, operands, Type.i32, reportNode);
      case BuiltinSymbols.i32_atomic_rmw16_and_u: return deferASM(BuiltinSymbols.atomic_and, compiler, Type.u16, operands, Type.i32, reportNode);
      case BuiltinSymbols.i32_atomic_rmw_and: return deferASM(BuiltinSymbols.atomic_and, compiler, Type.i32, operands, Type.i32, reportNode);
      case BuiltinSymbols.i64_atomic_rmw8_and_u: return deferASM(BuiltinSymbols.atomic_and, compiler, Type.u8, operands, Type.i64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw16_and_u: return deferASM(BuiltinSymbols.atomic_and, compiler, Type.u16, operands, Type.i64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw32_and_u: return deferASM(BuiltinSymbols.atomic_and, compiler, Type.u32, operands, Type.i64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw_and: return deferASM(BuiltinSymbols.atomic_and, compiler, Type.i64, operands, Type.i64, reportNode);

      case BuiltinSymbols.i32_atomic_rmw8_or_u: return deferASM(BuiltinSymbols.atomic_or, compiler, Type.u8, operands, Type.i32, reportNode);
      case BuiltinSymbols.i32_atomic_rmw16_or_u: return deferASM(BuiltinSymbols.atomic_or, compiler, Type.u16, operands, Type.i32, reportNode);
      case BuiltinSymbols.i32_atomic_rmw_or: return deferASM(BuiltinSymbols.atomic_or, compiler, Type.i32, operands, Type.i32, reportNode);
      case BuiltinSymbols.i64_atomic_rmw8_or_u: return deferASM(BuiltinSymbols.atomic_or, compiler, Type.u8, operands, Type.i64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw16_or_u: return deferASM(BuiltinSymbols.atomic_or, compiler, Type.u16, operands, Type.i64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw32_or_u: return deferASM(BuiltinSymbols.atomic_or, compiler, Type.u32, operands, Type.i64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw_or: return deferASM(BuiltinSymbols.atomic_or, compiler, Type.i64, operands, Type.i64, reportNode);

      case BuiltinSymbols.i32_atomic_rmw8_u_xor: return deferASM(BuiltinSymbols.atomic_xor, compiler, Type.u8, operands, Type.i32, reportNode);
      case BuiltinSymbols.i32_atomic_rmw16_u_xor: return deferASM(BuiltinSymbols.atomic_xor, compiler, Type.u16, operands, Type.i32, reportNode);
      case BuiltinSymbols.i32_atomic_rmw_xor: return deferASM(BuiltinSymbols.atomic_xor, compiler, Type.i32, operands, Type.i32, reportNode);
      case BuiltinSymbols.i64_atomic_rmw8_xor_u: return deferASM(BuiltinSymbols.atomic_xor, compiler, Type.u8, operands, Type.i64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw16_xor_u: return deferASM(BuiltinSymbols.atomic_xor, compiler, Type.u16, operands, Type.i64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw32_xor_u: return deferASM(BuiltinSymbols.atomic_xor, compiler, Type.u32, operands, Type.i64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw_xor: return deferASM(BuiltinSymbols.atomic_xor, compiler, Type.i64, operands, Type.i64, reportNode);

      case BuiltinSymbols.i32_atomic_rmw8_xchg_u: return deferASM(BuiltinSymbols.atomic_xchg, compiler, Type.u8, operands, Type.i32, reportNode);
      case BuiltinSymbols.i32_atomic_rmw16_xchg_u: return deferASM(BuiltinSymbols.atomic_xchg, compiler, Type.u16, operands, Type.i32, reportNode);
      case BuiltinSymbols.i32_atomic_rmw_xchg: return deferASM(BuiltinSymbols.atomic_xchg, compiler, Type.i32, operands, Type.i32, reportNode);
      case BuiltinSymbols.i64_atomic_rmw8_xchg_u: return deferASM(BuiltinSymbols.atomic_xchg, compiler, Type.u8, operands, Type.i64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw16_xchg_u: return deferASM(BuiltinSymbols.atomic_xchg, compiler, Type.u16, operands, Type.i64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw32_xchg_u: return deferASM(BuiltinSymbols.atomic_xchg, compiler, Type.u32, operands, Type.i64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw_xchg: return deferASM(BuiltinSymbols.atomic_xchg, compiler, Type.i64, operands, Type.i64, reportNode);

      case BuiltinSymbols.i32_atomic_rmw8_cmpxchg_u: return deferASM(BuiltinSymbols.atomic_cmpxchg, compiler, Type.u8, operands, Type.i32, reportNode);
      case BuiltinSymbols.i32_atomic_rmw16_cmpxchg_u: return deferASM(BuiltinSymbols.atomic_cmpxchg, compiler, Type.u16, operands, Type.i32, reportNode);
      case BuiltinSymbols.i32_atomic_rmw_cmpxchg: return deferASM(BuiltinSymbols.atomic_cmpxchg, compiler, Type.i32, operands, Type.i32, reportNode);
      case BuiltinSymbols.i64_atomic_rmw8_cmpxchg_u: return deferASM(BuiltinSymbols.atomic_cmpxchg, compiler, Type.u8, operands, Type.i64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw16_cmpxchg_u: return deferASM(BuiltinSymbols.atomic_cmpxchg, compiler, Type.u16, operands, Type.i64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw32_cmpxchg_u: return deferASM(BuiltinSymbols.atomic_cmpxchg, compiler, Type.u32, operands, Type.i64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw_cmpxchg: return deferASM(BuiltinSymbols.atomic_cmpxchg, compiler, Type.i64, operands, Type.i64, reportNode);

      case BuiltinSymbols.i32_wait: return deferASM(BuiltinSymbols.atomic_wait, compiler, Type.i32, operands, Type.i32, reportNode);
      case BuiltinSymbols.i64_wait: return deferASM(BuiltinSymbols.atomic_wait, compiler, Type.i64, operands, Type.i32, reportNode);
    }
  }
  if (compiler.options.hasFeature(Feature.SIMD)) {
    switch (prototype.internalName) {

      case BuiltinSymbols.v128_load: return deferASM(BuiltinSymbols.load, compiler, Type.v128, operands, Type.v128, reportNode);
      case BuiltinSymbols.v128_store: return deferASM(BuiltinSymbols.store, compiler, Type.v128, operands, Type.void, reportNode);

      case BuiltinSymbols.i8x16_splat: return deferASM(BuiltinSymbols.v128_splat, compiler, Type.i8, operands, Type.v128, reportNode);
      case BuiltinSymbols.i8x16_extract_lane_s: return deferASM(BuiltinSymbols.v128_extract_lane, compiler, Type.i8, operands, Type.i8, reportNode);
      case BuiltinSymbols.i8x16_extract_lane_u: return deferASM(BuiltinSymbols.v128_extract_lane, compiler, Type.u8, operands, Type.u8, reportNode);
      case BuiltinSymbols.i8x16_replace_lane: return deferASM(BuiltinSymbols.v128_replace_lane, compiler, Type.i8, operands, Type.v128, reportNode);
      case BuiltinSymbols.i8x16_add: return deferASM(BuiltinSymbols.v128_add, compiler, Type.i8, operands, Type.v128, reportNode);
      case BuiltinSymbols.i8x16_sub: return deferASM(BuiltinSymbols.v128_sub, compiler, Type.i8, operands, Type.v128, reportNode);
      case BuiltinSymbols.i8x16_mul: return deferASM(BuiltinSymbols.v128_mul, compiler, Type.i8, operands, Type.v128, reportNode);
      case BuiltinSymbols.i8x16_neg: return deferASM(BuiltinSymbols.v128_neg, compiler, Type.i8, operands, Type.v128, reportNode);
      case BuiltinSymbols.i8x16_add_saturate_s: return deferASM(BuiltinSymbols.v128_add_saturate, compiler, Type.i8, operands, Type.v128, reportNode);
      case BuiltinSymbols.i8x16_add_saturate_u: return deferASM(BuiltinSymbols.v128_add_saturate, compiler, Type.u8, operands, Type.v128, reportNode);
      case BuiltinSymbols.i8x16_sub_saturate_s: return deferASM(BuiltinSymbols.v128_sub_saturate, compiler, Type.i8, operands, Type.v128, reportNode);
      case BuiltinSymbols.i8x16_sub_saturate_u: return deferASM(BuiltinSymbols.v128_sub_saturate, compiler, Type.u8, operands, Type.v128, reportNode);
      case BuiltinSymbols.i8x16_shl: return deferASM(BuiltinSymbols.v128_shl, compiler, Type.i8, operands, Type.v128, reportNode);
      case BuiltinSymbols.i8x16_shr_s: return deferASM(BuiltinSymbols.v128_shr, compiler, Type.i8, operands, Type.v128, reportNode);
      case BuiltinSymbols.i8x16_shr_u: return deferASM(BuiltinSymbols.v128_shr, compiler, Type.u8, operands, Type.v128, reportNode);
      case BuiltinSymbols.i8x16_any_true: return deferASM(BuiltinSymbols.v128_any_true, compiler, Type.i8, operands, Type.i32, reportNode);
      case BuiltinSymbols.i8x16_all_true: return deferASM(BuiltinSymbols.v128_all_true, compiler, Type.i8, operands, Type.i32, reportNode);
      case BuiltinSymbols.i8x16_eq: return deferASM(BuiltinSymbols.v128_eq, compiler, Type.i8, operands, Type.v128, reportNode);
      case BuiltinSymbols.i8x16_ne: return deferASM(BuiltinSymbols.v128_ne, compiler, Type.i8, operands, Type.v128, reportNode);
      case BuiltinSymbols.i8x16_lt_s: return deferASM(BuiltinSymbols.v128_lt, compiler, Type.i8, operands, Type.v128, reportNode);
      case BuiltinSymbols.i8x16_lt_u: return deferASM(BuiltinSymbols.v128_lt, compiler, Type.u8, operands, Type.v128, reportNode);
      case BuiltinSymbols.i8x16_le_s: return deferASM(BuiltinSymbols.v128_le, compiler, Type.i8, operands, Type.v128, reportNode);
      case BuiltinSymbols.i8x16_le_u: return deferASM(BuiltinSymbols.v128_le, compiler, Type.u8, operands, Type.v128, reportNode);
      case BuiltinSymbols.i8x16_gt_s: return deferASM(BuiltinSymbols.v128_gt, compiler, Type.i8, operands, Type.v128, reportNode);
      case BuiltinSymbols.i8x16_gt_u: return deferASM(BuiltinSymbols.v128_gt, compiler, Type.u8, operands, Type.v128, reportNode);
      case BuiltinSymbols.i8x16_ge_s: return deferASM(BuiltinSymbols.v128_ge, compiler, Type.i8, operands, Type.v128, reportNode);
      case BuiltinSymbols.i8x16_ge_u: return deferASM(BuiltinSymbols.v128_ge, compiler, Type.u8, operands, Type.v128, reportNode);

      case BuiltinSymbols.i16x8_splat: return deferASM(BuiltinSymbols.v128_splat, compiler, Type.i16, operands, Type.v128, reportNode);
      case BuiltinSymbols.i16x8_extract_lane_s: return deferASM(BuiltinSymbols.v128_extract_lane, compiler, Type.i16, operands, Type.i16, reportNode);
      case BuiltinSymbols.i16x8_extract_lane_u: return deferASM(BuiltinSymbols.v128_extract_lane, compiler, Type.u16, operands, Type.u16, reportNode);
      case BuiltinSymbols.i16x8_replace_lane: return deferASM(BuiltinSymbols.v128_replace_lane, compiler, Type.i16, operands, Type.v128, reportNode);
      case BuiltinSymbols.i16x8_add: return deferASM(BuiltinSymbols.v128_add, compiler, Type.i16, operands, Type.v128, reportNode);
      case BuiltinSymbols.i16x8_sub: return deferASM(BuiltinSymbols.v128_sub, compiler, Type.i16, operands, Type.v128, reportNode);
      case BuiltinSymbols.i16x8_mul: return deferASM(BuiltinSymbols.v128_mul, compiler, Type.i16, operands, Type.v128, reportNode);
      case BuiltinSymbols.i16x8_neg: return deferASM(BuiltinSymbols.v128_neg, compiler, Type.i16, operands, Type.v128, reportNode);
      case BuiltinSymbols.i16x8_add_saturate_s: return deferASM(BuiltinSymbols.v128_add_saturate, compiler, Type.i16, operands, Type.v128, reportNode);
      case BuiltinSymbols.i16x8_add_saturate_u: return deferASM(BuiltinSymbols.v128_add_saturate, compiler, Type.u16, operands, Type.v128, reportNode);
      case BuiltinSymbols.i16x8_sub_saturate_s: return deferASM(BuiltinSymbols.v128_sub_saturate, compiler, Type.i16, operands, Type.v128, reportNode);
      case BuiltinSymbols.i16x8_sub_saturate_u: return deferASM(BuiltinSymbols.v128_sub_saturate, compiler, Type.u16, operands, Type.v128, reportNode);
      case BuiltinSymbols.i16x8_shl: return deferASM(BuiltinSymbols.v128_shl, compiler, Type.i16, operands, Type.v128, reportNode);
      case BuiltinSymbols.i16x8_shr_s: return deferASM(BuiltinSymbols.v128_shr, compiler, Type.i16, operands, Type.v128, reportNode);
      case BuiltinSymbols.i16x8_shr_u: return deferASM(BuiltinSymbols.v128_shr, compiler, Type.u16, operands, Type.v128, reportNode);
      case BuiltinSymbols.i16x8_any_true: return deferASM(BuiltinSymbols.v128_any_true, compiler, Type.i16, operands, Type.i32, reportNode);
      case BuiltinSymbols.i16x8_all_true: return deferASM(BuiltinSymbols.v128_all_true, compiler, Type.i16, operands, Type.i32, reportNode);
      case BuiltinSymbols.i16x8_eq: return deferASM(BuiltinSymbols.v128_eq, compiler, Type.i16, operands, Type.v128, reportNode);
      case BuiltinSymbols.i16x8_ne: return deferASM(BuiltinSymbols.v128_ne, compiler, Type.i16, operands, Type.v128, reportNode);
      case BuiltinSymbols.i16x8_lt_s: return deferASM(BuiltinSymbols.v128_lt, compiler, Type.i16, operands, Type.v128, reportNode);
      case BuiltinSymbols.i16x8_lt_u: return deferASM(BuiltinSymbols.v128_lt, compiler, Type.u16, operands, Type.v128, reportNode);
      case BuiltinSymbols.i16x8_le_s: return deferASM(BuiltinSymbols.v128_le, compiler, Type.i16, operands, Type.v128, reportNode);
      case BuiltinSymbols.i16x8_le_u: return deferASM(BuiltinSymbols.v128_le, compiler, Type.u16, operands, Type.v128, reportNode);
      case BuiltinSymbols.i16x8_gt_s: return deferASM(BuiltinSymbols.v128_gt, compiler, Type.i16, operands, Type.v128, reportNode);
      case BuiltinSymbols.i16x8_gt_u: return deferASM(BuiltinSymbols.v128_gt, compiler, Type.u16, operands, Type.v128, reportNode);
      case BuiltinSymbols.i16x8_ge_s: return deferASM(BuiltinSymbols.v128_ge, compiler, Type.i16, operands, Type.v128, reportNode);
      case BuiltinSymbols.i16x8_ge_u: return deferASM(BuiltinSymbols.v128_ge, compiler, Type.u16, operands, Type.v128, reportNode);

      case BuiltinSymbols.i32x4_splat: return deferASM(BuiltinSymbols.v128_splat, compiler, Type.i32, operands, Type.v128, reportNode);
      case BuiltinSymbols.i32x4_extract_lane: return deferASM(BuiltinSymbols.v128_extract_lane, compiler, Type.i32, operands, Type.i32, reportNode);
      case BuiltinSymbols.i32x4_replace_lane: return deferASM(BuiltinSymbols.v128_replace_lane, compiler, Type.i32, operands, Type.v128, reportNode);
      case BuiltinSymbols.i32x4_add: return deferASM(BuiltinSymbols.v128_add, compiler, Type.i32, operands, Type.v128, reportNode);
      case BuiltinSymbols.i32x4_sub: return deferASM(BuiltinSymbols.v128_sub, compiler, Type.i32, operands, Type.v128, reportNode);
      case BuiltinSymbols.i32x4_mul: return deferASM(BuiltinSymbols.v128_mul, compiler, Type.i32, operands, Type.v128, reportNode);
      case BuiltinSymbols.i32x4_neg: return deferASM(BuiltinSymbols.v128_neg, compiler, Type.i32, operands, Type.v128, reportNode);
      case BuiltinSymbols.i32x4_shl: return deferASM(BuiltinSymbols.v128_shl, compiler, Type.i32, operands, Type.v128, reportNode);
      case BuiltinSymbols.i32x4_shr_s: return deferASM(BuiltinSymbols.v128_shr, compiler, Type.i32, operands, Type.v128, reportNode);
      case BuiltinSymbols.i32x4_shr_u: return deferASM(BuiltinSymbols.v128_shr, compiler, Type.u32, operands, Type.v128, reportNode);
      case BuiltinSymbols.i32x4_any_true: return deferASM(BuiltinSymbols.v128_any_true, compiler, Type.i32, operands, Type.i32, reportNode);
      case BuiltinSymbols.i32x4_all_true: return deferASM(BuiltinSymbols.v128_all_true, compiler, Type.i32, operands, Type.i32, reportNode);
      case BuiltinSymbols.i32x4_eq: return deferASM(BuiltinSymbols.v128_eq, compiler, Type.i32, operands, Type.v128, reportNode);
      case BuiltinSymbols.i32x4_ne: return deferASM(BuiltinSymbols.v128_ne, compiler, Type.i32, operands, Type.v128, reportNode);
      case BuiltinSymbols.i32x4_lt_s: return deferASM(BuiltinSymbols.v128_lt, compiler, Type.i32, operands, Type.v128, reportNode);
      case BuiltinSymbols.i32x4_lt_u: return deferASM(BuiltinSymbols.v128_lt, compiler, Type.u32, operands, Type.v128, reportNode);
      case BuiltinSymbols.i32x4_le_s: return deferASM(BuiltinSymbols.v128_le, compiler, Type.i32, operands, Type.v128, reportNode);
      case BuiltinSymbols.i32x4_le_u: return deferASM(BuiltinSymbols.v128_le, compiler, Type.u32, operands, Type.v128, reportNode);
      case BuiltinSymbols.i32x4_gt_s: return deferASM(BuiltinSymbols.v128_gt, compiler, Type.i32, operands, Type.v128, reportNode);
      case BuiltinSymbols.i32x4_gt_u: return deferASM(BuiltinSymbols.v128_gt, compiler, Type.u32, operands, Type.v128, reportNode);
      case BuiltinSymbols.i32x4_ge_s: return deferASM(BuiltinSymbols.v128_ge, compiler, Type.i32, operands, Type.v128, reportNode);
      case BuiltinSymbols.i32x4_ge_u: return deferASM(BuiltinSymbols.v128_ge, compiler, Type.u32, operands, Type.v128, reportNode);
      case BuiltinSymbols.i32x4_trunc_s_f32x4_sat: return deferASM(BuiltinSymbols.v128_trunc, compiler, Type.i32, operands, Type.v128, reportNode);
      case BuiltinSymbols.i32x4_trunc_u_f32x4_sat: return deferASM(BuiltinSymbols.v128_trunc, compiler, Type.u32, operands, Type.v128, reportNode);

      case BuiltinSymbols.i64x2_splat: return deferASM(BuiltinSymbols.v128_splat, compiler, Type.i64, operands, Type.v128, reportNode);
      case BuiltinSymbols.i64x2_extract_lane: return deferASM(BuiltinSymbols.v128_extract_lane, compiler, Type.i64, operands, Type.i64, reportNode);
      case BuiltinSymbols.i64x2_replace_lane: return deferASM(BuiltinSymbols.v128_replace_lane, compiler, Type.i64, operands, Type.v128, reportNode);
      case BuiltinSymbols.i64x2_add: return deferASM(BuiltinSymbols.v128_add, compiler, Type.i64, operands, Type.v128, reportNode);
      case BuiltinSymbols.i64x2_sub: return deferASM(BuiltinSymbols.v128_sub, compiler, Type.i64, operands, Type.v128, reportNode);
      case BuiltinSymbols.i64x2_neg: return deferASM(BuiltinSymbols.v128_neg, compiler, Type.i64, operands, Type.v128, reportNode);
      case BuiltinSymbols.i64x2_shl: return deferASM(BuiltinSymbols.v128_shl, compiler, Type.i64, operands, Type.v128, reportNode);
      case BuiltinSymbols.i64x2_shr_s: return deferASM(BuiltinSymbols.v128_shr, compiler, Type.i64, operands, Type.v128, reportNode);
      case BuiltinSymbols.i64x2_shr_u: return deferASM(BuiltinSymbols.v128_shr, compiler, Type.u64, operands, Type.v128, reportNode);
      case BuiltinSymbols.i64x2_any_true: return deferASM(BuiltinSymbols.v128_any_true, compiler, Type.i64, operands, Type.i32, reportNode);
      case BuiltinSymbols.i64x2_all_true: return deferASM(BuiltinSymbols.v128_all_true, compiler, Type.i64, operands, Type.i32, reportNode);
      case BuiltinSymbols.i64x2_trunc_s_f64x2_sat: return deferASM(BuiltinSymbols.v128_trunc, compiler, Type.i64, operands, Type.v128, reportNode);
      case BuiltinSymbols.i64x2_trunc_u_f64x2_sat: return deferASM(BuiltinSymbols.v128_trunc, compiler, Type.u64, operands, Type.v128, reportNode);

      case BuiltinSymbols.f32x4_splat: return deferASM(BuiltinSymbols.v128_splat, compiler, Type.f32, operands, Type.v128, reportNode);
      case BuiltinSymbols.f32x4_extract_lane: return deferASM(BuiltinSymbols.v128_extract_lane, compiler, Type.f32, operands, Type.f32, reportNode);
      case BuiltinSymbols.f32x4_replace_lane: return deferASM(BuiltinSymbols.v128_replace_lane, compiler, Type.f32, operands, Type.v128, reportNode);
      case BuiltinSymbols.f32x4_add: return deferASM(BuiltinSymbols.v128_add, compiler, Type.f32, operands, Type.v128, reportNode);
      case BuiltinSymbols.f32x4_sub: return deferASM(BuiltinSymbols.v128_sub, compiler, Type.f32, operands, Type.v128, reportNode);
      case BuiltinSymbols.f32x4_mul: return deferASM(BuiltinSymbols.v128_mul, compiler, Type.f32, operands, Type.v128, reportNode);
      case BuiltinSymbols.f32x4_div: return deferASM(BuiltinSymbols.v128_div, compiler, Type.f32, operands, Type.v128, reportNode);
      case BuiltinSymbols.f32x4_neg: return deferASM(BuiltinSymbols.v128_neg, compiler, Type.f32, operands, Type.v128, reportNode);
      case BuiltinSymbols.f32x4_min: return deferASM(BuiltinSymbols.v128_min, compiler, Type.f32, operands, Type.v128, reportNode);
      case BuiltinSymbols.f32x4_max: return deferASM(BuiltinSymbols.v128_max, compiler, Type.f32, operands, Type.v128, reportNode);
      case BuiltinSymbols.f32x4_abs: return deferASM(BuiltinSymbols.v128_abs, compiler, Type.f32, operands, Type.v128, reportNode);
      case BuiltinSymbols.f32x4_sqrt: return deferASM(BuiltinSymbols.v128_sqrt, compiler, Type.f32, operands, Type.v128, reportNode);
      case BuiltinSymbols.f32x4_eq: return deferASM(BuiltinSymbols.v128_eq, compiler, Type.f32, operands, Type.v128, reportNode);
      case BuiltinSymbols.f32x4_ne: return deferASM(BuiltinSymbols.v128_ne, compiler, Type.f32, operands, Type.v128, reportNode);
      case BuiltinSymbols.f32x4_lt: return deferASM(BuiltinSymbols.v128_lt, compiler, Type.f32, operands, Type.v128, reportNode);
      case BuiltinSymbols.f32x4_le: return deferASM(BuiltinSymbols.v128_le, compiler, Type.f32, operands, Type.v128, reportNode);
      case BuiltinSymbols.f32x4_gt: return deferASM(BuiltinSymbols.v128_gt, compiler, Type.f32, operands, Type.v128, reportNode);
      case BuiltinSymbols.f32x4_ge: return deferASM(BuiltinSymbols.v128_ge, compiler, Type.f32, operands, Type.v128, reportNode);
      case BuiltinSymbols.f32x4_convert_s_i32x4: return deferASM(BuiltinSymbols.v128_convert, compiler, Type.i32, operands, Type.v128, reportNode);
      case BuiltinSymbols.f32x4_convert_u_i32x4: return deferASM(BuiltinSymbols.v128_convert, compiler, Type.u32, operands, Type.v128, reportNode);

      case BuiltinSymbols.f64x2_splat: return deferASM(BuiltinSymbols.v128_splat, compiler, Type.f64, operands, Type.v128, reportNode);
      case BuiltinSymbols.f64x2_extract_lane: return deferASM(BuiltinSymbols.v128_extract_lane, compiler, Type.f64, operands, Type.f64, reportNode);
      case BuiltinSymbols.f64x2_replace_lane: return deferASM(BuiltinSymbols.v128_replace_lane, compiler, Type.f64, operands, Type.v128, reportNode);
      case BuiltinSymbols.f64x2_add: return deferASM(BuiltinSymbols.v128_add, compiler, Type.f64, operands, Type.v128, reportNode);
      case BuiltinSymbols.f64x2_sub: return deferASM(BuiltinSymbols.v128_sub, compiler, Type.f64, operands, Type.v128, reportNode);
      case BuiltinSymbols.f64x2_mul: return deferASM(BuiltinSymbols.v128_mul, compiler, Type.f64, operands, Type.v128, reportNode);
      case BuiltinSymbols.f64x2_div: return deferASM(BuiltinSymbols.v128_div, compiler, Type.f64, operands, Type.v128, reportNode);
      case BuiltinSymbols.f64x2_neg: return deferASM(BuiltinSymbols.v128_neg, compiler, Type.f64, operands, Type.v128, reportNode);
      case BuiltinSymbols.f64x2_min: return deferASM(BuiltinSymbols.v128_min, compiler, Type.f64, operands, Type.v128, reportNode);
      case BuiltinSymbols.f64x2_max: return deferASM(BuiltinSymbols.v128_max, compiler, Type.f64, operands, Type.v128, reportNode);
      case BuiltinSymbols.f64x2_abs: return deferASM(BuiltinSymbols.v128_abs, compiler, Type.f64, operands, Type.v128, reportNode);
      case BuiltinSymbols.f64x2_sqrt: return deferASM(BuiltinSymbols.v128_sqrt, compiler, Type.f64, operands, Type.v128, reportNode);
      case BuiltinSymbols.f64x2_eq: return deferASM(BuiltinSymbols.v128_eq, compiler, Type.f64, operands, Type.v128, reportNode);
      case BuiltinSymbols.f64x2_ne: return deferASM(BuiltinSymbols.v128_ne, compiler, Type.f64, operands, Type.v128, reportNode);
      case BuiltinSymbols.f64x2_lt: return deferASM(BuiltinSymbols.v128_lt, compiler, Type.f64, operands, Type.v128, reportNode);
      case BuiltinSymbols.f64x2_le: return deferASM(BuiltinSymbols.v128_le, compiler, Type.f64, operands, Type.v128, reportNode);
      case BuiltinSymbols.f64x2_gt: return deferASM(BuiltinSymbols.v128_gt, compiler, Type.f64, operands, Type.v128, reportNode);
      case BuiltinSymbols.f64x2_ge: return deferASM(BuiltinSymbols.v128_ge, compiler, Type.f64, operands, Type.v128, reportNode);
      case BuiltinSymbols.f64x2_convert_s_i64x2: return deferASM(BuiltinSymbols.v128_convert, compiler, Type.i64, operands, Type.v128, reportNode);
      case BuiltinSymbols.f64x2_convert_u_i64x2: return deferASM(BuiltinSymbols.v128_convert, compiler, Type.u64, operands, Type.v128, reportNode);

      case BuiltinSymbols.v8x16_shuffle: return deferASM(BuiltinSymbols.v128_shuffle, compiler, Type.i8, operands, Type.v128, reportNode);
    }
  }
  /* tslint:enable:max-line-length */
  return 0;
}

/** A helper for deferring inline-assembler-like calls to built-in functions. */
function deferASM(
  name: string,
  compiler: Compiler,
  typeArgument: Type,
  operands: Expression[],
  contextualType: Type,
  reportNode: CallExpression
): ExpressionRef {
  assert(compiler.program.elementsByName.has(name));
  var prototype = compiler.program.elementsByName.get(name)!;
  assert(prototype.kind == ElementKind.FUNCTION_PROTOTYPE);
  return compileCall(
    compiler,
    <FunctionPrototype>prototype,
    [ typeArgument ],
    operands,
    contextualType,
    reportNode,
    /* isAsm */ true
  );
}

/** Compiles an abort wired to the conditionally imported 'abort' function. */
export function compileAbort(
  compiler: Compiler,
  message: Expression | null,
  reportNode: Node
): ExpressionRef {
  var program = compiler.program;
  var module = compiler.module;

  var stringInstance = compiler.program.stringInstance;
  if (!stringInstance) return module.unreachable();

  var abortInstance = program.abortInstance;
  if (!(abortInstance && compiler.compileFunction(abortInstance))) return module.unreachable();

  var messageArg: ExpressionRef;
  if (message !== null) {
    // The message argument works much like an arm of an IF that does not become executed if the
    // assertion succeeds respectively is only being computed if the program actually crashes.
    // Hence, let's make it so that the autorelease is skipped at the end of the current block,
    // essentially ignoring the message GC-wise. Doesn't matter anyway on a crash.
    messageArg = compiler.compileExpression(message, stringInstance.type, Constraints.CONV_IMPLICIT | Constraints.WILL_RETAIN);
  } else {
    messageArg = stringInstance.type.toNativeZero(module);
  }

  var filenameArg = compiler.ensureStaticString(reportNode.range.source.normalizedPath);

  compiler.currentType = Type.void;
  return module.block(null, [
    module.call(
      abortInstance.internalName, [
        messageArg,
        filenameArg,
        module.i32(reportNode.range.line),
        module.i32(reportNode.range.column)
      ],
      NativeType.None
    ),
    module.unreachable()
  ]);
}

/** Compiles the `visit_globals` function. */
export function compileVisitGlobals(compiler: Compiler): void {
  var module = compiler.module;
  var exprs = new Array<ExpressionRef>();
  var typeRef = compiler.ensureFunctionType([ Type.u32 ], Type.void); // cookie
  var nativeSizeType = compiler.options.nativeSizeType;
  var visitInstance = assert(compiler.program.visitInstance);

  compiler.compileFunction(visitInstance);

  for (let element of compiler.program.elementsByName.values()) {
    if (element.kind != ElementKind.GLOBAL) continue;
    let global = <Global>element;
    let classReference = global.type.classReference;
    if (
      global.is(CommonFlags.COMPILED) &&
      classReference !== null &&
      !classReference.hasDecorator(DecoratorFlags.UNMANAGED)
    ) {
      if (global.is(CommonFlags.INLINED)) {
        let value = global.constantIntegerValue;
        if (i64_low(value) || i64_high(value)) {
          exprs.push(
            module.call(visitInstance.internalName, [
              compiler.options.isWasm64
                ? module.i64(i64_low(value), i64_high(value))
                : module.i32(i64_low(value))
            ], NativeType.None)
          );
        }
      } else {
        exprs.push(
          module.if(
            module.local_tee(1,
              module.global_get(global.internalName, nativeSizeType)
            ),
            module.call(visitInstance.internalName, [
              module.local_get(1, nativeSizeType), // tempRef != null
              module.local_get(0, NativeType.I32) // cookie
            ], NativeType.None)
          )
        );
      }
    }
  }
  module.addFunction(BuiltinSymbols.visit_globals, typeRef, [ nativeSizeType ],
    exprs.length
      ? module.block(null, exprs)
      : module.nop()
  );
}

/** Compiles the `visit_members` function. */
export function compileVisitMembers(compiler: Compiler): void {
  var program = compiler.program;
  var module = compiler.module;
  var usizeType = program.options.usizeType;
  var nativeSizeType = usizeType.toNativeType();
  var nativeSizeSize = usizeType.byteSize;
  var ftype = compiler.ensureFunctionType([ usizeType, Type.i32 ], Type.void); // ref, cookie
  var managedClasses = program.managedClasses;
  var visitInstance = assert(program.visitInstance);
  var blocks = new Array<RelooperBlockRef>();
  var relooper = Relooper.create(module);

  var outer = relooper.addBlockWithSwitch(
    module.nop(),
    module.load(nativeSizeSize, false,
      nativeSizeType == NativeType.I64
        ? module.binary(BinaryOp.SubI64,
            module.local_get(0, nativeSizeType),
            module.i64(8)
          )
        : module.binary(BinaryOp.SubI32,
            module.local_get(0, nativeSizeType),
            module.i32(8) // rtId is at -8
          ),
      NativeType.I32,
      0
    )
  );

  var lastId = 0;
  for (let [id, instance] of managedClasses) {
    assert(instance.type.isManaged);
    assert(id == lastId++);

    let visitImpl: Element | null;
    let code = new Array<ExpressionRef>();

    // if a library element, check if it implements a custom traversal function
    if (instance.isDeclaredInLibrary && (visitImpl = instance.lookupInSelf("__visit_impl"))) {
      assert(visitImpl.kind == ElementKind.FUNCTION_PROTOTYPE);
      let visitFunc = program.resolver.resolveFunction(<FunctionPrototype>visitImpl, null);
      if (!visitFunc || !compiler.compileFunction(visitFunc)) {
        code.push(
          module.unreachable()
        );
      } else {
        let visitSig = visitFunc.signature;
        assert(
          visitSig.parameterTypes.length == 1 &&
          visitSig.parameterTypes[0] == Type.u32 &&
          visitSig.returnType == Type.void &&
          visitSig.thisType == instance.type
        );
        code.push(
          module.call(visitFunc.internalName, [
            module.local_get(0, nativeSizeType), // ref
            module.local_get(1, NativeType.I32)  // cookie
          ], NativeType.None)
        );
      }

    // otherwise generate traversal logic for own fields
    } else {
      let members = instance.members;
      if (members) {
        for (let member of members.values()) {
          if (member.kind == ElementKind.FIELD) {
            if ((<Field>member).parent === instance) {
              let fieldType = (<Field>member).type;
              if (fieldType.isManaged) {
                let fieldOffset = (<Field>member).memoryOffset;
                assert(fieldOffset >= 0);
                code.push(
                  // if ($2 = value) FIELDCLASS~traverse($2)
                  module.if(
                    module.local_tee(2,
                      module.load(nativeSizeSize, false,
                        module.local_get(0, nativeSizeType),
                        nativeSizeType, fieldOffset
                      )
                    ),
                    module.call(visitInstance.internalName, [
                      module.local_get(2, nativeSizeType), // ref
                      module.local_get(1, NativeType.I32)  // cookie
                    ], NativeType.None)
                  )
                );
              }
            }
          }
        }
      }
    }
    if (!instance.base) code.push(module.return());
    let block = relooper.addBlock(
      flatten(module, code, NativeType.None)
    );
    relooper.addBranchForSwitch(outer, block, [ id ]);
    blocks.push(block);
  }
  for (let [id, instance] of managedClasses) {
    let base = instance.base;
    if (base) {
      relooper.addBranch(blocks[id], blocks[base.id]);
    }
  }
  blocks.push(
    relooper.addBlock(
      module.unreachable()
    )
  );
  relooper.addBranchForSwitch(outer, blocks[blocks.length - 1], []); // default
  compiler.compileFunction(visitInstance);
  module.addFunction(BuiltinSymbols.visit_members, ftype, [ nativeSizeType ], relooper.renderAndDispose(outer, 2));
}

function typeToRuntimeFlags(type: Type): TypeinfoFlags {
  var flags = TypeinfoFlags.VALUE_ALIGN_0 * (1 << type.alignLog2);
  if (type.is(TypeFlags.SIGNED)) flags |= TypeinfoFlags.VALUE_SIGNED;
  if (type.is(TypeFlags.FLOAT)) flags |= TypeinfoFlags.VALUE_FLOAT;
  if (type.is(TypeFlags.NULLABLE)) flags |= TypeinfoFlags.VALUE_NULLABLE;
  if (type.isManaged) flags |= TypeinfoFlags.VALUE_MANAGED;
  return flags / TypeinfoFlags.VALUE_ALIGN_0;
}

/** Compiles runtime type information for use by stdlib. */
export function compileRTTI(compiler: Compiler): void {
  var program = compiler.program;
  var module = compiler.module;
  var managedClasses = program.managedClasses;
  var count = managedClasses.size;
  var size = 4 + 8 * count;
  var data = new Uint8Array(size);
  writeI32(count, data, 0);
  var off = 4;
  var abvInstance = program.arrayBufferViewInstance;
  var abvPrototype = abvInstance.prototype;
  var arrayPrototype = program.arrayPrototype;
  var setPrototype = program.setPrototype;
  var mapPrototype = program.mapPrototype;
  var lastId = 0;
  for (let [id, instance] of managedClasses) {
    assert(id == lastId++);
    let flags: TypeinfoFlags = 0;
    if (instance.isAcyclic) flags |= TypeinfoFlags.ACYCLIC;
    if (instance !== abvInstance && instance.extends(abvPrototype)) {
      let valueType = instance.getArrayValueType();
      flags |= TypeinfoFlags.ARRAYBUFFERVIEW;
      if (instance.extends(arrayPrototype)) flags |= TypeinfoFlags.ARRAY;
      flags |= TypeinfoFlags.VALUE_ALIGN_0 * typeToRuntimeFlags(valueType);
    } else if (instance.extends(setPrototype)) {
      let typeArguments = assert(instance.getTypeArgumentsTo(setPrototype));
      assert(typeArguments.length == 1);
      flags |= TypeinfoFlags.SET;
      flags |= TypeinfoFlags.VALUE_ALIGN_0 * typeToRuntimeFlags(typeArguments[0]);
    } else if (instance.extends(mapPrototype)) {
      let typeArguments = assert(instance.getTypeArgumentsTo(mapPrototype));
      assert(typeArguments.length == 2);
      flags |= TypeinfoFlags.MAP;
      flags |= TypeinfoFlags.KEY_ALIGN_0 * typeToRuntimeFlags(typeArguments[0]);
      flags |= TypeinfoFlags.VALUE_ALIGN_0 * typeToRuntimeFlags(typeArguments[1]);
    }
    writeI32(flags, data, off); off += 4;
    instance.rttiFlags = flags;
    let base = instance.base;
    writeI32(base ? base.id : 0, data, off); off += 4;
  }
  assert(off == size);
  var usizeType = program.options.usizeType;
  var segment = compiler.addMemorySegment(data);
  if (usizeType.size == 8) {
    let offset = segment.offset;
    module.addGlobal(BuiltinSymbols.rtti_base, NativeType.I64, false, module.i64(i64_low(offset), i64_high(offset)));
  } else {
    module.addGlobal(BuiltinSymbols.rtti_base, NativeType.I32, false, module.i32(i64_low(segment.offset)));
  }
}

// Helpers

/** Evaluates the constant type of a type argument *or* expression. */
function evaluateConstantType(
  compiler: Compiler,
  typeArguments: Type[] | null,
  operands: Expression[],
  reportNode: CallExpression
): Type | null {
  if (operands.length == 0) { // requires type argument
    if (!typeArguments || typeArguments.length != 1) {
      compiler.error(
        DiagnosticCode.Expected_0_type_arguments_but_got_1,
        reportNode.typeArgumentsRange, "1", typeArguments ? typeArguments.length.toString(10) : "0"
      );
      return null;
    }
    return typeArguments[0];
  }
  if (operands.length == 1) { // optional type argument
    if (typeArguments !== null && typeArguments.length) {
      if (typeArguments.length > 1) {
        compiler.error(
          DiagnosticCode.Expected_0_type_arguments_but_got_1,
          reportNode.typeArgumentsRange, "1", typeArguments.length.toString(10)
        );
        return null;
      }
      compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT);
    } else {
      compiler.compileExpression(operands[0], Type.auto);
    }
    return compiler.currentType;
  }
  if (typeArguments && typeArguments.length > 1) {
    compiler.error(
      DiagnosticCode.Expected_0_type_arguments_but_got_1,
      reportNode.typeArgumentsRange, "1", typeArguments.length.toString(10)
    );
  }
  compiler.error(
    DiagnosticCode.Expected_0_arguments_but_got_1,
    reportNode.argumentsRange, "1", operands.length.toString(10)
  );
  return null;
}

/** Evaluates a compile-time constant immediate offset argument.*/
function evaluateImmediateOffset(expression: Expression, compiler: Compiler): i32 {
  var expr: ExpressionRef;
  var value: i32;
  if (compiler.options.isWasm64) {
    expr = compiler.precomputeExpression(expression, Type.usize64, Constraints.CONV_IMPLICIT);
    if (
      getExpressionId(expr) != ExpressionId.Const ||
      getExpressionType(expr) != NativeType.I64 ||
      getConstValueI64High(expr) != 0 ||
      (value = getConstValueI64Low(expr)) < 0
    ) {
      compiler.error(
        DiagnosticCode.Expression_must_be_a_compile_time_constant,
        expression.range
      );
      value = -1;
    }
  } else {
    expr = compiler.precomputeExpression(expression, Type.usize32, Constraints.CONV_IMPLICIT);
    if (
      getExpressionId(expr) != ExpressionId.Const ||
      getExpressionType(expr) != NativeType.I32 ||
      (value = getConstValueI32(expr)) < 0
    ) {
      compiler.error(
        DiagnosticCode.Expression_must_be_a_compile_time_constant,
        expression.range
      );
      value = -1;
    }
  }
  return value;
}

/** Checks a call with a single required type argument. Returns `1` on error. */
function checkTypeRequired(
  typeArguments: Type[] | null,
  reportNode: CallExpression,
  compiler: Compiler,
  setCurrentTypeOnError: bool = false
): i32 {
  if (typeArguments) {
    let numTypeArguments = typeArguments.length;
    if (numTypeArguments == 1) return 0;
    assert(numTypeArguments); // invalid if 0, must not be set at all instead
    if (setCurrentTypeOnError) compiler.currentType = typeArguments[0];
    compiler.error(
      DiagnosticCode.Expected_0_type_arguments_but_got_1,
      reportNode.typeArgumentsRange, "1", numTypeArguments.toString()
    );
  } else {
    compiler.error(
      DiagnosticCode.Expected_0_type_arguments_but_got_1,
      reportNode.range, "1", "0"
    );
  }
  return 1;
}

/** Checks a call with a single optional type argument. Returns `1` on error. */
function checkTypeOptional(
  typeArguments: Type[] | null,
  reportNode: CallExpression,
  compiler: Compiler,
  setCurrentTypeOnError: bool = false
): i32 {
  if (typeArguments) {
    let numTypeArguments = typeArguments.length;
    if (numTypeArguments == 1) return 0;
    assert(numTypeArguments); // invalid if 0, must not be set at all instead
    if (setCurrentTypeOnError) compiler.currentType = typeArguments[0];
    compiler.error(
      DiagnosticCode.Expected_0_type_arguments_but_got_1,
      reportNode.typeArgumentsRange, "1", numTypeArguments.toString()
    );
    return 1;
  }
  return 0;
}

/** Checks a call that is not generic. Returns `1` on error. */
function checkTypeAbsent(
  typeArguments: Type[] | null,
  reportNode: CallExpression,
  prototype: FunctionPrototype
): i32 {
  if (typeArguments) {
    prototype.program.error(
      DiagnosticCode.Type_0_is_not_generic,
      reportNode.typeArgumentsRange, prototype.internalName
    );
    return 1;
  }
  return 0;
}

/** Checks a call that requires a fixed number of arguments. Returns `1` on error. */
function checkArgsRequired(
  operands: Expression[],
  expected: i32,
  reportNode: CallExpression,
  compiler: Compiler
): i32 {
  if (operands.length != expected) {
    compiler.error(
      DiagnosticCode.Expected_0_arguments_but_got_1,
      reportNode.range, expected.toString(), operands.length.toString()
    );
    return 1;
  }
  return 0;
}

/** Checks a call that requires a variable number of arguments. Returns `1` on error. */
function checkArgsOptional(
  operands: Expression[],
  expectedMinimum: i32,
  expectedMaximum: i32,
  reportNode: CallExpression,
  compiler: Compiler
): i32 {
  var numOperands = operands.length;
  if (numOperands < expectedMinimum) {
    compiler.error(
      DiagnosticCode.Expected_at_least_0_arguments_but_got_1,
      reportNode.range, expectedMinimum.toString(), numOperands.toString()
    );
    return 1;
  } else if (numOperands > expectedMaximum) {
    compiler.error(
      DiagnosticCode.Expected_0_arguments_but_got_1,
      reportNode.range, expectedMaximum.toString(), numOperands.toString()
    );
    return 1;
  }
  return 0;
}
