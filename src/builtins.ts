/**
 * Built-in elements providing WebAssembly core functionality.
 * @module builtins
 *//***/

 import {
  Compiler,
  Constraints,
  RuntimeFeatures
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
  CallExpression,
  isNumericLiteral
} from "./ast";

import {
  Type,
  TypeKind,
  TypeFlags
} from "./types";

import {
  BinaryOp,
  UnaryOp,
  HostOp,
  AtomicRMWOp,
  SIMDExtractOp,
  SIMDReplaceOp,
  SIMDShiftOp,
  SIMDTernaryOp,
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
  RelooperBlockRef,
  SIMDLoadOp,
  getLocalGetIndex,
  hasSideEffects,
  createType
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
  featureToString,
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

/** Internal names of various compiler built-ins. */
export namespace BuiltinNames {

  // compiler-generated
  export const start = "~start";
  export const started = "~started";
  export const argumentsLength = "~argumentsLength";

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
  export const atomic_fence = "~lib/builtins/atomic.fence";

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
  export const i32_atomic_rmw8_xor_u = "~lib/builtins/i32.atomic.rmw8.xor_u";
  export const i32_atomic_rmw16_xor_u = "~lib/builtins/i32.atomic.rmw16.xor_u";
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
  export const v128_swizzle = "~lib/builtins/v128.swizzle";
  export const v128_load_splat = "~lib/builtins/v128.load_splat";
  export const v128_load_ext = "~lib/builtins/v128.load_ext";
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
  export const v128_andnot = "~lib/builtins/v128.andnot";
  export const v128_not = "~lib/builtins/v128.not";
  export const v128_bitselect = "~lib/builtins/v128.bitselect";
  export const v128_any_true = "~lib/builtins/v128.any_true";
  export const v128_all_true = "~lib/builtins/v128.all_true";
  export const v128_min = "~lib/builtins/v128.min";
  export const v128_max = "~lib/builtins/v128.max";
  export const v128_dot = "~lib/builtins/v128.dot";
  export const v128_avgr = "~lib/builtins/v128.avgr";
  export const v128_abs = "~lib/builtins/v128.abs";
  export const v128_sqrt = "~lib/builtins/v128.sqrt";
  export const v128_eq = "~lib/builtins/v128.eq";
  export const v128_ne = "~lib/builtins/v128.ne";
  export const v128_lt = "~lib/builtins/v128.lt";
  export const v128_le = "~lib/builtins/v128.le";
  export const v128_gt = "~lib/builtins/v128.gt";
  export const v128_ge = "~lib/builtins/v128.ge";
  export const v128_convert = "~lib/builtins/v128.convert";
  export const v128_trunc_sat = "~lib/builtins/v128.trunc_sat";
  export const v128_narrow = "~lib/builtins/v128.narrow";
  export const v128_widen_low = "~lib/builtins/v128.widen_low";
  export const v128_widen_high = "~lib/builtins/v128.widen_high";
  export const v128_qfma = "~lib/builtins/v128.qfma";
  export const v128_qfms = "~lib/builtins/v128.qfms";

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
  export const i8x16_min_s = "~lib/builtins/i8x16.min_s";
  export const i8x16_min_u = "~lib/builtins/i8x16.min_u";
  export const i8x16_max_s = "~lib/builtins/i8x16.max_s";
  export const i8x16_max_u = "~lib/builtins/i8x16.max_u";
  export const i8x16_avgr_u = "~lib/builtins/i8x16.avgr_u";
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
  export const i8x16_narrow_i16x8_s = "~lib/builtins/i8x16.narrow_i16x8_s";
  export const i8x16_narrow_i16x8_u = "~lib/builtins/i8x16.narrow_i16x8_u";

  export const i16x8_splat = "~lib/builtins/i16x8.splat";
  export const i16x8_extract_lane_s = "~lib/builtins/i16x8.extract_lane_s";
  export const i16x8_extract_lane_u = "~lib/builtins/i16x8.extract_lane_u";
  export const i16x8_replace_lane = "~lib/builtins/i16x8.replace_lane";
  export const i16x8_add = "~lib/builtins/i16x8.add";
  export const i16x8_sub = "~lib/builtins/i16x8.sub";
  export const i16x8_mul = "~lib/builtins/i16x8.mul";
  export const i16x8_min_s = "~lib/builtins/i16x8.min_s";
  export const i16x8_min_u = "~lib/builtins/i16x8.min_u";
  export const i16x8_max_s = "~lib/builtins/i16x8.max_s";
  export const i16x8_max_u = "~lib/builtins/i16x8.max_u";
  export const i16x8_avgr_u = "~lib/builtins/i16x8.avgr_u";
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
  export const i16x8_narrow_i32x4_s = "~lib/builtins/i16x8.narrow_i32x4_s";
  export const i16x8_narrow_i32x4_u = "~lib/builtins/i16x8.narrow_i32x4_u";
  export const i16x8_widen_low_i8x16_s = "~lib/builtins/i16x8.widen_low_i8x16_s";
  export const i16x8_widen_low_i8x16_u = "~lib/builtins/i16x8.widen_low_i8x16_u";
  export const i16x8_widen_high_i8x16_s = "~lib/builtins/i16x8.widen_high_i8x16_s";
  export const i16x8_widen_high_i8x16_u = "~lib/builtins/i16x8.widen_high_i8x16_u";
  export const i16x8_load8x8_s = "~lib/builtins/i16x8.load8x8_s";
  export const i16x8_load8x8_u = "~lib/builtins/i16x8.load8x8_u";

  export const i32x4_splat = "~lib/builtins/i32x4.splat";
  export const i32x4_extract_lane = "~lib/builtins/i32x4.extract_lane";
  export const i32x4_replace_lane = "~lib/builtins/i32x4.replace_lane";
  export const i32x4_add = "~lib/builtins/i32x4.add";
  export const i32x4_sub = "~lib/builtins/i32x4.sub";
  export const i32x4_mul = "~lib/builtins/i32x4.mul";
  export const i32x4_min_s = "~lib/builtins/i32x4.min_s";
  export const i32x4_min_u = "~lib/builtins/i32x4.min_u";
  export const i32x4_max_s = "~lib/builtins/i32x4.max_s";
  export const i32x4_max_u = "~lib/builtins/i32x4.max_u";
  export const i32x4_dot_i16x8_s = "~lib/builtins/i32x4.dot_i16x8_s";
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
  export const i32x4_trunc_sat_f32x4_s = "~lib/builtins/i32x4.trunc_sat_f32x4_s";
  export const i32x4_trunc_sat_f32x4_u = "~lib/builtins/i32x4.trunc_sat_f32x4_u";
  export const i32x4_widen_low_i16x8_s = "~lib/builtins/i32x4.widen_low_i16x8_s";
  export const i32x4_widen_low_i16x8_u = "~lib/builtins/i32x4.widen_low_i16x8_u";
  export const i32x4_widen_high_i16x8_s = "~lib/builtins/i32x4.widen_high_i16x8_s";
  export const i32x4_widen_high_i16x8_u = "~lib/builtins/i32x4.widen_high_i16x8_u";
  export const i32x4_load16x4_s = "~lib/builtins/i32x4.load16x4_s";
  export const i32x4_load16x4_u = "~lib/builtins/i32x4.load16x4_u";

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
  export const i64x2_trunc_sat_f64x2_s = "~lib/builtins/i64x2.trunc_sat_f64x2_s";
  export const i64x2_trunc_sat_f64x2_u = "~lib/builtins/i64x2.trunc_sat_f64x2_u";
  export const i64x2_load32x2_s = "~lib/builtins/i64x2.load32x2_s";
  export const i64x2_load32x2_u = "~lib/builtins/i64x2.load32x2_u";

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
  export const f32x4_convert_i32x4_s = "~lib/builtins/f32x4.convert_i32x4_s";
  export const f32x4_convert_i32x4_u = "~lib/builtins/f32x4.convert_i32x4_u";
  export const f32x4_qfma = "~lib/builtins/f32x4.qfma";
  export const f32x4_qfms = "~lib/builtins/f32x4.qfms";

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
  export const f64x2_convert_i64x2_s = "~lib/builtins/f64x2.convert_i64x2_s";
  export const f64x2_convert_i64x2_u = "~lib/builtins/f64x2.convert_i64x2_u";
  export const f64x2_qfma = "~lib/builtins/f64x2.qfma";
  export const f64x2_qfms = "~lib/builtins/f64x2.qfms";

  export const v8x16_shuffle = "~lib/builtins/v8x16.shuffle";
  export const v8x16_swizzle = "~lib/builtins/v8x16.swizzle";
  export const v8x16_load_splat = "~lib/builtins/v8x16.load_splat";
  export const v16x8_load_splat = "~lib/builtins/v16x8.load_splat";
  export const v32x4_load_splat = "~lib/builtins/v32x4.load_splat";
  export const v64x2_load_splat = "~lib/builtins/v64x2.load_splat";

  // internals
  export const heap_base = "~lib/heap/__heap_base";
  export const rtti_base = "~lib/rt/__rtti_base";
  export const visit_globals = "~lib/rt/__visit_globals";
  export const visit_members = "~lib/rt/__visit_members";

  // std/number.ts
  export const isNaN = "~lib/number/isNaN";
  export const isFinite = "~lib/number/isFinite";

  // std/diagnostics.ts
  export const ERROR = "~lib/diagnostics/ERROR";
  export const WARNING = "~lib/diagnostics/WARNING";
  export const INFO = "~lib/diagnostics/INFO";

  // std/memory.ts
  export const memory_size = "~lib/memory/memory.size";
  export const memory_grow = "~lib/memory/memory.grow";
  export const memory_copy = "~lib/memory/memory.copy";
  export const memory_fill = "~lib/memory/memory.fill";

  // std/typedarray.ts
  export const Int8Array = "~lib/typedarray/Int8Array";
  export const Uint8Array = "~lib/typedarray/Uint8Array";
  export const Uint8ClampedArray = "~lib/typedarray/Uint8ClampedArray";
  export const Int16Array = "~lib/typedarray/Int16Array";
  export const Uint16Array = "~lib/typedarray/Uint16Array";
  export const Int32Array = "~lib/typedarray/Int32Array";
  export const Uint32Array = "~lib/typedarray/Uint32Array";
  export const Int64Array = "~lib/typedarray/Int64Array";
  export const Uint64Array = "~lib/typedarray/Uint64Array";
  export const Float32Array = "~lib/typedarray/Float32Array";
  export const Float64Array = "~lib/typedarray/Float64Array";
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

  switch (prototype.internalName) {

    // === Static type evaluation =================================================================

    case BuiltinNames.isInteger: { // isInteger<T!>() / isInteger<T?>(value: T) -> bool
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.bool;
      if (!type) return module.unreachable();
      return type.is(TypeFlags.INTEGER) && !type.is(TypeFlags.REFERENCE)
        ? module.i32(1)
        : module.i32(0);
    }
    case BuiltinNames.isFloat: { // isFloat<T!>() / isFloat<T?>(value: T) -> bool
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.bool;
      if (!type) return module.unreachable();
      return type.is(TypeFlags.FLOAT)
        ? module.i32(1)
        : module.i32(0);
    }
    case BuiltinNames.isBoolean: { // isBoolean<T!>() / isBoolean<T?>(value: T) -> bool
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.bool;
      if (!type) return module.unreachable();
      return type == Type.bool
        ? module.i32(1)
        : module.i32(0);
    }
    case BuiltinNames.isSigned: { // isSigned<T!>() / isSigned<T?>(value: T) -> bool
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.bool;
      if (!type) return module.unreachable();
      return type.is(TypeFlags.SIGNED)
        ? module.i32(1)
        : module.i32(0);
    }
    case BuiltinNames.isReference: { // isReference<T!>() / isReference<T?>(value: T) -> bool
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.bool;
      if (!type) return module.unreachable();
      return type.is(TypeFlags.REFERENCE)
        ? module.i32(1)
        : module.i32(0);
    }
    case BuiltinNames.isString: { // isString<T!>() / isString<T?>(value: T) -> bool
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.bool;
      if (!type) return module.unreachable();
      if (type.is(TypeFlags.REFERENCE)) {
        let classReference = type.classReference;
        if (classReference) {
          let stringInstance = compiler.program.stringInstance;
          if (stringInstance && classReference.isAssignableTo(stringInstance)) return module.i32(1);
        }
      }
      return module.i32(0);
    }
    case BuiltinNames.isArray: { // isArray<T!>() / isArray<T?>(value: T) -> bool
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.bool;
      if (!type) return module.unreachable();
      if (type.is(TypeFlags.REFERENCE)) {
        let classReference = type.classReference;
        if (classReference) {
          return module.i32(classReference.prototype.extends(compiler.program.arrayPrototype) ? 1 : 0);
        }
      }
      return module.i32(0);
    }
    case BuiltinNames.isArrayLike: { // isArrayLike<T!>() / isArrayLike<T?>(value: T) -> bool
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.bool;
      if (!type) return module.unreachable();
      if (type.is(TypeFlags.REFERENCE)) {
        let classReference = type.classReference;
        if (classReference) {
          return module.i32(classReference.isArrayLike ? 1 : 0);
        }
      }
      return module.i32(0);
    }
    case BuiltinNames.isFunction: { // isFunction<T!> / isFunction<T?>(value: T) -> bool
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.bool;
      if (!type) return module.unreachable();
      return module.i32(type.signatureReference ? 1 : 0);
    }
    case BuiltinNames.isNullable: { // isNullable<T!> / isNullable<T?>(value: T) -> bool
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.bool;
      if (!type) return module.unreachable();
      return module.i32(type.is(TypeFlags.NULLABLE) ? 1 : 0);
    }
    case BuiltinNames.isDefined: { // isDefined(expression) -> bool
      compiler.currentType = Type.bool;
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) return module.unreachable();
      let element = compiler.resolver.lookupExpression(
        operands[0],
        compiler.currentFlow,
        Type.auto,
        ReportMode.SWALLOW
      );
      return module.i32(element ? 1 : 0);
    }
    case BuiltinNames.isConstant: { // isConstant(expression) -> bool
      compiler.currentType = Type.bool;
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) return module.unreachable();
      let expr = compiler.compileExpression(operands[0], Type.auto);
      compiler.currentType = Type.bool;
      return module.i32(getExpressionId(expr) == ExpressionId.Const ? 1 : 0);
    }
    case BuiltinNames.isManaged: { // isManaged<T!>() -> bool
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.bool;
      if (!type) return module.unreachable();
      return module.i32(type.isManaged ? 1 : 0);
    }
    case BuiltinNames.isVoid: { // isVoid<T!>() -> bool
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.bool;
      if (!type) return module.unreachable();
      return module.i32(type.kind == TypeKind.VOID ? 1 : 0);
    }
    case BuiltinNames.lengthof: { // lengthof<T!>() -> i32
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.i32;
      if (!type) return module.unreachable();
      let signatureReference = type.signatureReference;
      if (!signatureReference) {
        compiler.error(
          DiagnosticCode.Type_0_has_no_call_signatures,
          reportNode.range, type.toString()
        );
        return module.unreachable();
      }
      return module.i32(signatureReference.parameterTypes.length);
    }
    case BuiltinNames.sizeof: { // sizeof<T!>() -> usize
      compiler.currentType = compiler.options.usizeType;
      if (
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 0, reportNode, compiler)
      ) return module.unreachable();
      let type = typeArguments![0];
      let byteSize = type.byteSize;
      if (!byteSize) {
        compiler.error(
          DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
          reportNode.typeArgumentsRange, "sizeof", type.toString()
        );
        return module.unreachable();
      }
      if (compiler.options.isWasm64) {
        // implicitly wrap if contextual type is a 32-bit integer
        if (contextualType.is(TypeFlags.INTEGER) && contextualType.size <= 32) {
          compiler.currentType = Type.u32;
          return module.i32(byteSize);
        }
        return module.i64(byteSize, 0);
      } else {
        // implicitly extend if contextual type is a 64-bit integer
        if (contextualType.is(TypeFlags.INTEGER) && contextualType.size == 64) {
          compiler.currentType = Type.u64;
          return module.i64(byteSize, 0);
        }
        return module.i32(byteSize);
      }
    }
    case BuiltinNames.alignof: { // alignof<T!>() -> usize
      compiler.currentType = compiler.options.usizeType;
      if (
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 0, reportNode, compiler)
      ) return module.unreachable();
      let type = typeArguments![0];
      let byteSize = type.byteSize;
      if (!isPowerOf2(byteSize)) { // implies == 0
        compiler.error(
          DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
          reportNode.typeArgumentsRange, "alignof", type.toString()
        );
        return module.unreachable();
      }
      let alignLog2 = ctz<i32>(byteSize);
      if (compiler.options.isWasm64) {
        // implicitly wrap if contextual type is a 32-bit integer
        if (contextualType.is(TypeFlags.INTEGER) && contextualType.size <= 32) {
          compiler.currentType = Type.u32;
          return module.i32(alignLog2);
        }
        return module.i64(alignLog2, 0);
      } else {
        // implicitly extend if contextual type is a 64-bit integer
        if (contextualType.is(TypeFlags.INTEGER) && contextualType.size == 64) {
          compiler.currentType = Type.u64;
          return module.i64(alignLog2, 0);
        }
        return module.i32(alignLog2);
      }
    }
    case BuiltinNames.offsetof: { // offsetof<T!>(fieldName?: string) -> usize
      compiler.currentType = compiler.options.usizeType;
      if (
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsOptional(operands, 0, 1, reportNode, compiler)
      ) return module.unreachable();
      let type = typeArguments![0];
      let classType = type.classReference;
      if (!(type.is(TypeFlags.REFERENCE) && classType !== null)) {
        compiler.error(
          DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
          reportNode.typeArgumentsRange, "offsetof", type.toString()
        );
        if (compiler.options.isWasm64) {
          if (contextualType.is(TypeFlags.INTEGER) && contextualType.size <= 32) {
            compiler.currentType = Type.u32;
          }
        } else {
          if (contextualType.is(TypeFlags.INTEGER) && contextualType.size == 64) {
            compiler.currentType = Type.u64;
          }
        }
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
        offset = classType.nextMemoryOffset;
      }
      if (compiler.options.isWasm64) {
        // implicitly wrap if contextual type is a 32-bit integer
        if (contextualType.is(TypeFlags.INTEGER) && contextualType.size <= 32) {
          compiler.currentType = Type.u32;
          return module.i32(offset);
        }
        return module.i64(offset);
      } else {
        // implicitly extend if contextual type is a 64-bit integer
        if (contextualType.is(TypeFlags.INTEGER) && contextualType.size == 64) {
          compiler.currentType = Type.u64;
          return module.i64(offset);
        }
        return module.i32(offset);
      }
    }
    case BuiltinNames.nameof: {
      let resultType = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      if (!resultType) {
        compiler.currentType = compiler.program.stringInstance.type;
        return module.unreachable();
      }
      let value: string;
      if (resultType.is(TypeFlags.REFERENCE)) {
        let classReference = resultType.classReference;
        if (classReference) {
          value = classReference.name;
        } else {
          let signatureReference = resultType.signatureReference;
          if (signatureReference) {
            value = "Function";
          } else {
            value = "Anyref";
          }
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
          case TypeKind.ANYREF: { value = "anyref"; break; }
          default: assert(false);
          case TypeKind.VOID: { value = "void"; break; }
        }
      }
      return compiler.ensureStaticString(value);
    }

    // === Math ===================================================================================

    case BuiltinNames.clz: { // clz<T?>(value: T) -> T
      if (
        checkTypeOptional(typeArguments, reportNode, compiler, true) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) return module.unreachable();
      let arg0 = typeArguments
        ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT | Constraints.MUST_WRAP)
        : compiler.compileExpression(operands[0], Type.i32, Constraints.MUST_WRAP);
      let type = compiler.currentType;
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (type.kind) {
          case TypeKind.BOOL: // not wrapped
          case TypeKind.I8:
          case TypeKind.U8:
          case TypeKind.I16:
          case TypeKind.U16:
          case TypeKind.I32:
          case TypeKind.U32: return module.unary(UnaryOp.ClzI32, arg0);
          case TypeKind.USIZE:
          case TypeKind.ISIZE: {
            return module.unary(
              compiler.options.isWasm64
                ? UnaryOp.ClzI64
                : UnaryOp.ClzI32,
              arg0
            );
          }
          case TypeKind.I64:
          case TypeKind.U64: return module.unary(UnaryOp.ClzI64, arg0);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "clz", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.ctz: { // ctz<T?>(value: T) -> T
      if (
        checkTypeOptional(typeArguments, reportNode, compiler, true) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) return module.unreachable();
      let arg0 = typeArguments
        ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT | Constraints.MUST_WRAP)
        : compiler.compileExpression(operands[0], Type.i32, Constraints.MUST_WRAP);
      let type = compiler.currentType;
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (type.kind) {
          case TypeKind.BOOL: // not wrapped
          case TypeKind.I8:
          case TypeKind.U8:
          case TypeKind.I16:
          case TypeKind.U16:
          case TypeKind.I32:
          case TypeKind.U32: return module.unary(UnaryOp.CtzI32, arg0);
          case TypeKind.USIZE:
          case TypeKind.ISIZE: {
            return module.unary(
              compiler.options.isWasm64
                ? UnaryOp.CtzI64
                : UnaryOp.CtzI32,
              arg0
            );
          }
          case TypeKind.I64:
          case TypeKind.U64: return module.unary(UnaryOp.CtzI64, arg0);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "ctz", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.popcnt: { // popcnt<T?>(value: T) -> T
      if (
        checkTypeOptional(typeArguments, reportNode, compiler, true) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) return module.unreachable();
      let arg0 = typeArguments
        ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT | Constraints.MUST_WRAP)
        : compiler.compileExpression(operands[0], Type.i32, Constraints.MUST_WRAP);
      let type = compiler.currentType;
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (compiler.currentType.kind) {
          case TypeKind.BOOL: // not wrapped
          case TypeKind.I8:
          case TypeKind.U8:
          case TypeKind.I16:
          case TypeKind.U16:
          case TypeKind.I32:
          case TypeKind.U32: return module.unary(UnaryOp.PopcntI32, arg0);
          case TypeKind.I64:
          case TypeKind.U64: return module.unary(UnaryOp.PopcntI64, arg0);
          case TypeKind.ISIZE:
          case TypeKind.USIZE: {
            return module.unary(
              compiler.options.isWasm64
                ? UnaryOp.PopcntI64
                : UnaryOp.PopcntI32,
              arg0
            );
          }
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "popcnt", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.rotl: { // rotl<T?>(value: T, shift: T) -> T
      if (
        checkTypeOptional(typeArguments, reportNode, compiler, true) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) return module.unreachable();
      let arg0 = typeArguments
        ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT | Constraints.MUST_WRAP)
        : compiler.compileExpression(operands[0], Type.i32, Constraints.MUST_WRAP);
      let type = compiler.currentType;
      if (!type.is(TypeFlags.REFERENCE)) {
        let arg1 = compiler.compileExpression(operands[1], type, Constraints.CONV_IMPLICIT);
        switch (type.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL: {
            return compiler.ensureSmallIntegerWrap(
              module.binary(BinaryOp.RotlI32, arg0, arg1),
              type
            );
          }
          case TypeKind.I32:
          case TypeKind.U32: return module.binary(BinaryOp.RotlI32, arg0, arg1);
          case TypeKind.USIZE:
          case TypeKind.ISIZE: {
            return module.binary(
              compiler.options.isWasm64
                ? BinaryOp.RotlI64
                : BinaryOp.RotlI32,
              arg0, arg1
            );
          }
          case TypeKind.I64:
          case TypeKind.U64: return module.binary(BinaryOp.RotlI64, arg0, arg1);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "rotl", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.rotr: { // rotr<T?>(value: T, shift: T) -> T
      if (
        checkTypeOptional(typeArguments, reportNode, compiler, true) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) return module.unreachable();
      let arg0 = typeArguments
        ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT | Constraints.MUST_WRAP)
        : compiler.compileExpression(operands[0], Type.i32, Constraints.MUST_WRAP);
      let type = compiler.currentType;
      if (!type.is(TypeFlags.REFERENCE)) {
        let arg1 = compiler.compileExpression(operands[1], type, Constraints.CONV_IMPLICIT);
        switch (type.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL: {
            return compiler.ensureSmallIntegerWrap(
              module.binary(BinaryOp.RotrI32, arg0, arg1),
              type
            );
          }
          case TypeKind.I32:
          case TypeKind.U32: return module.binary(BinaryOp.RotrI32, arg0, arg1);
          case TypeKind.USIZE:
          case TypeKind.ISIZE: {
            return module.binary(
              compiler.options.isWasm64
                ? BinaryOp.RotrI64
                : BinaryOp.RotrI32,
              arg0, arg1
            );
          }
          case TypeKind.I64:
          case TypeKind.U64: return module.binary(BinaryOp.RotrI64, arg0, arg1);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "rotr", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.abs: { // abs<T?>(value: T) -> T
      if (
        checkTypeOptional(typeArguments, reportNode, compiler, true) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) return module.unreachable();
      let arg0 = typeArguments
        ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT | Constraints.MUST_WRAP)
        : compiler.compileExpression(operands[0], Type.auto, Constraints.MUST_WRAP);
      let type = compiler.currentType;
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (type.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32: {
            let flow = compiler.currentFlow;

            // possibly overflows, e.g. abs<i8>(-128) == 128
            let temp1 = flow.getTempLocal(Type.i32);
            let temp2 = flow.getTempLocal(Type.i32);
            // (x + (x >> 31)) ^ (x >> 31)
            let ret = module.binary(BinaryOp.XorI32,
              module.binary(BinaryOp.AddI32,
                module.local_tee(
                  temp2.index,
                  module.binary(BinaryOp.ShrI32,
                    module.local_tee(temp1.index, arg0),
                    module.i32(31)
                  )
                ),
                module.local_get(temp1.index, NativeType.I32)
              ),
              module.local_get(temp2.index, NativeType.I32)
            );
            flow.freeTempLocal(temp2);
            flow.freeTempLocal(temp1);
            return ret;
          }
          case TypeKind.ISIZE: {
            let options = compiler.options;
            let flow = compiler.currentFlow;
            let isWasm64 = options.isWasm64;

            let temp1 = flow.getTempLocal(options.usizeType);
            let temp2 = flow.getTempLocal(options.usizeType);
            let ret = module.binary(isWasm64 ? BinaryOp.XorI64 : BinaryOp.XorI32,
              module.binary(isWasm64 ? BinaryOp.AddI64 : BinaryOp.AddI32,
                module.local_tee(
                  temp2.index,
                  module.binary(isWasm64 ? BinaryOp.ShrI64 : BinaryOp.ShrI32,
                    module.local_tee(temp1.index, arg0),
                    isWasm64 ? module.i64(63) : module.i32(31)
                  )
                ),
                module.local_get(temp1.index, options.nativeSizeType)
              ),
              module.local_get(temp2.index, options.nativeSizeType)
            );
            flow.freeTempLocal(temp2);
            flow.freeTempLocal(temp1);
            return ret;
          }
          case TypeKind.I64: {
            let flow = compiler.currentFlow;

            let temp1 = flow.getTempLocal(Type.i64);
            let temp2 = flow.getTempLocal(Type.i64);
            // (x + (x >> 63)) ^ (x >> 63)
            let ret = module.binary(BinaryOp.XorI64,
              module.binary(BinaryOp.AddI64,
                module.local_tee(
                  temp2.index,
                  module.binary(BinaryOp.ShrI64,
                    module.local_tee(temp1.index, arg0),
                    module.i64(63)
                  )
                ),
                module.local_get(temp1.index, NativeType.I64)
              ),
              module.local_get(temp2.index, NativeType.I64)
            );
            flow.freeTempLocal(temp2);
            flow.freeTempLocal(temp1);
            return ret;
          }
          case TypeKind.USIZE:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.U64:
          case TypeKind.BOOL: return arg0;
          case TypeKind.F32: return module.unary(UnaryOp.AbsF32, arg0);
          case TypeKind.F64: return module.unary(UnaryOp.AbsF64, arg0);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "abs", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.max: { // max<T?>(left: T, right: T) -> T
      if (
        checkTypeOptional(typeArguments, reportNode, compiler, true) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) return module.unreachable();
      let left = operands[0];
      let arg0 = typeArguments
        ? compiler.compileExpression(left, typeArguments[0], Constraints.CONV_IMPLICIT | Constraints.MUST_WRAP)
        : compiler.compileExpression(operands[0], Type.auto, Constraints.MUST_WRAP);
      let type = compiler.currentType;
      if (!type.is(TypeFlags.REFERENCE)) {
        let arg1: ExpressionRef;
        if (!typeArguments && isNumericLiteral(left)) { // prefer right type
          arg1 = compiler.compileExpression(operands[1], type, Constraints.MUST_WRAP);
          if (compiler.currentType != type) {
            arg0 = compiler.compileExpression(left, type = compiler.currentType, Constraints.CONV_IMPLICIT | Constraints.MUST_WRAP);
          }
        } else {
          arg1 = compiler.compileExpression(operands[1], type, Constraints.CONV_IMPLICIT | Constraints.MUST_WRAP);
        }
        let op: BinaryOp = -1;
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
          case TypeKind.F32: return module.binary(BinaryOp.MaxF32, arg0, arg1);
          case TypeKind.F64: return module.binary(BinaryOp.MaxF64, arg0, arg1);
        }
        if (op != -1) {
          let flow = compiler.currentFlow;
          let nativeType = type.toNativeType();
          let temp1 = flow.getTempLocal(type);
          flow.setLocalFlag(temp1.index, LocalFlags.WRAPPED);
          let temp2 = flow.getTempLocal(type);
          flow.setLocalFlag(temp2.index, LocalFlags.WRAPPED);
          let ret = module.select(
            module.local_tee(temp1.index, arg0),
            module.local_tee(temp2.index, arg1),
            module.binary(op,
              module.local_get(temp1.index, nativeType),
              module.local_get(temp2.index, nativeType)
            )
          );
          flow.freeTempLocal(temp2);
          flow.freeTempLocal(temp1);
          return ret;
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "max", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.min: { // min<T?>(left: T, right: T) -> T
      if (
        checkTypeOptional(typeArguments, reportNode, compiler, true) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) return module.unreachable();
      let left = operands[0];
      let arg0 = typeArguments
        ? compiler.compileExpression(left, typeArguments[0], Constraints.CONV_IMPLICIT | Constraints.MUST_WRAP)
        : compiler.compileExpression(operands[0], Type.auto, Constraints.MUST_WRAP);
      let type = compiler.currentType;
      if (!type.is(TypeFlags.REFERENCE)) {
        let arg1: ExpressionRef;
        if (!typeArguments && isNumericLiteral(left)) { // prefer right type
          arg1 = compiler.compileExpression(operands[1], type, Constraints.MUST_WRAP);
          if (compiler.currentType != type) {
            arg0 = compiler.compileExpression(left, type = compiler.currentType, Constraints.CONV_IMPLICIT | Constraints.MUST_WRAP);
          }
        } else {
          arg1 = compiler.compileExpression(operands[1], type, Constraints.CONV_IMPLICIT | Constraints.MUST_WRAP);
        }
        let op: BinaryOp = -1;
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
          case TypeKind.F32: return module.binary(BinaryOp.MinF32, arg0, arg1);
          case TypeKind.F64: return module.binary(BinaryOp.MinF64, arg0, arg1);
        }
        if (op != -1) {
          let flow = compiler.currentFlow;
          let nativeType = type.toNativeType();
          let temp1 = flow.getTempLocal(type);
          flow.setLocalFlag(temp1.index, LocalFlags.WRAPPED);
          let temp2 = flow.getTempLocal(type);
          flow.setLocalFlag(temp2.index, LocalFlags.WRAPPED);
          let ret = module.select(
            module.local_tee(temp1.index, arg0),
            module.local_tee(temp2.index, arg1),
            module.binary(op,
              module.local_get(temp1.index, nativeType),
              module.local_get(temp2.index, nativeType)
            )
          );
          flow.freeTempLocal(temp2);
          flow.freeTempLocal(temp1);
          return ret;
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "min", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.ceil: { // ceil<T?>(value: T) -> T
      if (
        checkTypeOptional(typeArguments, reportNode, compiler, true) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) return module.unreachable();
      let arg0 = typeArguments
        ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT)
        : compiler.compileExpression(operands[0], Type.auto, Constraints.NONE);
      let type = compiler.currentType;
      if (!type.is(TypeFlags.REFERENCE)) {
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
          case TypeKind.F32: return module.unary(UnaryOp.CeilF32, arg0);
          case TypeKind.F64: return module.unary(UnaryOp.CeilF64, arg0);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "ceil", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.floor: { // floor<T?>(value: T) -> T
      if (
        checkTypeOptional(typeArguments, reportNode, compiler, true) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) return module.unreachable();
      let arg0 = typeArguments
        ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT)
        : compiler.compileExpression(operands[0], Type.auto, Constraints.NONE);
      let type = compiler.currentType;
      if (!type.is(TypeFlags.REFERENCE)) {
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
          case TypeKind.F32: return module.unary(UnaryOp.FloorF32, arg0);
          case TypeKind.F64: return module.unary(UnaryOp.FloorF64, arg0);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "floor", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.copysign: { // copysign<T?>(left: T, right: T) -> T
      if (
        checkTypeOptional(typeArguments, reportNode, compiler, true) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) return module.unreachable();
      let arg0 = typeArguments
        ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT)
        : compiler.compileExpression(operands[0], Type.f64, Constraints.NONE);
      let type = compiler.currentType;
      if (!type.is(TypeFlags.REFERENCE)) {
        let arg1 = compiler.compileExpression(operands[1], type, Constraints.CONV_IMPLICIT);
        switch (type.kind) {
          // TODO: does an integer version make sense?
          case TypeKind.F32: return module.binary(BinaryOp.CopysignF32, arg0, arg1);
          case TypeKind.F64: return module.binary(BinaryOp.CopysignF64, arg0, arg1);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "copysign", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.nearest: { // nearest<T?>(value: T) -> T
      if (
        checkTypeOptional(typeArguments, reportNode, compiler, true) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) return module.unreachable();
      let arg0 = typeArguments
        ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT)
        : compiler.compileExpression(operands[0], Type.auto, Constraints.NONE);
      let type = compiler.currentType;
      if (!type.is(TypeFlags.REFERENCE)) {
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
          case TypeKind.BOOL: return arg0;
          case TypeKind.F32: return module.unary(UnaryOp.NearestF32, arg0);
          case TypeKind.F64: return module.unary(UnaryOp.NearestF64, arg0);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "nearest", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.reinterpret: { // reinterpret<T!>(value: *) -> T
      if (
        checkTypeRequired(typeArguments, reportNode, compiler, true) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) return module.unreachable();
      let type = typeArguments![0];
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (type.kind) {
          case TypeKind.I32:
          case TypeKind.U32: {
            let arg0 = compiler.compileExpression(operands[0], Type.f32, Constraints.CONV_IMPLICIT);
            compiler.currentType = type;
            return module.unary(UnaryOp.ReinterpretF32, arg0);
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            let arg0 = compiler.compileExpression(operands[0], Type.f64, Constraints.CONV_IMPLICIT);
            compiler.currentType = type;
            return module.unary(UnaryOp.ReinterpretF64, arg0);
          }
          case TypeKind.ISIZE:
          case TypeKind.USIZE: {
            let arg0 = compiler.compileExpression(operands[0],
              compiler.options.isWasm64
                ? Type.f64
                : Type.f32,
              Constraints.CONV_IMPLICIT
            );
            compiler.currentType = type;
            return module.unary(
              compiler.options.isWasm64
                ? UnaryOp.ReinterpretF64
                : UnaryOp.ReinterpretF32,
              arg0
            );
          }
          case TypeKind.F32: {
            let arg0 = compiler.compileExpression(operands[0], Type.i32, Constraints.CONV_IMPLICIT);
            compiler.currentType = Type.f32;
            return module.unary(UnaryOp.ReinterpretI32, arg0);
          }
          case TypeKind.F64: {
            let arg0 = compiler.compileExpression(operands[0], Type.i64, Constraints.CONV_IMPLICIT);
            compiler.currentType = Type.f64;
            return module.unary(UnaryOp.ReinterpretI64, arg0);
          }
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "reinterpret", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.sqrt: { // sqrt<T?>(value: T) -> T
      if (
        checkTypeOptional(typeArguments, reportNode, compiler, true) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) return module.unreachable();
      let arg0 = typeArguments
        ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT)
        : compiler.compileExpression(operands[0], Type.f64, Constraints.NONE);
      let type = compiler.currentType;
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (type.kind) {
          // TODO: integer versions (that return f64 or convert)?
          case TypeKind.F32: return module.unary(UnaryOp.SqrtF32, arg0);
          case TypeKind.F64: return module.unary(UnaryOp.SqrtF64, arg0);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "sqrt", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.trunc: { // trunc<T?>(value: T) -> T
      if (
        checkTypeOptional(typeArguments, reportNode, compiler, true) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) return module.unreachable();
      let arg0 = typeArguments
        ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT)
        : compiler.compileExpression(operands[0], Type.auto, Constraints.NONE);
      let type = compiler.currentType;
      if (!type.is(TypeFlags.REFERENCE)) {
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
          case TypeKind.BOOL: return arg0; // considered truncated
          case TypeKind.F32: return module.unary(UnaryOp.TruncF32, arg0);
          case TypeKind.F64: return module.unary(UnaryOp.TruncF64, arg0);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "trunc", type.toString()
      );
      return module.unreachable();
    }

    // === Memory access ==========================================================================

    case BuiltinNames.load: { // load<T!>(offset: usize, immOffset?: usize, immAlign?: usize) -> T*
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
      let arg0 = compiler.compileExpression(operands[0], compiler.options.usizeType, Constraints.CONV_IMPLICIT);
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
    case BuiltinNames.store: { // store<T!>(offset: usize, value: T*, offset?: usize, align?: usize) -> void
      compiler.currentType = Type.void;
      if (
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsOptional(operands, 2, 4, reportNode, compiler)
      ) return module.unreachable();
      let type = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], compiler.options.usizeType, Constraints.CONV_IMPLICIT);
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

    case BuiltinNames.atomic_load: { // load<T!>(offset: usize, immOffset?: usize) -> T*
      if (
        checkFeatureEnabled(Feature.THREADS, reportNode, compiler) |
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
          DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
          reportNode.typeArgumentsRange, "atomic.load", type.toString()
        );
        compiler.currentType = outType;
        return module.unreachable();
      }
      let arg0 = compiler.compileExpression(operands[0], compiler.options.usizeType, Constraints.CONV_IMPLICIT);
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
    case BuiltinNames.atomic_store: { // store<T!>(offset: usize, value: T*, immOffset?: usize) -> void
      if (
        checkFeatureEnabled(Feature.THREADS, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsOptional(operands, 2, 3, reportNode, compiler)
      ) return module.unreachable();
      let type = typeArguments![0];
      if (!type.is(TypeFlags.INTEGER)) {
        compiler.error(
          DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
          reportNode.typeArgumentsRange, "atomic.store", type.toString()
        );
        compiler.currentType = Type.void;
        return module.unreachable();
      }
      let arg0 = compiler.compileExpression(operands[0], compiler.options.usizeType, Constraints.CONV_IMPLICIT);
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
    case BuiltinNames.atomic_add: // any_atomic_binary<T!>(ptr, value: T, immOffset?: usize) -> T
    case BuiltinNames.atomic_sub:
    case BuiltinNames.atomic_and:
    case BuiltinNames.atomic_or:
    case BuiltinNames.atomic_xor:
    case BuiltinNames.atomic_xchg: {
      if (
        checkFeatureEnabled(Feature.THREADS, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler, true) |
        checkArgsOptional(operands, 2, 3, reportNode, compiler)
      ) return module.unreachable();
      let type = typeArguments![0];
      if (!type.is(TypeFlags.INTEGER) || type.size < 8) {
        let opName: string;
        switch (prototype.internalName) {
          default: assert(false);
          case BuiltinNames.atomic_add: { opName = "atomic.add"; break; }
          case BuiltinNames.atomic_sub: { opName = "atomic.sub"; break; }
          case BuiltinNames.atomic_and: { opName = "atomic.and"; break; }
          case BuiltinNames.atomic_or: { opName = "atomic.or"; break; }
          case BuiltinNames.atomic_xor: { opName = "atomic.xor"; break; }
          case BuiltinNames.atomic_xchg: { opName = "atomic.xchg"; break; }
        }
        compiler.error(
          DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
          reportNode.typeArgumentsRange, opName, type.toString()
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
        case BuiltinNames.atomic_add:  { op = AtomicRMWOp.Add;  break; }
        case BuiltinNames.atomic_sub:  { op = AtomicRMWOp.Sub;  break; }
        case BuiltinNames.atomic_and:  { op = AtomicRMWOp.And;  break; }
        case BuiltinNames.atomic_or:   { op = AtomicRMWOp.Or;   break; }
        case BuiltinNames.atomic_xor:  { op = AtomicRMWOp.Xor;  break; }
        case BuiltinNames.atomic_xchg: { op = AtomicRMWOp.Xchg; break; }
      }
      compiler.currentType = inType;
      return module.atomic_rmw(op, type.byteSize, immOffset, arg0, arg1, inType.toNativeType());
    }
    case BuiltinNames.atomic_cmpxchg: { // cmpxchg<T!>(ptr: usize, expected: T, replacement: T, off?: usize) -> T
      if (
        checkFeatureEnabled(Feature.THREADS, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler, true) |
        checkArgsOptional(operands, 3, 4, reportNode, compiler)
      ) return module.unreachable();
      let type = typeArguments![0];
      if (!type.is(TypeFlags.INTEGER) || type.size < 8) {
        compiler.error(
          DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
          reportNode.typeArgumentsRange, "atomic.cmpxchg", type.toString()
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
      return module.atomic_cmpxchg(type.byteSize, immOffset, arg0, arg1, arg2, inType.toNativeType());
    }
    case BuiltinNames.atomic_wait: { // wait<T!>(ptr: usize, expected: T, timeout: i64) -> i32
      if (
        checkFeatureEnabled(Feature.THREADS, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 3, reportNode, compiler)
      ) {
        compiler.currentType = Type.i32;
        return module.unreachable();
      }
      let type = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], compiler.options.usizeType, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.compileExpression(operands[1], type, Constraints.CONV_IMPLICIT);
      let arg2 = compiler.compileExpression(operands[2], Type.i64, Constraints.CONV_IMPLICIT);
      compiler.currentType = Type.i32;
      switch (type.kind) {
        case TypeKind.I32:
        case TypeKind.I64:
        case TypeKind.ISIZE:
        case TypeKind.U32:
        case TypeKind.U64:
        case TypeKind.USIZE: return module.atomic_wait(arg0, arg1, arg2, type.toNativeType());
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "atomic.wait", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.atomic_notify: { // notify(ptr: usize, count: i32) -> i32
      if (
        checkFeatureEnabled(Feature.THREADS, reportNode, compiler) |
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) {
        compiler.currentType = Type.i32;
        return module.unreachable();
      }
      let arg0 = compiler.compileExpression(operands[0], compiler.options.usizeType, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.compileExpression(operands[1], Type.i32, Constraints.CONV_IMPLICIT);
      compiler.currentType = Type.i32;
      return module.atomic_notify(arg0, arg1);
    }
    case BuiltinNames.atomic_fence: { // fence() -> void
      compiler.currentType = Type.void;
      if (
        checkFeatureEnabled(Feature.THREADS, reportNode, compiler) |
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 0, reportNode, compiler)
      ) return module.unreachable();
      return module.atomic_fence();
    }

    // === Control flow ===========================================================================

    case BuiltinNames.select: { // select<T?>(ifTrue: T, ifFalse: T, condition: bool) -> T
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
          DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
          reportNode.typeArgumentsRange, "select", type.toString()
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
    case BuiltinNames.unreachable: { // unreachable() -> *
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

    case BuiltinNames.memory_size: { // memory.size() -> i32
      compiler.currentType = Type.i32;
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 0, reportNode, compiler)
      ) return module.unreachable();
      return module.host(HostOp.MemorySize);
    }
    case BuiltinNames.memory_grow: { // memory.grow(pages: i32) -> i32
      compiler.currentType = Type.i32;
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) return module.unreachable();
      return module.host(HostOp.MemoryGrow, null, [
        compiler.compileExpression(operands[0], Type.i32, Constraints.CONV_IMPLICIT)
      ]);
    }
    case BuiltinNames.memory_copy: { // memory.copy(dest: usize, src: usize: n: usize) -> void
      compiler.currentType = Type.void;
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 3, reportNode, compiler)
      ) return module.unreachable();
      if (!compiler.options.hasFeature(Feature.BULK_MEMORY)) {
        // use stdlib alternative if not supported
        let instance = compiler.resolver.resolveFunction(prototype, null); // reports
        compiler.currentType = Type.void;
        if (!instance || !compiler.compileFunction(instance, true)) return module.unreachable();
        return compiler.compileCallDirect(instance, operands, reportNode);
      }
      let usizeType = compiler.options.usizeType;
      let arg0 = compiler.compileExpression(operands[0], usizeType, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.compileExpression(operands[1], usizeType, Constraints.CONV_IMPLICIT);
      let arg2 = compiler.compileExpression(operands[2], usizeType, Constraints.CONV_IMPLICIT);
      compiler.currentType = Type.void;
      return module.memory_copy(arg0, arg1, arg2);
    }
    case BuiltinNames.memory_fill: { // memory.fill(dest: usize, value: u8, n: usize) -> void
      compiler.currentType = Type.void;
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 3, reportNode, compiler)
      ) return module.unreachable();
      if (!compiler.options.hasFeature(Feature.BULK_MEMORY)) {
        // use stdlib alternative if not supported
        let instance = compiler.resolver.resolveFunction(prototype, null); // reports
        compiler.currentType = Type.void;
        if (!instance || !compiler.compileFunction(instance, true)) return module.unreachable();
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

    case BuiltinNames.changetype: { // changetype<T!>(value: *) -> T
      if (
        checkTypeRequired(typeArguments, reportNode, compiler, true) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) return module.unreachable();
      let toType = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], Type.auto);
      let fromType = compiler.currentType;
      compiler.currentType = toType;
      if (!fromType.isChangeableTo(toType)) {
        compiler.error(
          DiagnosticCode.Type_0_cannot_be_changed_to_type_1,
          reportNode.range, fromType.toString(), toType.toString()
        );
        return module.unreachable();
      }
      return arg0;
    }
    case BuiltinNames.assert: { // assert<T?>(isTrueish: T, message?: string) -> T{!= null}
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
      let abort = compiler.makeAbort(operands.length == 2 ? operands[1] : null, reportNode);
      compiler.currentType = type.nonNullableType;
      if (contextualType == Type.void) { // simplify if dropped anyway
        compiler.currentType = Type.void;
        switch (type.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL: return module.if(module.unary(UnaryOp.EqzI32, arg0), abort);
          case TypeKind.I64:
          case TypeKind.U64: return module.if(module.unary(UnaryOp.EqzI64, arg0), abort);
          case TypeKind.ISIZE:
          case TypeKind.USIZE: {
            return module.if(
              module.unary(
                compiler.options.isWasm64
                  ? UnaryOp.EqzI64
                  : UnaryOp.EqzI32,
                arg0
              ),
              abort
            );
          }
          // TODO: also check for NaN in float assertions, as in `Boolean(NaN) -> false`?
          case TypeKind.F32: return module.if(module.binary(BinaryOp.EqF32, arg0, module.f32(0)), abort);
          case TypeKind.F64: return module.if(module.binary(BinaryOp.EqF64, arg0, module.f64(0)), abort);
        }
      } else {
        compiler.currentType = type.nonNullableType;
        let flow = compiler.currentFlow;
        switch (compiler.currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL: {
            let temp = flow.getTempLocal(type);
            flow.setLocalFlag(temp.index, LocalFlags.WRAPPED); // arg0 is wrapped
            let ret = module.if(
              module.local_tee(temp.index, arg0),
              module.local_get(temp.index, NativeType.I32),
              abort
            );
            flow.freeTempLocal(temp);
            return ret;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            let temp = flow.getTempLocal(Type.i64);
            let ret = module.if(
              module.unary(UnaryOp.EqzI64,
                module.local_tee(temp.index, arg0)
              ),
              abort,
              module.local_get(temp.index, NativeType.I64)
            );
            flow.freeTempLocal(temp);
            return ret;
          }
          case TypeKind.ISIZE:
          case TypeKind.USIZE: {
            let temp = flow.getTempLocal(compiler.options.usizeType);
            let ret = module.if(
              module.unary(
                compiler.options.isWasm64
                  ? UnaryOp.EqzI64
                  : UnaryOp.EqzI32,
                module.local_tee(temp.index, arg0)
              ),
              abort,
              module.local_get(temp.index, compiler.options.nativeSizeType)
            );
            flow.freeTempLocal(temp);
            return ret;
          }
          case TypeKind.F32: {
            let temp = flow.getTempLocal(Type.f32);
            let ret = module.if(
              module.binary(BinaryOp.EqF32,
                module.local_tee(temp.index, arg0),
                module.f32(0)
              ),
              abort,
              module.local_get(temp.index, NativeType.F32)
            );
            flow.freeTempLocal(temp);
            return ret;
          }
          case TypeKind.F64: {
            let temp = flow.getTempLocal(Type.f64);
            let ret = module.if(
              module.binary(BinaryOp.EqF64,
                module.local_tee(temp.index, arg0),
                module.f64(0)
              ),
              abort,
              module.local_get(temp.index, NativeType.F64)
            );
            flow.freeTempLocal(temp);
            return ret;
          }
        }
      }
      compiler.error(
        DiagnosticCode.Not_implemented,
        reportNode.typeArgumentsRange
      );
      return abort;
    }
    case BuiltinNames.unchecked: { // unchecked(expr: *) -> *
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) return module.unreachable();
      let flow = compiler.currentFlow;
      let alreadyUnchecked = flow.is(FlowFlags.UNCHECKED_CONTEXT);
      flow.set(FlowFlags.UNCHECKED_CONTEXT);
      // eliminate unnecessary tees by preferring contextualType(=void)
      let expr = compiler.compileExpression(operands[0], contextualType);
      if (!alreadyUnchecked) flow.unset(FlowFlags.UNCHECKED_CONTEXT);
      return expr;
    }
    case BuiltinNames.instantiate: { // instantiate<T!>(...args: *[]) -> T
      if (
        checkTypeRequired(typeArguments, reportNode, compiler, true)
      ) return module.unreachable();
      let typeArgument = typeArguments![0];
      let classInstance = typeArgument.classReference;
      if (!(typeArgument.is(TypeFlags.REFERENCE) && classInstance !== null)) {
        compiler.error(
          DiagnosticCode.This_expression_is_not_constructable,
          reportNode.expression.range
        );
        return module.unreachable();
      }
      compiler.currentType = classInstance.type;
      return compiler.compileInstantiate(classInstance, operands, Constraints.NONE, reportNode);
    }

    // === User-defined diagnostics ===============================================================

    case BuiltinNames.ERROR: {
      checkTypeAbsent(typeArguments, reportNode, prototype);
      compiler.error(
        DiagnosticCode.User_defined_0,
        reportNode.range, (operands.length ? operands[0] : reportNode).range.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.WARNING: {
      checkTypeAbsent(typeArguments, reportNode, prototype);
      compiler.warning(
        DiagnosticCode.User_defined_0,
        reportNode.range, (operands.length ? operands[0] : reportNode).range.toString()
      );
      return module.nop();
    }
    case BuiltinNames.INFO: {
      checkTypeAbsent(typeArguments, reportNode, prototype);
      compiler.info(
        DiagnosticCode.User_defined_0,
        reportNode.range, (operands.length ? operands[0] : reportNode).range.toString()
      );
      return module.nop();
    }

    // === Portable type conversions ==============================================================

    case BuiltinNames.i8: {
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = Type.i8;
        return module.unreachable();
      }
      return compiler.compileExpression(operands[0], Type.i8, Constraints.CONV_EXPLICIT);
    }
    case BuiltinNames.i16: {
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = Type.i16;
        return module.unreachable();
      }
      return compiler.compileExpression(operands[0], Type.i16, Constraints.CONV_EXPLICIT);
    }
    case BuiltinNames.i32: {
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = Type.i32;
        return module.unreachable();
      }
      return compiler.compileExpression(operands[0], Type.i32, Constraints.CONV_EXPLICIT);
    }
    case BuiltinNames.i64: {
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = Type.i64;
        return module.unreachable();
      }
      return compiler.compileExpression(operands[0], Type.i64, Constraints.CONV_EXPLICIT);
    }
    case BuiltinNames.isize: {
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
    case BuiltinNames.u8: {
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = Type.u8;
        return module.unreachable();
      }
      return compiler.compileExpression(operands[0], Type.u8, Constraints.CONV_EXPLICIT);
    }
    case BuiltinNames.u16: {
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = Type.u16;
        return module.unreachable();
      }
      return compiler.compileExpression(operands[0], Type.u16, Constraints.CONV_EXPLICIT);
    }
    case BuiltinNames.u32: {
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = Type.u32;
        return module.unreachable();
      }
      return compiler.compileExpression(operands[0], Type.u32, Constraints.CONV_EXPLICIT);
    }
    case BuiltinNames.u64: {
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = Type.u64;
        return module.unreachable();
      }
      return compiler.compileExpression(operands[0], Type.u64, Constraints.CONV_EXPLICIT);
    }
    case BuiltinNames.usize: {
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
    case BuiltinNames.bool: {
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = Type.bool;
        return module.unreachable();
      }
      return compiler.compileExpression(operands[0], Type.bool, Constraints.CONV_EXPLICIT);
    }
    case BuiltinNames.f32: {
      if (
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = Type.f32;
        return module.unreachable();
      }
      return compiler.compileExpression(operands[0], Type.f32, Constraints.CONV_EXPLICIT);
    }
    case BuiltinNames.f64: {
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

    case BuiltinNames.v128: // alias for now
    case BuiltinNames.i8x16: {
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
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
    case BuiltinNames.i16x8: {
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
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
    case BuiltinNames.i32x4: {
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
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
    case BuiltinNames.i64x2: {
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
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
    case BuiltinNames.f32x4: {
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
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
    case BuiltinNames.f64x2: {
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
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
    case BuiltinNames.v128_splat: { // splat<T!>(x: T) -> v128
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let type = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], type, Constraints.CONV_IMPLICIT);
      compiler.currentType = Type.v128;
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (type.kind) {
          case TypeKind.I8:
          case TypeKind.U8: return module.unary(UnaryOp.SplatI8x16, arg0);
          case TypeKind.I16:
          case TypeKind.U16: return module.unary(UnaryOp.SplatI16x8, arg0);
          case TypeKind.I32:
          case TypeKind.U32: return module.unary(UnaryOp.SplatI32x4, arg0);
          case TypeKind.I64:
          case TypeKind.U64: return module.unary(UnaryOp.SplatI64x2, arg0);
          case TypeKind.ISIZE:
          case TypeKind.USIZE: {
            return module.unary(
              compiler.options.isWasm64
                ? UnaryOp.SplatI64x2
                : UnaryOp.SplatI32x4,
              arg0
            );
          }
          case TypeKind.F32: return module.unary(UnaryOp.SplatF32x4, arg0);
          case TypeKind.F64: return module.unary(UnaryOp.SplatF64x2, arg0);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "v128.splat", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.v128_extract_lane: { // extract_lane<T!>(x: v128, idx: u8) -> T
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler, true) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) return module.unreachable();
      let type = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.precomputeExpression(operands[1], Type.u8, Constraints.CONV_IMPLICIT);
      compiler.currentType = type;
      let idx = 0;
      if (getExpressionId(arg1) == ExpressionId.Const) {
        assert(getExpressionType(arg1) == NativeType.I32);
        idx = getConstValueI32(arg1);
      } else {
        compiler.error(
          DiagnosticCode.Expression_must_be_a_compile_time_constant,
          operands[1].range
        );
      }
      if (!type.is(TypeFlags.REFERENCE)) {
        let maxIdx = (16 / assert(type.byteSize)) - 1;
        if (idx < 0 || idx > maxIdx) {
          compiler.error(
            DiagnosticCode._0_must_be_a_value_between_1_and_2_inclusive,
            operands[1].range, "Lane index", "0", maxIdx.toString()
          );
          idx = 0;
        }
        switch (type.kind) {
          case TypeKind.I8: return module.simd_extract(SIMDExtractOp.ExtractLaneI8x16, arg0, idx);
          case TypeKind.U8: return module.simd_extract(SIMDExtractOp.ExtractLaneU8x16, arg0, idx);
          case TypeKind.I16: return module.simd_extract(SIMDExtractOp.ExtractLaneI16x8, arg0, idx);
          case TypeKind.U16: return module.simd_extract(SIMDExtractOp.ExtractLaneU16x8, arg0, idx);
          case TypeKind.I32:
          case TypeKind.U32: return module.simd_extract(SIMDExtractOp.ExtractLaneI32x4, arg0, idx);
          case TypeKind.I64:
          case TypeKind.U64: return module.simd_extract(SIMDExtractOp.ExtractLaneI64x2, arg0, idx);
          case TypeKind.ISIZE:
          case TypeKind.USIZE: {
            return module.simd_extract(
              compiler.options.isWasm64
                ? SIMDExtractOp.ExtractLaneI64x2
                : SIMDExtractOp.ExtractLaneI32x4,
              arg0, idx
            );
          }
          case TypeKind.F32: return module.simd_extract(SIMDExtractOp.ExtractLaneF32x4, arg0, idx);
          case TypeKind.F64: return module.simd_extract(SIMDExtractOp.ExtractLaneF64x2, arg0, idx);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "v128.extract_lane", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.v128_replace_lane: { // replace_lane<T!>(x: v128, idx: u8, value: T) -> v128
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 3, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let type = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.precomputeExpression(operands[1], Type.u8, Constraints.CONV_IMPLICIT);
      let arg2 = compiler.compileExpression(operands[2], type, Constraints.CONV_IMPLICIT);
      compiler.currentType = Type.v128;
      let idx = 0;
      if (getExpressionId(arg1) == ExpressionId.Const) {
        assert(getExpressionType(arg1) == NativeType.I32);
        idx = getConstValueI32(arg1);
      } else {
        compiler.error(
          DiagnosticCode.Expression_must_be_a_compile_time_constant,
          operands[1].range
        );
      }
      if (!type.is(TypeFlags.REFERENCE)) {
        let maxIdx = (16 / assert(type.byteSize)) - 1;
        if (idx < 0 || idx > maxIdx) {
          compiler.error(
            DiagnosticCode._0_must_be_a_value_between_1_and_2_inclusive,
            operands[1].range, "Lane index", "0", maxIdx.toString()
          );
          idx = 0;
        }
        switch (type.kind) {
          case TypeKind.I8:
          case TypeKind.U8: return module.simd_replace(SIMDReplaceOp.ReplaceLaneI8x16, arg0, idx, arg2);
          case TypeKind.I16:
          case TypeKind.U16: return module.simd_replace(SIMDReplaceOp.ReplaceLaneI16x8, arg0, idx, arg2);
          case TypeKind.I32:
          case TypeKind.U32: return module.simd_replace(SIMDReplaceOp.ReplaceLaneI32x4, arg0, idx, arg2);
          case TypeKind.I64:
          case TypeKind.U64: return module.simd_replace(SIMDReplaceOp.ReplaceLaneI64x2, arg0, idx, arg2);
          case TypeKind.ISIZE:
          case TypeKind.USIZE: {
            return module.simd_replace(
              compiler.options.isWasm64
                ? SIMDReplaceOp.ReplaceLaneI64x2
                : SIMDReplaceOp.ReplaceLaneI32x4,
              arg0, idx, arg2
            );
          }
          case TypeKind.F32: return module.simd_replace(SIMDReplaceOp.ReplaceLaneF32x4, arg0, idx, arg2);
          case TypeKind.F64: return module.simd_replace(SIMDReplaceOp.ReplaceLaneF64x2, arg0, idx, arg2);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "v128.replace_lane", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.v128_shuffle: { // shuffle<T!>(a: v128, b: v128, ...lanes: u8[]) -> v128
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let type = typeArguments![0];
      if (!type.is(TypeFlags.REFERENCE)) {
        let laneWidth = type.byteSize;
        let laneCount = 16 / laneWidth;
        assert(isInteger(laneCount) && isPowerOf2(laneCount));
        if (
          checkArgsRequired(operands, 2 + laneCount, reportNode, compiler)
        ) {
          compiler.currentType = Type.v128;
          return module.unreachable();
        }
        let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
        let arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
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
          case TypeKind.F64: {
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
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "v128.shuffle", type.toString()
      );
      compiler.currentType = Type.v128;
      return module.unreachable();
    }
    case BuiltinNames.v128_swizzle: { // swizzle(a: v128, b: v128) -> v128
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
      return module.binary(BinaryOp.SwizzleV8x16, arg0, arg1);
    }
    case BuiltinNames.v128_load_splat: { // load_splat<T!>(ptr: usize, immOffset?: usize, immAlign?: usize) -> v128
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler, true) |
        checkArgsOptional(operands, 1, 3, reportNode, compiler)
      ) return module.unreachable();
      let type = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], compiler.options.usizeType, Constraints.CONV_IMPLICIT);
      let numOperands = operands.length;
      let immOffset = numOperands >= 2 ? evaluateImmediateOffset(operands[1], compiler) : 0; // reports
      if (immOffset < 0) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let immAlign: i32;
      let naturalAlign = type.byteSize;
      if (numOperands == 3) {
        immAlign = evaluateImmediateOffset(operands[2], compiler);
        if (immAlign < 0) {
          compiler.currentType = Type.v128;
          return module.unreachable();
        }
      } else {
        immAlign = naturalAlign;
      }
      compiler.currentType = Type.v128;
      if (!type.is(TypeFlags.REFERENCE)) {
        if (immAlign > naturalAlign) {
          compiler.error(
            DiagnosticCode._0_must_be_a_value_between_1_and_2_inclusive,
            operands[2].range, "Alignment", "0", naturalAlign.toString()
          );
          return module.unreachable();
        }
        if (!isPowerOf2(immAlign)) {
          compiler.error(
            DiagnosticCode._0_must_be_a_power_of_two,
            operands[2].range, "Alignment"
          );
          return module.unreachable();
        }
        switch (type.kind) {
          case TypeKind.I8:
          case TypeKind.U8: {
            return module.simd_load(SIMDLoadOp.LoadSplatV8x16, arg0, immOffset, immAlign);
          }
          case TypeKind.I16:
          case TypeKind.U16: {
            return module.simd_load(SIMDLoadOp.LoadSplatV16x8, arg0, immOffset, immAlign);
          }
          case TypeKind.I32:
          case TypeKind.U32:
          case TypeKind.F32: {
            return module.simd_load(SIMDLoadOp.LoadSplatV32x4, arg0, immOffset, immAlign);
          }
          case TypeKind.ISIZE:
          case TypeKind.USIZE: {
            if (!compiler.options.isWasm64) {
              return module.simd_load(SIMDLoadOp.LoadSplatV32x4, arg0, immOffset, immAlign);
            }
            // fall-through
          }
          case TypeKind.I64:
          case TypeKind.U64:
          case TypeKind.F64: {
            return module.simd_load(SIMDLoadOp.LoadSplatV64x2, arg0, immOffset, immAlign);
          }
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "v128.load_splat", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.v128_load_ext: { // load_ext<TFrom!>(ptr: usize, immOffset?: usize, immAlign?: usize) -> v128
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler, true) |
        checkArgsOptional(operands, 1, 3, reportNode, compiler)
      ) return module.unreachable();
      let type = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], compiler.options.usizeType, Constraints.CONV_IMPLICIT);
      let numOperands = operands.length;
      let immOffset = numOperands >= 2 ? evaluateImmediateOffset(operands[1], compiler) : 0; // reports
      if (immOffset < 0) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let immAlign: i32;
      let naturalAlign = type.byteSize;
      if (numOperands == 3) {
        immAlign = evaluateImmediateOffset(operands[2], compiler);
        if (immAlign < 0) {
          compiler.currentType = Type.v128;
          return module.unreachable();
        }
      } else {
        immAlign = naturalAlign;
      }
      compiler.currentType = Type.v128;
      if (!type.is(TypeFlags.REFERENCE)) {
        if (immAlign > naturalAlign) {
          compiler.error(
            DiagnosticCode._0_must_be_a_value_between_1_and_2_inclusive,
            operands[2].range, "Alignment", "0", naturalAlign.toString()
          );
          return module.unreachable();
        }
        if (!isPowerOf2(immAlign)) {
          compiler.error(
            DiagnosticCode._0_must_be_a_power_of_two,
            operands[2].range, "Alignment"
          );
          return module.unreachable();
        }
        switch (type.kind) {
          case TypeKind.I8: return module.simd_load(SIMDLoadOp.LoadI8ToI16x8, arg0, immOffset, immAlign);
          case TypeKind.U8: return module.simd_load(SIMDLoadOp.LoadU8ToU16x8, arg0, immOffset, immAlign);
          case TypeKind.I16: return module.simd_load(SIMDLoadOp.LoadI16ToI32x4, arg0, immOffset, immAlign);
          case TypeKind.U16: return module.simd_load(SIMDLoadOp.LoadU16ToU32x4, arg0, immOffset, immAlign);
          case TypeKind.ISIZE: {
            if (compiler.options.isWasm64) break;
            // fall-through
          }
          case TypeKind.I32: return module.simd_load(SIMDLoadOp.LoadI32ToI64x2, arg0, immOffset, immAlign);
          case TypeKind.USIZE: {
            if (compiler.options.isWasm64) break;
            // fall-through
          }
          case TypeKind.U32: return module.simd_load(SIMDLoadOp.LoadU32ToU64x2, arg0, immOffset, immAlign);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "v128.load_ext", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.v128_add: { // add<T!>(a: v128, b: v128) -> v128
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let type = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (type.kind) {
          case TypeKind.I8:
          case TypeKind.U8: return module.binary(BinaryOp.AddI8x16, arg0, arg1);
          case TypeKind.I16:
          case TypeKind.U16: return module.binary(BinaryOp.AddI16x8, arg0, arg1);
          case TypeKind.I32:
          case TypeKind.U32: return module.binary(BinaryOp.AddI32x4, arg0, arg1);
          case TypeKind.I64:
          case TypeKind.U64: return module.binary(BinaryOp.AddI64x2, arg0, arg1);
          case TypeKind.ISIZE:
          case TypeKind.USIZE: {
            return module.binary(
              compiler.options.isWasm64
                ? BinaryOp.AddI64x2
                : BinaryOp.AddI32x4,
              arg0, arg1
            );
          }
          case TypeKind.F32: return module.binary(BinaryOp.AddF32x4, arg0, arg1);
          case TypeKind.F64: return module.binary(BinaryOp.AddF64x2, arg0, arg1);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "v128.add", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.v128_sub: { // sub<T!>(a: v128, b: v128) -> v128
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let type = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (type.kind) {
          case TypeKind.I8:
          case TypeKind.U8: return module.binary(BinaryOp.SubI8x16, arg0, arg1);
          case TypeKind.I16:
          case TypeKind.U16: return module.binary(BinaryOp.SubI16x8, arg0, arg1);
          case TypeKind.I32:
          case TypeKind.U32: return module.binary(BinaryOp.SubI32x4, arg0, arg1);
          case TypeKind.I64:
          case TypeKind.U64: return module.binary(BinaryOp.SubI64x2, arg0, arg1);
          case TypeKind.ISIZE:
          case TypeKind.USIZE: {
            return module.binary(
              compiler.options.isWasm64
                ? BinaryOp.SubI64x2
                : BinaryOp.SubI32x4,
              arg0, arg1
            );
          }
          case TypeKind.F32: return module.binary(BinaryOp.SubF32x4, arg0, arg1);
          case TypeKind.F64: return module.binary(BinaryOp.SubF64x2, arg0, arg1);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "v128.sub", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.v128_mul: { // mul<T!>(a: v128, b: v128) -> v128
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let type = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (type.kind) {
          case TypeKind.I8:
          case TypeKind.U8: return module.binary(BinaryOp.MulI8x16, arg0, arg1);
          case TypeKind.I16:
          case TypeKind.U16: return module.binary(BinaryOp.MulI16x8, arg0, arg1);
          case TypeKind.I32:
          case TypeKind.U32: return module.binary(BinaryOp.MulI32x4, arg0, arg1);
          case TypeKind.ISIZE:
          case TypeKind.USIZE: {
            if (!compiler.options.isWasm64) {
              return module.binary(BinaryOp.MulI32x4, arg0, arg1);
            }
            break;
          }
          case TypeKind.F32: return module.binary(BinaryOp.MulF32x4, arg0, arg1);
          case TypeKind.F64: return module.binary(BinaryOp.MulF64x2, arg0, arg1);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "v128.mul", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.v128_div: { // div<T!>(a: v128, b: v128) -> v128
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let type = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (type.kind) {
          case TypeKind.F32: return module.binary(BinaryOp.DivF32x4, arg0, arg1);
          case TypeKind.F64: return module.binary(BinaryOp.DivF64x2, arg0, arg1);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "v128.div", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.v128_add_saturate: { // add_saturate<T!>(a: v128, b: v128) -> v128
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let type = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (type.kind) {
          case TypeKind.I8: return module.binary(BinaryOp.AddSatI8x16, arg0, arg1);
          case TypeKind.U8: return module.binary(BinaryOp.AddSatU8x16, arg0, arg1);
          case TypeKind.I16: return module.binary(BinaryOp.AddSatI16x8, arg0, arg1);
          case TypeKind.U16: return module.binary(BinaryOp.AddSatU16x8, arg0, arg1);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "v128.add_saturate", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.v128_sub_saturate: { // sub_saturate<T!>(a: v128, b: v128) -> v128
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let type = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (type.kind) {
          case TypeKind.I8: return module.binary(BinaryOp.SubSatI8x16, arg0, arg1);
          case TypeKind.U8: return module.binary(BinaryOp.SubSatU8x16, arg0, arg1);
          case TypeKind.I16: return module.binary(BinaryOp.SubSatI16x8, arg0, arg1);
          case TypeKind.U16: return module.binary(BinaryOp.SubSatU16x8, arg0, arg1);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "v128.sub_saturate", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.v128_min: { // min<T!>(a: v128, b: v128) -> v128
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let type = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (type.kind) {
          case TypeKind.I8: return module.binary(BinaryOp.MinI8x16, arg0, arg1);
          case TypeKind.U8: return module.binary(BinaryOp.MinU8x16, arg0, arg1);
          case TypeKind.I16: return module.binary(BinaryOp.MinI16x8, arg0, arg1);
          case TypeKind.U16: return module.binary(BinaryOp.MinU16x8, arg0, arg1);
          case TypeKind.ISIZE: {
            if (compiler.options.isWasm64) break;
            // fall-through
          }
          case TypeKind.I32: return module.binary(BinaryOp.MinI32x4, arg0, arg1);
          case TypeKind.USIZE: {
            if (compiler.options.isWasm64) break;
            // fall-through
          }
          case TypeKind.U32: return module.binary(BinaryOp.MinU32x4, arg0, arg1);
          case TypeKind.F32: return module.binary(BinaryOp.MinF32x4, arg0, arg1);
          case TypeKind.F64: return module.binary(BinaryOp.MinF64x2, arg0, arg1);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "v128.min", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.v128_max: { // max<T!>(a: v128, b: v128) -> v128
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let type = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (type.kind) {
          case TypeKind.I8: return module.binary(BinaryOp.MaxI8x16, arg0, arg1);
          case TypeKind.U8: return module.binary(BinaryOp.MaxU8x16, arg0, arg1);
          case TypeKind.I16: return module.binary(BinaryOp.MaxI16x8, arg0, arg1);
          case TypeKind.U16: return module.binary(BinaryOp.MaxU16x8, arg0, arg1);
          case TypeKind.ISIZE: {
            if (compiler.options.isWasm64) break;
            // fall-through
          }
          case TypeKind.I32: return module.binary(BinaryOp.MaxI32x4, arg0, arg1);
          case TypeKind.USIZE: {
            if (compiler.options.isWasm64) break;
            // fall-through
          }
          case TypeKind.U32: return module.binary(BinaryOp.MaxU32x4, arg0, arg1);
          case TypeKind.F32: return module.binary(BinaryOp.MaxF32x4, arg0, arg1);
          case TypeKind.F64: return module.binary(BinaryOp.MaxF64x2, arg0, arg1);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "v128.max", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.v128_dot: { // dot<T!>(a: v128, b: v128) -> v128
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let type = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (type.kind) {
          case TypeKind.I16: return module.binary(BinaryOp.DotI16x8, arg0, arg1);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "v128.dot", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.v128_avgr: { // avgr<T!>(a: v128, b: v128) -> v128
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let type = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (type.kind) {
          case TypeKind.U8:  return module.binary(BinaryOp.AvgrU8x16, arg0, arg1);
          case TypeKind.U16: return module.binary(BinaryOp.AvgrU16x8, arg0, arg1);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "v128.avgr", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.v128_eq: { // eq<T!>(a: v128, b: v128) -> v128
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let type = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (type.kind) {
          case TypeKind.I8:
            case TypeKind.U8: return module.binary(BinaryOp.EqI8x16, arg0, arg1);
            case TypeKind.I16:
            case TypeKind.U16: return module.binary(BinaryOp.EqI16x8, arg0, arg1);
            case TypeKind.I32:
            case TypeKind.U32: return module.binary(BinaryOp.EqI32x4, arg0, arg1);
            case TypeKind.ISIZE:
            case TypeKind.USIZE: {
              if (!compiler.options.isWasm64) {
                return module.binary(BinaryOp.EqI32x4, arg0, arg1);
              }
              break;
            }
            case TypeKind.F32: return module.binary(BinaryOp.EqF32x4, arg0, arg1);
            case TypeKind.F64: return module.binary(BinaryOp.EqF64x2, arg0, arg1);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "v128.eq", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.v128_ne: { // ne<T!>(a: v128, b: v128) -> v128
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let type = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (type.kind) {
          case TypeKind.I8:
            case TypeKind.U8: return module.binary(BinaryOp.NeI8x16, arg0, arg1);
            case TypeKind.I16:
            case TypeKind.U16: return module.binary(BinaryOp.NeI16x8, arg0, arg1);
            case TypeKind.I32:
            case TypeKind.U32: return module.binary(BinaryOp.NeI32x4, arg0, arg1);
            case TypeKind.ISIZE:
            case TypeKind.USIZE: {
              if (!compiler.options.isWasm64) {
                return module.binary(BinaryOp.NeI32x4, arg0, arg1);
              }
              break;
            }
            case TypeKind.F32: return module.binary(BinaryOp.NeF32x4, arg0, arg1);
            case TypeKind.F64: return module.binary(BinaryOp.NeF64x2, arg0, arg1);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "v128.ne", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.v128_lt: { // lt<T!>(a: v128, b: v128) -> v128
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let type = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (type.kind) {
          case TypeKind.I8: return module.binary(BinaryOp.LtI8x16, arg0, arg1);
          case TypeKind.U8: return module.binary(BinaryOp.LtU8x16, arg0, arg1);
          case TypeKind.I16: return module.binary(BinaryOp.LtI16x8, arg0, arg1);
          case TypeKind.U16: return module.binary(BinaryOp.LtU16x8, arg0, arg1);
          case TypeKind.I32: return module.binary(BinaryOp.LtI32x4, arg0, arg1);
          case TypeKind.U32: return module.binary(BinaryOp.LtU32x4, arg0, arg1);
          case TypeKind.ISIZE: {
            if (!compiler.options.isWasm64) {
              return module.binary(BinaryOp.LtI32x4, arg0, arg1);
            }
            break;
          }
          case TypeKind.USIZE: {
            if (!compiler.options.isWasm64) {
              return module.binary(BinaryOp.LtU32x4, arg0, arg1);
            }
            break;
          }
          case TypeKind.F32: return module.binary(BinaryOp.LtF32x4, arg0, arg1);
          case TypeKind.F64: return module.binary(BinaryOp.LtF64x2, arg0, arg1);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "v128.lt", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.v128_le: { // le<T!>(a: v128, b: v128) -> v128
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let type = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (type.kind) {
          case TypeKind.I8: return module.binary(BinaryOp.LeI8x16, arg0, arg1);
          case TypeKind.U8: return module.binary(BinaryOp.LeU8x16, arg0, arg1);
          case TypeKind.I16: return module.binary(BinaryOp.LeI16x8, arg0, arg1);
          case TypeKind.U16: return module.binary(BinaryOp.LeU16x8, arg0, arg1);
          case TypeKind.I32: return module.binary(BinaryOp.LeI32x4, arg0, arg1);
          case TypeKind.U32: return module.binary(BinaryOp.LeU32x4, arg0, arg1);
          case TypeKind.ISIZE: {
            if (!compiler.options.isWasm64) {
              return module.binary(BinaryOp.LeI32x4, arg0, arg1);
            }
            break;
          }
          case TypeKind.USIZE: {
            if (!compiler.options.isWasm64) {
              return module.binary(BinaryOp.LeU32x4, arg0, arg1);
            }
            break;
          }
          case TypeKind.F32: return module.binary(BinaryOp.LeF32x4, arg0, arg1);
          case TypeKind.F64: return module.binary(BinaryOp.LeF64x2, arg0, arg1);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "v128.le", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.v128_gt: { // gt<T!>(a: v128, b: v128) -> v128
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let type = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (type.kind) {
          case TypeKind.I8: return module.binary(BinaryOp.GtI8x16, arg0, arg1);
          case TypeKind.U8: return module.binary(BinaryOp.GtU8x16, arg0, arg1);
          case TypeKind.I16: return module.binary(BinaryOp.GtI16x8, arg0, arg1);
          case TypeKind.U16: return module.binary(BinaryOp.GtU16x8, arg0, arg1);
          case TypeKind.I32: return module.binary(BinaryOp.GtI32x4, arg0, arg1);
          case TypeKind.U32: return module.binary(BinaryOp.GtU32x4, arg0, arg1);
          case TypeKind.ISIZE: {
            if (!compiler.options.isWasm64) {
              return module.binary(BinaryOp.GtI32x4, arg0, arg1);
            }
            break;
          }
          case TypeKind.USIZE: {
            if (!compiler.options.isWasm64) {
              return module.binary(BinaryOp.GtU32x4, arg0, arg1);
            }
            break;
          }
          case TypeKind.F32: return module.binary(BinaryOp.GtF32x4, arg0, arg1);
          case TypeKind.F64: return module.binary(BinaryOp.GtF64x2, arg0, arg1);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "v128.gt", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.v128_ge: { // ge<T!>(a: v128, b: v128) -> v128
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let type = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (type.kind) {
          case TypeKind.I8: return module.binary(BinaryOp.GeI8x16, arg0, arg1);
          case TypeKind.U8: return module.binary(BinaryOp.GeU8x16, arg0, arg1);
          case TypeKind.I16: return module.binary(BinaryOp.GeI16x8, arg0, arg1);
          case TypeKind.U16: return module.binary(BinaryOp.GeU16x8, arg0, arg1);
          case TypeKind.I32: return module.binary(BinaryOp.GeI32x4, arg0, arg1);
          case TypeKind.U32: return module.binary(BinaryOp.GeU32x4, arg0, arg1);
          case TypeKind.ISIZE: {
            if (!compiler.options.isWasm64) {
              return module.binary(BinaryOp.GeI32x4, arg0, arg1);
            }
            break;
          }
          case TypeKind.USIZE: {
            if (!compiler.options.isWasm64) {
              return module.binary(BinaryOp.GeU32x4, arg0, arg1);
            }
            break;
          }
          case TypeKind.F32: return module.binary(BinaryOp.GeF32x4, arg0, arg1);
          case TypeKind.F64: return module.binary(BinaryOp.GeF64x2, arg0, arg1);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "v128.ge", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.v128_narrow: {
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let type = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (type.kind) {
          case TypeKind.I16: return module.binary(BinaryOp.NarrowI16x8ToI8x16, arg0, arg1);
          case TypeKind.U16: return module.binary(BinaryOp.NarrowU16x8ToU8x16, arg0, arg1);
          case TypeKind.I32: return module.binary(BinaryOp.NarrowI32x4ToI16x8, arg0, arg1);
          case TypeKind.U32: return module.binary(BinaryOp.NarrowU32x4ToU16x8, arg0, arg1);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "v128.narrow", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.v128_neg: {
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let type = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (type.kind) {
          case TypeKind.I8:
          case TypeKind.U8: return module.unary(UnaryOp.NegI8x16, arg0);
          case TypeKind.I16:
          case TypeKind.U16: return module.unary(UnaryOp.NegI16x8, arg0);
          case TypeKind.I32:
          case TypeKind.U32: return module.unary(UnaryOp.NegI32x4, arg0);
          case TypeKind.I64:
          case TypeKind.U64: return module.unary(UnaryOp.NegI64x2, arg0);
          case TypeKind.ISIZE:
          case TypeKind.USIZE: {
            return module.unary(
              compiler.options.isWasm64
                ? UnaryOp.NegI64x2
                : UnaryOp.NegI32x4,
              arg0
            );
          }
          case TypeKind.F32: return module.unary(UnaryOp.NegF32x4, arg0);
          case TypeKind.F64: return module.unary(UnaryOp.NegF64x2, arg0);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "v128.neg", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.v128_abs: {
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let type = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (type.kind) {
          case TypeKind.F32: return module.unary(UnaryOp.AbsF32x4, arg0);
          case TypeKind.F64: return module.unary(UnaryOp.AbsF64x2, arg0);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "v128.abs", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.v128_sqrt: {
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let type = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (type.kind) {
          case TypeKind.F32: return module.unary(UnaryOp.SqrtF32x4, arg0);
          case TypeKind.F64: return module.unary(UnaryOp.SqrtF64x2, arg0);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "v128.sqrt", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.v128_convert: {
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let type = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (type.kind) {
          case TypeKind.I32: return module.unary(UnaryOp.ConvertI32x4ToF32x4, arg0);
          case TypeKind.U32: return module.unary(UnaryOp.ConvertU32x4ToF32x4, arg0);
          case TypeKind.I64: return module.unary(UnaryOp.ConvertI64x2ToF64x2, arg0);
          case TypeKind.U64: return module.unary(UnaryOp.ConvertU64x2ToF64x2, arg0);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "v128.convert", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.v128_trunc_sat: {
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let type = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (type.kind) {
          case TypeKind.I32: return module.unary(UnaryOp.TruncSatF32x4ToI32x4, arg0);
          case TypeKind.U32: return module.unary(UnaryOp.TruncSatF32x4ToU32x4, arg0);
          case TypeKind.I64: return module.unary(UnaryOp.TruncSatF64x2ToI64x2, arg0);
          case TypeKind.U64: return module.unary(UnaryOp.TruncSatF64x2ToU64x2, arg0);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "v128.trunc_sat", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.v128_widen_low: {
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let type = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (type.kind) {
          case TypeKind.I8: return module.unary(UnaryOp.WidenLowI8x16ToI16x8, arg0);
          case TypeKind.U8: return module.unary(UnaryOp.WidenLowU8x16ToU16x8, arg0);
          case TypeKind.I16: return module.unary(UnaryOp.WidenLowI16x8ToI32x4, arg0);
          case TypeKind.U16: return module.unary(UnaryOp.WidenLowU16x8ToU32x4, arg0);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "v128.widen_low", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.v128_widen_high: {
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let type = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (type.kind) {
          case TypeKind.I8: return module.unary(UnaryOp.WidenHighI8x16ToI16x8, arg0);
          case TypeKind.U8: return module.unary(UnaryOp.WidenHighU8x16ToU16x8, arg0);
          case TypeKind.I16: return module.unary(UnaryOp.WidenHighI16x8ToI32x4, arg0);
          case TypeKind.U16: return module.unary(UnaryOp.WidenHighU16x8ToU32x4, arg0);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "v128.widen_high", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.v128_shl: { // shl<T!>(a: v128, b: i32) -> v128
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let type = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.compileExpression(operands[1], Type.i32, Constraints.CONV_IMPLICIT);
      compiler.currentType = Type.v128;
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (type.kind) {
          case TypeKind.I8:
          case TypeKind.U8: return module.simd_shift(SIMDShiftOp.ShlI8x16, arg0, arg1);
          case TypeKind.I16:
          case TypeKind.U16: return module.simd_shift(SIMDShiftOp.ShlI16x8, arg0, arg1);
          case TypeKind.I32:
          case TypeKind.U32: return module.simd_shift(SIMDShiftOp.ShlI32x4, arg0, arg1);
          case TypeKind.I64:
          case TypeKind.U64: return module.simd_shift(SIMDShiftOp.ShlI64x2, arg0, arg1);
          case TypeKind.ISIZE:
          case TypeKind.USIZE: {
            return module.simd_shift(
              compiler.options.isWasm64
                ? SIMDShiftOp.ShlI64x2
                : SIMDShiftOp.ShlI32x4,
              arg0, arg1
            );
          }
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "v128.shl", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.v128_shr: { // shr<T!>(a: v128, b: i32) -> v128
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let type = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.compileExpression(operands[1], Type.i32, Constraints.CONV_IMPLICIT);
      compiler.currentType = Type.v128;
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (type.kind) {
          case TypeKind.I8: return module.simd_shift(SIMDShiftOp.ShrI8x16, arg0, arg1);
          case TypeKind.U8: return module.simd_shift(SIMDShiftOp.ShrU8x16, arg0, arg1);
          case TypeKind.I16: return module.simd_shift(SIMDShiftOp.ShrI16x8, arg0, arg1);
          case TypeKind.U16: return module.simd_shift(SIMDShiftOp.ShrU16x8, arg0, arg1);
          case TypeKind.I32: return module.simd_shift(SIMDShiftOp.ShrI32x4, arg0, arg1);
          case TypeKind.U32: return module.simd_shift(SIMDShiftOp.ShrU32x4, arg0, arg1);
          case TypeKind.I64: return module.simd_shift(SIMDShiftOp.ShrI64x2, arg0, arg1);
          case TypeKind.U64: return module.simd_shift(SIMDShiftOp.ShrU64x2, arg0, arg1);
          case TypeKind.ISIZE: {
            return module.simd_shift(
              compiler.options.isWasm64
                ? SIMDShiftOp.ShrI64x2
                : SIMDShiftOp.ShrI32x4,
              arg0, arg1
            );
          }
          case TypeKind.USIZE: {
            return module.simd_shift(
              compiler.options.isWasm64
                ? SIMDShiftOp.ShrU64x2
                : SIMDShiftOp.ShrU32x4,
              arg0, arg1
            );
          }
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "v128.shr", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.v128_and: { // and(a: v128) -> v128
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
      return module.binary(BinaryOp.AndV128, arg0, arg1);
    }
    case BuiltinNames.v128_or: { // or(a: v128) -> v128
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
      return module.binary(BinaryOp.OrV128, arg0, arg1);
    }
    case BuiltinNames.v128_xor: { // xor(a: v128) -> v128
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
      return module.binary(BinaryOp.XorV128, arg0, arg1);
    }
    case BuiltinNames.v128_andnot: { // andnot(a: v128, b: v128) -> v128
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 2, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
      return module.binary(BinaryOp.AndNotV128, arg0, arg1);
    }
    case BuiltinNames.v128_not: { // not(a: v128) -> v128
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      return module.unary(UnaryOp.NotV128, arg0);
    }
    case BuiltinNames.v128_bitselect: { // bitselect(v1: v128, v2: v128, c: v128) -> v128
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeAbsent(typeArguments, reportNode, prototype) |
        checkArgsRequired(operands, 3, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
      let arg2 = compiler.compileExpression(operands[2], Type.v128, Constraints.CONV_IMPLICIT);
      return module.simd_ternary(SIMDTernaryOp.Bitselect, arg0, arg1, arg2);
    }
    case BuiltinNames.v128_any_true: { // any_true<T!>(a: v128) -> bool
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = Type.bool;
        return module.unreachable();
      }
      let type = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      compiler.currentType = Type.bool;
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (type.kind) {
          case TypeKind.I8:
          case TypeKind.U8: return module.unary(UnaryOp.AnyTrueI8x16, arg0);
          case TypeKind.I16:
          case TypeKind.U16: return module.unary(UnaryOp.AnyTrueI16x8, arg0);
          case TypeKind.I32:
          case TypeKind.U32: return module.unary(UnaryOp.AnyTrueI32x4, arg0);
          case TypeKind.I64:
          case TypeKind.U64: return module.unary(UnaryOp.AnyTrueI64x2, arg0);
          case TypeKind.ISIZE:
          case TypeKind.USIZE: {
            return module.unary(
              compiler.options.isWasm64
                ? UnaryOp.AnyTrueI64x2
                : UnaryOp.AnyTrueI32x4,
              arg0
            );
          }
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "v128.any_true", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.v128_all_true: { // all_true<T!>(a: v128) -> bool
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = Type.bool;
        return module.unreachable();
      }
      let type = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      compiler.currentType = Type.bool;
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (type.kind) {
          case TypeKind.I8:
          case TypeKind.U8: return module.unary(UnaryOp.AllTrueI8x16, arg0);
          case TypeKind.I16:
          case TypeKind.U16: return module.unary(UnaryOp.AllTrueI16x8, arg0);
          case TypeKind.I32:
          case TypeKind.U32: return module.unary(UnaryOp.AllTrueI32x4, arg0);
          case TypeKind.I64:
          case TypeKind.U64: return module.unary(UnaryOp.AllTrueI64x2, arg0);
          case TypeKind.ISIZE:
          case TypeKind.USIZE: {
            return module.unary(
              compiler.options.isWasm64
                ? UnaryOp.AllTrueI64x2
                : UnaryOp.AllTrueI32x4,
              arg0
            );
          }
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "v128.all_true", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.v128_qfma: { // qfma(a: v128, b: v128, c: v128) -> v128
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 3, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let type = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
      let arg2 = compiler.compileExpression(operands[2], Type.v128, Constraints.CONV_IMPLICIT);
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (type.kind) {
          case TypeKind.F32: return module.simd_ternary(SIMDTernaryOp.QFMAF32x4, arg0, arg1, arg2);
          case TypeKind.F64: return module.simd_ternary(SIMDTernaryOp.QFMAF64x2, arg0, arg1, arg2);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "v128.qfma", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.v128_qfms: { // qfms(a: v128, b: v128, c: v128) -> v128
      if (
        checkFeatureEnabled(Feature.SIMD, reportNode, compiler) |
        checkTypeRequired(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 3, reportNode, compiler)
      ) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
      let type = typeArguments![0];
      let arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
      let arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
      let arg2 = compiler.compileExpression(operands[2], Type.v128, Constraints.CONV_IMPLICIT);
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (type.kind) {
          case TypeKind.F32: return module.simd_ternary(SIMDTernaryOp.QFMSF32x4, arg0, arg1, arg2);
          case TypeKind.F64: return module.simd_ternary(SIMDTernaryOp.QFMSF64x2, arg0, arg1, arg2);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "v128.qfms", type.toString()
      );
      return module.unreachable();
    }

    // === Internal runtime =======================================================================

    case BuiltinNames.idof: {
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.u32;
      if (!type) return module.unreachable();
      if (type.is(TypeFlags.REFERENCE)) {
        let signatureReference = type.signatureReference;
        if (signatureReference) {
          return module.i32(signatureReference.id);
        }
        let classReference = type.classReference;
        if (classReference !== null && !classReference.hasDecorator(DecoratorFlags.UNMANAGED)) {
          return module.i32(classReference.id);
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "idof", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.visit_globals: {
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
      return module.call(BuiltinNames.visit_globals, [ arg0 ], NativeType.None);
    }
    case BuiltinNames.visit_members: {
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
      return module.call(BuiltinNames.visit_members, [ arg0, arg1 ], NativeType.None);
    }
    case BuiltinNames.isNaN: {
      if (
        checkTypeOptional(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = Type.bool;
        return module.unreachable();
      }
      let arg0 = typeArguments
        ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT)
        : compiler.compileExpression(operands[0], Type.auto);
      let type = compiler.currentType;
      compiler.currentType = Type.bool;
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (type.kind) {
          // never NaN
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.I64:
          case TypeKind.ISIZE:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.U64:
          case TypeKind.USIZE: {
            return hasSideEffects(arg0)
              ? module.block(null, [
                  module.drop(arg0),
                  module.i32(0)
                ], NativeType.I32)
              : module.i32(0);
          }
          // (t = arg0) != t
          case TypeKind.F32: {
            if (getExpressionId(arg0) == ExpressionId.LocalGet) {
              return module.binary(BinaryOp.NeF32,
                arg0,
                module.local_get(getLocalGetIndex(arg0), NativeType.F32)
              );
            }
            let flow = compiler.currentFlow;
            let temp = flow.getTempLocal(Type.f32);
            let ret = module.binary(BinaryOp.NeF32,
              module.local_tee(temp.index, arg0),
              module.local_get(temp.index, NativeType.F32)
            );
            flow.freeTempLocal(temp);
            return ret;
          }
          case TypeKind.F64: {
            if (getExpressionId(arg0) == ExpressionId.LocalGet) {
              return module.binary(BinaryOp.NeF64,
                arg0,
                module.local_get(getLocalGetIndex(arg0), NativeType.F64)
              );
            }
            let flow = compiler.currentFlow;
            let temp = flow.getTempLocal(Type.f64);
            let ret = module.binary(BinaryOp.NeF64,
              module.local_tee(temp.index, arg0),
              module.local_get(temp.index, NativeType.F64)
            );
            flow.freeTempLocal(temp);
            return ret;
          }
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "isNaN", type.toString()
      );
      return module.unreachable();
    }
    case BuiltinNames.isFinite: {
      if (
        checkTypeOptional(typeArguments, reportNode, compiler) |
        checkArgsRequired(operands, 1, reportNode, compiler)
      ) {
        compiler.currentType = Type.bool;
        return module.unreachable();
      }
      let arg0 = typeArguments
        ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT)
        : compiler.compileExpression(operands[0], Type.auto);
      let type = compiler.currentType;
      compiler.currentType = Type.bool;
      if (!type.is(TypeFlags.REFERENCE)) {
        switch (type.kind) {
          // always finite
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.I64:
          case TypeKind.ISIZE:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.U64:
          case TypeKind.USIZE: {
            return hasSideEffects(arg0)
              ? module.block(null, [
                  module.drop(arg0),
                  module.i32(1)
                ], NativeType.I32)
              : module.i32(1);
          }
          // (t = arg0) - t == 0
          case TypeKind.F32: {
            if (getExpressionId(arg0) == ExpressionId.LocalGet) {
              return module.binary(BinaryOp.EqF32,
                module.binary(BinaryOp.SubF32,
                  arg0,
                  module.local_get(getLocalGetIndex(arg0), NativeType.F32)
                ),
                module.f32(0)
              );
            }
            let flow = compiler.currentFlow;
            let temp = flow.getTempLocal(Type.f32);
            let ret = module.binary(BinaryOp.EqF32,
              module.binary(BinaryOp.SubF32,
                module.local_tee(temp.index, arg0),
                module.local_get(temp.index, NativeType.F32)
              ),
              module.f32(0)
            );
            flow.freeTempLocal(temp);
            return ret;
          }
          case TypeKind.F64: {
            if (getExpressionId(arg0) == ExpressionId.LocalGet) {
              return module.binary(BinaryOp.EqF64,
                module.binary(BinaryOp.SubF64,
                  arg0,
                  module.local_get(getLocalGetIndex(arg0), NativeType.F64)
                ),
                module.f64(0)
              );
            }
            let flow = compiler.currentFlow;
            let temp = flow.getTempLocal(Type.f64);
            let ret = module.binary(BinaryOp.EqF64,
              module.binary(BinaryOp.SubF64,
                module.local_tee(temp.index, arg0),
                module.local_get(temp.index, NativeType.F64)
              ),
              module.f64(0)
            );
            flow.freeTempLocal(temp);
            return ret;
          }
        }
      }
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        reportNode.typeArgumentsRange, "isFinite", type.toString()
      );
      return module.unreachable();
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
    DiagnosticCode.Not_implemented,
    reportNode.expression.range
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

    case BuiltinNames.i32_clz: return deferASM(BuiltinNames.clz, compiler, Type.i32, operands, Type.i32, reportNode);
    case BuiltinNames.i64_clz: return deferASM(BuiltinNames.clz, compiler, Type.i64, operands, Type.i64, reportNode);
    case BuiltinNames.i32_ctz: return deferASM(BuiltinNames.ctz, compiler, Type.i32, operands, Type.i32, reportNode);
    case BuiltinNames.i64_ctz: return deferASM(BuiltinNames.ctz, compiler, Type.i64, operands, Type.i64, reportNode);
    case BuiltinNames.i32_popcnt: return deferASM(BuiltinNames.popcnt, compiler, Type.i32, operands, Type.i32, reportNode);
    case BuiltinNames.i64_popcnt: return deferASM(BuiltinNames.popcnt, compiler, Type.i64, operands, Type.i64, reportNode);
    case BuiltinNames.i32_rotl: return deferASM(BuiltinNames.rotl, compiler, Type.i32, operands, Type.i32, reportNode);
    case BuiltinNames.i64_rotl: return deferASM(BuiltinNames.rotl, compiler, Type.i64, operands, Type.i64, reportNode);
    case BuiltinNames.i32_rotr: return deferASM(BuiltinNames.rotr, compiler, Type.i32, operands, Type.i32, reportNode);
    case BuiltinNames.i64_rotr: return deferASM(BuiltinNames.rotr, compiler, Type.i64, operands, Type.i64, reportNode);
    case BuiltinNames.f32_abs: return deferASM(BuiltinNames.abs, compiler, Type.f32, operands, Type.f32, reportNode);
    case BuiltinNames.f64_abs: return deferASM(BuiltinNames.abs, compiler, Type.f64, operands, Type.f64, reportNode);
    case BuiltinNames.f32_max: return deferASM(BuiltinNames.max, compiler, Type.f32, operands, Type.f32, reportNode);
    case BuiltinNames.f64_max: return deferASM(BuiltinNames.max, compiler, Type.f64, operands, Type.f64, reportNode);
    case BuiltinNames.f32_min: return deferASM(BuiltinNames.min, compiler, Type.f32, operands, Type.f32, reportNode);
    case BuiltinNames.f64_min: return deferASM(BuiltinNames.min, compiler, Type.f64, operands, Type.f64, reportNode);
    case BuiltinNames.f32_ceil: return deferASM(BuiltinNames.ceil, compiler, Type.f32, operands, Type.f32, reportNode);
    case BuiltinNames.f64_ceil: return deferASM(BuiltinNames.ceil, compiler, Type.f64, operands, Type.f64, reportNode);
    case BuiltinNames.f32_floor: return deferASM(BuiltinNames.floor, compiler, Type.f32, operands, Type.f32, reportNode);
    case BuiltinNames.f64_floor: return deferASM(BuiltinNames.floor, compiler, Type.f64, operands, Type.f64, reportNode);
    case BuiltinNames.f32_copysign: return deferASM(BuiltinNames.copysign, compiler, Type.f32, operands, Type.f32, reportNode);
    case BuiltinNames.f64_copysign: return deferASM(BuiltinNames.copysign, compiler, Type.f64, operands, Type.f64, reportNode);
    case BuiltinNames.f32_nearest: return deferASM(BuiltinNames.nearest, compiler, Type.f32, operands, Type.f32, reportNode);
    case BuiltinNames.f64_nearest: return deferASM(BuiltinNames.nearest, compiler, Type.f64, operands, Type.f64, reportNode);
    case BuiltinNames.i32_reinterpret_f32: return deferASM(BuiltinNames.reinterpret, compiler, Type.i32, operands, Type.f32, reportNode);
    case BuiltinNames.i64_reinterpret_f64: return deferASM(BuiltinNames.reinterpret, compiler, Type.i64, operands, Type.f64, reportNode);
    case BuiltinNames.f32_reinterpret_i32: return deferASM(BuiltinNames.reinterpret, compiler, Type.f32, operands, Type.i32, reportNode);
    case BuiltinNames.f64_reinterpret_i64: return deferASM(BuiltinNames.reinterpret, compiler, Type.f64, operands, Type.i64, reportNode);
    case BuiltinNames.f32_sqrt: return deferASM(BuiltinNames.sqrt, compiler, Type.f32, operands, Type.f32, reportNode);
    case BuiltinNames.f64_sqrt: return deferASM(BuiltinNames.sqrt, compiler, Type.f64, operands, Type.f64, reportNode);
    case BuiltinNames.f32_trunc: return deferASM(BuiltinNames.trunc, compiler, Type.f32, operands, Type.f32, reportNode);
    case BuiltinNames.f64_trunc: return deferASM(BuiltinNames.trunc, compiler, Type.f64, operands, Type.f64, reportNode);
    case BuiltinNames.i32_load8_s: return deferASM(BuiltinNames.load, compiler, Type.i8, operands, Type.i32, reportNode);
    case BuiltinNames.i32_load8_u: return deferASM(BuiltinNames.load, compiler, Type.u8, operands, Type.i32, reportNode);
    case BuiltinNames.i32_load16_s: return deferASM(BuiltinNames.load, compiler, Type.i16, operands, Type.i32, reportNode);
    case BuiltinNames.i32_load16_u: return deferASM(BuiltinNames.load, compiler, Type.u16, operands, Type.i32, reportNode);
    case BuiltinNames.i32_load: return deferASM(BuiltinNames.load, compiler, Type.i32, operands, Type.i32, reportNode);
    case BuiltinNames.i64_load8_s: return deferASM(BuiltinNames.load, compiler, Type.i8, operands, Type.i64, reportNode);
    case BuiltinNames.i64_load8_u: return deferASM(BuiltinNames.load, compiler, Type.u8, operands, Type.i64, reportNode);
    case BuiltinNames.i64_load16_s: return deferASM(BuiltinNames.load, compiler, Type.i16, operands, Type.i64, reportNode);
    case BuiltinNames.i64_load16_u: return deferASM(BuiltinNames.load, compiler, Type.u16, operands, Type.i64, reportNode);
    case BuiltinNames.i64_load32_s: return deferASM(BuiltinNames.load, compiler, Type.i32, operands, Type.i64, reportNode);
    case BuiltinNames.i64_load32_u: return deferASM(BuiltinNames.load, compiler, Type.u32, operands, Type.i64, reportNode);
    case BuiltinNames.i64_load: return deferASM(BuiltinNames.load, compiler, Type.i64, operands, Type.i64, reportNode);
    case BuiltinNames.f32_load: return deferASM(BuiltinNames.load, compiler, Type.f32, operands, Type.f32, reportNode);
    case BuiltinNames.f64_load: return deferASM(BuiltinNames.load, compiler, Type.f64, operands, Type.f64, reportNode);
    case BuiltinNames.i32_store8: return deferASM(BuiltinNames.store, compiler, Type.i8, operands, Type.i32, reportNode);
    case BuiltinNames.i32_store16: return deferASM(BuiltinNames.store, compiler, Type.i16, operands, Type.i32, reportNode);
    case BuiltinNames.i32_store: return deferASM(BuiltinNames.store, compiler, Type.i32, operands, Type.i32, reportNode);
    case BuiltinNames.i64_store8: return deferASM(BuiltinNames.store, compiler, Type.i8, operands, Type.i64, reportNode);
    case BuiltinNames.i64_store16: return deferASM(BuiltinNames.store, compiler, Type.i16, operands, Type.i64, reportNode);
    case BuiltinNames.i64_store32: return deferASM(BuiltinNames.store, compiler, Type.i32, operands, Type.i64, reportNode);
    case BuiltinNames.i64_store: return deferASM(BuiltinNames.store, compiler, Type.i64, operands, Type.i64, reportNode);
    case BuiltinNames.f32_store: return deferASM(BuiltinNames.store, compiler, Type.f32, operands, Type.f32, reportNode);
    case BuiltinNames.f64_store: return deferASM(BuiltinNames.store, compiler, Type.f64, operands, Type.f64, reportNode);

    case BuiltinNames.i32_atomic_load8_u: return deferASM(BuiltinNames.atomic_load, compiler, Type.u8, operands, Type.i32, reportNode);
    case BuiltinNames.i32_atomic_load16_u: return deferASM(BuiltinNames.atomic_load, compiler, Type.u16, operands, Type.i32, reportNode);
    case BuiltinNames.i32_atomic_load: return deferASM(BuiltinNames.atomic_load, compiler, Type.i32, operands, Type.i32, reportNode);
    case BuiltinNames.i64_atomic_load8_u: return deferASM(BuiltinNames.atomic_load, compiler, Type.u8, operands, Type.i64, reportNode);
    case BuiltinNames.i64_atomic_load16_u: return deferASM(BuiltinNames.atomic_load, compiler, Type.u16, operands, Type.i64, reportNode);
    case BuiltinNames.i64_atomic_load32_u: return deferASM(BuiltinNames.atomic_load, compiler, Type.u32, operands, Type.i64, reportNode);
    case BuiltinNames.i64_atomic_load: return deferASM(BuiltinNames.atomic_load, compiler, Type.i64, operands, Type.i64, reportNode);

    case BuiltinNames.i32_atomic_store8: return deferASM(BuiltinNames.atomic_store, compiler, Type.u8, operands, Type.i32, reportNode);
    case BuiltinNames.i32_atomic_store16: return deferASM(BuiltinNames.atomic_store, compiler, Type.u16, operands, Type.i32, reportNode);
    case BuiltinNames.i32_atomic_store: return deferASM(BuiltinNames.atomic_store, compiler, Type.i32, operands, Type.i32, reportNode);
    case BuiltinNames.i64_atomic_store8: return deferASM(BuiltinNames.atomic_store, compiler, Type.u8, operands, Type.i64, reportNode);
    case BuiltinNames.i64_atomic_store16: return deferASM(BuiltinNames.atomic_store, compiler, Type.u16, operands, Type.i64, reportNode);
    case BuiltinNames.i64_atomic_store32: return deferASM(BuiltinNames.atomic_store, compiler, Type.u32, operands, Type.i64, reportNode);
    case BuiltinNames.i64_atomic_store: return deferASM(BuiltinNames.atomic_store, compiler, Type.i64, operands, Type.i64, reportNode);

    case BuiltinNames.i32_atomic_rmw8_add_u: return deferASM(BuiltinNames.atomic_add, compiler, Type.u8, operands, Type.i32, reportNode);
    case BuiltinNames.i32_atomic_rmw16_add_u: return deferASM(BuiltinNames.atomic_add, compiler, Type.u16, operands, Type.i32, reportNode);
    case BuiltinNames.i32_atomic_rmw_add: return deferASM(BuiltinNames.atomic_add, compiler, Type.i32, operands, Type.i32, reportNode);
    case BuiltinNames.i64_atomic_rmw8_add_u: return deferASM(BuiltinNames.atomic_add, compiler, Type.u8, operands, Type.i64, reportNode);
    case BuiltinNames.i64_atomic_rmw16_add_u: return deferASM(BuiltinNames.atomic_add, compiler, Type.u16, operands, Type.i64, reportNode);
    case BuiltinNames.i64_atomic_rmw32_add_u: return deferASM(BuiltinNames.atomic_add, compiler, Type.u32, operands, Type.i64, reportNode);
    case BuiltinNames.i64_atomic_rmw_add: return deferASM(BuiltinNames.atomic_add, compiler, Type.i64, operands, Type.i64, reportNode);

    case BuiltinNames.i32_atomic_rmw8_sub_u: return deferASM(BuiltinNames.atomic_sub, compiler, Type.u8, operands, Type.i32, reportNode);
    case BuiltinNames.i32_atomic_rmw16_sub_u: return deferASM(BuiltinNames.atomic_sub, compiler, Type.u16, operands, Type.i32, reportNode);
    case BuiltinNames.i32_atomic_rmw_sub: return deferASM(BuiltinNames.atomic_sub, compiler, Type.i32, operands, Type.i32, reportNode);
    case BuiltinNames.i64_atomic_rmw8_sub_u: return deferASM(BuiltinNames.atomic_sub, compiler, Type.u8, operands, Type.i64, reportNode);
    case BuiltinNames.i64_atomic_rmw16_sub_u: return deferASM(BuiltinNames.atomic_sub, compiler, Type.u16, operands, Type.i64, reportNode);
    case BuiltinNames.i64_atomic_rmw32_sub_u: return deferASM(BuiltinNames.atomic_sub, compiler, Type.u32, operands, Type.i64, reportNode);
    case BuiltinNames.i64_atomic_rmw_sub: return deferASM(BuiltinNames.atomic_sub, compiler, Type.i64, operands, Type.i64, reportNode);

    case BuiltinNames.i32_atomic_rmw8_and_u: return deferASM(BuiltinNames.atomic_and, compiler, Type.u8, operands, Type.i32, reportNode);
    case BuiltinNames.i32_atomic_rmw16_and_u: return deferASM(BuiltinNames.atomic_and, compiler, Type.u16, operands, Type.i32, reportNode);
    case BuiltinNames.i32_atomic_rmw_and: return deferASM(BuiltinNames.atomic_and, compiler, Type.i32, operands, Type.i32, reportNode);
    case BuiltinNames.i64_atomic_rmw8_and_u: return deferASM(BuiltinNames.atomic_and, compiler, Type.u8, operands, Type.i64, reportNode);
    case BuiltinNames.i64_atomic_rmw16_and_u: return deferASM(BuiltinNames.atomic_and, compiler, Type.u16, operands, Type.i64, reportNode);
    case BuiltinNames.i64_atomic_rmw32_and_u: return deferASM(BuiltinNames.atomic_and, compiler, Type.u32, operands, Type.i64, reportNode);
    case BuiltinNames.i64_atomic_rmw_and: return deferASM(BuiltinNames.atomic_and, compiler, Type.i64, operands, Type.i64, reportNode);

    case BuiltinNames.i32_atomic_rmw8_or_u: return deferASM(BuiltinNames.atomic_or, compiler, Type.u8, operands, Type.i32, reportNode);
    case BuiltinNames.i32_atomic_rmw16_or_u: return deferASM(BuiltinNames.atomic_or, compiler, Type.u16, operands, Type.i32, reportNode);
    case BuiltinNames.i32_atomic_rmw_or: return deferASM(BuiltinNames.atomic_or, compiler, Type.i32, operands, Type.i32, reportNode);
    case BuiltinNames.i64_atomic_rmw8_or_u: return deferASM(BuiltinNames.atomic_or, compiler, Type.u8, operands, Type.i64, reportNode);
    case BuiltinNames.i64_atomic_rmw16_or_u: return deferASM(BuiltinNames.atomic_or, compiler, Type.u16, operands, Type.i64, reportNode);
    case BuiltinNames.i64_atomic_rmw32_or_u: return deferASM(BuiltinNames.atomic_or, compiler, Type.u32, operands, Type.i64, reportNode);
    case BuiltinNames.i64_atomic_rmw_or: return deferASM(BuiltinNames.atomic_or, compiler, Type.i64, operands, Type.i64, reportNode);

    case BuiltinNames.i32_atomic_rmw8_xor_u: return deferASM(BuiltinNames.atomic_xor, compiler, Type.u8, operands, Type.i32, reportNode);
    case BuiltinNames.i32_atomic_rmw16_xor_u: return deferASM(BuiltinNames.atomic_xor, compiler, Type.u16, operands, Type.i32, reportNode);
    case BuiltinNames.i32_atomic_rmw_xor: return deferASM(BuiltinNames.atomic_xor, compiler, Type.i32, operands, Type.i32, reportNode);
    case BuiltinNames.i64_atomic_rmw8_xor_u: return deferASM(BuiltinNames.atomic_xor, compiler, Type.u8, operands, Type.i64, reportNode);
    case BuiltinNames.i64_atomic_rmw16_xor_u: return deferASM(BuiltinNames.atomic_xor, compiler, Type.u16, operands, Type.i64, reportNode);
    case BuiltinNames.i64_atomic_rmw32_xor_u: return deferASM(BuiltinNames.atomic_xor, compiler, Type.u32, operands, Type.i64, reportNode);
    case BuiltinNames.i64_atomic_rmw_xor: return deferASM(BuiltinNames.atomic_xor, compiler, Type.i64, operands, Type.i64, reportNode);

    case BuiltinNames.i32_atomic_rmw8_xchg_u: return deferASM(BuiltinNames.atomic_xchg, compiler, Type.u8, operands, Type.i32, reportNode);
    case BuiltinNames.i32_atomic_rmw16_xchg_u: return deferASM(BuiltinNames.atomic_xchg, compiler, Type.u16, operands, Type.i32, reportNode);
    case BuiltinNames.i32_atomic_rmw_xchg: return deferASM(BuiltinNames.atomic_xchg, compiler, Type.i32, operands, Type.i32, reportNode);
    case BuiltinNames.i64_atomic_rmw8_xchg_u: return deferASM(BuiltinNames.atomic_xchg, compiler, Type.u8, operands, Type.i64, reportNode);
    case BuiltinNames.i64_atomic_rmw16_xchg_u: return deferASM(BuiltinNames.atomic_xchg, compiler, Type.u16, operands, Type.i64, reportNode);
    case BuiltinNames.i64_atomic_rmw32_xchg_u: return deferASM(BuiltinNames.atomic_xchg, compiler, Type.u32, operands, Type.i64, reportNode);
    case BuiltinNames.i64_atomic_rmw_xchg: return deferASM(BuiltinNames.atomic_xchg, compiler, Type.i64, operands, Type.i64, reportNode);

    case BuiltinNames.i32_atomic_rmw8_cmpxchg_u: return deferASM(BuiltinNames.atomic_cmpxchg, compiler, Type.u8, operands, Type.i32, reportNode);
    case BuiltinNames.i32_atomic_rmw16_cmpxchg_u: return deferASM(BuiltinNames.atomic_cmpxchg, compiler, Type.u16, operands, Type.i32, reportNode);
    case BuiltinNames.i32_atomic_rmw_cmpxchg: return deferASM(BuiltinNames.atomic_cmpxchg, compiler, Type.i32, operands, Type.i32, reportNode);
    case BuiltinNames.i64_atomic_rmw8_cmpxchg_u: return deferASM(BuiltinNames.atomic_cmpxchg, compiler, Type.u8, operands, Type.i64, reportNode);
    case BuiltinNames.i64_atomic_rmw16_cmpxchg_u: return deferASM(BuiltinNames.atomic_cmpxchg, compiler, Type.u16, operands, Type.i64, reportNode);
    case BuiltinNames.i64_atomic_rmw32_cmpxchg_u: return deferASM(BuiltinNames.atomic_cmpxchg, compiler, Type.u32, operands, Type.i64, reportNode);
    case BuiltinNames.i64_atomic_rmw_cmpxchg: return deferASM(BuiltinNames.atomic_cmpxchg, compiler, Type.i64, operands, Type.i64, reportNode);

    case BuiltinNames.i32_wait: return deferASM(BuiltinNames.atomic_wait, compiler, Type.i32, operands, Type.i32, reportNode);
    case BuiltinNames.i64_wait: return deferASM(BuiltinNames.atomic_wait, compiler, Type.i64, operands, Type.i32, reportNode);

    case BuiltinNames.v128_load: return deferASM(BuiltinNames.load, compiler, Type.v128, operands, Type.v128, reportNode);
    case BuiltinNames.v128_store: return deferASM(BuiltinNames.store, compiler, Type.v128, operands, Type.v128, reportNode);

    case BuiltinNames.i8x16_splat: return deferASM(BuiltinNames.v128_splat, compiler, Type.i8, operands, Type.v128, reportNode);
    case BuiltinNames.i8x16_extract_lane_s: return deferASM(BuiltinNames.v128_extract_lane, compiler, Type.i8, operands, Type.i8, reportNode);
    case BuiltinNames.i8x16_extract_lane_u: return deferASM(BuiltinNames.v128_extract_lane, compiler, Type.u8, operands, Type.u8, reportNode);
    case BuiltinNames.i8x16_replace_lane: return deferASM(BuiltinNames.v128_replace_lane, compiler, Type.i8, operands, Type.v128, reportNode);
    case BuiltinNames.i8x16_add: return deferASM(BuiltinNames.v128_add, compiler, Type.i8, operands, Type.v128, reportNode);
    case BuiltinNames.i8x16_sub: return deferASM(BuiltinNames.v128_sub, compiler, Type.i8, operands, Type.v128, reportNode);
    case BuiltinNames.i8x16_mul: return deferASM(BuiltinNames.v128_mul, compiler, Type.i8, operands, Type.v128, reportNode);
    case BuiltinNames.i8x16_min_s: return deferASM(BuiltinNames.v128_min, compiler, Type.i8, operands, Type.v128, reportNode);
    case BuiltinNames.i8x16_min_u: return deferASM(BuiltinNames.v128_min, compiler, Type.u8, operands, Type.v128, reportNode);
    case BuiltinNames.i8x16_max_s: return deferASM(BuiltinNames.v128_max, compiler, Type.i8, operands, Type.v128, reportNode);
    case BuiltinNames.i8x16_max_u: return deferASM(BuiltinNames.v128_max, compiler, Type.u8, operands, Type.v128, reportNode);
    case BuiltinNames.i8x16_avgr_u: return deferASM(BuiltinNames.v128_avgr, compiler, Type.u8, operands, Type.v128, reportNode);
    case BuiltinNames.i8x16_neg: return deferASM(BuiltinNames.v128_neg, compiler, Type.i8, operands, Type.v128, reportNode);
    case BuiltinNames.i8x16_add_saturate_s: return deferASM(BuiltinNames.v128_add_saturate, compiler, Type.i8, operands, Type.v128, reportNode);
    case BuiltinNames.i8x16_add_saturate_u: return deferASM(BuiltinNames.v128_add_saturate, compiler, Type.u8, operands, Type.v128, reportNode);
    case BuiltinNames.i8x16_sub_saturate_s: return deferASM(BuiltinNames.v128_sub_saturate, compiler, Type.i8, operands, Type.v128, reportNode);
    case BuiltinNames.i8x16_sub_saturate_u: return deferASM(BuiltinNames.v128_sub_saturate, compiler, Type.u8, operands, Type.v128, reportNode);
    case BuiltinNames.i8x16_shl: return deferASM(BuiltinNames.v128_shl, compiler, Type.i8, operands, Type.v128, reportNode);
    case BuiltinNames.i8x16_shr_s: return deferASM(BuiltinNames.v128_shr, compiler, Type.i8, operands, Type.v128, reportNode);
    case BuiltinNames.i8x16_shr_u: return deferASM(BuiltinNames.v128_shr, compiler, Type.u8, operands, Type.v128, reportNode);
    case BuiltinNames.i8x16_any_true: return deferASM(BuiltinNames.v128_any_true, compiler, Type.i8, operands, Type.i32, reportNode);
    case BuiltinNames.i8x16_all_true: return deferASM(BuiltinNames.v128_all_true, compiler, Type.i8, operands, Type.i32, reportNode);
    case BuiltinNames.i8x16_eq: return deferASM(BuiltinNames.v128_eq, compiler, Type.i8, operands, Type.v128, reportNode);
    case BuiltinNames.i8x16_ne: return deferASM(BuiltinNames.v128_ne, compiler, Type.i8, operands, Type.v128, reportNode);
    case BuiltinNames.i8x16_lt_s: return deferASM(BuiltinNames.v128_lt, compiler, Type.i8, operands, Type.v128, reportNode);
    case BuiltinNames.i8x16_lt_u: return deferASM(BuiltinNames.v128_lt, compiler, Type.u8, operands, Type.v128, reportNode);
    case BuiltinNames.i8x16_le_s: return deferASM(BuiltinNames.v128_le, compiler, Type.i8, operands, Type.v128, reportNode);
    case BuiltinNames.i8x16_le_u: return deferASM(BuiltinNames.v128_le, compiler, Type.u8, operands, Type.v128, reportNode);
    case BuiltinNames.i8x16_gt_s: return deferASM(BuiltinNames.v128_gt, compiler, Type.i8, operands, Type.v128, reportNode);
    case BuiltinNames.i8x16_gt_u: return deferASM(BuiltinNames.v128_gt, compiler, Type.u8, operands, Type.v128, reportNode);
    case BuiltinNames.i8x16_ge_s: return deferASM(BuiltinNames.v128_ge, compiler, Type.i8, operands, Type.v128, reportNode);
    case BuiltinNames.i8x16_ge_u: return deferASM(BuiltinNames.v128_ge, compiler, Type.u8, operands, Type.v128, reportNode);
    case BuiltinNames.i8x16_narrow_i16x8_s: return deferASM(BuiltinNames.v128_narrow, compiler, Type.i16, operands, Type.v128, reportNode);
    case BuiltinNames.i8x16_narrow_i16x8_u: return deferASM(BuiltinNames.v128_narrow, compiler, Type.u16, operands, Type.v128, reportNode);

    case BuiltinNames.i16x8_splat: return deferASM(BuiltinNames.v128_splat, compiler, Type.i16, operands, Type.v128, reportNode);
    case BuiltinNames.i16x8_extract_lane_s: return deferASM(BuiltinNames.v128_extract_lane, compiler, Type.i16, operands, Type.i16, reportNode);
    case BuiltinNames.i16x8_extract_lane_u: return deferASM(BuiltinNames.v128_extract_lane, compiler, Type.u16, operands, Type.u16, reportNode);
    case BuiltinNames.i16x8_replace_lane: return deferASM(BuiltinNames.v128_replace_lane, compiler, Type.i16, operands, Type.v128, reportNode);
    case BuiltinNames.i16x8_add: return deferASM(BuiltinNames.v128_add, compiler, Type.i16, operands, Type.v128, reportNode);
    case BuiltinNames.i16x8_sub: return deferASM(BuiltinNames.v128_sub, compiler, Type.i16, operands, Type.v128, reportNode);
    case BuiltinNames.i16x8_mul: return deferASM(BuiltinNames.v128_mul, compiler, Type.i16, operands, Type.v128, reportNode);
    case BuiltinNames.i16x8_min_s: return deferASM(BuiltinNames.v128_min, compiler, Type.i16, operands, Type.v128, reportNode);
    case BuiltinNames.i16x8_min_u: return deferASM(BuiltinNames.v128_min, compiler, Type.u16, operands, Type.v128, reportNode);
    case BuiltinNames.i16x8_max_s: return deferASM(BuiltinNames.v128_max, compiler, Type.i16, operands, Type.v128, reportNode);
    case BuiltinNames.i16x8_max_u: return deferASM(BuiltinNames.v128_max, compiler, Type.u16, operands, Type.v128, reportNode);
    case BuiltinNames.i16x8_avgr_u: return deferASM(BuiltinNames.v128_avgr, compiler, Type.u16, operands, Type.v128, reportNode);
    case BuiltinNames.i16x8_neg: return deferASM(BuiltinNames.v128_neg, compiler, Type.i16, operands, Type.v128, reportNode);
    case BuiltinNames.i16x8_add_saturate_s: return deferASM(BuiltinNames.v128_add_saturate, compiler, Type.i16, operands, Type.v128, reportNode);
    case BuiltinNames.i16x8_add_saturate_u: return deferASM(BuiltinNames.v128_add_saturate, compiler, Type.u16, operands, Type.v128, reportNode);
    case BuiltinNames.i16x8_sub_saturate_s: return deferASM(BuiltinNames.v128_sub_saturate, compiler, Type.i16, operands, Type.v128, reportNode);
    case BuiltinNames.i16x8_sub_saturate_u: return deferASM(BuiltinNames.v128_sub_saturate, compiler, Type.u16, operands, Type.v128, reportNode);
    case BuiltinNames.i16x8_shl: return deferASM(BuiltinNames.v128_shl, compiler, Type.i16, operands, Type.v128, reportNode);
    case BuiltinNames.i16x8_shr_s: return deferASM(BuiltinNames.v128_shr, compiler, Type.i16, operands, Type.v128, reportNode);
    case BuiltinNames.i16x8_shr_u: return deferASM(BuiltinNames.v128_shr, compiler, Type.u16, operands, Type.v128, reportNode);
    case BuiltinNames.i16x8_any_true: return deferASM(BuiltinNames.v128_any_true, compiler, Type.i16, operands, Type.i32, reportNode);
    case BuiltinNames.i16x8_all_true: return deferASM(BuiltinNames.v128_all_true, compiler, Type.i16, operands, Type.i32, reportNode);
    case BuiltinNames.i16x8_eq: return deferASM(BuiltinNames.v128_eq, compiler, Type.i16, operands, Type.v128, reportNode);
    case BuiltinNames.i16x8_ne: return deferASM(BuiltinNames.v128_ne, compiler, Type.i16, operands, Type.v128, reportNode);
    case BuiltinNames.i16x8_lt_s: return deferASM(BuiltinNames.v128_lt, compiler, Type.i16, operands, Type.v128, reportNode);
    case BuiltinNames.i16x8_lt_u: return deferASM(BuiltinNames.v128_lt, compiler, Type.u16, operands, Type.v128, reportNode);
    case BuiltinNames.i16x8_le_s: return deferASM(BuiltinNames.v128_le, compiler, Type.i16, operands, Type.v128, reportNode);
    case BuiltinNames.i16x8_le_u: return deferASM(BuiltinNames.v128_le, compiler, Type.u16, operands, Type.v128, reportNode);
    case BuiltinNames.i16x8_gt_s: return deferASM(BuiltinNames.v128_gt, compiler, Type.i16, operands, Type.v128, reportNode);
    case BuiltinNames.i16x8_gt_u: return deferASM(BuiltinNames.v128_gt, compiler, Type.u16, operands, Type.v128, reportNode);
    case BuiltinNames.i16x8_ge_s: return deferASM(BuiltinNames.v128_ge, compiler, Type.i16, operands, Type.v128, reportNode);
    case BuiltinNames.i16x8_ge_u: return deferASM(BuiltinNames.v128_ge, compiler, Type.u16, operands, Type.v128, reportNode);
    case BuiltinNames.i16x8_narrow_i32x4_s: return deferASM(BuiltinNames.v128_narrow, compiler, Type.i32, operands, Type.v128, reportNode);
    case BuiltinNames.i16x8_narrow_i32x4_u: return deferASM(BuiltinNames.v128_narrow, compiler, Type.u32, operands, Type.v128, reportNode);
    case BuiltinNames.i16x8_widen_low_i8x16_s: return deferASM(BuiltinNames.v128_widen_low, compiler, Type.i8, operands, Type.v128, reportNode);
    case BuiltinNames.i16x8_widen_low_i8x16_u: return deferASM(BuiltinNames.v128_widen_low, compiler, Type.u8, operands, Type.v128, reportNode);
    case BuiltinNames.i16x8_widen_high_i8x16_s: return deferASM(BuiltinNames.v128_widen_high, compiler, Type.i8, operands, Type.v128, reportNode);
    case BuiltinNames.i16x8_widen_high_i8x16_u: return deferASM(BuiltinNames.v128_widen_high, compiler, Type.u8, operands, Type.v128, reportNode);
    case BuiltinNames.i16x8_load8x8_s: return deferASM(BuiltinNames.v128_load_ext, compiler, Type.i8, operands, Type.v128, reportNode);
    case BuiltinNames.i16x8_load8x8_u: return deferASM(BuiltinNames.v128_load_ext, compiler, Type.u8, operands, Type.v128, reportNode);

    case BuiltinNames.i32x4_splat: return deferASM(BuiltinNames.v128_splat, compiler, Type.i32, operands, Type.v128, reportNode);
    case BuiltinNames.i32x4_extract_lane: return deferASM(BuiltinNames.v128_extract_lane, compiler, Type.i32, operands, Type.i32, reportNode);
    case BuiltinNames.i32x4_replace_lane: return deferASM(BuiltinNames.v128_replace_lane, compiler, Type.i32, operands, Type.v128, reportNode);
    case BuiltinNames.i32x4_add: return deferASM(BuiltinNames.v128_add, compiler, Type.i32, operands, Type.v128, reportNode);
    case BuiltinNames.i32x4_sub: return deferASM(BuiltinNames.v128_sub, compiler, Type.i32, operands, Type.v128, reportNode);
    case BuiltinNames.i32x4_mul: return deferASM(BuiltinNames.v128_mul, compiler, Type.i32, operands, Type.v128, reportNode);
    case BuiltinNames.i32x4_min_s: return deferASM(BuiltinNames.v128_min, compiler, Type.i32, operands, Type.v128, reportNode);
    case BuiltinNames.i32x4_min_u: return deferASM(BuiltinNames.v128_min, compiler, Type.u32, operands, Type.v128, reportNode);
    case BuiltinNames.i32x4_max_s: return deferASM(BuiltinNames.v128_max, compiler, Type.i32, operands, Type.v128, reportNode);
    case BuiltinNames.i32x4_max_u: return deferASM(BuiltinNames.v128_max, compiler, Type.u32, operands, Type.v128, reportNode);
    case BuiltinNames.i32x4_dot_i16x8_s: return deferASM(BuiltinNames.v128_dot, compiler, Type.i16, operands, Type.v128, reportNode);
    case BuiltinNames.i32x4_neg: return deferASM(BuiltinNames.v128_neg, compiler, Type.i32, operands, Type.v128, reportNode);
    case BuiltinNames.i32x4_shl: return deferASM(BuiltinNames.v128_shl, compiler, Type.i32, operands, Type.v128, reportNode);
    case BuiltinNames.i32x4_shr_s: return deferASM(BuiltinNames.v128_shr, compiler, Type.i32, operands, Type.v128, reportNode);
    case BuiltinNames.i32x4_shr_u: return deferASM(BuiltinNames.v128_shr, compiler, Type.u32, operands, Type.v128, reportNode);
    case BuiltinNames.i32x4_any_true: return deferASM(BuiltinNames.v128_any_true, compiler, Type.i32, operands, Type.i32, reportNode);
    case BuiltinNames.i32x4_all_true: return deferASM(BuiltinNames.v128_all_true, compiler, Type.i32, operands, Type.i32, reportNode);
    case BuiltinNames.i32x4_eq: return deferASM(BuiltinNames.v128_eq, compiler, Type.i32, operands, Type.v128, reportNode);
    case BuiltinNames.i32x4_ne: return deferASM(BuiltinNames.v128_ne, compiler, Type.i32, operands, Type.v128, reportNode);
    case BuiltinNames.i32x4_lt_s: return deferASM(BuiltinNames.v128_lt, compiler, Type.i32, operands, Type.v128, reportNode);
    case BuiltinNames.i32x4_lt_u: return deferASM(BuiltinNames.v128_lt, compiler, Type.u32, operands, Type.v128, reportNode);
    case BuiltinNames.i32x4_le_s: return deferASM(BuiltinNames.v128_le, compiler, Type.i32, operands, Type.v128, reportNode);
    case BuiltinNames.i32x4_le_u: return deferASM(BuiltinNames.v128_le, compiler, Type.u32, operands, Type.v128, reportNode);
    case BuiltinNames.i32x4_gt_s: return deferASM(BuiltinNames.v128_gt, compiler, Type.i32, operands, Type.v128, reportNode);
    case BuiltinNames.i32x4_gt_u: return deferASM(BuiltinNames.v128_gt, compiler, Type.u32, operands, Type.v128, reportNode);
    case BuiltinNames.i32x4_ge_s: return deferASM(BuiltinNames.v128_ge, compiler, Type.i32, operands, Type.v128, reportNode);
    case BuiltinNames.i32x4_ge_u: return deferASM(BuiltinNames.v128_ge, compiler, Type.u32, operands, Type.v128, reportNode);
    case BuiltinNames.i32x4_trunc_sat_f32x4_s: return deferASM(BuiltinNames.v128_trunc_sat, compiler, Type.i32, operands, Type.v128, reportNode);
    case BuiltinNames.i32x4_trunc_sat_f32x4_u: return deferASM(BuiltinNames.v128_trunc_sat, compiler, Type.u32, operands, Type.v128, reportNode);
    case BuiltinNames.i32x4_widen_low_i16x8_s: return deferASM(BuiltinNames.v128_widen_low, compiler, Type.i16, operands, Type.v128, reportNode);
    case BuiltinNames.i32x4_widen_low_i16x8_u: return deferASM(BuiltinNames.v128_widen_low, compiler, Type.u16, operands, Type.v128, reportNode);
    case BuiltinNames.i32x4_widen_high_i16x8_s: return deferASM(BuiltinNames.v128_widen_high, compiler, Type.i16, operands, Type.v128, reportNode);
    case BuiltinNames.i32x4_widen_high_i16x8_u: return deferASM(BuiltinNames.v128_widen_high, compiler, Type.u16, operands, Type.v128, reportNode);
    case BuiltinNames.i32x4_load16x4_s: return deferASM(BuiltinNames.v128_load_ext, compiler, Type.i16, operands, Type.v128, reportNode);
    case BuiltinNames.i32x4_load16x4_u: return deferASM(BuiltinNames.v128_load_ext, compiler, Type.u16, operands, Type.v128, reportNode);

    case BuiltinNames.i64x2_splat: return deferASM(BuiltinNames.v128_splat, compiler, Type.i64, operands, Type.v128, reportNode);
    case BuiltinNames.i64x2_extract_lane: return deferASM(BuiltinNames.v128_extract_lane, compiler, Type.i64, operands, Type.i64, reportNode);
    case BuiltinNames.i64x2_replace_lane: return deferASM(BuiltinNames.v128_replace_lane, compiler, Type.i64, operands, Type.v128, reportNode);
    case BuiltinNames.i64x2_add: return deferASM(BuiltinNames.v128_add, compiler, Type.i64, operands, Type.v128, reportNode);
    case BuiltinNames.i64x2_sub: return deferASM(BuiltinNames.v128_sub, compiler, Type.i64, operands, Type.v128, reportNode);
    case BuiltinNames.i64x2_neg: return deferASM(BuiltinNames.v128_neg, compiler, Type.i64, operands, Type.v128, reportNode);
    case BuiltinNames.i64x2_shl: return deferASM(BuiltinNames.v128_shl, compiler, Type.i64, operands, Type.v128, reportNode);
    case BuiltinNames.i64x2_shr_s: return deferASM(BuiltinNames.v128_shr, compiler, Type.i64, operands, Type.v128, reportNode);
    case BuiltinNames.i64x2_shr_u: return deferASM(BuiltinNames.v128_shr, compiler, Type.u64, operands, Type.v128, reportNode);
    case BuiltinNames.i64x2_any_true: return deferASM(BuiltinNames.v128_any_true, compiler, Type.i64, operands, Type.i32, reportNode);
    case BuiltinNames.i64x2_all_true: return deferASM(BuiltinNames.v128_all_true, compiler, Type.i64, operands, Type.i32, reportNode);
    case BuiltinNames.i64x2_trunc_sat_f64x2_s: return deferASM(BuiltinNames.v128_trunc_sat, compiler, Type.i64, operands, Type.v128, reportNode);
    case BuiltinNames.i64x2_trunc_sat_f64x2_u: return deferASM(BuiltinNames.v128_trunc_sat, compiler, Type.u64, operands, Type.v128, reportNode);
    case BuiltinNames.i64x2_load32x2_s: return deferASM(BuiltinNames.v128_load_ext, compiler, Type.i32, operands, Type.v128, reportNode);
    case BuiltinNames.i64x2_load32x2_u: return deferASM(BuiltinNames.v128_load_ext, compiler, Type.u32, operands, Type.v128, reportNode);

    case BuiltinNames.f32x4_splat: return deferASM(BuiltinNames.v128_splat, compiler, Type.f32, operands, Type.v128, reportNode);
    case BuiltinNames.f32x4_extract_lane: return deferASM(BuiltinNames.v128_extract_lane, compiler, Type.f32, operands, Type.f32, reportNode);
    case BuiltinNames.f32x4_replace_lane: return deferASM(BuiltinNames.v128_replace_lane, compiler, Type.f32, operands, Type.v128, reportNode);
    case BuiltinNames.f32x4_add: return deferASM(BuiltinNames.v128_add, compiler, Type.f32, operands, Type.v128, reportNode);
    case BuiltinNames.f32x4_sub: return deferASM(BuiltinNames.v128_sub, compiler, Type.f32, operands, Type.v128, reportNode);
    case BuiltinNames.f32x4_mul: return deferASM(BuiltinNames.v128_mul, compiler, Type.f32, operands, Type.v128, reportNode);
    case BuiltinNames.f32x4_div: return deferASM(BuiltinNames.v128_div, compiler, Type.f32, operands, Type.v128, reportNode);
    case BuiltinNames.f32x4_neg: return deferASM(BuiltinNames.v128_neg, compiler, Type.f32, operands, Type.v128, reportNode);
    case BuiltinNames.f32x4_min: return deferASM(BuiltinNames.v128_min, compiler, Type.f32, operands, Type.v128, reportNode);
    case BuiltinNames.f32x4_max: return deferASM(BuiltinNames.v128_max, compiler, Type.f32, operands, Type.v128, reportNode);
    case BuiltinNames.f32x4_abs: return deferASM(BuiltinNames.v128_abs, compiler, Type.f32, operands, Type.v128, reportNode);
    case BuiltinNames.f32x4_sqrt: return deferASM(BuiltinNames.v128_sqrt, compiler, Type.f32, operands, Type.v128, reportNode);
    case BuiltinNames.f32x4_eq: return deferASM(BuiltinNames.v128_eq, compiler, Type.f32, operands, Type.v128, reportNode);
    case BuiltinNames.f32x4_ne: return deferASM(BuiltinNames.v128_ne, compiler, Type.f32, operands, Type.v128, reportNode);
    case BuiltinNames.f32x4_lt: return deferASM(BuiltinNames.v128_lt, compiler, Type.f32, operands, Type.v128, reportNode);
    case BuiltinNames.f32x4_le: return deferASM(BuiltinNames.v128_le, compiler, Type.f32, operands, Type.v128, reportNode);
    case BuiltinNames.f32x4_gt: return deferASM(BuiltinNames.v128_gt, compiler, Type.f32, operands, Type.v128, reportNode);
    case BuiltinNames.f32x4_ge: return deferASM(BuiltinNames.v128_ge, compiler, Type.f32, operands, Type.v128, reportNode);
    case BuiltinNames.f32x4_convert_i32x4_s: return deferASM(BuiltinNames.v128_convert, compiler, Type.i32, operands, Type.v128, reportNode);
    case BuiltinNames.f32x4_convert_i32x4_u: return deferASM(BuiltinNames.v128_convert, compiler, Type.u32, operands, Type.v128, reportNode);
    case BuiltinNames.f32x4_qfma: return deferASM(BuiltinNames.v128_qfma, compiler, Type.f32, operands, Type.v128, reportNode);
    case BuiltinNames.f32x4_qfms: return deferASM(BuiltinNames.v128_qfms, compiler, Type.f32, operands, Type.v128, reportNode);

    case BuiltinNames.f64x2_splat: return deferASM(BuiltinNames.v128_splat, compiler, Type.f64, operands, Type.v128, reportNode);
    case BuiltinNames.f64x2_extract_lane: return deferASM(BuiltinNames.v128_extract_lane, compiler, Type.f64, operands, Type.f64, reportNode);
    case BuiltinNames.f64x2_replace_lane: return deferASM(BuiltinNames.v128_replace_lane, compiler, Type.f64, operands, Type.v128, reportNode);
    case BuiltinNames.f64x2_add: return deferASM(BuiltinNames.v128_add, compiler, Type.f64, operands, Type.v128, reportNode);
    case BuiltinNames.f64x2_sub: return deferASM(BuiltinNames.v128_sub, compiler, Type.f64, operands, Type.v128, reportNode);
    case BuiltinNames.f64x2_mul: return deferASM(BuiltinNames.v128_mul, compiler, Type.f64, operands, Type.v128, reportNode);
    case BuiltinNames.f64x2_div: return deferASM(BuiltinNames.v128_div, compiler, Type.f64, operands, Type.v128, reportNode);
    case BuiltinNames.f64x2_neg: return deferASM(BuiltinNames.v128_neg, compiler, Type.f64, operands, Type.v128, reportNode);
    case BuiltinNames.f64x2_min: return deferASM(BuiltinNames.v128_min, compiler, Type.f64, operands, Type.v128, reportNode);
    case BuiltinNames.f64x2_max: return deferASM(BuiltinNames.v128_max, compiler, Type.f64, operands, Type.v128, reportNode);
    case BuiltinNames.f64x2_abs: return deferASM(BuiltinNames.v128_abs, compiler, Type.f64, operands, Type.v128, reportNode);
    case BuiltinNames.f64x2_sqrt: return deferASM(BuiltinNames.v128_sqrt, compiler, Type.f64, operands, Type.v128, reportNode);
    case BuiltinNames.f64x2_eq: return deferASM(BuiltinNames.v128_eq, compiler, Type.f64, operands, Type.v128, reportNode);
    case BuiltinNames.f64x2_ne: return deferASM(BuiltinNames.v128_ne, compiler, Type.f64, operands, Type.v128, reportNode);
    case BuiltinNames.f64x2_lt: return deferASM(BuiltinNames.v128_lt, compiler, Type.f64, operands, Type.v128, reportNode);
    case BuiltinNames.f64x2_le: return deferASM(BuiltinNames.v128_le, compiler, Type.f64, operands, Type.v128, reportNode);
    case BuiltinNames.f64x2_gt: return deferASM(BuiltinNames.v128_gt, compiler, Type.f64, operands, Type.v128, reportNode);
    case BuiltinNames.f64x2_ge: return deferASM(BuiltinNames.v128_ge, compiler, Type.f64, operands, Type.v128, reportNode);
    case BuiltinNames.f64x2_convert_i64x2_s: return deferASM(BuiltinNames.v128_convert, compiler, Type.i64, operands, Type.v128, reportNode);
    case BuiltinNames.f64x2_convert_i64x2_u: return deferASM(BuiltinNames.v128_convert, compiler, Type.u64, operands, Type.v128, reportNode);
    case BuiltinNames.f64x2_qfma: return deferASM(BuiltinNames.v128_qfma, compiler, Type.f64, operands, Type.v128, reportNode);
    case BuiltinNames.f64x2_qfms: return deferASM(BuiltinNames.v128_qfms, compiler, Type.f64, operands, Type.v128, reportNode);

    case BuiltinNames.v8x16_shuffle: return deferASM(BuiltinNames.v128_shuffle, compiler, Type.i8, operands, Type.v128, reportNode);
    case BuiltinNames.v8x16_swizzle: return deferASM(BuiltinNames.v128_swizzle, compiler, null, operands, Type.v128, reportNode);
    case BuiltinNames.v8x16_load_splat: return deferASM(BuiltinNames.v128_load_splat, compiler, Type.u8, operands, Type.v128, reportNode);
    case BuiltinNames.v16x8_load_splat: return deferASM(BuiltinNames.v128_load_splat, compiler, Type.u16, operands, Type.v128, reportNode);
    case BuiltinNames.v32x4_load_splat: return deferASM(BuiltinNames.v128_load_splat, compiler, Type.u32, operands, Type.v128, reportNode);
    case BuiltinNames.v64x2_load_splat: return deferASM(BuiltinNames.v128_load_splat, compiler, Type.u64, operands, Type.v128, reportNode);
  }
  /* tslint:enable:max-line-length */
  return 0;
}

/** A helper for deferring inline-assembler-like calls to built-in functions. */
function deferASM(
  name: string,
  compiler: Compiler,
  typeArgument: Type | null,
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
    typeArgument ? [ typeArgument ] : null,
    operands,
    contextualType,
    reportNode,
    /* isAsm */ true
  );
}

/** Compiles the `visit_globals` function. */
export function compileVisitGlobals(compiler: Compiler): void {
  var module = compiler.module;
  var exprs = new Array<ExpressionRef>();
  var nativeSizeType = compiler.options.nativeSizeType;
  var visitInstance = assert(compiler.program.visitInstance);

  compiler.compileFunction(visitInstance);

  for (let element of compiler.program.elementsByName.values()) {
    if (element.kind != ElementKind.GLOBAL) continue;
    let global = <Global>element;
    let globalType = global.type;
    let classType = globalType.classReference;
    if (
      globalType.is(TypeFlags.REFERENCE) &&
      classType !== null &&
      !classType.hasDecorator(DecoratorFlags.UNMANAGED) &&
      global.is(CommonFlags.COMPILED)
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
  module.addFunction(BuiltinNames.visit_globals,
    NativeType.I32,  // cookie
    NativeType.None, // => void
    [ nativeSizeType ],
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
      module.flatten(code)
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
  module.addFunction(BuiltinNames.visit_members,
    createType([ usizeType.toNativeType(), NativeType.I32 ]), // ref, cookie
    NativeType.None, // => void
    [ nativeSizeType ],
    relooper.renderAndDispose(outer, 2)
  );
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
    module.addGlobal(BuiltinNames.rtti_base, NativeType.I64, false, module.i64(i64_low(offset), i64_high(offset)));
  } else {
    module.addGlobal(BuiltinNames.rtti_base, NativeType.I32, false, module.i32(i64_low(segment.offset)));
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

/** Checks that the specified feature is enabled. */
function checkFeatureEnabled(
  feature: Feature,
  reportNode: Node,
  compiler: Compiler
): i32 {
  if (!compiler.options.hasFeature(feature)) {
    compiler.error(
      DiagnosticCode.Feature_0_is_not_enabled,
      reportNode.range, featureToString(feature)
    );
    return 1;
  }
  return 0;
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
