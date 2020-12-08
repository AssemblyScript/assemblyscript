/**
 * @fileoverview Built-in elements providing core WebAssembly functionality.
 *
 * Each builtin is linked to its definition in std/assembly/builtins.ts.
 * When its prototype is called, the compiler recognizes the `@builtin`
 * decorator, looks up the respective handler in the global builtins map
 * and executes it, with the handler directly emitting WebAssembly code
 * according to context.
 *
 * Builtins can be categorized into core builtins that typically are generic
 * and emit code directly and aliases calling core builtins with overridden
 * contexts. The latter is used by inline assembler aliases of WebAssembly
 * instructions, like `i64.load8_u` deferring to `<i64>load<u8>`.
 *
 * The `contextIsExact` modifier is used to force a specific instruction
 * family. A `i32.store8` deferring to `<i32>store<i8>` for example is
 * ambiguous in that the input can still be an i32 or an i64, leading to
 * either an `i32.store8` or an `i64.store8`, so `i32` is forced there.
 * This behavior is indicated by `from i32/i64` in the comments below.
 *
 * @license Apache-2.0
 */

// TODO: Add builtins for `i32.add` etc. that do not have a core builtin.

import {
  Compiler,
  Constraints,
  RuntimeFeatures
} from "./compiler";

import {
  DiagnosticCode,
  DiagnosticCategory
} from "./diagnostics";

import {
  Expression,
  LiteralKind,
  StringLiteralExpression,
  CallExpression,
  NodeKind,
  LiteralExpression,
  ArrayLiteralExpression
} from "./ast";

import {
  Type,
  TypeKind,
  TypeFlags
} from "./types";

import {
  BinaryOp,
  UnaryOp,
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
  SIMDLoadOp,
  getLocalGetIndex,
  createType,
  ExpressionRunnerFlags
} from "./module";

import {
  ElementKind,
  FunctionPrototype,
  Field,
  Global,
  DecoratorFlags,
  ClassPrototype,
  Class
} from "./program";

import {
  findUsedLocals,
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
  export const setArgumentsLength = "~setArgumentsLength";

  // std/builtins.ts
  export const abort = "~lib/builtins/abort";
  export const trace = "~lib/builtins/trace";
  export const seed = "~lib/builtins/seed";

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

  export const add = "~lib/builtins/add";
  export const sub = "~lib/builtins/sub";
  export const mul = "~lib/builtins/mul";
  export const div = "~lib/builtins/div";
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
  export const call_indirect = "~lib/builtins/call_indirect";
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

  export const i32_add = "~lib/builtins/i32.add";
  export const i64_add = "~lib/builtins/i64.add";
  export const f32_add = "~lib/builtins/f32.add";
  export const f64_add = "~lib/builtins/f64.add";
  export const i32_sub = "~lib/builtins/i32.sub";
  export const i64_sub = "~lib/builtins/i64.sub";
  export const f32_sub = "~lib/builtins/f32.sub";
  export const f64_sub = "~lib/builtins/f64.sub";
  export const i32_mul = "~lib/builtins/i32.mul";
  export const i64_mul = "~lib/builtins/i64.mul";
  export const f32_mul = "~lib/builtins/f32.mul";
  export const f64_mul = "~lib/builtins/f64.mul";
  export const i32_div_s = "~lib/builtins/i32.div_s";
  export const i32_div_u = "~lib/builtins/i32.div_u";
  export const i64_div_s = "~lib/builtins/i64.div_s";
  export const i64_div_u = "~lib/builtins/i64.div_u";
  export const f32_div = "~lib/builtins/f32.div";
  export const f64_div = "~lib/builtins/f64.div";

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
  export const v128_bitmask = "~lib/builtins/v128.bitmask";
  export const v128_min = "~lib/builtins/v128.min";
  export const v128_max = "~lib/builtins/v128.max";
  export const v128_pmin = "~lib/builtins/v128.pmin";
  export const v128_pmax = "~lib/builtins/v128.pmax";
  export const v128_dot = "~lib/builtins/v128.dot";
  export const v128_avgr = "~lib/builtins/v128.avgr";
  export const v128_abs = "~lib/builtins/v128.abs";
  export const v128_sqrt = "~lib/builtins/v128.sqrt";
  export const v128_ceil = "~lib/builtins/v128.ceil";
  export const v128_floor = "~lib/builtins/v128.floor";
  export const v128_trunc = "~lib/builtins/v128.trunc";
  export const v128_nearest = "~lib/builtins/v128.nearest";
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
  export const i8x16_abs = "~lib/builtins/i8x16.abs";
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
  export const i8x16_bitmask = "~lib/builtins/i8x16.bitmask";
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
  export const i16x8_abs = "~lib/builtins/i16x8.abs";
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
  export const i16x8_bitmask = "~lib/builtins/i16x8.bitmask";
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
  export const i32x4_abs = "~lib/builtins/i32x4.abs";
  export const i32x4_neg = "~lib/builtins/i32x4.neg";
  export const i32x4_shl = "~lib/builtins/i32x4.shl";
  export const i32x4_shr_s = "~lib/builtins/i32x4.shr_s";
  export const i32x4_shr_u = "~lib/builtins/i32x4.shr_u";
  export const i32x4_any_true = "~lib/builtins/i32x4.any_true";
  export const i32x4_all_true = "~lib/builtins/i32x4.all_true";
  export const i32x4_bitmask = "~lib/builtins/i32x4.bitmask";
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
  export const f32x4_pmin = "~lib/builtins/f32x4.pmin";
  export const f32x4_pmax = "~lib/builtins/f32x4.pmax";
  export const f32x4_abs = "~lib/builtins/f32x4.abs";
  export const f32x4_sqrt = "~lib/builtins/f32x4.sqrt";
  export const f32x4_ceil = "~lib/builtins/f32x4.ceil";
  export const f32x4_floor = "~lib/builtins/f32x4.floor";
  export const f32x4_trunc = "~lib/builtins/f32x4.trunc";
  export const f32x4_nearest = "~lib/builtins/f32x4.nearest";
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
  export const f64x2_pmin = "~lib/builtins/f64x2.pmin";
  export const f64x2_pmax = "~lib/builtins/f64x2.pmax";
  export const f64x2_abs = "~lib/builtins/f64x2.abs";
  export const f64x2_sqrt = "~lib/builtins/f64x2.sqrt";
  export const f64x2_ceil = "~lib/builtins/f64x2.ceil";
  export const f64x2_floor = "~lib/builtins/f64x2.floor";
  export const f64x2_trunc = "~lib/builtins/f64x2.trunc";
  export const f64x2_nearest = "~lib/builtins/f64x2.nearest";
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
  export const heap_base = "~lib/memory/__heap_base";
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

  // std/function.ts
  export const Function = "~lib/function/Function";

  // std/memory.ts
  export const memory_size = "~lib/memory/memory.size";
  export const memory_grow = "~lib/memory/memory.grow";
  export const memory_copy = "~lib/memory/memory.copy";
  export const memory_fill = "~lib/memory/memory.fill";
  export const memory_data = "~lib/memory/memory.data";

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

  // std/bindings/wasi.ts
  export const wasiAbort = "~lib/wasi/index/abort";
  export const wasiTrace = "~lib/wasi/index/trace";
  export const wasiSeed = "~lib/wasi/index/seed";
}

/** Builtin compilation context. */
export class BuiltinContext {
  constructor(
    /** Compiler reference. */
    public compiler: Compiler,
    /** Prototype being called. */
    public prototype: FunctionPrototype,
    /** Provided type arguments. */
    public typeArguments: Type[] | null,
    /** Provided operands. */
    public operands: Expression[],
    /** Provided this operand, if any. */
    public thisOperand: Expression | null,
    /** Contextual type. */
    public contextualType: Type,
    /** Respective call expression. */
    public reportNode: CallExpression,
    /** Whether originating from inline assembly. */
    public contextIsExact: bool
  ) {}
}

/** Global builtins map. */
export const builtins = new Map<string,(ctx: BuiltinContext) => ExpressionRef>();

/** Function builtins map. */
export const function_builtins = new Map<string,(ctx: BuiltinContext) => ExpressionRef>();

// === Static type evaluation =================================================================

// isInteger<T!>() / isInteger<T?>(value: T) -> bool
function builtin_isInteger(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  var type = evaluateConstantType(ctx);
  compiler.currentType = Type.bool;
  if (!type) return module.unreachable();
  return module.i32(type.isIntegerValue ? 1 : 0);
}
builtins.set(BuiltinNames.isInteger, builtin_isInteger);

// isFloat<T!>() / isFloat<T?>(value: T) -> bool
function builtin_isFloat(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  var type = evaluateConstantType(ctx);
  compiler.currentType = Type.bool;
  if (!type) return module.unreachable();
  return module.i32(type.isFloatValue ? 1 : 0);
}
builtins.set(BuiltinNames.isFloat, builtin_isFloat);

// isBoolean<T!>() / isBoolean<T?>(value: T) -> bool
function builtin_isBoolean(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  var type = evaluateConstantType(ctx);
  compiler.currentType = Type.bool;
  if (!type) return module.unreachable();
  return module.i32(type.isBooleanValue ? 1 : 0);
}
builtins.set(BuiltinNames.isBoolean, builtin_isBoolean);

// isSigned<T!>() / isSigned<T?>(value: T) -> bool
function builtin_isSigned(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  var type = evaluateConstantType(ctx);
  compiler.currentType = Type.bool;
  if (!type) return module.unreachable();
  return module.i32(type.isSignedIntegerValue ? 1 : 0);
}
builtins.set(BuiltinNames.isSigned, builtin_isSigned);

// isReference<T!>() / isReference<T?>(value: T) -> bool
function builtin_isReference(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  var type = evaluateConstantType(ctx);
  compiler.currentType = Type.bool;
  if (!type) return module.unreachable();
  return module.i32(type.isReference ? 1 : 0);
}
builtins.set(BuiltinNames.isReference, builtin_isReference);

// isString<T!>() / isString<T?>(value: T) -> bool
function builtin_isString(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  var type = evaluateConstantType(ctx);
  compiler.currentType = Type.bool;
  if (!type) return module.unreachable();
  var classReference = type.getClass();
  return module.i32(
    classReference !== null && classReference.isAssignableTo(compiler.program.stringInstance)
      ? 1
      : 0
  );
}
builtins.set(BuiltinNames.isString, builtin_isString);

// isArray<T!>() / isArray<T?>(value: T) -> bool
function builtin_isArray(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  var type = evaluateConstantType(ctx);
  compiler.currentType = Type.bool;
  if (!type) return module.unreachable();
  var classReference = type.getClass();
  return module.i32(
    classReference !== null && classReference.extends(compiler.program.arrayPrototype)
      ? 1
      : 0
  );
}
builtins.set(BuiltinNames.isArray, builtin_isArray);

// isArrayLike<T!>() / isArrayLike<T?>(value: T) -> bool
function builtin_isArrayLike(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  var type = evaluateConstantType(ctx);
  compiler.currentType = Type.bool;
  if (!type) return module.unreachable();
  var classReference = type.getClass();
  return module.i32(
    classReference !== null && classReference.isArrayLike
      ? 1
      : 0
  );
}
builtins.set(BuiltinNames.isArrayLike, builtin_isArrayLike);

// isFunction<T!> / isFunction<T?>(value: T) -> bool
function builtin_isFunction(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  var type = evaluateConstantType(ctx);
  compiler.currentType = Type.bool;
  if (!type) return module.unreachable();
  return module.i32(type.isFunction ? 1 : 0);
}
builtins.set(BuiltinNames.isFunction, builtin_isFunction);

// isNullable<T!> / isNullable<T?>(value: T) -> bool
function builtin_isNullable(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  var type = evaluateConstantType(ctx);
  compiler.currentType = Type.bool;
  if (!type) return module.unreachable();
  return module.i32(type.isNullableReference ? 1 : 0);
}
builtins.set(BuiltinNames.isNullable, builtin_isNullable);

// isDefined(expression) -> bool
function builtin_isDefined(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  compiler.currentType = Type.bool;
  if (
    checkTypeAbsent(ctx) |
    checkArgsRequired(ctx, 1)
  ) return module.unreachable();
  var element = compiler.resolver.lookupExpression(
    ctx.operands[0],
    compiler.currentFlow,
    Type.auto,
    ReportMode.SWALLOW
  );
  return module.i32(element !== null ? 1 : 0);
}
builtins.set(BuiltinNames.isDefined, builtin_isDefined);

// isConstant(expression) -> bool
function builtin_isConstant(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  compiler.currentType = Type.bool;
  if (
    checkTypeAbsent(ctx) |
    checkArgsRequired(ctx, 1)
  ) return module.unreachable();
  var expr = compiler.compileExpression(ctx.operands[0], Type.auto);
  compiler.currentType = Type.bool;
  return module.i32(getExpressionId(expr) == ExpressionId.Const ? 1 : 0);
}
builtins.set(BuiltinNames.isConstant, builtin_isConstant);

// isManaged<T!>() -> bool
function builtin_isManaged(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  var type = evaluateConstantType(ctx);
  compiler.currentType = Type.bool;
  if (!type) return module.unreachable();
  return module.i32(type.isManaged ? 1 : 0);
}
builtins.set(BuiltinNames.isManaged, builtin_isManaged);

// isVoid<T!>() -> bool
function builtin_isVoid(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  var type = evaluateConstantType(ctx);
  compiler.currentType = Type.bool;
  if (!type) return module.unreachable();
  return module.i32(type.kind == TypeKind.VOID ? 1 : 0);
}
builtins.set(BuiltinNames.isVoid, builtin_isVoid);

// lengthof<T!>() -> i32
function builtin_lengthof(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  var type = evaluateConstantType(ctx);
  compiler.currentType = Type.i32;
  if (!type) return module.unreachable();
  var signatureReference = type.signatureReference;
  if (!signatureReference) {
    compiler.error(
      DiagnosticCode.Type_0_has_no_call_signatures,
      ctx.reportNode.range, type.toString()
    );
    return module.unreachable();
  }
  return module.i32(signatureReference.parameterTypes.length);
}
builtins.set(BuiltinNames.lengthof, builtin_lengthof);

// sizeof<T!>() -> usize*
function builtin_sizeof(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  compiler.currentType = compiler.options.usizeType;
  if (
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 0)
  ) return module.unreachable();
  var type = ctx.typeArguments![0];
  var byteSize = type.byteSize;
  if (!byteSize) {
    compiler.error(
      DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
      ctx.reportNode.typeArgumentsRange, "sizeof", type.toString()
    );
    return module.unreachable();
  }
  return contextualUsize(compiler, i64_new(byteSize), ctx.contextualType);
}
builtins.set(BuiltinNames.sizeof, builtin_sizeof);

// alignof<T!>() -> usize*
function builtin_alignof(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  compiler.currentType = compiler.options.usizeType;
  if (
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 0)
  ) return module.unreachable();
  var type = ctx.typeArguments![0];
  var byteSize = type.byteSize;
  if (!isPowerOf2(byteSize)) { // implies == 0
    compiler.error(
      DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
      ctx.reportNode.typeArgumentsRange, "alignof", type.toString()
    );
    return module.unreachable();
  }
  return contextualUsize(compiler, i64_new(ctz<i32>(byteSize)), ctx.contextualType);
}
builtins.set(BuiltinNames.alignof, builtin_alignof);

// offsetof<T!>(fieldName?: string) -> usize*
function builtin_offsetof(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  compiler.currentType = compiler.options.usizeType;
  if (
    checkTypeRequired(ctx) |
    checkArgsOptional(ctx, 0, 1)
  ) return module.unreachable();
  var operands = ctx.operands;
  var contextualType = ctx.contextualType;
  var type = ctx.typeArguments![0];
  var classReference = type.getClassOrWrapper(compiler.program);
  if (!classReference) {
    compiler.error(
      DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
      ctx.reportNode.typeArgumentsRange, "offsetof", type.toString()
    );
    if (compiler.options.isWasm64) {
      if (contextualType.isIntegerValue && contextualType.size <= 32) {
        compiler.currentType = Type.u32;
      }
    } else {
      if (contextualType.isIntegerValue && contextualType.size == 64) {
        compiler.currentType = Type.u64;
      }
    }
    return module.unreachable();
  }
  if (operands.length) {
    let firstOperand = operands[0];
    if (!firstOperand.isLiteralKind(LiteralKind.STRING)) {
      compiler.error(
        DiagnosticCode.String_literal_expected,
        operands[0].range
      );
      return module.unreachable();
    }
    let fieldName = (<StringLiteralExpression>firstOperand).value;
    let classMembers = classReference.members;
    if (classMembers !== null && classMembers.has(fieldName)) {
      let member = assert(classMembers.get(fieldName));
      if (member.kind == ElementKind.FIELD) {
        return contextualUsize(compiler, i64_new((<Field>member).memoryOffset), contextualType);
      }
    }
    compiler.error(
      DiagnosticCode.Type_0_has_no_property_1,
      firstOperand.range, classReference.internalName, fieldName
    );
    return module.unreachable();
  }
  return contextualUsize(compiler, i64_new(classReference.nextMemoryOffset), contextualType);
}
builtins.set(BuiltinNames.offsetof, builtin_offsetof);

// nameof<T> -> string
function builtin_nameof(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  var resultType = evaluateConstantType(ctx);
  if (!resultType) {
    compiler.currentType = compiler.program.stringInstance.type;
    return module.unreachable();
  }
  var value: string;
  if (resultType.isInternalReference) {
    let classReference = resultType.getClass();
    if (classReference) {
      value = classReference.name;
    } else {
      assert(resultType.getSignature());
      value = "Function";
    }
  } else {
    value = resultType.toString();
  }
  return compiler.ensureStaticString(value);
}
builtins.set(BuiltinNames.nameof, builtin_nameof);

// idof<T> -> u32
function builtin_idof(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  var type = evaluateConstantType(ctx);
  compiler.currentType = Type.u32;
  if (!type) return module.unreachable();
  let signatureReference = type.getSignature();
  if (signatureReference) {
    return module.i32(signatureReference.id);
  }
  let classReference = type.getClassOrWrapper(compiler.program);
  if (classReference !== null && !classReference.hasDecorator(DecoratorFlags.UNMANAGED)) {
    return module.i32(classReference.id);
  }
  compiler.error(
    DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
    ctx.reportNode.typeArgumentsRange, "idof", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.idof, builtin_idof);

// === Math ===================================================================================

// clz<T?>(value: T) -> T
function builtin_clz(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkTypeOptional(ctx, true) |
    checkArgsRequired(ctx, 1)
  ) return module.unreachable();
  var typeArguments = ctx.typeArguments;
  var arg0 = typeArguments
    ? compiler.compileExpression(ctx.operands[0], typeArguments[0], Constraints.CONV_IMPLICIT | Constraints.MUST_WRAP)
    : compiler.compileExpression(ctx.operands[0], Type.i32, Constraints.MUST_WRAP);
  var type = compiler.currentType;
  if (type.isValue) {
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
    ctx.reportNode.typeArgumentsRange, "clz", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.clz, builtin_clz);

// ctz<T?>(value: T) -> T
function builtin_ctz(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkTypeOptional(ctx, true) |
    checkArgsRequired(ctx, 1)
  ) return module.unreachable();
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments;
  var arg0 = typeArguments
    ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT | Constraints.MUST_WRAP)
    : compiler.compileExpression(operands[0], Type.i32, Constraints.MUST_WRAP);
  var type = compiler.currentType;
  if (type.isValue) {
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
    ctx.reportNode.typeArgumentsRange, "ctz", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.ctz, builtin_ctz);

// popcnt<T?>(value: T) -> T
function builtin_popcnt(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkTypeOptional(ctx, true) |
    checkArgsRequired(ctx, 1)
  ) return module.unreachable();
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments;
  var arg0 = typeArguments
    ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT | Constraints.MUST_WRAP)
    : compiler.compileExpression(operands[0], Type.i32, Constraints.MUST_WRAP);
  var type = compiler.currentType;
  if (type.isValue) {
    switch (compiler.currentType.kind) {
      case TypeKind.BOOL: return arg0;
      case TypeKind.I8: // not wrapped
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
    ctx.reportNode.typeArgumentsRange, "popcnt", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.popcnt, builtin_popcnt);

// rotl<T?>(value: T, shift: T) -> T
function builtin_rotl(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkTypeOptional(ctx, true) |
    checkArgsRequired(ctx, 2)
  ) return module.unreachable();
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments;
  var arg0 = typeArguments
    ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT | Constraints.MUST_WRAP)
    : compiler.compileExpression(operands[0], Type.i32, Constraints.MUST_WRAP);
  var type = compiler.currentType;
  if (type.isValue) {
    let arg1 = compiler.compileExpression(operands[1], type, Constraints.CONV_IMPLICIT);
    switch (type.kind) {
      case TypeKind.BOOL: return arg0;
      case TypeKind.I8:
      case TypeKind.I16:
      case TypeKind.U8:
      case TypeKind.U16: {
        // (value << (shift & mask)) | (value >>> ((0 - shift) & mask))
        let flow = compiler.currentFlow;
        let temp1 = flow.getTempLocal(type, findUsedLocals(arg1));
        flow.setLocalFlag(temp1.index, LocalFlags.WRAPPED);
        let temp2 = flow.getTempLocal(type);
        flow.setLocalFlag(temp2.index, LocalFlags.WRAPPED);

        let ret = module.binary(BinaryOp.OrI32,
          module.binary(
            BinaryOp.ShlI32,
            module.local_tee(temp1.index, arg0),
            module.binary(
              BinaryOp.AndI32,
              module.local_tee(temp2.index, arg1),
              module.i32(type.size - 1)
            )
          ),
          module.binary(
            BinaryOp.ShrU32,
            module.local_get(temp1.index, NativeType.I32),
            module.binary(
              BinaryOp.AndI32,
              module.binary(
                BinaryOp.SubI32,
                module.i32(0),
                module.local_get(temp2.index, NativeType.I32)
              ),
              module.i32(type.size - 1)
            )
          )
        );
        flow.freeTempLocal(temp2);
        flow.freeTempLocal(temp1);

        return ret;
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
    ctx.reportNode.typeArgumentsRange, "rotl", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.rotl, builtin_rotl);

// rotr<T?>(value: T, shift: T) -> T
function builtin_rotr(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkTypeOptional(ctx, true) |
    checkArgsRequired(ctx, 2)
  ) return module.unreachable();
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments;
  var arg0 = typeArguments
    ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT | Constraints.MUST_WRAP)
    : compiler.compileExpression(operands[0], Type.i32, Constraints.MUST_WRAP);
  var type = compiler.currentType;
  if (type.isValue) {
    let arg1 = compiler.compileExpression(operands[1], type, Constraints.CONV_IMPLICIT);
    switch (type.kind) {
      case TypeKind.BOOL: return arg0;
      case TypeKind.I8:
      case TypeKind.I16:
      case TypeKind.U8:
      case TypeKind.U16: {
        // (value >>> (shift & mask)) | (value << ((0 - shift) & mask))
        let flow = compiler.currentFlow;
        let temp1 = flow.getTempLocal(type, findUsedLocals(arg1));
        flow.setLocalFlag(temp1.index, LocalFlags.WRAPPED);
        let temp2 = flow.getTempLocal(type);
        flow.setLocalFlag(temp2.index, LocalFlags.WRAPPED);

        let ret = module.binary(BinaryOp.OrI32,
          module.binary(
            BinaryOp.ShrU32,
            module.local_tee(temp1.index, arg0),
            module.binary(
              BinaryOp.AndI32,
              module.local_tee(temp2.index, arg1),
              module.i32(type.size - 1)
            )
          ),
          module.binary(
            BinaryOp.ShlI32,
            module.local_get(temp1.index, NativeType.I32),
            module.binary(
              BinaryOp.AndI32,
              module.binary(
                BinaryOp.SubI32,
                module.i32(0),
                module.local_get(temp2.index, NativeType.I32)
              ),
              module.i32(type.size - 1)
            )
          )
        );
        flow.freeTempLocal(temp2);
        flow.freeTempLocal(temp1);

        return ret;
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
    ctx.reportNode.typeArgumentsRange, "rotr", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.rotr, builtin_rotr);

// abs<T?>(value: T) -> T
function builtin_abs(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkTypeOptional(ctx, true) |
    checkArgsRequired(ctx, 1)
  ) return module.unreachable();
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments;
  var arg0 = typeArguments
    ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT | Constraints.MUST_WRAP)
    : compiler.compileExpression(operands[0], Type.auto, Constraints.MUST_WRAP);
  var type = compiler.currentType;
  if (type.isValue) {
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
    ctx.reportNode.typeArgumentsRange, "abs", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.abs, builtin_abs);

// max<T?>(left: T, right: T) -> T
function builtin_max(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkTypeOptional(ctx, true) |
    checkArgsRequired(ctx, 2)
  ) return module.unreachable();
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments;
  var left = operands[0];
  var arg0 = typeArguments
    ? compiler.compileExpression(left, typeArguments[0], Constraints.CONV_IMPLICIT | Constraints.MUST_WRAP)
    : compiler.compileExpression(operands[0], Type.auto, Constraints.MUST_WRAP);
  var type = compiler.currentType;
  if (type.isValue) {
    let arg1: ExpressionRef;
    if (!typeArguments && left.isNumericLiteral) { // prefer right type
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
      let temp1 = flow.getTempLocal(type, findUsedLocals(arg1));
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
    ctx.reportNode.typeArgumentsRange, "max", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.max, builtin_max);

// min<T?>(left: T, right: T) -> T
function builtin_min(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkTypeOptional(ctx, true) |
    checkArgsRequired(ctx, 2)
  ) return module.unreachable();
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments;
  var left = operands[0];
  var arg0 = typeArguments
    ? compiler.compileExpression(left, typeArguments[0], Constraints.CONV_IMPLICIT | Constraints.MUST_WRAP)
    : compiler.compileExpression(operands[0], Type.auto, Constraints.MUST_WRAP);
  var type = compiler.currentType;
  if (type.isValue) {
    let arg1: ExpressionRef;
    if (!typeArguments && left.isNumericLiteral) { // prefer right type
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
      let temp1 = flow.getTempLocal(type, findUsedLocals(arg1));
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
    ctx.reportNode.typeArgumentsRange, "min", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.min, builtin_min);

// ceil<T?>(value: T) -> T
function builtin_ceil(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkTypeOptional(ctx, true) |
    checkArgsRequired(ctx, 1)
  ) return module.unreachable();
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments;
  var arg0 = typeArguments
    ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT)
    : compiler.compileExpression(operands[0], Type.auto, Constraints.NONE);
  var type = compiler.currentType;
  if (type.isValue) {
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
    ctx.reportNode.typeArgumentsRange, "ceil", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.ceil, builtin_ceil);

// floor<T?>(value: T) -> T
function builtin_floor(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkTypeOptional(ctx, true) |
    checkArgsRequired(ctx, 1)
  ) return module.unreachable();
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments;
  var arg0 = typeArguments
    ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT)
    : compiler.compileExpression(operands[0], Type.auto, Constraints.NONE);
  var type = compiler.currentType;
  if (type.isValue) {
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
    ctx.reportNode.typeArgumentsRange, "floor", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.floor, builtin_floor);

// copysign<T?>(left: T, right: T) -> T
function builtin_copysign(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkTypeOptional(ctx, true) |
    checkArgsRequired(ctx, 2)
  ) return module.unreachable();
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments;
  var arg0 = typeArguments
    ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT)
    : compiler.compileExpression(operands[0], Type.f64, Constraints.NONE);
  var type = compiler.currentType;
  if (type.isValue) {
    let arg1 = compiler.compileExpression(operands[1], type, Constraints.CONV_IMPLICIT);
    switch (type.kind) {
      // TODO: does an integer version make sense?
      case TypeKind.F32: return module.binary(BinaryOp.CopysignF32, arg0, arg1);
      case TypeKind.F64: return module.binary(BinaryOp.CopysignF64, arg0, arg1);
    }
  }
  compiler.error(
    DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
    ctx.reportNode.typeArgumentsRange, "copysign", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.copysign, builtin_copysign);

// nearest<T?>(value: T) -> T
function builtin_nearest(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkTypeOptional(ctx, true) |
    checkArgsRequired(ctx, 1)
  ) return module.unreachable();
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments;
  var arg0 = typeArguments
    ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT)
    : compiler.compileExpression(operands[0], Type.auto, Constraints.NONE);
  var type = compiler.currentType;
  if (type.isValue) {
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
    ctx.reportNode.typeArgumentsRange, "nearest", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.nearest, builtin_nearest);

// reinterpret<T!>(value: *) -> T
function builtin_reinterpret(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkTypeRequired(ctx, true) |
    checkArgsRequired(ctx, 1)
  ) return module.unreachable();
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments;
  var type = typeArguments![0];
  if (type.isValue) {
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
    ctx.reportNode.typeArgumentsRange, "reinterpret", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.reinterpret, builtin_reinterpret);

// sqrt<T?>(value: T) -> T
function builtin_sqrt(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkTypeOptional(ctx, true) |
    checkArgsRequired(ctx, 1)
  ) return module.unreachable();
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments;
  var arg0 = typeArguments
    ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT)
    : compiler.compileExpression(operands[0], Type.f64, Constraints.NONE);
  var type = compiler.currentType;
  if (type.isValue) {
    switch (type.kind) {
      // TODO: integer versions (that return f64 or convert)?
      case TypeKind.F32: return module.unary(UnaryOp.SqrtF32, arg0);
      case TypeKind.F64: return module.unary(UnaryOp.SqrtF64, arg0);
    }
  }
  compiler.error(
    DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
    ctx.reportNode.typeArgumentsRange, "sqrt", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.sqrt, builtin_sqrt);

// trunc<T?>(value: T) -> T
function builtin_trunc(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkTypeOptional(ctx, true) |
    checkArgsRequired(ctx, 1)
  ) return module.unreachable();
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments;
  var arg0 = typeArguments
    ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT)
    : compiler.compileExpression(operands[0], Type.auto, Constraints.NONE);
  var type = compiler.currentType;
  if (type.isValue) {
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
    ctx.reportNode.typeArgumentsRange, "trunc", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.trunc, builtin_trunc);

// isNaN<T?>(value: T) -> bool
function builtin_isNaN(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkTypeOptional(ctx) |
    checkArgsRequired(ctx, 1)
  ) {
    compiler.currentType = Type.bool;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments;
  var arg0 = typeArguments
    ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT)
    : compiler.compileExpression(operands[0], Type.auto);
  var type = compiler.currentType;
  compiler.currentType = Type.bool;
  if (type.isValue) {
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
        return module.maybeDropCondition(arg0, module.i32(0));
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
    ctx.reportNode.typeArgumentsRange, "isNaN", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.isNaN, builtin_isNaN);

// isFinite<T?>(value: T) -> bool
function builtin_isFinite(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkTypeOptional(ctx) |
    checkArgsRequired(ctx, 1)
  ) {
    compiler.currentType = Type.bool;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments;
  var arg0 = typeArguments
    ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT)
    : compiler.compileExpression(operands[0], Type.auto);
  var type = compiler.currentType;
  compiler.currentType = Type.bool;
  if (type.isValue) {
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
        return module.maybeDropCondition(arg0, module.i32(1));
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
    ctx.reportNode.typeArgumentsRange, "isFinite", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.isFinite, builtin_isFinite);

// === Memory access ==========================================================================

// load<T!>(offset: usize, immOffset?: usize, immAlign?: usize) -> T*
function builtin_load(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkTypeRequired(ctx, true) |
    checkArgsOptional(ctx, 1, 3)
  ) return module.unreachable();
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments;
  var contextualType = ctx.contextualType;
  var type = typeArguments![0];
  var outType = (
    contextualType != Type.auto &&
    type.isIntegerValue &&
    contextualType.isIntegerValue &&
    contextualType.size > type.size
  ) ? contextualType : type;
  var arg0 = compiler.compileExpression(operands[0], compiler.options.usizeType, Constraints.CONV_IMPLICIT);
  var numOperands = operands.length;
  var immOffset = 0;
  var immAlign = type.byteSize;
  if (numOperands >= 2) {
    immOffset = evaluateImmediateOffset(operands[1], compiler); // reports
    if (immOffset < 0) {
      compiler.currentType = outType;
      return module.unreachable();
    }
    if (numOperands == 3) {
      immAlign = evaluateImmediateAlign(operands[2], immAlign, compiler); // reports
      if (immAlign < 0) {
        compiler.currentType = outType;
        return module.unreachable();
      }
    }
  }
  compiler.currentType = outType;
  return module.load(
    type.byteSize,
    type.isSignedIntegerValue,
    arg0,
    outType.toNativeType(),
    immOffset,
    immAlign
  );
}
builtins.set(BuiltinNames.load, builtin_load);

// store<T!>(offset: usize, value: T*, offset?: usize, align?: usize) -> void
function builtin_store(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  compiler.currentType = Type.void;
  if (
    checkTypeRequired(ctx) |
    checkArgsOptional(ctx, 2, 4)
  ) return module.unreachable();
  var operands = ctx.operands;
  var numOperands = operands.length;
  var typeArguments = ctx.typeArguments;
  var contextualType = ctx.contextualType;
  var type = typeArguments![0];
  var arg0 = compiler.compileExpression(operands[0], compiler.options.usizeType, Constraints.CONV_IMPLICIT);
  var arg1 = ctx.contextIsExact
    ? compiler.compileExpression(operands[1],
        contextualType,
        Constraints.CONV_IMPLICIT
      )
    : compiler.compileExpression(
        operands[1],
        type,
        type.isIntegerValue
          ? Constraints.NONE // no need to convert to small int (but now might result in a float)
          : Constraints.CONV_IMPLICIT
      );
  var inType = compiler.currentType;
  if (
    type.isIntegerValue &&
    (
      !inType.isIntegerValue || // float to int
      inType.size < type.size   // int to larger int (clear garbage bits)
    )
  ) {
    // either conversion or memory operation clears garbage bits
    arg1 = compiler.convertExpression(arg1, inType, type, false, operands[1]);
    inType = type;
  }
  var immOffset = 0;
  var immAlign = type.byteSize;
  if (numOperands >= 3) {
    immOffset = evaluateImmediateOffset(operands[2], compiler); // reports
    if (immOffset < 0) {
      compiler.currentType = Type.void;
      return module.unreachable();
    }
    if (numOperands == 4) {
      immAlign = evaluateImmediateAlign(operands[3], immAlign, compiler); // reports
      if (immAlign < 0) {
        compiler.currentType = Type.void;
        return module.unreachable();
      }
    }
  }
  compiler.currentType = Type.void;
  return module.store(type.byteSize, arg0, arg1, inType.toNativeType(), immOffset, immAlign);
}
builtins.set(BuiltinNames.store, builtin_store);

// add<T?>(left: T, right: T) -> T
function builtin_add(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (checkTypeOptional(ctx, true) | checkArgsRequired(ctx, 2)) {
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments;
  var left = operands[0];
  var arg0 = typeArguments
    ? compiler.compileExpression(
        left,
        typeArguments[0],
        Constraints.CONV_IMPLICIT
      )
    : compiler.compileExpression(operands[0], Type.auto);
  var type = compiler.currentType;
  if (type.isValue) {
    let arg1: ExpressionRef;
    if (!typeArguments && left.isNumericLiteral) {
      // prefer right type
      arg1 = compiler.compileExpression(
        operands[1],
        type
      );
      if (compiler.currentType != type) {
        arg0 = compiler.compileExpression(
          left,
          (type = compiler.currentType),
          Constraints.CONV_IMPLICIT
        );
      }
    } else {
      arg1 = compiler.compileExpression(
        operands[1],
        type,
        Constraints.CONV_IMPLICIT
      );
    }
    if (type.isNumericValue) {
      return compiler.makeAdd(arg0, arg1, type);
    }
  }
  compiler.error(
    DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
    ctx.reportNode.typeArgumentsRange,
    "add",
    type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.add, builtin_add);

// sub<T?>(left: T, right: T) -> T
function builtin_sub(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (checkTypeOptional(ctx, true) | checkArgsRequired(ctx, 2)) {
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments;
  var left = operands[0];
  var arg0 = typeArguments
    ? compiler.compileExpression(
        left,
        typeArguments[0],
        Constraints.CONV_IMPLICIT
      )
    : compiler.compileExpression(operands[0], Type.auto);
  var type = compiler.currentType;
  if (type.isValue) {
    let arg1: ExpressionRef;
    if (!typeArguments && left.isNumericLiteral) {
      // prefer right type
      arg1 = compiler.compileExpression(
        operands[1],
        type
      );
      if (compiler.currentType != type) {
        arg0 = compiler.compileExpression(
          left,
          (type = compiler.currentType),
          Constraints.CONV_IMPLICIT
        );
      }
    } else {
      arg1 = compiler.compileExpression(
        operands[1],
        type,
        Constraints.CONV_IMPLICIT
      );
    }
    if (type.isNumericValue) {
      return compiler.makeSub(arg0, arg1, type);
    }
  }
  compiler.error(
    DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
    ctx.reportNode.typeArgumentsRange,
    "sub",
    type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.sub, builtin_sub);

// mul<T?>(left: T, right: T) -> T
function builtin_mul(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (checkTypeOptional(ctx, true) | checkArgsRequired(ctx, 2)) {
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments;
  var left = operands[0];
  var arg0 = typeArguments
    ? compiler.compileExpression(
        left,
        typeArguments[0],
        Constraints.CONV_IMPLICIT
      )
    : compiler.compileExpression(operands[0], Type.auto);
  var type = compiler.currentType;
  if (type.isValue) {
    let arg1: ExpressionRef;
    if (!typeArguments && left.isNumericLiteral) {
      // prefer right type
      arg1 = compiler.compileExpression(
        operands[1],
        type
      );
      if (compiler.currentType != type) {
        arg0 = compiler.compileExpression(
          left,
          (type = compiler.currentType),
          Constraints.CONV_IMPLICIT
        );
      }
    } else {
      arg1 = compiler.compileExpression(
        operands[1],
        type,
        Constraints.CONV_IMPLICIT
      );
    }
    if (type.isNumericValue) {
      return compiler.makeMul(arg0, arg1, type);
    }
  }
  compiler.error(
    DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
    ctx.reportNode.typeArgumentsRange,
    "mul",
    type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.mul, builtin_mul);

// div<T?>(left: T, right: T) -> T
function builtin_div(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (checkTypeOptional(ctx, true) | checkArgsRequired(ctx, 2)) {
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments;
  var left = operands[0];
  var arg0 = typeArguments
    ? compiler.compileExpression(
        left,
        typeArguments[0],
        Constraints.CONV_IMPLICIT
      )
    : compiler.compileExpression(operands[0], Type.auto);
  var type = compiler.currentType;
  if (type.isValue) {
    let arg1: ExpressionRef;
    if (!typeArguments && left.isNumericLiteral) {
      // prefer right type
      arg1 = compiler.compileExpression(
        operands[1],
        type
      );
      if (compiler.currentType != type) {
        arg0 = compiler.compileExpression(
          left,
          (type = compiler.currentType),
          Constraints.CONV_IMPLICIT
        );
      }
    } else {
      arg1 = compiler.compileExpression(
        operands[1],
        type,
        Constraints.CONV_IMPLICIT
      );
    }
    if (type.isNumericValue) {
      return compiler.makeDiv(arg0, arg1, type);
    }
  }
  compiler.error(
    DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
    ctx.reportNode.typeArgumentsRange,
    "div",
    type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.div, builtin_div);

// === Atomics ================================================================================

// atomic.load<T!>(offset: usize, immOffset?: usize) -> T*
function builtin_atomic_load(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.THREADS) |
    checkTypeRequired(ctx, true) |
    checkArgsOptional(ctx, 1, 2)
  ) return module.unreachable();
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments;
  var contextualType = ctx.contextualType;
  var type = typeArguments![0];
  var outType = (
    type.isIntegerValue &&
    contextualType.isIntegerValue &&
    contextualType.size > type.size
  ) ? contextualType : type;
  if (!type.isIntegerValue) {
    compiler.error(
      DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
      ctx.reportNode.typeArgumentsRange, "atomic.load", type.toString()
    );
    compiler.currentType = outType;
    return module.unreachable();
  }
  var arg0 = compiler.compileExpression(operands[0], compiler.options.usizeType, Constraints.CONV_IMPLICIT);
  var immOffset = operands.length == 2 ? evaluateImmediateOffset(operands[1], compiler) : 0; // reports
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
builtins.set(BuiltinNames.atomic_load, builtin_atomic_load);

// atomic.store<T!>(offset: usize, value: T*, immOffset?: usize) -> void
function builtin_atomic_store(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.THREADS) |
    checkTypeRequired(ctx) |
    checkArgsOptional(ctx, 2, 3)
  ) return module.unreachable();
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments;
  var contextualType = ctx.contextualType;
  var type = typeArguments![0];
  if (!type.isIntegerValue) {
    compiler.error(
      DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
      ctx.reportNode.typeArgumentsRange, "atomic.store", type.toString()
    );
    compiler.currentType = Type.void;
    return module.unreachable();
  }
  var arg0 = compiler.compileExpression(operands[0], compiler.options.usizeType, Constraints.CONV_IMPLICIT);
  var arg1 = ctx.contextIsExact
    ? compiler.compileExpression(
        operands[1],
        contextualType,
        Constraints.CONV_IMPLICIT
      )
    : compiler.compileExpression(
        operands[1],
        type,
        type.isIntegerValue
          ? Constraints.NONE // no need to convert to small int (but now might result in a float)
          : Constraints.CONV_IMPLICIT
      );
  var inType = compiler.currentType;
  if (
    type.isIntegerValue &&
    (
      !inType.isIntegerValue|| // float to int
      inType.size < type.size  // int to larger int (clear garbage bits)
    )
  ) {
    // either conversion or memory operation clears garbage bits
    arg1 = compiler.convertExpression(arg1, inType, type, false, operands[1]);
    inType = type;
  }
  var immOffset = operands.length == 3 ? evaluateImmediateOffset(operands[2], compiler) : 0; // reports
  if (immOffset < 0) {
    compiler.currentType = Type.void;
    return module.unreachable();
  }
  compiler.currentType = Type.void;
  return module.atomic_store(type.byteSize, arg0, arg1, inType.toNativeType(), immOffset);
}
builtins.set(BuiltinNames.atomic_store, builtin_atomic_store);

// any_atomic_binary<T!>(ptr, value: T, immOffset?: usize) -> T
function builtin_atomic_binary(ctx: BuiltinContext, op: AtomicRMWOp, opName: string): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.THREADS) |
    checkTypeRequired(ctx, true) |
    checkArgsOptional(ctx, 2, 3)
  ) return module.unreachable();
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments;
  var contextualType = ctx.contextualType;
  var type = typeArguments![0];
  if (!type.isIntegerValue || type.size < 8) {
    compiler.error(
      DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
      ctx.reportNode.typeArgumentsRange, opName, type.toString()
    );
    return module.unreachable();
  }
  var arg0 = compiler.compileExpression(operands[0],
    compiler.options.usizeType,
    Constraints.CONV_IMPLICIT
  );
  var arg1 = ctx.contextIsExact
    ? compiler.compileExpression(operands[1],
        contextualType,
        Constraints.CONV_IMPLICIT
      )
    : compiler.compileExpression(
        operands[1],
        type,
        type.isIntegerValue
          ? Constraints.NONE // no need to convert to small int (but now might result in a float)
          : Constraints.CONV_IMPLICIT
      );
  var inType = compiler.currentType;
  if (
    type.isIntegerValue &&
    (
      !inType.isIntegerValue || // float to int
      inType.size < type.size   // int to larger int (clear garbage bits)
    )
  ) {
    // either conversion or memory operation clears garbage bits
    arg1 = compiler.convertExpression(arg1, inType, type, false, operands[1]);
    inType = type;
  }
  var immOffset = operands.length == 3 ? evaluateImmediateOffset(operands[2], compiler) : 0; // reports
  if (immOffset < 0) {
    compiler.currentType = inType;
    return module.unreachable();
  }
  compiler.currentType = inType;
  return module.atomic_rmw(op, type.byteSize, immOffset, arg0, arg1, inType.toNativeType());
}

// atomic.add<T!>(ptr, value: T, immOffset?: usize) -> T
function builtin_atomic_add(ctx: BuiltinContext): ExpressionRef {
  return builtin_atomic_binary(ctx, AtomicRMWOp.Add, "atomic.add");
}
builtins.set(BuiltinNames.atomic_add, builtin_atomic_add);

// atomic.sub<T!>(ptr, value: T, immOffset?: usize) -> T
function builtin_atomic_sub(ctx: BuiltinContext): ExpressionRef {
  return builtin_atomic_binary(ctx, AtomicRMWOp.Sub, "atomic.sub");
}
builtins.set(BuiltinNames.atomic_sub, builtin_atomic_sub);

// atomic.and<T!>(ptr, value: T, immOffset?: usize) -> T
function builtin_atomic_and(ctx: BuiltinContext): ExpressionRef {
  return builtin_atomic_binary(ctx, AtomicRMWOp.And, "atomic.and");
}
builtins.set(BuiltinNames.atomic_and, builtin_atomic_and);

// atomic.or<T!>(ptr, value: T, immOffset?: usize) -> T
function builtin_atomic_or(ctx: BuiltinContext): ExpressionRef {
  return builtin_atomic_binary(ctx, AtomicRMWOp.Or, "atomic.or");
}
builtins.set(BuiltinNames.atomic_or, builtin_atomic_or);

// atomic.xor<T!>(ptr, value: T, immOffset?: usize) -> T
function builtin_atomic_xor(ctx: BuiltinContext): ExpressionRef {
  return builtin_atomic_binary(ctx, AtomicRMWOp.Xor, "atomic.xor");
}
builtins.set(BuiltinNames.atomic_xor, builtin_atomic_xor);

// atomic.xchg<T!>(ptr, value: T, immOffset?: usize) -> T
function builtin_atomic_xchg(ctx: BuiltinContext): ExpressionRef {
  return builtin_atomic_binary(ctx, AtomicRMWOp.Xchg, "atomic.xchg");
}
builtins.set(BuiltinNames.atomic_xchg, builtin_atomic_xchg);

// atomic.cmpxchg<T!>(ptr: usize, expected: T, replacement: T, off?: usize) -> T
function builtin_atomic_cmpxchg(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.THREADS) |
    checkTypeRequired(ctx, true) |
    checkArgsOptional(ctx, 3, 4)
  ) return module.unreachable();
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments;
  var contextualType = ctx.contextualType;
  var type = typeArguments![0];
  if (!type.isIntegerValue || type.size < 8) {
    compiler.error(
      DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
      ctx.reportNode.typeArgumentsRange, "atomic.cmpxchg", type.toString()
    );
    return module.unreachable();
  }
  var arg0 = compiler.compileExpression(operands[0],
    compiler.options.usizeType,
    Constraints.CONV_IMPLICIT
  );
  var arg1 = ctx.contextIsExact
    ? compiler.compileExpression(operands[1],
        contextualType,
        Constraints.CONV_IMPLICIT
      )
    : compiler.compileExpression(
        operands[1],
        type,
        type.isIntegerValue
          ? Constraints.NONE // no need to convert to small int (but now might result in a float)
          : Constraints.CONV_IMPLICIT
      );
  var inType = compiler.currentType;
  var arg2 = compiler.compileExpression(operands[2],
    inType,
    Constraints.CONV_IMPLICIT
  );
  if (
    type.isIntegerValue &&
    (
      !inType.isIntegerValue || // float to int
      inType.size < type.size   // int to larger int (clear garbage bits)
    )
  ) {
    // either conversion or memory operation clears garbage bits
    arg1 = compiler.convertExpression(arg1, inType, type, false, operands[1]);
    arg2 = compiler.convertExpression(arg2, inType, type, false, operands[2]);
    inType = type;
  }
  var immOffset = operands.length == 4 ? evaluateImmediateOffset(operands[3], compiler) : 0; // reports
  if (immOffset < 0) {
    compiler.currentType = inType;
    return module.unreachable();
  }
  compiler.currentType = inType;
  return module.atomic_cmpxchg(type.byteSize, immOffset, arg0, arg1, arg2, inType.toNativeType());
}
builtins.set(BuiltinNames.atomic_cmpxchg, builtin_atomic_cmpxchg);

// atomic.wait<T!>(ptr: usize, expected: T, timeout: i64) -> i32
function builtin_atomic_wait(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.THREADS) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 3)
  ) {
    compiler.currentType = Type.i32;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments;
  var type = typeArguments![0];
  var arg0 = compiler.compileExpression(operands[0], compiler.options.usizeType, Constraints.CONV_IMPLICIT);
  var arg1 = compiler.compileExpression(operands[1], type, Constraints.CONV_IMPLICIT);
  var arg2 = compiler.compileExpression(operands[2], Type.i64, Constraints.CONV_IMPLICIT);
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
    ctx.reportNode.typeArgumentsRange, "atomic.wait", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.atomic_wait, builtin_atomic_wait);

// atomic.notify(ptr: usize, count: i32) -> i32
function builtin_atomic_notify(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.THREADS) |
    checkTypeAbsent(ctx) |
    checkArgsRequired(ctx, 2)
  ) {
    compiler.currentType = Type.i32;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var arg0 = compiler.compileExpression(operands[0], compiler.options.usizeType, Constraints.CONV_IMPLICIT);
  var arg1 = compiler.compileExpression(operands[1], Type.i32, Constraints.CONV_IMPLICIT);
  compiler.currentType = Type.i32;
  return module.atomic_notify(arg0, arg1);
}
builtins.set(BuiltinNames.atomic_notify, builtin_atomic_notify);

// atomic.fence() -> void
function builtin_atomic_fence(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  compiler.currentType = Type.void;
  if (
    checkFeatureEnabled(ctx, Feature.THREADS) |
    checkTypeAbsent(ctx) |
    checkArgsRequired(ctx, 0)
  ) return module.unreachable();
  return module.atomic_fence();
}
builtins.set(BuiltinNames.atomic_fence, builtin_atomic_fence);

// === Control flow ===========================================================================

// select<T?>(ifTrue: T, ifFalse: T, condition: bool) -> T
function builtin_select(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkTypeOptional(ctx, true) |
    checkArgsRequired(ctx, 3)
  ) return module.unreachable();
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments;
  var arg0 = typeArguments
    ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT)
    : compiler.compileExpression(operands[0], Type.auto);
  var type = compiler.currentType;
  if (!type.isAny(TypeFlags.VALUE | TypeFlags.REFERENCE)) {
    compiler.error(
      DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
      ctx.reportNode.typeArgumentsRange, "select", type.toString()
    );
    return module.unreachable();
  }
  var arg1 = compiler.compileExpression(operands[1], type, Constraints.CONV_IMPLICIT);
  var arg2 = compiler.makeIsTrueish(
    compiler.compileExpression(operands[2], Type.bool),
    compiler.currentType, // ^
    operands[2]
  );
  compiler.currentType = type;
  return module.select(arg0, arg1, arg2);
}
builtins.set(BuiltinNames.select, builtin_select);

// unreachable() -> *
function builtin_unreachable(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  checkArgsRequired(ctx, 0);
  return ctx.compiler.module.unreachable();
}
builtins.set(BuiltinNames.unreachable, builtin_unreachable);

// === Memory =================================================================================

// memory.size() -> i32
function builtin_memory_size(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  compiler.currentType = Type.i32;
  if (
    checkTypeAbsent(ctx) |
    checkArgsRequired(ctx, 0)
  ) return module.unreachable();
  return module.memory_size();
}
builtins.set(BuiltinNames.memory_size, builtin_memory_size);

// memory.grow(pages: i32) -> i32
function builtin_memory_grow(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  compiler.currentType = Type.i32;
  if (
    checkTypeAbsent(ctx) |
    checkArgsRequired(ctx, 1)
  ) return module.unreachable();
  return module.memory_grow(compiler.compileExpression(ctx.operands[0], Type.i32, Constraints.CONV_IMPLICIT));
}
builtins.set(BuiltinNames.memory_grow, builtin_memory_grow);

// memory.copy(dest: usize, src: usize: n: usize) -> void
function builtin_memory_copy(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  compiler.currentType = Type.void;
  if (
    checkTypeAbsent(ctx) |
    checkArgsRequired(ctx, 3)
  ) return module.unreachable();
  var operands = ctx.operands;
  if (!compiler.options.hasFeature(Feature.BULK_MEMORY)) {
    // use stdlib alternative if not supported
    let instance = compiler.resolver.resolveFunction(ctx.prototype, null); // reports
    compiler.currentType = Type.void;
    if (!instance || !compiler.compileFunction(instance, true)) return module.unreachable();
    return compiler.compileCallDirect(instance, operands, ctx.reportNode);
  }
  var usizeType = compiler.options.usizeType;
  var arg0 = compiler.compileExpression(operands[0], usizeType, Constraints.CONV_IMPLICIT);
  var arg1 = compiler.compileExpression(operands[1], usizeType, Constraints.CONV_IMPLICIT);
  var arg2 = compiler.compileExpression(operands[2], usizeType, Constraints.CONV_IMPLICIT);
  compiler.currentType = Type.void;
  return module.memory_copy(arg0, arg1, arg2);
}
builtins.set(BuiltinNames.memory_copy, builtin_memory_copy);

// memory.fill(dest: usize, value: u8, n: usize) -> void
function builtin_memory_fill(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  compiler.currentType = Type.void;
  if (
    checkTypeAbsent(ctx) |
    checkArgsRequired(ctx, 3)
  ) return module.unreachable();
  var operands = ctx.operands;
  if (!compiler.options.hasFeature(Feature.BULK_MEMORY)) {
    // use stdlib alternative if not supported
    let instance = compiler.resolver.resolveFunction(ctx.prototype, null); // reports
    compiler.currentType = Type.void;
    if (!instance || !compiler.compileFunction(instance, true)) return module.unreachable();
    return compiler.compileCallDirect(instance, operands, ctx.reportNode);
  }
  var usizeType = compiler.options.usizeType;
  var arg0 = compiler.compileExpression(operands[0], usizeType, Constraints.CONV_IMPLICIT);
  var arg1 = compiler.compileExpression(operands[1], Type.u8, Constraints.CONV_IMPLICIT);
  var arg2 = compiler.compileExpression(operands[2], usizeType, Constraints.CONV_IMPLICIT);
  compiler.currentType = Type.void;
  return module.memory_fill(arg0, arg1, arg2);
}
builtins.set(BuiltinNames.memory_fill, builtin_memory_fill);

// memory.data(size[, align]) -> usize
// memory.data<T>(values[, align]) -> usize
function builtin_memory_data(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  compiler.currentType = Type.i32;
  if (
    checkTypeOptional(ctx) |
    checkArgsOptional(ctx, 1, 2)
  ) return module.unreachable();
  var typeArguments = ctx.typeArguments;
  var operands = ctx.operands;
  var numOperands = operands.length;
  var usizeType = compiler.options.usizeType;
  var offset: i64;
  if (typeArguments !== null && typeArguments.length > 0) { // data<T>(values[, align])
    let elementType = typeArguments[0];
    if (!elementType.isValue) {
      compiler.error(
        DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
        ctx.reportNode.typeArgumentsRange, "memory.data", elementType.toString()
      );
      compiler.currentType = usizeType;
      return module.unreachable();
    }
    let valuesOperand = operands[0];
    if (valuesOperand.kind != NodeKind.LITERAL || (<LiteralExpression>valuesOperand).literalKind != LiteralKind.ARRAY) {
      compiler.error(
        DiagnosticCode.Array_literal_expected,
        operands[0].range
      );
      compiler.currentType = usizeType;
      return module.unreachable();
    }
    let expressions = (<ArrayLiteralExpression>valuesOperand).elementExpressions;
    let numElements = expressions.length;
    let exprs = new Array<ExpressionRef>(numElements);
    let isStatic = true;
    for (let i = 0; i < numElements; ++i) {
      let elementExpression = expressions[i];
      if (elementExpression.kind != NodeKind.OMITTED) {
        let expr = compiler.compileExpression(elementExpression, elementType,
          Constraints.CONV_IMPLICIT | Constraints.WILL_RETAIN
        );
        let precomp = module.runExpression(expr, ExpressionRunnerFlags.PreserveSideeffects);
        if (precomp) {
          expr = precomp;
        } else {
          isStatic = false;
        }
        exprs[i] = expr;
      } else {
        exprs[i] = compiler.makeZero(elementType, elementExpression);
      }
    }
    if (!isStatic) {
      compiler.error(
        DiagnosticCode.Expression_must_be_a_compile_time_constant,
        valuesOperand.range
      );
      compiler.currentType = usizeType;
      return module.unreachable();
    }
    let align = elementType.byteSize;
    if (numOperands == 2) {
      align = evaluateImmediateAlign(operands[1], align, compiler); // reports
      if (align < 0) {
        compiler.currentType = usizeType;
        return module.unreachable();
      }
    }
    let buf = new Uint8Array(numElements * elementType.byteSize);
    assert(compiler.writeStaticBuffer(buf, 0, elementType, exprs) == buf.byteLength);
    offset = compiler.addAlignedMemorySegment(buf, align).offset;
  } else { // data(size[, align])
    let arg0 = compiler.compileExpression(operands[0], Type.i32, Constraints.CONV_IMPLICIT);
    let precomp = module.runExpression(arg0, ExpressionRunnerFlags.PreserveSideeffects);
    if (!precomp) {
      compiler.error(
        DiagnosticCode.Expression_must_be_a_compile_time_constant,
        operands[0].range
      );
      compiler.currentType = usizeType;
      return module.unreachable();
    }
    let size = getConstValueI32(precomp);
    if (size < 1) {
      compiler.error(
        DiagnosticCode._0_must_be_a_value_between_1_and_2_inclusive,
        operands[0].range, "1", i32.MAX_VALUE.toString()
      );
      compiler.currentType = usizeType;
      return module.unreachable();
    }
    let align = 16;
    if (numOperands == 2) {
      align = evaluateImmediateAlign(operands[1], align, compiler); // reports
      if (align < 0) {
        compiler.currentType = usizeType;
        return module.unreachable();
      }
    }
    offset = compiler.addAlignedMemorySegment(new Uint8Array(size), align).offset;
  }
  // FIXME: what if recompiles happen? recompiles are bad.
  compiler.currentType = usizeType;
  if (usizeType == Type.usize32) {
    assert(!i64_high(offset));
    return module.i32(i64_low(offset));
  } else {
    return module.i64(i64_low(offset), i64_high(offset));
  }
}
builtins.set(BuiltinNames.memory_data, builtin_memory_data);

// === Helpers ================================================================================

// changetype<T!>(value: *) -> T
function builtin_changetype(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkTypeRequired(ctx, true) |
    checkArgsRequired(ctx, 1)
  ) return module.unreachable();
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments!;
  var toType = typeArguments[0];
  var arg0 = compiler.compileExpression(operands[0], Type.auto);
  var fromType = compiler.currentType;
  compiler.currentType = toType;
  if (!fromType.isChangeableTo(toType)) {
    compiler.error(
      DiagnosticCode.Type_0_cannot_be_changed_to_type_1,
      ctx.reportNode.range, fromType.toString(), toType.toString()
    );
    return module.unreachable();
  }
  return arg0;
}
builtins.set(BuiltinNames.changetype, builtin_changetype);

// assert<T?>(isTrueish: T, message?: string) -> T{!= null}
function builtin_assert(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  var typeArguments = ctx.typeArguments;
  if (
    checkTypeOptional(ctx, true) |
    checkArgsOptional(ctx, 1, 2)
  ) {
    if (typeArguments) {
      assert(typeArguments.length); // otherwise invalid, should not been set at all
      compiler.currentType = typeArguments[0].nonNullableType;
    }
    return module.unreachable();
  }
  var operands = ctx.operands;
  var contextualType = ctx.contextualType;
  var arg0 = typeArguments
    ? compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT | Constraints.MUST_WRAP)
    : compiler.compileExpression(operands[0], Type.bool, Constraints.MUST_WRAP);
  var type = compiler.currentType;
  compiler.currentType = type.nonNullableType;

  // omit if assertions are disabled
  if (compiler.options.noAssert) {
    return arg0;
  }

  // omit if the assertion can be proven statically
  var evaled = module.runExpression(arg0, ExpressionRunnerFlags.Default);
  if (evaled) {
    switch (<u32>getExpressionType(evaled)) {
      case <u32>NativeType.I32: {
        if (getConstValueI32(evaled)) {
          return arg0;
        }
        break;
      }
      case <u32>NativeType.I64: {
        if (getConstValueI64Low(evaled) | getConstValueI64High(evaled)) {
          return arg0;
        }
        break;
      }
      case <u32>NativeType.F32: {
        if (getConstValueF32(evaled)) {
          return arg0;
        }
        break;
      }
      case <u32>NativeType.F64: {
        if (getConstValueF64(evaled)) {
          return arg0;
        }
        break;
      }
    }
  }

  // otherwise call abort if the assertion is false-ish
  var abort = compiler.makeAbort(operands.length == 2 ? operands[1] : null, ctx.reportNode);
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
      case TypeKind.FUNCREF:
      case TypeKind.EXTERNREF:
      case TypeKind.EXNREF:
      case TypeKind.ANYREF: return module.if(module.ref_is_null(arg0), abort);

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
      case TypeKind.FUNCREF:
      case TypeKind.EXTERNREF:
      case TypeKind.EXNREF:
      case TypeKind.ANYREF: {
        let temp = flow.getTempLocal(type);
        let ret = module.if(
          module.ref_is_null(
            module.local_tee(temp.index, arg0)
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
    DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
    ctx.reportNode.typeArgumentsRange,
    "assert", compiler.currentType.toString()
  );
  return abort;
}
builtins.set(BuiltinNames.assert, builtin_assert);

// unchecked(expr: *) -> *
function builtin_unchecked(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkTypeAbsent(ctx) |
    checkArgsRequired(ctx, 1)
  ) return module.unreachable();
  var flow = compiler.currentFlow;
  var alreadyUnchecked = flow.is(FlowFlags.UNCHECKED_CONTEXT);
  flow.set(FlowFlags.UNCHECKED_CONTEXT);
  // eliminate unnecessary tees by preferring contextualType(=void)
  var expr = compiler.compileExpression(ctx.operands[0], ctx.contextualType);
  if (!alreadyUnchecked) flow.unset(FlowFlags.UNCHECKED_CONTEXT);
  return expr;
}
builtins.set(BuiltinNames.unchecked, builtin_unchecked);

// call_indirect<T?>(index: u32, ...args: *[]) -> T
function builtin_call_indirect(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkTypeOptional(ctx, true) |
    checkArgsOptional(ctx, 1, i32.MAX_VALUE)
  ) return module.unreachable();
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments;
  var returnType: Type;
  if (typeArguments) {
    assert(typeArguments.length);
    returnType = typeArguments[0];
  } else {
    returnType = ctx.contextualType;
  }
  var indexArg = compiler.compileExpression(operands[0], Type.u32, Constraints.CONV_IMPLICIT);
  var numOperands = operands.length - 1;
  var operandExprs = new Array<ExpressionRef>(numOperands);
  var nativeParamTypes = new Array<NativeType>(numOperands);
  for (let i = 0; i < numOperands; ++i) {
    operandExprs[i] = compiler.compileExpression(operands[1 + i], Type.auto);
    nativeParamTypes[i] = compiler.currentType.toNativeType();
  }
  compiler.currentType = returnType;
  return module.call_indirect(indexArg, operandExprs, createType(nativeParamTypes), returnType.toNativeType());
}
builtins.set(BuiltinNames.call_indirect, builtin_call_indirect);

// instantiate<T!>(...args: *[]) -> T
function builtin_instantiate(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkTypeRequired(ctx, true)
  ) return module.unreachable();
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments!;
  var typeArgument = typeArguments[0];
  var classInstance = typeArgument.getClass();
  if (!classInstance) {
    compiler.error(
      DiagnosticCode.This_expression_is_not_constructable,
      ctx.reportNode.expression.range
    );
    return module.unreachable();
  }
  compiler.currentType = classInstance.type;
  var ctor = compiler.ensureConstructor(classInstance, ctx.reportNode);
  compiler.checkFieldInitialization(classInstance, ctx.reportNode);
  return compiler.compileInstantiate(ctor, operands, Constraints.NONE, ctx.reportNode);
}
builtins.set(BuiltinNames.instantiate, builtin_instantiate);

// === User-defined diagnostics ===============================================================

function builtin_diagnostic(ctx: BuiltinContext, category: DiagnosticCategory): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  checkTypeAbsent(ctx);
  var operands = ctx.operands;
  var reportNode = ctx.reportNode;
  compiler.emitDiagnostic(
    DiagnosticCode.User_defined_0,
    category,
    reportNode.range,
    null,
    operands.length
      ? operands[0].range.toString()
      : reportNode.range.toString()
  );
  return category == DiagnosticCategory.ERROR
    ? module.unreachable()
    : module.nop();
}

// ERROR(message?)
function builtin_error(ctx: BuiltinContext): ExpressionRef {
  return builtin_diagnostic(ctx, DiagnosticCategory.ERROR);
}
builtins.set(BuiltinNames.ERROR, builtin_error);

// WARNING(message?)
function builtin_warning(ctx: BuiltinContext): ExpressionRef {
  return builtin_diagnostic(ctx, DiagnosticCategory.WARNING);
}
builtins.set(BuiltinNames.WARNING, builtin_warning);

// INFO(message?)
function builtin_info(ctx: BuiltinContext): ExpressionRef {
  return builtin_diagnostic(ctx, DiagnosticCategory.INFO);
}
builtins.set(BuiltinNames.INFO, builtin_info);

// === Function builtins ======================================================================

// Function<T>#call(thisArg: thisof<T> | null, ...args: *[]) -> returnof<T>
function builtin_function_call(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var parent = ctx.prototype.parent;
  assert(parent.kind == ElementKind.CLASS);
  var classInstance = <Class>parent;
  assert(classInstance.prototype == compiler.program.functionPrototype);
  var typeArguments = assert(classInstance.typeArguments);
  assert(typeArguments.length == 1);
  var ftype = typeArguments[0];
  var signature = assert(ftype.getSignature());
  var returnType = signature.returnType;
  if (
    checkTypeAbsent(ctx) |
    checkArgsOptional(ctx, 1 + signature.requiredParameters, 1 + signature.parameterTypes.length)
  ) {
    compiler.currentType = returnType;
    return compiler.module.unreachable();
  }
  var indexArg = compiler.compileExpression(assert(ctx.thisOperand), ftype, Constraints.CONV_IMPLICIT);
  var thisOperand = assert(ctx.operands.shift());
  var thisType = signature.thisType;
  var thisArg: usize = 0;
  if (thisType) {
    thisArg = compiler.compileExpression(thisOperand, thisType, Constraints.CONV_IMPLICIT);
  } else if (thisOperand.kind != NodeKind.NULL) {
    compiler.error(
      DiagnosticCode._this_cannot_be_referenced_in_current_location,
      thisOperand.range
    );
    return compiler.module.unreachable();
  }
  return compiler.compileCallIndirect(signature, indexArg, ctx.operands, ctx.reportNode, thisArg, ctx.contextualType == Type.void);
}
function_builtins.set("call", builtin_function_call);

// === Portable type conversions ==============================================================

function builtin_conversion(ctx: BuiltinContext, toType: Type): ExpressionRef {
  var compiler = ctx.compiler;
  if (
    checkTypeAbsent(ctx) |
    checkArgsRequired(ctx, 1)
  ) {
    compiler.currentType = toType;
    return compiler.module.unreachable();
  }
  return compiler.compileExpression(ctx.operands[0], toType, Constraints.CONV_EXPLICIT);
}

// i8(*) -> i8
function builtin_i8(ctx: BuiltinContext): ExpressionRef {
  return builtin_conversion(ctx, Type.i8);
}
builtins.set(BuiltinNames.i8, builtin_i8);

// i16(*) -> i16
function builtin_i16(ctx: BuiltinContext): ExpressionRef {
  return builtin_conversion(ctx, Type.i16);
}
builtins.set(BuiltinNames.i16, builtin_i16);

// i32(*) -> i32
function builtin_i32(ctx: BuiltinContext): ExpressionRef {
  return builtin_conversion(ctx, Type.i32);
}
builtins.set(BuiltinNames.i32, builtin_i32);

// i64(*) -> i64
function builtin_i64(ctx: BuiltinContext): ExpressionRef {
  return builtin_conversion(ctx, Type.i64);
}
builtins.set(BuiltinNames.i64, builtin_i64);

// isize(*) -> isize
function builtin_isize(ctx: BuiltinContext): ExpressionRef {
  return builtin_conversion(ctx, ctx.compiler.options.isizeType);
}
builtins.set(BuiltinNames.isize, builtin_isize);

// u8(*) -> u8
function builtin_u8(ctx: BuiltinContext): ExpressionRef {
  return builtin_conversion(ctx, Type.u8);
}
builtins.set(BuiltinNames.u8, builtin_u8);

// u16(*) -> u16
function builtin_u16(ctx: BuiltinContext): ExpressionRef {
  return builtin_conversion(ctx, Type.u16);
}
builtins.set(BuiltinNames.u16, builtin_u16);

// u32(*) -> u32
function builtin_u32(ctx: BuiltinContext): ExpressionRef {
  return builtin_conversion(ctx, Type.u32);
}
builtins.set(BuiltinNames.u32, builtin_u32);

// u64(*) -> u64
function builtin_u64(ctx: BuiltinContext): ExpressionRef {
  return builtin_conversion(ctx, Type.u64);
}
builtins.set(BuiltinNames.u64, builtin_u64);

// usize(*) -> usize
function builtin_usize(ctx: BuiltinContext): ExpressionRef {
  return builtin_conversion(ctx, ctx.compiler.options.usizeType);
}
builtins.set(BuiltinNames.usize, builtin_usize);

// bool(*) -> bool
function builtin_bool(ctx: BuiltinContext): ExpressionRef {
  return builtin_conversion(ctx, Type.bool);
}
builtins.set(BuiltinNames.bool, builtin_bool);

// f32(*) -> f32
function builtin_f32(ctx: BuiltinContext): ExpressionRef {
  return builtin_conversion(ctx, Type.f32);
}
builtins.set(BuiltinNames.f32, builtin_f32);

// f64(*) -> f64
function builtin_f64(ctx: BuiltinContext): ExpressionRef {
  return builtin_conversion(ctx, Type.f64);
}
builtins.set(BuiltinNames.f64, builtin_f64);

// TODO: alias for now, splat input integer perhaps?
function builtin_v128(ctx: BuiltinContext): ExpressionRef {
  return builtin_i8x16(ctx);
}
builtins.set(BuiltinNames.v128, builtin_v128);

// === SIMD ===================================================================================

// i8x16(...values: i8[16]) -> v128
function builtin_i8x16(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeAbsent(ctx) |
    checkArgsRequired(ctx, 16)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var bytes = new Uint8Array(16);
  for (let i = 0; i < 16; ++i) {
    let expr = compiler.compileExpression(operands[i], Type.i8, Constraints.CONV_IMPLICIT);
    let precomp = module.runExpression(expr, ExpressionRunnerFlags.PreserveSideeffects);
    if (precomp) {
      writeI8(getConstValueI32(precomp), bytes, i);
    } else {
      compiler.error(
        DiagnosticCode.Expression_must_be_a_compile_time_constant,
        operands[i].range
      );
    }
  }
  compiler.currentType = Type.v128;
  return module.v128(bytes);
}
builtins.set(BuiltinNames.i8x16, builtin_i8x16);

// i16x8(...values: i16[8]) -> v128
function builtin_i16x8(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeAbsent(ctx) |
    checkArgsRequired(ctx, 8)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var bytes = new Uint8Array(16);
  for (let i = 0; i < 8; ++i) {
    let expr = compiler.compileExpression(operands[i], Type.i16, Constraints.CONV_IMPLICIT);
    let precomp = module.runExpression(expr, ExpressionRunnerFlags.PreserveSideeffects);
    if (precomp) {
      writeI16(getConstValueI32(precomp), bytes, i << 1);
    } else {
      compiler.error(
        DiagnosticCode.Expression_must_be_a_compile_time_constant,
        operands[i].range
      );
    }
  }
  compiler.currentType = Type.v128;
  return module.v128(bytes);
}
builtins.set(BuiltinNames.i16x8, builtin_i16x8);

// i32x4(...values: i32[4]) -> v128
function builtin_i32x4(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeAbsent(ctx) |
    checkArgsRequired(ctx, 4)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var bytes = new Uint8Array(16);
  for (let i = 0; i < 4; ++i) {
    let expr = compiler.compileExpression(operands[i], Type.i32, Constraints.CONV_IMPLICIT);
    let precomp = module.runExpression(expr, ExpressionRunnerFlags.PreserveSideeffects);
    if (precomp) {
      writeI32(getConstValueI32(precomp), bytes, i << 2);
    } else {
      compiler.error(
        DiagnosticCode.Expression_must_be_a_compile_time_constant,
        operands[i].range
      );
    }
  }
  compiler.currentType = Type.v128;
  return module.v128(bytes);
}
builtins.set(BuiltinNames.i32x4, builtin_i32x4);

// i64x2(...values: i64[2]) -> v128
function builtin_i64x2(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeAbsent(ctx) |
    checkArgsRequired(ctx, 2)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var bytes = new Uint8Array(16);
  for (let i = 0; i < 2; ++i) {
    let expr = compiler.compileExpression(operands[i], Type.i64, Constraints.CONV_IMPLICIT);
    let precomp = module.runExpression(expr, ExpressionRunnerFlags.PreserveSideeffects);
    if (precomp) {
      let off = i << 3;
      writeI32(getConstValueI64Low(precomp), bytes, off);
      writeI32(getConstValueI64High(precomp), bytes, off + 4);
    } else {
      compiler.error(
        DiagnosticCode.Expression_must_be_a_compile_time_constant,
        operands[i].range
      );
    }
  }
  compiler.currentType = Type.v128;
  return module.v128(bytes);
}
builtins.set(BuiltinNames.i64x2, builtin_i64x2);

// f32x4(...values: f32[4]) -> v128
function builtin_f32x4(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeAbsent(ctx) |
    checkArgsRequired(ctx, 4)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var bytes = new Uint8Array(16);
  for (let i = 0; i < 4; ++i) {
    let expr = compiler.compileExpression(operands[i], Type.f32, Constraints.CONV_IMPLICIT);
    let precomp = module.runExpression(expr, ExpressionRunnerFlags.PreserveSideeffects);
    if (precomp) {
      writeF32(getConstValueF32(precomp), bytes, i << 2);
    } else {
      compiler.error(
        DiagnosticCode.Expression_must_be_a_compile_time_constant,
        operands[i].range
      );
    }
  }
  compiler.currentType = Type.v128;
  return module.v128(bytes);
}
builtins.set(BuiltinNames.f32x4, builtin_f32x4);

// f64x2(...values: f64[2]) -> v128
function builtin_f64x2(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeAbsent(ctx) |
    checkArgsRequired(ctx, 2)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var bytes = new Uint8Array(16);
  for (let i = 0; i < 2; ++i) {
    let expr = compiler.compileExpression(operands[i], Type.f64, Constraints.CONV_IMPLICIT);
    let precomp = module.runExpression(expr, ExpressionRunnerFlags.PreserveSideeffects);
    if (precomp) {
      writeF64(getConstValueF64(precomp), bytes, i << 3);
    } else {
      compiler.error(
        DiagnosticCode.Expression_must_be_a_compile_time_constant,
        operands[i].range
      );
    }
  }
  compiler.currentType = Type.v128;
  return module.v128(bytes);
}
builtins.set(BuiltinNames.f64x2, builtin_f64x2);

// v128.splat<T!>(x: T) -> v128
function builtin_v128_splat(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 1)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments!;
  var type = typeArguments[0];
  var arg0 = compiler.compileExpression(operands[0], type, Constraints.CONV_IMPLICIT);
  compiler.currentType = Type.v128;
  if (type.isValue) {
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
    ctx.reportNode.typeArgumentsRange, "v128.splat", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_splat, builtin_v128_splat);

// v128.extract_lane<T!>(x: v128, idx: u8) -> T
function builtin_v128_extract_lane(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx, true) |
    checkArgsRequired(ctx, 2)
  ) return module.unreachable();
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments!;
  var type = typeArguments[0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  var arg1 = compiler.compileExpression(operands[1], Type.u8, Constraints.CONV_IMPLICIT);
  compiler.currentType = type;
  var idx = 0;
  var precomp = module.runExpression(arg1, ExpressionRunnerFlags.PreserveSideeffects);
  if (precomp) {
    idx = getConstValueI32(precomp);
  } else {
    compiler.error(
      DiagnosticCode.Expression_must_be_a_compile_time_constant,
      operands[1].range
    );
  }
  if (type.isValue) {
    let maxIdx = (16 / assert(type.byteSize)) - 1;
    if (idx < 0 || idx > maxIdx) {
      compiler.error(
        DiagnosticCode._0_must_be_a_value_between_1_and_2_inclusive,
        operands[1].range, "Lane index", "0", maxIdx.toString()
      );
      idx = 0;
    }
    switch (type.kind) {
      case TypeKind.I8: return module.simd_extract(SIMDExtractOp.ExtractLaneI8x16, arg0, <u8>idx);
      case TypeKind.U8: return module.simd_extract(SIMDExtractOp.ExtractLaneU8x16, arg0, <u8>idx);
      case TypeKind.I16: return module.simd_extract(SIMDExtractOp.ExtractLaneI16x8, arg0, <u8>idx);
      case TypeKind.U16: return module.simd_extract(SIMDExtractOp.ExtractLaneU16x8, arg0, <u8>idx);
      case TypeKind.I32:
      case TypeKind.U32: return module.simd_extract(SIMDExtractOp.ExtractLaneI32x4, arg0, <u8>idx);
      case TypeKind.I64:
      case TypeKind.U64: return module.simd_extract(SIMDExtractOp.ExtractLaneI64x2, arg0, <u8>idx);
      case TypeKind.ISIZE:
      case TypeKind.USIZE: {
        return module.simd_extract(
          compiler.options.isWasm64
            ? SIMDExtractOp.ExtractLaneI64x2
            : SIMDExtractOp.ExtractLaneI32x4,
          arg0, <u8>idx
        );
      }
      case TypeKind.F32: return module.simd_extract(SIMDExtractOp.ExtractLaneF32x4, arg0, <u8>idx);
      case TypeKind.F64: return module.simd_extract(SIMDExtractOp.ExtractLaneF64x2, arg0, <u8>idx);
    }
  }
  compiler.error(
    DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
    ctx.reportNode.typeArgumentsRange, "v128.extract_lane", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_extract_lane, builtin_v128_extract_lane);

// v128.replace_lane<T!>(x: v128, idx: u8, value: T) -> v128
function builtin_v128_replace_lane(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 3)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments!;
  var type = typeArguments[0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  var arg1 = compiler.compileExpression(operands[1], Type.u8, Constraints.CONV_IMPLICIT);
  var arg2 = compiler.compileExpression(operands[2], type, Constraints.CONV_IMPLICIT);
  compiler.currentType = Type.v128;
  var idx = 0;
  var precomp = module.runExpression(arg1, ExpressionRunnerFlags.PreserveSideeffects);
  if (precomp) {
    idx = getConstValueI32(precomp);
  } else {
    compiler.error(
      DiagnosticCode.Expression_must_be_a_compile_time_constant,
      operands[1].range
    );
  }
  if (type.isValue) {
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
      case TypeKind.U8: return module.simd_replace(SIMDReplaceOp.ReplaceLaneI8x16, arg0, <u8>idx, arg2);
      case TypeKind.I16:
      case TypeKind.U16: return module.simd_replace(SIMDReplaceOp.ReplaceLaneI16x8, arg0, <u8>idx, arg2);
      case TypeKind.I32:
      case TypeKind.U32: return module.simd_replace(SIMDReplaceOp.ReplaceLaneI32x4, arg0, <u8>idx, arg2);
      case TypeKind.I64:
      case TypeKind.U64: return module.simd_replace(SIMDReplaceOp.ReplaceLaneI64x2, arg0, <u8>idx, arg2);
      case TypeKind.ISIZE:
      case TypeKind.USIZE: {
        return module.simd_replace(
          compiler.options.isWasm64
            ? SIMDReplaceOp.ReplaceLaneI64x2
            : SIMDReplaceOp.ReplaceLaneI32x4,
          arg0, <u8>idx, arg2
        );
      }
      case TypeKind.F32: return module.simd_replace(SIMDReplaceOp.ReplaceLaneF32x4, arg0, <u8>idx, arg2);
      case TypeKind.F64: return module.simd_replace(SIMDReplaceOp.ReplaceLaneF64x2, arg0, <u8>idx, arg2);
    }
  }
  compiler.error(
    DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
    ctx.reportNode.typeArgumentsRange, "v128.replace_lane", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_replace_lane, builtin_v128_replace_lane);

// v128.shuffle<T!>(a: v128, b: v128, ...lanes: u8[]) -> v128
function builtin_v128_shuffle(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments!;
  var type = typeArguments[0];
  if (type.isValue) {
    let laneWidth = type.byteSize;
    let laneCount = 16 / laneWidth;
    assert(isInteger(laneCount) && isPowerOf2(laneCount));
    if (
      checkArgsRequired(ctx, 2 + laneCount)
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
          let argN = compiler.compileExpression(operand, Type.u8, Constraints.CONV_IMPLICIT);
          let precomp = module.runExpression(argN, ExpressionRunnerFlags.PreserveSideeffects);
          let idx = 0;
          if (precomp) {
            idx = getConstValueI32(precomp);
            if (idx < 0 || idx > maxIdx) {
              compiler.error(
                DiagnosticCode._0_must_be_a_value_between_1_and_2_inclusive,
                operand.range, "Lane index", "0", maxIdx.toString()
              );
              idx = 0;
            }
          } else {
            compiler.error(
              DiagnosticCode.Expression_must_be_a_compile_time_constant,
              operand.range
            );
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
    ctx.reportNode.typeArgumentsRange, "v128.shuffle", type.toString()
  );
  compiler.currentType = Type.v128;
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_shuffle, builtin_v128_shuffle);

// v128.swizzle(a: v128, b: v128) -> v128
function builtin_v128_swizzle(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeAbsent(ctx) |
    checkArgsRequired(ctx, 2)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  var arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
  return module.binary(BinaryOp.SwizzleV8x16, arg0, arg1);
}
builtins.set(BuiltinNames.v128_swizzle, builtin_v128_swizzle);

// v128.load_splat<T!>(ptr: usize, immOffset?: usize, immAlign?: usize) -> v128
function builtin_v128_load_splat(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx, true) |
    checkArgsOptional(ctx, 1, 3)
  ) return module.unreachable();
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments!;
  var type = typeArguments[0];
  var arg0 = compiler.compileExpression(operands[0], compiler.options.usizeType, Constraints.CONV_IMPLICIT);
  var numOperands = operands.length;
  var immOffset = 0;
  var immAlign = type.byteSize;
  if (numOperands >= 2) {
    immOffset = evaluateImmediateOffset(operands[1], compiler); // reports
    if (immOffset < 0) {
      compiler.currentType = Type.v128;
      return module.unreachable();
    }
    if (numOperands == 3) {
      immAlign = evaluateImmediateAlign(operands[2], immAlign, compiler); // reports
      if (immAlign < 0) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
    }
  }
  compiler.currentType = Type.v128;
  if (type.isValue) {
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
    ctx.reportNode.typeArgumentsRange, "v128.load_splat", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_load_splat, builtin_v128_load_splat);

// v128.load_ext<TFrom!>(ptr: usize, immOffset?: usize, immAlign?: usize) -> v128
function builtin_v128_load_ext(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx, true) |
    checkArgsOptional(ctx, 1, 3)
  ) return module.unreachable();
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments!;
  var type = typeArguments[0];
  var arg0 = compiler.compileExpression(operands[0], compiler.options.usizeType, Constraints.CONV_IMPLICIT);
  var numOperands = operands.length;
  var immOffset = 0;
  var immAlign = type.byteSize;
  if (numOperands >= 2) {
    immOffset = evaluateImmediateOffset(operands[1], compiler); // reports
    if (immOffset < 0) {
      compiler.currentType = Type.v128;
      return module.unreachable();
    }
    if (numOperands == 3) {
      immAlign = evaluateImmediateAlign(operands[2], immAlign, compiler); // reports
      if (immAlign < 0) {
        compiler.currentType = Type.v128;
        return module.unreachable();
      }
    }
  }
  compiler.currentType = Type.v128;
  if (type.isValue) {
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
    ctx.reportNode.typeArgumentsRange, "v128.load_ext", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_load_ext, builtin_v128_load_ext);

// v128.add<T!>(a: v128, b: v128) -> v128
function builtin_v128_add(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 2)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments!;
  var type = typeArguments[0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  var arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
  if (type.isValue) {
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
    ctx.reportNode.typeArgumentsRange, "v128.add", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_add, builtin_v128_add);

// v128.sub<T!>(a: v128, b: v128) -> v128
function builtin_v128_sub(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 2)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments!;
  var type = typeArguments[0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  var arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
  if (type.isValue) {
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
    ctx.reportNode.typeArgumentsRange, "v128.sub", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_sub, builtin_v128_sub);

// v128.mul<T!>(a: v128, b: v128) -> v128
function builtin_v128_mul(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 2)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments!;
  var type = typeArguments[0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  var arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
  if (type.isValue) {
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
    ctx.reportNode.typeArgumentsRange, "v128.mul", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_mul, builtin_v128_mul);

// v128.div<T!>(a: v128, b: v128) -> v128
function builtin_v128_div(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 2)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments!;
  var type = typeArguments[0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  var arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
  if (type.isValue) {
    switch (type.kind) {
      case TypeKind.F32: return module.binary(BinaryOp.DivF32x4, arg0, arg1);
      case TypeKind.F64: return module.binary(BinaryOp.DivF64x2, arg0, arg1);
    }
  }
  compiler.error(
    DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
    ctx.reportNode.typeArgumentsRange, "v128.div", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_div, builtin_v128_div);

// v128.add_saturate<T!>(a: v128, b: v128) -> v128
function builtin_v128_add_saturate(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 2)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments!;
  var type = typeArguments[0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  var arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
  if (type.isValue) {
    switch (type.kind) {
      case TypeKind.I8: return module.binary(BinaryOp.AddSatI8x16, arg0, arg1);
      case TypeKind.U8: return module.binary(BinaryOp.AddSatU8x16, arg0, arg1);
      case TypeKind.I16: return module.binary(BinaryOp.AddSatI16x8, arg0, arg1);
      case TypeKind.U16: return module.binary(BinaryOp.AddSatU16x8, arg0, arg1);
    }
  }
  compiler.error(
    DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
    ctx.reportNode.typeArgumentsRange, "v128.add_saturate", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_add_saturate, builtin_v128_add_saturate);

// v128.sub_saturate<T!>(a: v128, b: v128) -> v128
function builtin_v128_sub_saturate(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 2)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments!;
  var type = typeArguments[0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  var arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
  if (type.isValue) {
    switch (type.kind) {
      case TypeKind.I8: return module.binary(BinaryOp.SubSatI8x16, arg0, arg1);
      case TypeKind.U8: return module.binary(BinaryOp.SubSatU8x16, arg0, arg1);
      case TypeKind.I16: return module.binary(BinaryOp.SubSatI16x8, arg0, arg1);
      case TypeKind.U16: return module.binary(BinaryOp.SubSatU16x8, arg0, arg1);
    }
  }
  compiler.error(
    DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
    ctx.reportNode.typeArgumentsRange, "v128.sub_saturate", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_sub_saturate, builtin_v128_sub_saturate);

// v128.min<T!>(a: v128, b: v128) -> v128
function builtin_v128_min(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 2)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments!;
  var type = typeArguments[0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  var arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
  if (type.isValue) {
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
    ctx.reportNode.typeArgumentsRange, "v128.min", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_min, builtin_v128_min);

// v128.max<T!>(a: v128, b: v128) -> v128
function builtin_v128_max(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 2)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments!;
  var type = typeArguments[0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  var arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
  if (type.isValue) {
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
    ctx.reportNode.typeArgumentsRange, "v128.max", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_max, builtin_v128_max);

// v128.pmin<T!>(a: v128, b: v128) -> v128
function builtin_v128_pmin(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 2)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments!;
  var type = typeArguments[0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  var arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
  if (type.isValue) {
    switch (type.kind) {
      case TypeKind.F32: return module.binary(BinaryOp.PminF32x4, arg0, arg1);
      case TypeKind.F64: return module.binary(BinaryOp.PminF64x2, arg0, arg1);
    }
  }
  compiler.error(
    DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
    ctx.reportNode.typeArgumentsRange, "v128.pmin", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_pmin, builtin_v128_pmin);

// v128.pmax<T!>(a: v128, b: v128) -> v128
function builtin_v128_pmax(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 2)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments!;
  var type = typeArguments[0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  var arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
  if (type.isValue) {
    switch (type.kind) {
      case TypeKind.F32: return module.binary(BinaryOp.PmaxF32x4, arg0, arg1);
      case TypeKind.F64: return module.binary(BinaryOp.PmaxF64x2, arg0, arg1);
    }
  }
  compiler.error(
    DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
    ctx.reportNode.typeArgumentsRange, "v128.pmax", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_pmax, builtin_v128_pmax);

// v128.dot<T!>(a: v128, b: v128) -> v128
function builtin_v128_dot(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 2)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments!;
  var type = typeArguments[0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  var arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
  if (type.isValue) {
    switch (type.kind) {
      case TypeKind.I16: return module.binary(BinaryOp.DotI16x8, arg0, arg1);
    }
  }
  compiler.error(
    DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
    ctx.reportNode.typeArgumentsRange, "v128.dot", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_dot, builtin_v128_dot);

// v128.avgr<T!>(a: v128, b: v128) -> v128
function builtin_v128_avgr(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 2)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments!;
  var type = typeArguments[0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  var arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
  if (type.isValue) {
    switch (type.kind) {
      case TypeKind.U8:  return module.binary(BinaryOp.AvgrU8x16, arg0, arg1);
      case TypeKind.U16: return module.binary(BinaryOp.AvgrU16x8, arg0, arg1);
    }
  }
  compiler.error(
    DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
    ctx.reportNode.typeArgumentsRange, "v128.avgr", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_avgr, builtin_v128_avgr);

// v128.eq<T!>(a: v128, b: v128) -> v128
function builtin_v128_eq(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 2)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments!;
  var type = typeArguments[0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  var arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
  if (type.isValue) {
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
    ctx.reportNode.typeArgumentsRange, "v128.eq", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_eq, builtin_v128_eq);

// v128.ne<T!>(a: v128, b: v128) -> v128
function builtin_v128_ne(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 2)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments!;
  var type = typeArguments[0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  var arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
  if (type.isValue) {
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
    ctx.reportNode.typeArgumentsRange, "v128.ne", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_ne, builtin_v128_ne);

// v128.lt<T!>(a: v128, b: v128) -> v128
function builtin_v128_lt(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 2)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments!;
  var type = typeArguments[0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  var arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
  if (type.isValue) {
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
    ctx.reportNode.typeArgumentsRange, "v128.lt", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_lt, builtin_v128_lt);

// v128.le<T!>(a: v128, b: v128) -> v128
function builtin_v128_le(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 2)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments!;
  var type = typeArguments[0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  var arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
  if (type.isValue) {
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
    ctx.reportNode.typeArgumentsRange, "v128.le", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_le, builtin_v128_le);

// v128.gt<T!>(a: v128, b: v128) -> v128
function builtin_v128_gt(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 2)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments!;
  var type = typeArguments[0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  var arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
  if (type.isValue) {
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
    ctx.reportNode.typeArgumentsRange, "v128.gt", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_gt, builtin_v128_gt);

// v128.ge<T!>(a: v128, b: v128) -> v128
function builtin_v128_ge(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 2)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments!;
  var type = typeArguments[0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  var arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
  if (type.isValue) {
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
    ctx.reportNode.typeArgumentsRange, "v128.ge", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_ge, builtin_v128_ge);

// v128.narrow<T!>(a: v128, b: v128) -> v128
function builtin_v128_narrow(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 2)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments!;
  var type = typeArguments[0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  var arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
  if (type.isValue) {
    switch (type.kind) {
      case TypeKind.I16: return module.binary(BinaryOp.NarrowI16x8ToI8x16, arg0, arg1);
      case TypeKind.U16: return module.binary(BinaryOp.NarrowU16x8ToU8x16, arg0, arg1);
      case TypeKind.I32: return module.binary(BinaryOp.NarrowI32x4ToI16x8, arg0, arg1);
      case TypeKind.U32: return module.binary(BinaryOp.NarrowU32x4ToU16x8, arg0, arg1);
    }
  }
  compiler.error(
    DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
    ctx.reportNode.typeArgumentsRange, "v128.narrow", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_narrow, builtin_v128_narrow);

// v128.neg<T!>(a: v128) -> v128
function builtin_v128_neg(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 1)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments!;
  var type = typeArguments[0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  if (type.isValue) {
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
    ctx.reportNode.typeArgumentsRange, "v128.neg", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_neg, builtin_v128_neg);

// v128.abs<T!>(a: v128) -> v128
function builtin_v128_abs(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 1)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments!;
  var type = typeArguments[0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  if (type.isValue) {
    switch (type.kind) {
      case TypeKind.I8: return module.unary(UnaryOp.AbsI8x16, arg0);
      case TypeKind.I16: return module.unary(UnaryOp.AbsI16x8, arg0);
      case TypeKind.ISIZE: {
        if (compiler.options.isWasm64) break;
        // fall-through
      }
      case TypeKind.I32: return module.unary(UnaryOp.AbsI32x4, arg0);
      case TypeKind.USIZE: {
        if (compiler.options.isWasm64) break;
        // fall-through
      }
      case TypeKind.U8:
      case TypeKind.U16:
      case TypeKind.U32: return arg0;
      case TypeKind.F32: return module.unary(UnaryOp.AbsF32x4, arg0);
      case TypeKind.F64: return module.unary(UnaryOp.AbsF64x2, arg0);
    }
  }
  compiler.error(
    DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
    ctx.reportNode.typeArgumentsRange, "v128.abs", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_abs, builtin_v128_abs);

// v128.sqrt<T!>(a: v128) -> v128
function builtin_v128_sqrt(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 1)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments!;
  var type = typeArguments[0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  if (type.isValue) {
    switch (type.kind) {
      case TypeKind.F32: return module.unary(UnaryOp.SqrtF32x4, arg0);
      case TypeKind.F64: return module.unary(UnaryOp.SqrtF64x2, arg0);
    }
  }
  compiler.error(
    DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
    ctx.reportNode.typeArgumentsRange, "v128.sqrt", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_sqrt, builtin_v128_sqrt);

// v128.ceil<T!>(a: v128) -> v128
function builtin_v128_ceil(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 1)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments!;
  var type = typeArguments[0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  if (type.isValue) {
    switch (type.kind) {
      case TypeKind.F32: return module.unary(UnaryOp.CeilF32x4, arg0);
      case TypeKind.F64: return module.unary(UnaryOp.CeilF64x2, arg0);
    }
  }
  compiler.error(
    DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
    ctx.reportNode.typeArgumentsRange, "v128.ceil", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_ceil, builtin_v128_ceil);

// v128.floor<T!>(a: v128) -> v128
function builtin_v128_floor(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 1)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments!;
  var type = typeArguments[0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  if (type.isValue) {
    switch (type.kind) {
      case TypeKind.F32: return module.unary(UnaryOp.FloorF32x4, arg0);
      case TypeKind.F64: return module.unary(UnaryOp.FloorF64x2, arg0);
    }
  }
  compiler.error(
    DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
    ctx.reportNode.typeArgumentsRange, "v128.floor", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_floor, builtin_v128_floor);

// v128.trunc<T!>(a: v128) -> v128
function builtin_v128_trunc(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 1)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments!;
  var type = typeArguments[0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  if (type.isValue) {
    switch (type.kind) {
      case TypeKind.F32: return module.unary(UnaryOp.TruncF32x4, arg0);
      case TypeKind.F64: return module.unary(UnaryOp.TruncF64x2, arg0);
    }
  }
  compiler.error(
    DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
    ctx.reportNode.typeArgumentsRange, "v128.trunc", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_trunc, builtin_v128_trunc);

// v128.nearest<T!>(a: v128) -> v128
function builtin_v128_nearest(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 1)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments!;
  var type = typeArguments[0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  if (type.isValue) {
    switch (type.kind) {
      case TypeKind.F32: return module.unary(UnaryOp.NearestF32x4, arg0);
      case TypeKind.F64: return module.unary(UnaryOp.NearestF64x2, arg0);
    }
  }
  compiler.error(
    DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
    ctx.reportNode.typeArgumentsRange, "v128.nearest", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_nearest, builtin_v128_nearest);

// v128.convert<T!>(a: v128) -> v128
function builtin_v128_convert(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 1)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments!;
  var type = typeArguments[0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  if (type.isValue) {
    switch (type.kind) {
      case TypeKind.I32: return module.unary(UnaryOp.ConvertI32x4ToF32x4, arg0);
      case TypeKind.U32: return module.unary(UnaryOp.ConvertU32x4ToF32x4, arg0);
      case TypeKind.I64: return module.unary(UnaryOp.ConvertI64x2ToF64x2, arg0);
      case TypeKind.U64: return module.unary(UnaryOp.ConvertU64x2ToF64x2, arg0);
    }
  }
  compiler.error(
    DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
    ctx.reportNode.typeArgumentsRange, "v128.convert", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_convert, builtin_v128_convert);

// v128.trunc_sat<T!>(a: v128) -> v128
function builtin_v128_trunc_sat(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 1)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments!;
  var type = typeArguments[0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  if (type.isValue) {
    switch (type.kind) {
      case TypeKind.I32: return module.unary(UnaryOp.TruncSatF32x4ToI32x4, arg0);
      case TypeKind.U32: return module.unary(UnaryOp.TruncSatF32x4ToU32x4, arg0);
      case TypeKind.I64: return module.unary(UnaryOp.TruncSatF64x2ToI64x2, arg0);
      case TypeKind.U64: return module.unary(UnaryOp.TruncSatF64x2ToU64x2, arg0);
    }
  }
  compiler.error(
    DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
    ctx.reportNode.typeArgumentsRange, "v128.trunc_sat", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_trunc_sat, builtin_v128_trunc_sat);

// v128.widen_low<T!>(a: v128) -> v128
function builtin_v128_widen_low(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 1)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments!;
  var type = typeArguments[0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  if (type.isValue) {
    switch (type.kind) {
      case TypeKind.I8: return module.unary(UnaryOp.WidenLowI8x16ToI16x8, arg0);
      case TypeKind.U8: return module.unary(UnaryOp.WidenLowU8x16ToU16x8, arg0);
      case TypeKind.I16: return module.unary(UnaryOp.WidenLowI16x8ToI32x4, arg0);
      case TypeKind.U16: return module.unary(UnaryOp.WidenLowU16x8ToU32x4, arg0);
    }
  }
  compiler.error(
    DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
    ctx.reportNode.typeArgumentsRange, "v128.widen_low", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_widen_low, builtin_v128_widen_low);

// v128.widen_high<T!>(a: v128) -> v128
function builtin_v128_widen_high(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 1)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments!;
  var type = typeArguments[0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  if (type.isValue) {
    switch (type.kind) {
      case TypeKind.I8: return module.unary(UnaryOp.WidenHighI8x16ToI16x8, arg0);
      case TypeKind.U8: return module.unary(UnaryOp.WidenHighU8x16ToU16x8, arg0);
      case TypeKind.I16: return module.unary(UnaryOp.WidenHighI16x8ToI32x4, arg0);
      case TypeKind.U16: return module.unary(UnaryOp.WidenHighU16x8ToU32x4, arg0);
    }
  }
  compiler.error(
    DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
    ctx.reportNode.typeArgumentsRange, "v128.widen_high", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_widen_high, builtin_v128_widen_high);

// v128.shl<T!>(a: v128, b: i32) -> v128
function builtin_v128_shl(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 2)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var type = ctx.typeArguments![0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  var arg1 = compiler.compileExpression(operands[1], Type.i32, Constraints.CONV_IMPLICIT);
  compiler.currentType = Type.v128;
  if (type.isValue) {
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
    ctx.reportNode.typeArgumentsRange, "v128.shl", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_shl, builtin_v128_shl);

// v128.shr<T!>(a: v128, b: i32) -> v128
function builtin_v128_shr(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 2)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var type = ctx.typeArguments![0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  var arg1 = compiler.compileExpression(operands[1], Type.i32, Constraints.CONV_IMPLICIT);
  compiler.currentType = Type.v128;
  if (type.isValue) {
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
    ctx.reportNode.typeArgumentsRange, "v128.shr", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_shr, builtin_v128_shr);

function builtin_v128_bitwise_binary(ctx: BuiltinContext, op: BinaryOp): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeAbsent(ctx) |
    checkArgsRequired(ctx, 2)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  var arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
  return module.binary(op, arg0, arg1);
}

// v128.and(a: v128, b: v128) -> v128
function builtin_v128_and(ctx: BuiltinContext): ExpressionRef {
  return builtin_v128_bitwise_binary(ctx, BinaryOp.AndV128);
}
builtins.set(BuiltinNames.v128_and, builtin_v128_and);

// v128.or(a: v128, b: v128) -> v128
function builtin_v128_or(ctx: BuiltinContext): ExpressionRef {
  return builtin_v128_bitwise_binary(ctx, BinaryOp.OrV128);
}
builtins.set(BuiltinNames.v128_or, builtin_v128_or);

// v128.xor(a: v128, b: v128) -> v128
function builtin_v128_xor(ctx: BuiltinContext): ExpressionRef {
  return builtin_v128_bitwise_binary(ctx, BinaryOp.XorV128);
}
builtins.set(BuiltinNames.v128_xor, builtin_v128_xor);

// v128.andnot(a: v128, b: v128) -> v128
function builtin_v128_andnot(ctx: BuiltinContext): ExpressionRef {
  return builtin_v128_bitwise_binary(ctx, BinaryOp.AndNotV128);
}
builtins.set(BuiltinNames.v128_andnot, builtin_v128_andnot);

function builtin_v128_bitwise_unary(ctx: BuiltinContext, op: UnaryOp): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeAbsent(ctx) |
    checkArgsRequired(ctx, 1)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  return module.unary(op, arg0);
}

// v128.not(a: v128) -> v128
function builtin_v128_not(ctx: BuiltinContext): ExpressionRef {
  return builtin_v128_bitwise_unary(ctx, UnaryOp.NotV128);
}
builtins.set(BuiltinNames.v128_not, builtin_v128_not);

function builtin_v128_bitwise_ternary(ctx: BuiltinContext, op: SIMDTernaryOp): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeAbsent(ctx) |
    checkArgsRequired(ctx, 3)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  var arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
  var arg2 = compiler.compileExpression(operands[2], Type.v128, Constraints.CONV_IMPLICIT);
  return module.simd_ternary(op, arg0, arg1, arg2);
}

// v128.bitselect(v1: v128, v2: v128, c: v128) -> v128
function builtin_v128_bitselect(ctx: BuiltinContext): ExpressionRef {
  return builtin_v128_bitwise_ternary(ctx, SIMDTernaryOp.Bitselect);
}
builtins.set(BuiltinNames.v128_bitselect, builtin_v128_bitselect);

// v128.any_true<T!>(a: v128) -> bool
function builtin_v128_any_true(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 1)
  ) {
    compiler.currentType = Type.bool;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var type = ctx.typeArguments![0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  compiler.currentType = Type.bool;
  if (type.isValue) {
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
    ctx.reportNode.typeArgumentsRange, "v128.any_true", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_any_true, builtin_v128_any_true);

// v128.all_true<T!>(a: v128) -> bool
function builtin_v128_all_true(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 1)
  ) {
    compiler.currentType = Type.bool;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var type = ctx.typeArguments![0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  compiler.currentType = Type.bool;
  if (type.isValue) {
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
    ctx.reportNode.typeArgumentsRange, "v128.all_true", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_all_true, builtin_v128_all_true);

// v128.bitmask<T!>(a: v128) -> i32
function builtin_v128_bitmask(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 1)
  ) {
    compiler.currentType = Type.i32;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var type = ctx.typeArguments![0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  compiler.currentType = Type.i32;
  if (type.isValue) {
    switch (type.kind) {
      case TypeKind.I8:
      case TypeKind.U8: return module.unary(UnaryOp.BitmaskI8x16, arg0);
      case TypeKind.I16:
      case TypeKind.U16: return module.unary(UnaryOp.BitmaskI16x8, arg0);
      case TypeKind.ISIZE:
      case TypeKind.USIZE: {
        if (compiler.options.isWasm64) break;
        // fall-through
      }
      case TypeKind.I32:
      case TypeKind.U32: return module.unary(UnaryOp.BitmaskI32x4, arg0);
    }
  }
  compiler.error(
    DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
    ctx.reportNode.typeArgumentsRange, "v128.bitmask", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_bitmask, builtin_v128_bitmask);

// v128.qfma<T!>(a: v128, b: v128, c: v128) -> v128
function builtin_v128_qfma(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 3)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var type = ctx.typeArguments![0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  var arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
  var arg2 = compiler.compileExpression(operands[2], Type.v128, Constraints.CONV_IMPLICIT);
  if (type.isValue) {
    switch (type.kind) {
      case TypeKind.F32: return module.simd_ternary(SIMDTernaryOp.QFMAF32x4, arg0, arg1, arg2);
      case TypeKind.F64: return module.simd_ternary(SIMDTernaryOp.QFMAF64x2, arg0, arg1, arg2);
    }
  }
  compiler.error(
    DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
    ctx.reportNode.typeArgumentsRange, "v128.qfma", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_qfma, builtin_v128_qfma);

// v128.qfms<T!>(a: v128, b: v128, c: v128) -> v128
function builtin_v128_qfms(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkFeatureEnabled(ctx, Feature.SIMD) |
    checkTypeRequired(ctx) |
    checkArgsRequired(ctx, 3)
  ) {
    compiler.currentType = Type.v128;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var type = ctx.typeArguments![0];
  var arg0 = compiler.compileExpression(operands[0], Type.v128, Constraints.CONV_IMPLICIT);
  var arg1 = compiler.compileExpression(operands[1], Type.v128, Constraints.CONV_IMPLICIT);
  var arg2 = compiler.compileExpression(operands[2], Type.v128, Constraints.CONV_IMPLICIT);
  if (type.isValue) {
    switch (type.kind) {
      case TypeKind.F32: return module.simd_ternary(SIMDTernaryOp.QFMSF32x4, arg0, arg1, arg2);
      case TypeKind.F64: return module.simd_ternary(SIMDTernaryOp.QFMSF64x2, arg0, arg1, arg2);
    }
  }
  compiler.error(
    DiagnosticCode.Operation_0_cannot_be_applied_to_type_1,
    ctx.reportNode.typeArgumentsRange, "v128.qfms", type.toString()
  );
  return module.unreachable();
}
builtins.set(BuiltinNames.v128_qfms, builtin_v128_qfms);

// === Internal runtime =======================================================================

// __visit_globals(cookie: u32) -> void
function builtin_visit_globals(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkTypeAbsent(ctx) |
    checkArgsRequired(ctx, 1) // cookie
  ) {
    compiler.currentType = Type.void;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var arg0 = compiler.compileExpression(operands[0], Type.u32, Constraints.CONV_IMPLICIT);
  compiler.runtimeFeatures |= RuntimeFeatures.visitGlobals;
  compiler.currentType = Type.void;
  return module.call(BuiltinNames.visit_globals, [ arg0 ], NativeType.None);
}
builtins.set(BuiltinNames.visit_globals, builtin_visit_globals);

// __visit_members(ref: usize, cookie: u32) -> void
function builtin_visit_members(ctx: BuiltinContext): ExpressionRef {
  var compiler = ctx.compiler;
  var module = compiler.module;
  if (
    checkTypeAbsent(ctx) |
    checkArgsRequired(ctx, 2) // ref, cookie
  ) {
    compiler.currentType = Type.void;
    return module.unreachable();
  }
  var operands = ctx.operands;
  var arg0 = compiler.compileExpression(operands[0], compiler.options.usizeType, Constraints.CONV_IMPLICIT);
  var arg1 = compiler.compileExpression(operands[1], Type.u32, Constraints.CONV_IMPLICIT);
  compiler.runtimeFeatures |= RuntimeFeatures.visitMembers;
  compiler.currentType = Type.void;
  return module.call(BuiltinNames.visit_members, [ arg0, arg1 ], NativeType.None);
}
builtins.set(BuiltinNames.visit_members, builtin_visit_members);

// === Inline assembler =======================================================================

// TODO: Operators can't be just deferred (don't have a corresponding generic built-in)
//   add, sub, mul, div_s, div_u, rem_s, rem_u
//   and, or, xor, shl, shr_u, shr_s
//   eq, eqz, ne, lt_s, lt_u, le_s, le_u, gt_s, gt_u, ge_s, ge_u

// i32.clz -> clz<i32>
function builtin_i32_clz(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.i32;
  return builtin_clz(ctx);
}
builtins.set(BuiltinNames.i32_clz, builtin_i32_clz);

// i64.clz -> clz<i64>
function builtin_i64_clz(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i64 ];
  ctx.contextualType = Type.i64;
  return builtin_clz(ctx);
}
builtins.set(BuiltinNames.i64_clz, builtin_i64_clz);

// i32.ctz -> ctz<i32>
function builtin_i32_ctz(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.i32;
  return builtin_ctz(ctx);
}
builtins.set(BuiltinNames.i32_ctz, builtin_i32_ctz);

// i64.ctz -> ctz<i64>
function builtin_i64_ctz(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i64 ];
  ctx.contextualType = Type.i64;
  return builtin_ctz(ctx);
}
builtins.set(BuiltinNames.i64_ctz, builtin_i64_ctz);

// i32.popcnt -> popcnt<i32>
function builtin_i32_popcnt(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.i32;
  return builtin_popcnt(ctx);
}
builtins.set(BuiltinNames.i32_popcnt, builtin_i32_popcnt);

// i64.popcnt -> popcnt<i64>
function builtin_i64_popcnt(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i64 ];
  ctx.contextualType = Type.i64;
  return builtin_popcnt(ctx);
}
builtins.set(BuiltinNames.i64_popcnt, builtin_i64_popcnt);

// i32.rotl -> rotl<i32>
function builtin_i32_rotl(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.i32;
  return builtin_rotl(ctx);
}
builtins.set(BuiltinNames.i32_rotl, builtin_i32_rotl);

// i64.rotl -> rotl<i64>
function builtin_i64_rotl(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i64 ];
  ctx.contextualType = Type.i64;
  return builtin_rotl(ctx);
}
builtins.set(BuiltinNames.i64_rotl, builtin_i64_rotl);

// i32.rotr -> rotr<i32>
function builtin_i32_rotr(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.i32;
  return builtin_rotr(ctx);
}
builtins.set(BuiltinNames.i32_rotr, builtin_i32_rotr);

// i64.rotr -> rotr<i64>
function builtin_i64_rotr(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i64 ];
  ctx.contextualType = Type.i64;
  return builtin_rotr(ctx);
}
builtins.set(BuiltinNames.i64_rotr, builtin_i64_rotr);

// f32.abs -> abs<f32>
function builtin_f32_abs(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.f32;
  return builtin_abs(ctx);
}
builtins.set(BuiltinNames.f32_abs, builtin_f32_abs);

// f64.abs -> abs<f64>
function builtin_f64_abs(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.f64;
  return builtin_abs(ctx);
}
builtins.set(BuiltinNames.f64_abs, builtin_f64_abs);

// f32.max -> max<f32>
function builtin_f32_max(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.f32;
  return builtin_max(ctx);
}
builtins.set(BuiltinNames.f32_max, builtin_f32_max);

// f64.max -> max<f64>
function builtin_f64_max(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.f64;
  return builtin_max(ctx);
}
builtins.set(BuiltinNames.f64_max, builtin_f64_max);

// f32.min -> min<f32>
function builtin_f32_min(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.f32;
  return builtin_min(ctx);
}
builtins.set(BuiltinNames.f32_min, builtin_f32_min);

// f64.min -> min<f64>
function builtin_f64_min(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.f64;
  return builtin_min(ctx);
}
builtins.set(BuiltinNames.f64_min, builtin_f64_min);

// f32.ceil -> ceil<f32>
function builtin_f32_ceil(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.f32;
  return builtin_ceil(ctx);
}
builtins.set(BuiltinNames.f32_ceil, builtin_f32_ceil);

// f64.ceil -> ceil<f64>
function builtin_f64_ceil(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.f64;
  return builtin_ceil(ctx);
}
builtins.set(BuiltinNames.f64_ceil, builtin_f64_ceil);

// f32.floor -> floor<f32>
function builtin_f32_floor(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.f32;
  return builtin_floor(ctx);
}
builtins.set(BuiltinNames.f32_floor, builtin_f32_floor);

// f64.floor -> floor<f64>
function builtin_f64_floor(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.f64;
  return builtin_floor(ctx);
}
builtins.set(BuiltinNames.f64_floor, builtin_f64_floor);

// f32.copysign -> copysign<f32>
function builtin_f32_copysign(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.f32;
  return builtin_copysign(ctx);
}
builtins.set(BuiltinNames.f32_copysign, builtin_f32_copysign);

// f64.copysign -> copysign<f64>
function builtin_f64_copysign(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.f64;
  return builtin_copysign(ctx);
}
builtins.set(BuiltinNames.f64_copysign, builtin_f64_copysign);

// f32.nearest -> nearest<f32>
function builtin_f32_nearest(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.f32;
  return builtin_nearest(ctx);
}
builtins.set(BuiltinNames.f32_nearest, builtin_f32_nearest);

// f64.nearest -> nearest<f64>
function builtin_f64_nearest(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.f64;
  return builtin_nearest(ctx);
}
builtins.set(BuiltinNames.f64_nearest, builtin_f64_nearest);

// i32.reinterpret_f32 -> reinterpret<i32>
function builtin_i32_reinterpret_f32(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.f32;
  return builtin_reinterpret(ctx);
}
builtins.set(BuiltinNames.i32_reinterpret_f32, builtin_i32_reinterpret_f32);

// i64.reinterpret_f64 -> reinterpret<i64>
function builtin_i64_reinterpret_f64(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i64 ];
  ctx.contextualType = Type.f64;
  return builtin_reinterpret(ctx);
}
builtins.set(BuiltinNames.i64_reinterpret_f64, builtin_i64_reinterpret_f64);

// f32.reinterpret_i32 -> reinterpret<f32>
function builtin_f32_reinterpret_i32(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.i32;
  return builtin_reinterpret(ctx);
}
builtins.set(BuiltinNames.f32_reinterpret_i32, builtin_f32_reinterpret_i32);

// f64.reinterpret_i64 -> reinterpret<f64>
function builtin_f64_reinterpret_i64(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.i64;
  return builtin_reinterpret(ctx);
}
builtins.set(BuiltinNames.f64_reinterpret_i64, builtin_f64_reinterpret_i64);

// f32.sqrt -> sqrt<f32>
function builtin_f32_sqrt(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.f32;
  return builtin_sqrt(ctx);
}
builtins.set(BuiltinNames.f32_sqrt, builtin_f32_sqrt);

// f64.sqrt -> sqrt<f64>
function builtin_f64_sqrt(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.f64;
  return builtin_sqrt(ctx);
}
builtins.set(BuiltinNames.f64_sqrt, builtin_f64_sqrt);

// f32.trunc -> trunc<f32>
function builtin_f32_trunc(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.f32;
  return builtin_trunc(ctx);
}
builtins.set(BuiltinNames.f32_trunc, builtin_f32_trunc);

// f64.trunc -> trunc<f64>
function builtin_f64_trunc(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.f64;
  return builtin_trunc(ctx);
}
builtins.set(BuiltinNames.f64_trunc, builtin_f64_trunc);

// i32.add -> add<i32>
function builtin_i32_add(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.i32;
  return builtin_add(ctx);
}
builtins.set(BuiltinNames.i32_add, builtin_i32_add);

// i64.add -> add<i64>
function builtin_i64_add(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i64 ];
  ctx.contextualType = Type.i64;
  return builtin_add(ctx);
}
builtins.set(BuiltinNames.i64_add, builtin_i64_add);

// f32.add -> add<f32>
function builtin_f32_add(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.f32;
  return builtin_add(ctx);
}
builtins.set(BuiltinNames.f32_add, builtin_f32_add);

// f64.add -> add<f64>
function builtin_f64_add(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.f64;
  return builtin_add(ctx);
}
builtins.set(BuiltinNames.f64_add, builtin_f64_add);

// i32.sub -> sub<i32>
function builtin_i32_sub(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.i32;
  return builtin_sub(ctx);
}
builtins.set(BuiltinNames.i32_sub, builtin_i32_sub);

// i64.sub -> sub<i64>
function builtin_i64_sub(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i64 ];
  ctx.contextualType = Type.i64;
  return builtin_sub(ctx);
}
builtins.set(BuiltinNames.i64_sub, builtin_i64_sub);

// f32.sub -> sub<f32>
function builtin_f32_sub(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.f32;
  return builtin_sub(ctx);
}
builtins.set(BuiltinNames.f32_sub, builtin_f32_sub);

// f64.sub -> sub<f64>
function builtin_f64_sub(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.f64;
  return builtin_sub(ctx);
}
builtins.set(BuiltinNames.f64_sub, builtin_f64_sub);

// i32.mul -> mul<i32>
function builtin_i32_mul(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.i32;
  return builtin_mul(ctx);
}
builtins.set(BuiltinNames.i32_mul, builtin_i32_mul);

// i64.mul -> mul<i64>
function builtin_i64_mul(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i64 ];
  ctx.contextualType = Type.i64;
  return builtin_mul(ctx);
}
builtins.set(BuiltinNames.i64_mul, builtin_i64_mul);

// f32.mul -> mul<f32>
function builtin_f32_mul(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.f32;
  return builtin_mul(ctx);
}
builtins.set(BuiltinNames.f32_mul, builtin_f32_mul);

// f64.mul -> mul<f64>
function builtin_f64_mul(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.f64;
  return builtin_mul(ctx);
}
builtins.set(BuiltinNames.f64_mul, builtin_f64_mul);

// i32.div_s -> div<i32>
function builtin_i32_div_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.i32;
  return builtin_div(ctx);
}
builtins.set(BuiltinNames.i32_div_s, builtin_i32_div_s);

// i32.div_u -> div<u32>
function builtin_i32_div_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u32 ];
  ctx.contextualType = Type.u32;
  return builtin_div(ctx);
}
builtins.set(BuiltinNames.i32_div_u, builtin_i32_div_u);

// i64.div_s -> div_s<i64>
function builtin_i64_div_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i64 ];
  ctx.contextualType = Type.i64;
  return builtin_div(ctx);
}
builtins.set(BuiltinNames.i64_div_s, builtin_i64_div_s);

// i64.div_u -> div_u<u64>
function builtin_i64_div_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u64 ];
  ctx.contextualType = Type.u64;
  return builtin_div(ctx);
}
builtins.set(BuiltinNames.i64_div_u, builtin_i64_div_u);

// f32.div -> div<f32>
function builtin_f32_div(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.f32;
  return builtin_div(ctx);
}
builtins.set(BuiltinNames.f32_div, builtin_f32_div);

// f64.div -> div<f64>
function builtin_f64_div(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.f64;
  return builtin_div(ctx);
}
builtins.set(BuiltinNames.f64_div, builtin_f64_div);

// i32.load8_s -> <i32>load<i8>
function builtin_i32_load8_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i8 ];
  ctx.contextualType = Type.i32;
  return builtin_load(ctx);
}
builtins.set(BuiltinNames.i32_load8_s, builtin_i32_load8_s);

// i32.load8_u -> <i32>load<u8>
function builtin_i32_load8_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u8 ];
  ctx.contextualType = Type.i32;
  return builtin_load(ctx);
}
builtins.set(BuiltinNames.i32_load8_u, builtin_i32_load8_u);

// i32.load16_s -> <i32>load<i16>
function builtin_i32_load16_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i16 ];
  ctx.contextualType = Type.i32;
  return builtin_load(ctx);
}
builtins.set(BuiltinNames.i32_load16_s, builtin_i32_load16_s);

// i32.load16_u -> <i32>load<u16>
function builtin_i32_load16_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u16 ];
  ctx.contextualType = Type.i32;
  return builtin_load(ctx);
}
builtins.set(BuiltinNames.i32_load16_u, builtin_i32_load16_u);

// i32.load -> <i32>load<i32>
function builtin_i32_load(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.i32;
  return builtin_load(ctx);
}
builtins.set(BuiltinNames.i32_load, builtin_i32_load);

// i64.load8_s -> <i64>load<i8>
function builtin_i64_load8_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i8 ];
  ctx.contextualType = Type.i64;
  return builtin_load(ctx);
}
builtins.set(BuiltinNames.i64_load8_s, builtin_i64_load8_s);

// i64.load8_u -> <i64>load<u8>
function builtin_i64_load8_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u8 ];
  ctx.contextualType = Type.i64;
  return builtin_load(ctx);
}
builtins.set(BuiltinNames.i64_load8_u, builtin_i64_load8_u);

// i64.load16_s -> <i64>load<i16>
function builtin_i64_load16_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i16 ];
  ctx.contextualType = Type.i64;
  return builtin_load(ctx);
}
builtins.set(BuiltinNames.i64_load16_s, builtin_i64_load16_s);

// i64.load16_u -> <i64>load<u16>
function builtin_i64_load16_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u16 ];
  ctx.contextualType = Type.i64;
  return builtin_load(ctx);
}
builtins.set(BuiltinNames.i64_load16_u, builtin_i64_load16_u);

// i64.load32_s -> <i64>load<i32>
function builtin_i64_load32_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.i64;
  return builtin_load(ctx);
}
builtins.set(BuiltinNames.i64_load32_s, builtin_i64_load32_s);

// i64.load32_u -> <i64>load<u32>
function builtin_i64_load32_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u32 ];
  ctx.contextualType = Type.i64;
  return builtin_load(ctx);
}
builtins.set(BuiltinNames.i64_load32_u, builtin_i64_load32_u);

// i64.load -> <i64>load<i64>
function builtin_i64_load(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i64 ];
  ctx.contextualType = Type.i64;
  return builtin_load(ctx);
}
builtins.set(BuiltinNames.i64_load, builtin_i64_load);

// f32.load -> <f32>load<f32>
function builtin_f32_load(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.f32;
  return builtin_load(ctx);
}
builtins.set(BuiltinNames.f32_load, builtin_f32_load);

// f64.load -> <f64>load<f64>
function builtin_f64_load(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.f64;
  return builtin_load(ctx);
}
builtins.set(BuiltinNames.f64_load, builtin_f64_load);

// i32.store8 -> store<i8 from i32>
function builtin_i32_store8(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i8 ];
  ctx.contextualType = Type.i32;
  ctx.contextIsExact = true;
  return builtin_store(ctx);
}
builtins.set(BuiltinNames.i32_store8, builtin_i32_store8);

// i32.store16 -> store<i16 from i32>
function builtin_i32_store16(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i16 ];
  ctx.contextualType = Type.i32;
  ctx.contextIsExact = true;
  return builtin_store(ctx);
}
builtins.set(BuiltinNames.i32_store16, builtin_i32_store16);

// i32.store -> store<i32 from i32>
function builtin_i32_store(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.i32;
  ctx.contextIsExact = true;
  return builtin_store(ctx);
}
builtins.set(BuiltinNames.i32_store, builtin_i32_store);

// i64.store8 -> store<i8 from i64>
function builtin_i64_store8(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i8 ];
  ctx.contextualType = Type.i64;
  ctx.contextIsExact = true;
  return builtin_store(ctx);
}
builtins.set(BuiltinNames.i64_store8, builtin_i64_store8);

// i64.store16 -> store<i16 from i64>
function builtin_i64_store16(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i16 ];
  ctx.contextualType = Type.i64;
  ctx.contextIsExact = true;
  return builtin_store(ctx);
}
builtins.set(BuiltinNames.i64_store16, builtin_i64_store16);

// i64.store32 -> store<i32 from i64>
function builtin_i64_store32(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.i64;
  ctx.contextIsExact = true;
  return builtin_store(ctx);
}
builtins.set(BuiltinNames.i64_store32, builtin_i64_store32);

// i64.store -> store<i64 from i64>
function builtin_i64_store(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i64 ];
  ctx.contextualType = Type.i64;
  ctx.contextIsExact = true;
  return builtin_store(ctx);
}
builtins.set(BuiltinNames.i64_store, builtin_i64_store);

// f32.store -> store<f32 from f64>
function builtin_f32_store(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.f32;
  ctx.contextIsExact = true;
  return builtin_store(ctx);
}
builtins.set(BuiltinNames.f32_store, builtin_f32_store);

// f64.store -> store<f64 from f64>
function builtin_f64_store(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.f64;
  ctx.contextIsExact = true;
  return builtin_store(ctx);
}
builtins.set(BuiltinNames.f64_store, builtin_f64_store);

// i32.atomic.load8_u -> <i32>atomic.load<u8>
function builtin_i32_atomic_load8_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u8 ];
  ctx.contextualType = Type.i32;
  return builtin_atomic_load(ctx);
}
builtins.set(BuiltinNames.i32_atomic_load8_u, builtin_i32_atomic_load8_u);

// i32.atomic.load16_u -> <i32>atomic.load<u16>
function builtin_i32_atomic_load16_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u16 ];
  ctx.contextualType = Type.i32;
  return builtin_atomic_load(ctx);
}
builtins.set(BuiltinNames.i32_atomic_load16_u, builtin_i32_atomic_load16_u);

// i32.atomic.load -> <i32>atomic.load<i32>
function builtin_i32_atomic_load(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.i32;
  return builtin_atomic_load(ctx);
}
builtins.set(BuiltinNames.i32_atomic_load, builtin_i32_atomic_load);

// i64.atomic.load8_u -> <i64>atomic.load<u8>
function builtin_i64_atomic_load8_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u8 ];
  ctx.contextualType = Type.i64;
  return builtin_atomic_load(ctx);
}
builtins.set(BuiltinNames.i64_atomic_load8_u, builtin_i64_atomic_load8_u);

// i64.atomic.load16_u -> <i64>atomic.load<u16>
function builtin_i64_atomic_load16_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u16 ];
  ctx.contextualType = Type.i64;
  return builtin_atomic_load(ctx);
}
builtins.set(BuiltinNames.i64_atomic_load16_u, builtin_i64_atomic_load16_u);

// i64.atomic.load32_u -> <i64>atomic.load<u32>
function builtin_i64_atomic_load32_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u32 ];
  ctx.contextualType = Type.i64;
  return builtin_atomic_load(ctx);
}
builtins.set(BuiltinNames.i64_atomic_load32_u, builtin_i64_atomic_load32_u);

// i64.atomic.load -> <i64>atomic.load<i64>
function builtin_i64_atomic_load(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i64 ];
  ctx.contextualType = Type.i64;
  return builtin_atomic_load(ctx);
}
builtins.set(BuiltinNames.i64_atomic_load, builtin_i64_atomic_load);

// i32.atomic.store8 -> atomic.store<i8 from i32>
function builtin_i32_atomic_store8(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i8 ];
  ctx.contextualType = Type.i32;
  ctx.contextIsExact = true;
  return builtin_atomic_store(ctx);
}
builtins.set(BuiltinNames.i32_atomic_store8, builtin_i32_atomic_store8);

// i32.atomic.store16 -> atomic.store<i16 from i32>
function builtin_i32_atomic_store16(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i16 ];
  ctx.contextualType = Type.i32;
  ctx.contextIsExact = true;
  return builtin_atomic_store(ctx);
}
builtins.set(BuiltinNames.i32_atomic_store16, builtin_i32_atomic_store16);

// i32.atomic.store -> atomic.store<i32 from i32>
function builtin_i32_atomic_store(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.i32;
  ctx.contextIsExact = true;
  return builtin_atomic_store(ctx);
}
builtins.set(BuiltinNames.i32_atomic_store, builtin_i32_atomic_store);

// i64.atomic.store8 -> atomic.store<i8 from i64>
function builtin_i64_atomic_store8(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i8 ];
  ctx.contextualType = Type.i64;
  ctx.contextIsExact = true;
  return builtin_atomic_store(ctx);
}
builtins.set(BuiltinNames.i64_atomic_store8, builtin_i64_atomic_store8);

// i64.atomic.store16 -> atomic.store<i16 from i64>
function builtin_i64_atomic_store16(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u16 ];
  ctx.contextualType = Type.i64;
  ctx.contextIsExact = true;
  return builtin_atomic_store(ctx);
}
builtins.set(BuiltinNames.i64_atomic_store16, builtin_i64_atomic_store16);

// i64.atomic.store32 -> atomic.store<i32 from i64>
function builtin_i64_atomic_store32(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.i64;
  ctx.contextIsExact = true;
  return builtin_atomic_store(ctx);
}
builtins.set(BuiltinNames.i64_atomic_store32, builtin_i64_atomic_store32);

// i64.atomic.store -> atomic.store<i64 from i64>
function builtin_i64_atomic_store(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i64 ];
  ctx.contextualType = Type.i64;
  ctx.contextIsExact = true;
  return builtin_atomic_store(ctx);
}
builtins.set(BuiltinNames.i64_atomic_store, builtin_i64_atomic_store);

// i32.atomic.rmw8.add_u -> <i32>atomic.add<u8 from i32>
function builtin_i32_atomic_rmw8_add_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u8 ];
  ctx.contextualType = Type.i32;
  ctx.contextIsExact = true;
  return builtin_atomic_add(ctx);
}
builtins.set(BuiltinNames.i32_atomic_rmw8_add_u, builtin_i32_atomic_rmw8_add_u);

// i32.atomic.rmw16.add_u -> <i32>atomic.add<u16 from i32>
function builtin_i32_atomic_rmw16_add_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u16 ];
  ctx.contextualType = Type.i32;
  ctx.contextIsExact = true;
  return builtin_atomic_add(ctx);
}
builtins.set(BuiltinNames.i32_atomic_rmw16_add_u, builtin_i32_atomic_rmw16_add_u);

// i32.atomic.rmw.add -> <i32>atomic.add<i32 from i32>
function builtin_i32_atomic_rmw_add(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.i32;
  ctx.contextIsExact = true;
  return builtin_atomic_add(ctx);
}
builtins.set(BuiltinNames.i32_atomic_rmw_add, builtin_i32_atomic_rmw_add);

// i64.atomic.rmw8.add_u -> <i64>atomic.add<u8 from i64>
function builtin_i64_atomic_rmw8_add_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u8 ];
  ctx.contextualType = Type.i64;
  ctx.contextIsExact = true;
  return builtin_atomic_add(ctx);
}
builtins.set(BuiltinNames.i64_atomic_rmw8_add_u, builtin_i64_atomic_rmw8_add_u);

// i64.atomic.rmw16.add_u -> <i64>atomic.add<u16 from i64>
function builtin_i64_atomic_rmw16_add_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u16 ];
  ctx.contextualType = Type.i64;
  ctx.contextIsExact = true;
  return builtin_atomic_add(ctx);
}
builtins.set(BuiltinNames.i64_atomic_rmw16_add_u, builtin_i64_atomic_rmw16_add_u);

// i64.atomic.rmw32.add_u -> <i64>atomic.add<u32 from i64>
function builtin_i64_atomic_rmw32_add_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u32 ];
  ctx.contextualType = Type.i64;
  ctx.contextIsExact = true;
  return builtin_atomic_add(ctx);
}
builtins.set(BuiltinNames.i64_atomic_rmw32_add_u, builtin_i64_atomic_rmw32_add_u);

// i64.atomic.rmw.add -> <i64>atomic.add<i64 from i64>
function builtin_i64_atomic_rmw_add(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i64 ];
  ctx.contextualType = Type.i64;
  ctx.contextIsExact = true;
  return builtin_atomic_add(ctx);
}
builtins.set(BuiltinNames.i64_atomic_rmw_add, builtin_i64_atomic_rmw_add);

// i32.atomic.rmw8.sub_u -> <i32>atomic.sub<u8 from i32>
function builtin_i32_atomic_rmw8_sub_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u8 ];
  ctx.contextualType = Type.i32;
  ctx.contextIsExact = true;
  return builtin_atomic_sub(ctx);
}
builtins.set(BuiltinNames.i32_atomic_rmw8_sub_u, builtin_i32_atomic_rmw8_sub_u);

// i32.atomic.rmw16.sub_u -> <i32>atomic.sub<u16 from i32>
function builtin_i32_atomic_rmw16_sub_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u16 ];
  ctx.contextualType = Type.i32;
  ctx.contextIsExact = true;
  return builtin_atomic_sub(ctx);
}
builtins.set(BuiltinNames.i32_atomic_rmw16_sub_u, builtin_i32_atomic_rmw16_sub_u);

// i32.atomic.rmw.sub -> <i32>atomic.sub<i32 from i32>
function builtin_i32_atomic_rmw_sub(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.i32;
  ctx.contextIsExact = true;
  return builtin_atomic_sub(ctx);
}
builtins.set(BuiltinNames.i32_atomic_rmw_sub, builtin_i32_atomic_rmw_sub);

// i64.atomic.rmw8.sub_u -> <i64>atomic.sub<u8 from i64>
function builtin_i64_atomic_rmw8_sub_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u8 ];
  ctx.contextualType = Type.i64;
  ctx.contextIsExact = true;
  return builtin_atomic_sub(ctx);
}
builtins.set(BuiltinNames.i64_atomic_rmw8_sub_u, builtin_i64_atomic_rmw8_sub_u);

// i64.atomic.rmw16.sub_u -> <i64>atomic.sub<u16 from i64>
function builtin_i64_atomic_rmw16_sub_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u16 ];
  ctx.contextualType = Type.i64;
  ctx.contextIsExact = true;
  return builtin_atomic_sub(ctx);
}
builtins.set(BuiltinNames.i64_atomic_rmw16_sub_u, builtin_i64_atomic_rmw16_sub_u);

// i64.atomic.rmw32.sub_u -> <i64>atomic.sub<u32 from i64>
function builtin_i64_atomic_rmw32_sub_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u32 ];
  ctx.contextualType = Type.i64;
  ctx.contextIsExact = true;
  return builtin_atomic_sub(ctx);
}
builtins.set(BuiltinNames.i64_atomic_rmw32_sub_u, builtin_i64_atomic_rmw32_sub_u);

// i64.atomic.rmw.sub -> <i64>atomic.sub<i64 from i64>
function builtin_i64_atomic_rmw_sub(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i64 ];
  ctx.contextualType = Type.i64;
  ctx.contextIsExact = true;
  return builtin_atomic_sub(ctx);
}
builtins.set(BuiltinNames.i64_atomic_rmw_sub, builtin_i64_atomic_rmw_sub);

// i32.atomic.rmw8.and_u -> <i32>atomic.and<u8 from i32>
function builtin_i32_atomic_rmw8_and_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u8 ];
  ctx.contextualType = Type.i32;
  ctx.contextIsExact = true;
  return builtin_atomic_and(ctx);
}
builtins.set(BuiltinNames.i32_atomic_rmw8_and_u, builtin_i32_atomic_rmw8_and_u);

// i32.atomic.rmw16.and_u -> <i32>atomic.and<u16 from i32>
function builtin_i32_atomic_rmw16_and_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u16 ];
  ctx.contextualType = Type.i32;
  ctx.contextIsExact = true;
  return builtin_atomic_and(ctx);
}
builtins.set(BuiltinNames.i32_atomic_rmw16_and_u, builtin_i32_atomic_rmw16_and_u);

// i32.atomic.rmw.and -> <i32>atomic.and<i32 from i32>
function builtin_i32_atomic_rmw_and(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.i32;
  ctx.contextIsExact = true;
  return builtin_atomic_and(ctx);
}
builtins.set(BuiltinNames.i32_atomic_rmw_and, builtin_i32_atomic_rmw_and);

// i64.atomic.rmw8.and_u -> <i64>atomic.and<u8 from i64>
function builtin_i64_atomic_rmw8_and_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u8 ];
  ctx.contextualType = Type.i64;
  ctx.contextIsExact = true;
  return builtin_atomic_and(ctx);
}
builtins.set(BuiltinNames.i64_atomic_rmw8_and_u, builtin_i64_atomic_rmw8_and_u);

// i64.atomic.rmw16.and_u -> <i64>atomic.and<u16 from i64>
function builtin_i64_atomic_rmw16_and_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u16 ];
  ctx.contextualType = Type.i64;
  ctx.contextIsExact = true;
  return builtin_atomic_and(ctx);
}
builtins.set(BuiltinNames.i64_atomic_rmw16_and_u, builtin_i64_atomic_rmw16_and_u);

// i64.atomic.rmw32.and_u -> <i64>atomic.and<u32 from i64>
function builtin_i64_atomic_rmw32_and_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u32 ];
  ctx.contextualType = Type.i64;
  ctx.contextIsExact = true;
  return builtin_atomic_and(ctx);
}
builtins.set(BuiltinNames.i64_atomic_rmw32_and_u, builtin_i64_atomic_rmw32_and_u);

// i64.atomic.rmw.and -> <i64>atomic.and<i64 from i64>
function builtin_i64_atomic_rmw_and(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i64 ];
  ctx.contextualType = Type.i64;
  ctx.contextIsExact = true;
  return builtin_atomic_and(ctx);
}
builtins.set(BuiltinNames.i64_atomic_rmw_and, builtin_i64_atomic_rmw_and);

// i32.atomic.rmw8.or_u -> <i32>atomic.or<u8 from i32>
function builtin_i32_atomic_rmw8_or_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u8 ];
  ctx.contextualType = Type.i32;
  ctx.contextIsExact = true;
  return builtin_atomic_or(ctx);
}
builtins.set(BuiltinNames.i32_atomic_rmw8_or_u, builtin_i32_atomic_rmw8_or_u);

// i32.atomic.rmw16.or_u -> <i32atomic.or<u16 from i32>
function builtin_i32_atomic_rmw16_or_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u16 ];
  ctx.contextualType = Type.i32;
  ctx.contextIsExact = true;
  return builtin_atomic_or(ctx);
}
builtins.set(BuiltinNames.i32_atomic_rmw16_or_u, builtin_i32_atomic_rmw16_or_u);

// i32.atomic.rmw.or -> <i32>atomic.or<i32 from i32>
function builtin_i32_atomic_rmw_or(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.i32;
  ctx.contextIsExact = true;
  return builtin_atomic_or(ctx);
}
builtins.set(BuiltinNames.i32_atomic_rmw_or, builtin_i32_atomic_rmw_or);

// i64.atomic.rmw8.or_u -> <i64>atomic.or<u8 from i64>
function builtin_i64_atomic_rmw8_or_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u8 ];
  ctx.contextualType = Type.i64;
  ctx.contextIsExact = true;
  return builtin_atomic_or(ctx);
}
builtins.set(BuiltinNames.i64_atomic_rmw8_or_u, builtin_i64_atomic_rmw8_or_u);

// i64.atomic.rmw16.or_u -> <i64>atomic.or<u16 from i64>
function builtin_i64_atomic_rmw16_or_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u16 ];
  ctx.contextualType = Type.i64;
  ctx.contextIsExact = true;
  return builtin_atomic_or(ctx);
}
builtins.set(BuiltinNames.i64_atomic_rmw16_or_u, builtin_i64_atomic_rmw16_or_u);

// i64.atomic.rmw32.or_u -> <i64>atomic.or<u32 from i64>
function builtin_i64_atomic_rmw32_or_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u32 ];
  ctx.contextualType = Type.i64;
  ctx.contextIsExact = true;
  return builtin_atomic_or(ctx);
}
builtins.set(BuiltinNames.i64_atomic_rmw32_or_u, builtin_i64_atomic_rmw32_or_u);

// i64.atomic.rmw.or -> <i64>atomic.or<i64 from i64>
function builtin_i64_atomic_rmw_or(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i64 ];
  ctx.contextualType = Type.i64;
  ctx.contextIsExact = true;
  return builtin_atomic_or(ctx);
}
builtins.set(BuiltinNames.i64_atomic_rmw_or, builtin_i64_atomic_rmw_or);

// i32.atomic.rmw8.xor_u -> <i32>atomic.xor<u8 from i32>
function builtin_i32_atomic_rmw8_xor_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u8 ];
  ctx.contextualType = Type.i32;
  ctx.contextIsExact = true;
  return builtin_atomic_xor(ctx);
}
builtins.set(BuiltinNames.i32_atomic_rmw8_xor_u, builtin_i32_atomic_rmw8_xor_u);

// i32.atomic.rmw16.xor_u -> <i32>atomic.xor<u16 from i32>
function builtin_i32_atomic_rmw16_xor_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u16 ];
  ctx.contextualType = Type.i32;
  ctx.contextIsExact = true;
  return builtin_atomic_xor(ctx);
}
builtins.set(BuiltinNames.i32_atomic_rmw16_xor_u, builtin_i32_atomic_rmw16_xor_u);

// i32.atomic.rmw.xor -> <i32>atomic.xor<i32 from i32>
function builtin_i32_atomic_rmw_xor(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.i32;
  ctx.contextIsExact = true;
  return builtin_atomic_xor(ctx);
}
builtins.set(BuiltinNames.i32_atomic_rmw_xor, builtin_i32_atomic_rmw_xor);

// i64.atomic.rmw8.xor_u -> <i64>atomic.xor<u8 from i64>
function builtin_i64_atomic_rmw8_xor_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u8 ];
  ctx.contextualType = Type.i64;
  ctx.contextIsExact = true;
  return builtin_atomic_xor(ctx);
}
builtins.set(BuiltinNames.i64_atomic_rmw8_xor_u, builtin_i64_atomic_rmw8_xor_u);

// i64.atomic.rmw16.xor_u -> <i64>atomic.xor<u16 from i64>
function builtin_i64_atomic_rmw16_xor_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u16 ];
  ctx.contextualType = Type.i64;
  ctx.contextIsExact = true;
  return builtin_atomic_xor(ctx);
}
builtins.set(BuiltinNames.i64_atomic_rmw16_xor_u, builtin_i64_atomic_rmw16_xor_u);

// i64.atomic.rmw32.xor_u -> <i64>atomic.xor<u32 from i64>
function builtin_i64_atomic_rmw32_xor_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u32 ];
  ctx.contextualType = Type.i64;
  ctx.contextIsExact = true;
  return builtin_atomic_xor(ctx);
}
builtins.set(BuiltinNames.i64_atomic_rmw32_xor_u, builtin_i64_atomic_rmw32_xor_u);

// i64.atomic.rmw.xor -> <i64>atomic.xor<i64 from i64>
function builtin_i64_atomic_rmw_xor(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i64 ];
  ctx.contextualType = Type.i64;
  ctx.contextIsExact = true;
  return builtin_atomic_xor(ctx);
}
builtins.set(BuiltinNames.i64_atomic_rmw_xor, builtin_i64_atomic_rmw_xor);

// i32.atomic.rmw8.xchg_u -> <i32>atomic.xchg<u8 from i32>
function builtin_i32_atomic_rmw8_xchg_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u8 ];
  ctx.contextualType = Type.i32;
  ctx.contextIsExact = true;
  return builtin_atomic_xchg(ctx);
}
builtins.set(BuiltinNames.i32_atomic_rmw8_xchg_u, builtin_i32_atomic_rmw8_xchg_u);

// i32.atomic.rmw16.xchg_u -> <i32>atomic.xchg<u16 from i32>
function builtin_i32_atomic_rmw16_xchg_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u16 ];
  ctx.contextualType = Type.i32;
  ctx.contextIsExact = true;
  return builtin_atomic_xchg(ctx);
}
builtins.set(BuiltinNames.i32_atomic_rmw16_xchg_u, builtin_i32_atomic_rmw16_xchg_u);

// i32.atomic.rmw.xchg -> <i32>atomic.xchg<i32 from i32>
function builtin_i32_atomic_rmw_xchg(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.i32;
  ctx.contextIsExact = true;
  return builtin_atomic_xchg(ctx);
}
builtins.set(BuiltinNames.i32_atomic_rmw_xchg, builtin_i32_atomic_rmw_xchg);

// i64.atomic.rmw8.xchg_u -> <i64>atomic.xchg<u8 from i64>
function builtin_i64_atomic_rmw8_xchg_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u8 ];
  ctx.contextualType = Type.i64;
  ctx.contextIsExact = true;
  return builtin_atomic_xchg(ctx);
}
builtins.set(BuiltinNames.i64_atomic_rmw8_xchg_u, builtin_i64_atomic_rmw8_xchg_u);

// i64.atomic.rmw16.xchg_u -> <i64>atomic.xchg<u16 from i64>
function builtin_i64_atomic_rmw16_xchg_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u16 ];
  ctx.contextualType = Type.i64;
  ctx.contextIsExact = true;
  return builtin_atomic_xchg(ctx);
}
builtins.set(BuiltinNames.i64_atomic_rmw16_xchg_u, builtin_i64_atomic_rmw16_xchg_u);

// i64.atomic.rmw32.xchg_u -> <i64>atomic.xchg<u32 from i64>
function builtin_i64_atomic_rmw32_xchg_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u32 ];
  ctx.contextualType = Type.i64;
  ctx.contextIsExact = true;
  return builtin_atomic_xchg(ctx);
}
builtins.set(BuiltinNames.i64_atomic_rmw32_xchg_u, builtin_i64_atomic_rmw32_xchg_u);

// i64.atomic.rmw.xchg -> <i64>atomic.xchg<i64 from i64>
function builtin_i64_atomic_rmw_xchg(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i64 ];
  ctx.contextualType = Type.i64;
  ctx.contextIsExact = true;
  return builtin_atomic_xchg(ctx);
}
builtins.set(BuiltinNames.i64_atomic_rmw_xchg, builtin_i64_atomic_rmw_xchg);

// i32.atomic.rmw8.cmpxchg_u -> <i32>atomic.cmpxchg<u8 from i32>
function builtin_i32_atomic_rmw8_cmpxchg_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u8 ];
  ctx.contextualType = Type.i32;
  ctx.contextIsExact = true;
  return builtin_atomic_cmpxchg(ctx);
}
builtins.set(BuiltinNames.i32_atomic_rmw8_cmpxchg_u, builtin_i32_atomic_rmw8_cmpxchg_u);

// i32.atomic.rmw16.cmpxchg_u -> <i32>atomic.cmpxchg<u16 from i32>
function builtin_i32_atomic_rmw16_cmpxchg_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u16 ];
  ctx.contextualType = Type.i32;
  ctx.contextIsExact = true;
  return builtin_atomic_cmpxchg(ctx);
}
builtins.set(BuiltinNames.i32_atomic_rmw16_cmpxchg_u, builtin_i32_atomic_rmw16_cmpxchg_u);

// i32.atomic.rmw.cmpxchg -> <i32>atomic.cmpxchg<i32 from i32>
function builtin_i32_atomic_rmw_cmpxchg(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.i32;
  ctx.contextIsExact = true;
  return builtin_atomic_cmpxchg(ctx);
}
builtins.set(BuiltinNames.i32_atomic_rmw_cmpxchg, builtin_i32_atomic_rmw_cmpxchg);

// i64.atomic.rmw8.cmpxchg_u -> <i64>atomic.cmpxchg<u8 from i64>
function builtin_i64_atomic_rmw8_cmpxchg_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u8 ];
  ctx.contextualType = Type.i64;
  ctx.contextIsExact = true;
  return builtin_atomic_cmpxchg(ctx);
}
builtins.set(BuiltinNames.i64_atomic_rmw8_cmpxchg_u, builtin_i64_atomic_rmw8_cmpxchg_u);

// i64.atomic.rmw16.cmpxchg_u -> <i64>atomic.cmpxchg<u16 from i64>
function builtin_i64_atomic_rmw16_cmpxchg_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u16 ];
  ctx.contextualType = Type.i64;
  ctx.contextIsExact = true;
  return builtin_atomic_cmpxchg(ctx);
}
builtins.set(BuiltinNames.i64_atomic_rmw16_cmpxchg_u, builtin_i64_atomic_rmw16_cmpxchg_u);

// i64.atomic.rmw32.cmpxchg_u -> <i64>atomic.cmpxchg<u32 from i64>
function builtin_i64_atomic_rmw32_cmpxchg_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u32 ];
  ctx.contextualType = Type.i64;
  ctx.contextIsExact = true;
  return builtin_atomic_cmpxchg(ctx);
}
builtins.set(BuiltinNames.i64_atomic_rmw32_cmpxchg_u, builtin_i64_atomic_rmw32_cmpxchg_u);

// i64.atomic.rmw.cmpxchg -> <i64>atomic.cmpxchg<i64 from i64>
function builtin_i64_atomic_rmw_cmpxchg(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i64 ];
  ctx.contextualType = Type.i64;
  ctx.contextIsExact = true;
  return builtin_atomic_cmpxchg(ctx);
}
builtins.set(BuiltinNames.i64_atomic_rmw_cmpxchg, builtin_i64_atomic_rmw_cmpxchg);

// i32.wait -> atomic.wait<i32>
function builtin_i32_wait(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  return builtin_atomic_wait(ctx);
}
builtins.set(BuiltinNames.i32_wait, builtin_i32_wait);

// i64.wait -> atomic.wait<i64>
function builtin_i64_wait(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i64 ];
  ctx.contextualType = Type.i32;
  return builtin_atomic_wait(ctx);
}
builtins.set(BuiltinNames.i64_wait, builtin_i64_wait);

// v128.load -> load<v128>
function builtin_v128_load(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.v128 ];
  ctx.contextualType = Type.v128;
  return builtin_load(ctx);
}
builtins.set(BuiltinNames.v128_load, builtin_v128_load);

// v128.store -> store<v128 from v128>
function builtin_v128_store(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.v128 ];
  ctx.contextualType = Type.v128;
  ctx.contextIsExact = true;
  return builtin_store(ctx);
}
builtins.set(BuiltinNames.v128_store, builtin_v128_store);

// i8x16_splat -> v128.splat<i8>
function builtin_i8x16_splat(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i8 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_splat(ctx);
}
builtins.set(BuiltinNames.i8x16_splat, builtin_i8x16_splat);

// i8x16.extract_lane_s -> <i32>v128.extract_lane<i8>
function builtin_i8x16_extract_lane_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i8 ];
  ctx.contextualType = Type.i32;
  return builtin_v128_extract_lane(ctx);
}
builtins.set(BuiltinNames.i8x16_extract_lane_s, builtin_i8x16_extract_lane_s);

// i8x16.extract_lane_u -> <i32>v128.extract_lane<u8>
function builtin_i8x16_extract_lane_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u8 ];
  ctx.contextualType = Type.i32;
  return builtin_v128_extract_lane(ctx);
}
builtins.set(BuiltinNames.i8x16_extract_lane_u, builtin_i8x16_extract_lane_u);

// i8x16.replace_lane -> v128.replace_lane<i8>
function builtin_i8x16_replace_lane(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i8 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_replace_lane(ctx);
}
builtins.set(BuiltinNames.i8x16_replace_lane, builtin_i8x16_replace_lane);

// i8x16.add -> v128.add<i8>
function builtin_i8x16_add(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i8 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_add(ctx);
}
builtins.set(BuiltinNames.i8x16_add, builtin_i8x16_add);

// i8x16.sub -> v128.sub<i8>
function builtin_i8x16_sub(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i8 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_sub(ctx);
}
builtins.set(BuiltinNames.i8x16_sub, builtin_i8x16_sub);

// i8x16.mul -> v128.mul<i8>
function builtin_i8x16_mul(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i8 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_mul(ctx);
}
builtins.set(BuiltinNames.i8x16_mul, builtin_i8x16_mul);

// i8x16.min_s -> v128.min<i8>
function builtin_i8x16_min_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i8 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_min(ctx);
}
builtins.set(BuiltinNames.i8x16_min_s, builtin_i8x16_min_s);

// i8x16.min_u -> v128.min<u8>
function builtin_i8x16_min_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u8 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_min(ctx);
}
builtins.set(BuiltinNames.i8x16_min_u, builtin_i8x16_min_u);

// i8x16.max_s -> v128.max<i8>
function builtin_i8x16_max_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i8 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_max(ctx);
}
builtins.set(BuiltinNames.i8x16_max_s, builtin_i8x16_max_s);

// i8x16.max_u -> v128.max<u8>
function builtin_i8x16_max_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u8 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_max(ctx);
}
builtins.set(BuiltinNames.i8x16_max_u, builtin_i8x16_max_u);

// i8x16.avgr_u -> v128.avgr<u8>
function builtin_i8x16_avgr_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u8 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_avgr(ctx);
}
builtins.set(BuiltinNames.i8x16_avgr_u, builtin_i8x16_avgr_u);

// i8x16.abs -> v128.abs<i8>
function builtin_i8x16_abs(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i8 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_abs(ctx);
}
builtins.set(BuiltinNames.i8x16_abs, builtin_i8x16_abs);

// i8x16.neg -> v128.neg<i8>
function builtin_i8x16_neg(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i8 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_neg(ctx);
}
builtins.set(BuiltinNames.i8x16_neg, builtin_i8x16_neg);

// i8x16.add_saturate_s -> v128.add_saturate<i8>
function builtin_i8x16_add_saturate_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i8 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_add_saturate(ctx);
}
builtins.set(BuiltinNames.i8x16_add_saturate_s, builtin_i8x16_add_saturate_s);

// i8x16.add_saturate_u -> v128.add_saturate<u8>
function builtin_i8x16_add_saturate_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u8 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_add_saturate(ctx);
}
builtins.set(BuiltinNames.i8x16_add_saturate_u, builtin_i8x16_add_saturate_u);

// i8x16.sub_saturate_s -> v128.sub_saturate<i8>
function builtin_i8x16_sub_saturate_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i8 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_sub_saturate(ctx);
}
builtins.set(BuiltinNames.i8x16_sub_saturate_s, builtin_i8x16_sub_saturate_s);

// i8x16.sub_saturate_u -> v128.sub_saturate<u8>
function builtin_i8x16_sub_saturate_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u8 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_sub_saturate(ctx);
}
builtins.set(BuiltinNames.i8x16_sub_saturate_u, builtin_i8x16_sub_saturate_u);

// i8x16.shl -> v128.shl<i8>
function builtin_i8x16_shl(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i8 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_shl(ctx);
}
builtins.set(BuiltinNames.i8x16_shl, builtin_i8x16_shl);

// i8x16.shr_s -> v128.shr<i8>
function builtin_i8x16_shr_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i8 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_shr(ctx);
}
builtins.set(BuiltinNames.i8x16_shr_s, builtin_i8x16_shr_s);

// i8x16.shr_u -> v128.shr<u8>
function builtin_i8x16_shr_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u8 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_shr(ctx);
}
builtins.set(BuiltinNames.i8x16_shr_u, builtin_i8x16_shr_u);

// i8x16.any_true -> v128.any_true<i8>
function builtin_i8x16_any_true(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i8 ];
  ctx.contextualType = Type.i32;
  return builtin_v128_any_true(ctx);
}
builtins.set(BuiltinNames.i8x16_any_true, builtin_i8x16_any_true);

// i8x16.all_true -> v128.all_true<i8>
function builtin_i8x16_all_true(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i8 ];
  ctx.contextualType = Type.i32;
  return builtin_v128_all_true(ctx);
}
builtins.set(BuiltinNames.i8x16_all_true, builtin_i8x16_all_true);

// i8x16.bitmask -> v128.bitmask<i8>
function builtin_i8x16_bitmask(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i8 ];
  ctx.contextualType = Type.i32;
  return builtin_v128_bitmask(ctx);
}
builtins.set(BuiltinNames.i8x16_bitmask, builtin_i8x16_bitmask);

// i8x16.eq -> v128.eq<i8>
function builtin_i8x16_eq(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i8 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_eq(ctx);
}
builtins.set(BuiltinNames.i8x16_eq, builtin_i8x16_eq);

// i8x16.ne -> v128.ne<i8>
function builtin_i8x16_ne(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i8 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_ne(ctx);
}
builtins.set(BuiltinNames.i8x16_ne, builtin_i8x16_ne);

// i8x16.lt_s -> v128.lt<i8>
function builtin_i8x16_lt_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i8 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_lt(ctx);
}
builtins.set(BuiltinNames.i8x16_lt_s, builtin_i8x16_lt_s);

// i8x16.lt_u -> v128.lt<u8>
function builtin_i8x16_lt_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u8 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_lt(ctx);
}
builtins.set(BuiltinNames.i8x16_lt_u, builtin_i8x16_lt_u);

// i8x16.le_s -> v128.le<i8>
function builtin_i8x16_le_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i8 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_le(ctx);
}
builtins.set(BuiltinNames.i8x16_le_s, builtin_i8x16_le_s);

// i8x16.le_u -> v128.le<u8>
function builtin_i8x16_le_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u8 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_le(ctx);
}
builtins.set(BuiltinNames.i8x16_le_u, builtin_i8x16_le_u);

// i8x16.gt_s -> v128.gt<i8>
function builtin_i8x16_gt_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i8 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_gt(ctx);
}
builtins.set(BuiltinNames.i8x16_gt_s, builtin_i8x16_gt_s);

// i8x16.gt_u -> v128.gt<u8>
function builtin_i8x16_gt_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u8 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_gt(ctx);
}
builtins.set(BuiltinNames.i8x16_gt_u, builtin_i8x16_gt_u);

// i8x16.ge_s -> v128.ge<i8>
function builtin_i8x16_ge_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i8 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_ge(ctx);
}
builtins.set(BuiltinNames.i8x16_ge_s, builtin_i8x16_ge_s);

// i8x16.ge_u -> v128.ge<u8>
function builtin_i8x16_ge_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u8 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_ge(ctx);
}
builtins.set(BuiltinNames.i8x16_ge_u, builtin_i8x16_ge_u);

// i8x16.narrow_i16x8_s -> v128.narrow<i16>
function builtin_i8x16_narrow_i16x8_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_narrow(ctx);
}
builtins.set(BuiltinNames.i8x16_narrow_i16x8_s, builtin_i8x16_narrow_i16x8_s);

// i8x16.narrow_i16x8_u -> v128.narrow<u16>
function builtin_i8x16_narrow_i16x8_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_narrow(ctx);
}
builtins.set(BuiltinNames.i8x16_narrow_i16x8_u, builtin_i8x16_narrow_i16x8_u);

// i16x8.splat -> v128.splat<i16>
function builtin_i16x8_splat(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_splat(ctx);
}
builtins.set(BuiltinNames.i16x8_splat, builtin_i16x8_splat);

// i16x8.extract_lane_s -> v128.extract_lane<i16>
function builtin_i16x8_extract_lane_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i16 ];
  ctx.contextualType = Type.i32;
  return builtin_v128_extract_lane(ctx);
}
builtins.set(BuiltinNames.i16x8_extract_lane_s, builtin_i16x8_extract_lane_s);

// i16x8..extract_lane_u -> v128.extract_lane<u16>
function builtin_i16x8_extract_lane_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u16 ];
  ctx.contextualType = Type.i32;
  return builtin_v128_extract_lane(ctx);
}
builtins.set(BuiltinNames.i16x8_extract_lane_u, builtin_i16x8_extract_lane_u);

// i16x8.replace_lane -> v128.replace_lane<i16>
function builtin_i16x8_replace_lane(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_replace_lane(ctx);
}
builtins.set(BuiltinNames.i16x8_replace_lane, builtin_i16x8_replace_lane);

// i16x8.add -> v128.add<i16>
function builtin_i16x8_add(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_add(ctx);
}
builtins.set(BuiltinNames.i16x8_add, builtin_i16x8_add);

// i16x8.sub -> v128.sub<i16>
function builtin_i16x8_sub(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_sub(ctx);
}
builtins.set(BuiltinNames.i16x8_sub, builtin_i16x8_sub);

// i16x8.mul -> v128.mul<i16>
function builtin_i16x8_mul(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_mul(ctx);
}
builtins.set(BuiltinNames.i16x8_mul, builtin_i16x8_mul);

// i16x8.min_s -> v128.min<i16>
function builtin_i16x8_min_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_min(ctx);
}
builtins.set(BuiltinNames.i16x8_min_s, builtin_i16x8_min_s);

// i16x8.min_u -> v128.min<u16>
function builtin_i16x8_min_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_min(ctx);
}
builtins.set(BuiltinNames.i16x8_min_u, builtin_i16x8_min_u);

// i16x8.max_s -> v128.max<i16>
function builtin_i16x8_max_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_max(ctx);
}
builtins.set(BuiltinNames.i16x8_max_s, builtin_i16x8_max_s);

// i16x8.max_u -> v128.max<u16>
function builtin_i16x8_max_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_max(ctx);
}
builtins.set(BuiltinNames.i16x8_max_u, builtin_i16x8_max_u);

// i16x8.avgr_u -> v128.avgr<u16>
function builtin_i16x8_avgr_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_avgr(ctx);
}
builtins.set(BuiltinNames.i16x8_avgr_u, builtin_i16x8_avgr_u);

// i16x8.abs -> v128.abs<i16>
function builtin_i16x8_abs(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_abs(ctx);
}
builtins.set(BuiltinNames.i16x8_abs, builtin_i16x8_abs);

// i16x8.neg -> v128.neg<i16>
function builtin_i16x8_neg(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_neg(ctx);
}
builtins.set(BuiltinNames.i16x8_neg, builtin_i16x8_neg);

// i16x8.add_saturate_s -> v128.add_saturate<i16>
function builtin_i16x8_add_saturate_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_add_saturate(ctx);
}
builtins.set(BuiltinNames.i16x8_add_saturate_s, builtin_i16x8_add_saturate_s);

// i16x8.add_saturate_u -> v128.add_saturate<u16>
function builtin_i16x8_add_saturate_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_add_saturate(ctx);
}
builtins.set(BuiltinNames.i16x8_add_saturate_u, builtin_i16x8_add_saturate_u);

// i16x8.sub_saturate_s -> v128.sub_saturate<i16>
function builtin_i16x8_sub_saturate_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_sub_saturate(ctx);
}
builtins.set(BuiltinNames.i16x8_sub_saturate_s, builtin_i16x8_sub_saturate_s);

// i16x8.sub_saturate_u -> v128.sub_saturate<u16>
function builtin_i16x8_sub_saturate_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_sub_saturate(ctx);
}
builtins.set(BuiltinNames.i16x8_sub_saturate_u, builtin_i16x8_sub_saturate_u);

// i16x8.shl -> v128.shl<i16>
function builtin_i16x8_shl(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_shl(ctx);
}
builtins.set(BuiltinNames.i16x8_shl, builtin_i16x8_shl);

// i16x8.shr_s -> v128.shr<i16>
function builtin_i16x8_shr_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_shr(ctx);
}
builtins.set(BuiltinNames.i16x8_shr_s, builtin_i16x8_shr_s);

// i16x8.shr_u -> v128.shr<u16>
function builtin_i16x8_shr_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_shr(ctx);
}
builtins.set(BuiltinNames.i16x8_shr_u, builtin_i16x8_shr_u);

// i16x8.any_true -> v128.any_true<i16>
function builtin_i16x8_any_true(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i16 ];
  ctx.contextualType = Type.i32;
  return builtin_v128_any_true(ctx);
}
builtins.set(BuiltinNames.i16x8_any_true, builtin_i16x8_any_true);

// i16x8.all_true -> v128.all_true<i16>
function builtin_i16x8_all_true(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i16 ];
  ctx.contextualType = Type.i32;
  return builtin_v128_all_true(ctx);
}
builtins.set(BuiltinNames.i16x8_all_true, builtin_i16x8_all_true);

// i16x8.bitmask -> v128.bitmask<i16>
function builtin_i16x8_bitmask(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i16 ];
  ctx.contextualType = Type.i32;
  return builtin_v128_bitmask(ctx);
}
builtins.set(BuiltinNames.i16x8_bitmask, builtin_i16x8_bitmask);

// i16x8.eq -> v128.eq<i16>
function builtin_i16x8_eq(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_eq(ctx);
}
builtins.set(BuiltinNames.i16x8_eq, builtin_i16x8_eq);

// i16x8.ne -> v128.ne<i16>
function builtin_i16x8_ne(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_ne(ctx);
}
builtins.set(BuiltinNames.i16x8_ne, builtin_i16x8_ne);

// i16x8.lt_s -> v128.lt<i16>
function builtin_i16x8_lt_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_lt(ctx);
}
builtins.set(BuiltinNames.i16x8_lt_s, builtin_i16x8_lt_s);

// i16x8.lt_u -> v128.lt<u16>
function builtin_i16x8_lt_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_lt(ctx);
}
builtins.set(BuiltinNames.i16x8_lt_u, builtin_i16x8_lt_u);

// i16x8.le_s -> v128.le<i16>
function builtin_i16x8_le_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_le(ctx);
}
builtins.set(BuiltinNames.i16x8_le_s, builtin_i16x8_le_s);

// i16x8.le_u -> v128.le<u16>
function builtin_i16x8_le_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_le(ctx);
}
builtins.set(BuiltinNames.i16x8_le_u, builtin_i16x8_le_u);

// i16x8.gt_s -> v128.gt<i16>
function builtin_i16x8_gt_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_gt(ctx);
}
builtins.set(BuiltinNames.i16x8_gt_s, builtin_i16x8_gt_s);

// i16x8.gt_u -> v128.gt<u16>
function builtin_i16x8_gt_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_gt(ctx);
}
builtins.set(BuiltinNames.i16x8_gt_u, builtin_i16x8_gt_u);

// i16x8.ge_s -> v128.ge<i16>
function builtin_i16x8_ge_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_ge(ctx);
}
builtins.set(BuiltinNames.i16x8_ge_s, builtin_i16x8_ge_s);

// i16x8.ge_u -> v128.ge<u16>
function builtin_i16x8_ge_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_ge(ctx);
}
builtins.set(BuiltinNames.i16x8_ge_u, builtin_i16x8_ge_u);

// i16x8.narrow_i32x4_s -> v128.narrow<i32>
function builtin_i16x8_narrow_i32x4_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_narrow(ctx);
}
builtins.set(BuiltinNames.i16x8_narrow_i32x4_s, builtin_i16x8_narrow_i32x4_s);

// i16x8.narrow_i32x4_u -> v128.narrow<u32>
function builtin_i16x8_narrow_i32x4_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_narrow(ctx);
}
builtins.set(BuiltinNames.i16x8_narrow_i32x4_u, builtin_i16x8_narrow_i32x4_u);

// i16x8.widen_low_i8x16_s -> v128.widen_low<i8>
function builtin_i16x8_widen_low_i8x16_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i8 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_widen_low(ctx);
}
builtins.set(BuiltinNames.i16x8_widen_low_i8x16_s, builtin_i16x8_widen_low_i8x16_s);

// i16x8.widen_low_i8x16_u -> v128.widen_low<u8>
function builtin_i16x8_widen_low_i8x16_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u8 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_widen_low(ctx);
}
builtins.set(BuiltinNames.i16x8_widen_low_i8x16_u, builtin_i16x8_widen_low_i8x16_u);

// i16x8.widen_high_i8x16_s -> v128.widen_high<i8>
function builtin_i16x8_widen_high_i8x16_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i8 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_widen_high(ctx);
}
builtins.set(BuiltinNames.i16x8_widen_high_i8x16_s, builtin_i16x8_widen_high_i8x16_s);

// i16x8.widen_high_i8x16_u -> v128.widen_high<u8>
function builtin_i16x8_widen_high_i8x16_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u8 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_widen_high(ctx);
}
builtins.set(BuiltinNames.i16x8_widen_high_i8x16_u, builtin_i16x8_widen_high_i8x16_u);

// i16x8.load8x8_s -> v128.load_ext<i8>
function builtin_i16x8_load8x8_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i8 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_load_ext(ctx);
}
builtins.set(BuiltinNames.i16x8_load8x8_s, builtin_i16x8_load8x8_s);

// i16x8.load8x8_u -> v128.load_ext<u8>
function builtin_i16x8_load8x8_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u8 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_load_ext(ctx);
}
builtins.set(BuiltinNames.i16x8_load8x8_u, builtin_i16x8_load8x8_u);

// i32x4.splat -> v128.splat<i32>
function builtin_i32x4_splat(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_splat(ctx);
}
builtins.set(BuiltinNames.i32x4_splat, builtin_i32x4_splat);

// i32x4.extract_lane -> <i32>v128.extract_lane<i32>
function builtin_i32x4_extract_lane(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.i32;
  return builtin_v128_extract_lane(ctx);
}
builtins.set(BuiltinNames.i32x4_extract_lane, builtin_i32x4_extract_lane);

// i32x4.replace_lane -> v128.replace_lane<i32>
function builtin_i32x4_replace_lane(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_replace_lane(ctx);
}
builtins.set(BuiltinNames.i32x4_replace_lane, builtin_i32x4_replace_lane);

// i32x4.add -> v128.add<i32>
function builtin_i32x4_add(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_add(ctx);
}
builtins.set(BuiltinNames.i32x4_add, builtin_i32x4_add);

// i32x4.sub -> v128.sub<i32>
function builtin_i32x4_sub(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_sub(ctx);
}
builtins.set(BuiltinNames.i32x4_sub, builtin_i32x4_sub);

// i32x4.mul -> v128.mul<i32>
function builtin_i32x4_mul(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_mul(ctx);
}
builtins.set(BuiltinNames.i32x4_mul, builtin_i32x4_mul);

// i32x4.min_s -> v128.min<i32>
function builtin_i32x4_min_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_min(ctx);
}
builtins.set(BuiltinNames.i32x4_min_s, builtin_i32x4_min_s);

// i32x4.min_u -> v128.min<u32>
function builtin_i32x4_min_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_min(ctx);
}
builtins.set(BuiltinNames.i32x4_min_u, builtin_i32x4_min_u);

// i32x4.max_s -> v128.max<i32>
function builtin_i32x4_max_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_max(ctx);
}
builtins.set(BuiltinNames.i32x4_max_s, builtin_i32x4_max_s);

// i32x4.max_u -> v128.max<u32>
function builtin_i32x4_max_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_max(ctx);
}
builtins.set(BuiltinNames.i32x4_max_u, builtin_i32x4_max_u);

// i32x4.dot_i16x8_s -> v128.dot<i16>
function builtin_i32x4_dot_i16x8_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_dot(ctx);
}
builtins.set(BuiltinNames.i32x4_dot_i16x8_s, builtin_i32x4_dot_i16x8_s);

// i32x4.abs -> v128.abs<i32>
function builtin_i32x4_abs(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_abs(ctx);
}
builtins.set(BuiltinNames.i32x4_abs, builtin_i32x4_abs);

// i32x4.neg -> v128.neg<i32>
function builtin_i32x4_neg(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_neg(ctx);
}
builtins.set(BuiltinNames.i32x4_neg, builtin_i32x4_neg);

// i32x4.shl -> v128.shl<i32>
function builtin_i32x4_shl(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_shl(ctx);
}
builtins.set(BuiltinNames.i32x4_shl, builtin_i32x4_shl);

// i32x4.shr_s -> v128.shr<i32>
function builtin_i32x4_shr_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_shr(ctx);
}
builtins.set(BuiltinNames.i32x4_shr_s, builtin_i32x4_shr_s);

// i32x4.shr_u -> v128.shr<u32>
function builtin_i32x4_shr_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_shr(ctx);
}
builtins.set(BuiltinNames.i32x4_shr_u, builtin_i32x4_shr_u);

// i32x4.any_true -> v128.any_true<i32>
function builtin_i32x4_any_true(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.i32;
  return builtin_v128_any_true(ctx);
}
builtins.set(BuiltinNames.i32x4_any_true, builtin_i32x4_any_true);

// i32x4.all_true -> v128.all_true<i32>
function builtin_i32x4_all_true(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.i32;
  return builtin_v128_all_true(ctx);
}
builtins.set(BuiltinNames.i32x4_all_true, builtin_i32x4_all_true);

// i32x4.bitmask -> v128.bitmask<i32>
function builtin_i32x4_bitmask(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.i32;
  return builtin_v128_bitmask(ctx);
}
builtins.set(BuiltinNames.i32x4_bitmask, builtin_i32x4_bitmask);

// i32x4.eq -> v128.eq<i32>
function builtin_i32x4_eq(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_eq(ctx);
}
builtins.set(BuiltinNames.i32x4_eq, builtin_i32x4_eq);

// i32x4.ne -> v128.ne<i32>
function builtin_i32x4_ne(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_ne(ctx);
}
builtins.set(BuiltinNames.i32x4_ne, builtin_i32x4_ne);

// i32x4.lt_s -> v128.lt<i32>
function builtin_i32x4_lt_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_lt(ctx);
}
builtins.set(BuiltinNames.i32x4_lt_s, builtin_i32x4_lt_s);

// i32x4.lt_u -> v128.lt<u32>
function builtin_i32x4_lt_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_lt(ctx);
}
builtins.set(BuiltinNames.i32x4_lt_u, builtin_i32x4_lt_u);

// i32x4.le_s -> v128.le<i32>
function builtin_i32x4_le_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_le(ctx);
}
builtins.set(BuiltinNames.i32x4_le_s, builtin_i32x4_le_s);

// i32x4.le_u -> v128.le<u32>
function builtin_i32x4_le_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_le(ctx);
}
builtins.set(BuiltinNames.i32x4_le_u, builtin_i32x4_le_u);

// i32x4.gt_s -> v128.gt<i32>
function builtin_i32x4_gt_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_gt(ctx);
}
builtins.set(BuiltinNames.i32x4_gt_s, builtin_i32x4_gt_s);

// i32x4.gt_u -> v128.gt<u32>
function builtin_i32x4_gt_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_gt(ctx);
}
builtins.set(BuiltinNames.i32x4_gt_u, builtin_i32x4_gt_u);

// i32x4.ge_s -> v128.ge<i32>
function builtin_i32x4_ge_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_ge(ctx);
}
builtins.set(BuiltinNames.i32x4_ge_s, builtin_i32x4_ge_s);

// i32x4.ge_u -> v128.ge<u32>
function builtin_i32x4_ge_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_ge(ctx);
}
builtins.set(BuiltinNames.i32x4_ge_u, builtin_i32x4_ge_u);

// i32x4.trunc_sat_f32x4_s -> v128.trunc_sat<i32>
function builtin_i32x4_trunc_sat_f32x4_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_trunc_sat(ctx);
}
builtins.set(BuiltinNames.i32x4_trunc_sat_f32x4_s, builtin_i32x4_trunc_sat_f32x4_s);

// i32x4.trunc_sat_f32x4_u -> v128.trunc_sat<u32>
function builtin_i32x4_trunc_sat_f32x4_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_trunc_sat(ctx);
}
builtins.set(BuiltinNames.i32x4_trunc_sat_f32x4_u, builtin_i32x4_trunc_sat_f32x4_u);

// i32x4.widen_low_i16x8_s -> // v128.widen_low<i16>
function builtin_i32x4_widen_low_i16x8_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_widen_low(ctx);
}
builtins.set(BuiltinNames.i32x4_widen_low_i16x8_s, builtin_i32x4_widen_low_i16x8_s);

// i32x4.widen_low_i16x8_u -> v128.widen_low<u16>
function builtin_i32x4_widen_low_i16x8_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_widen_low(ctx);
}
builtins.set(BuiltinNames.i32x4_widen_low_i16x8_u, builtin_i32x4_widen_low_i16x8_u);

// i32x4.widen_high_i16x8_s -> v128.widen_high<i16>
function builtin_i32x4_widen_high_i16x8_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_widen_high(ctx);
}
builtins.set(BuiltinNames.i32x4_widen_high_i16x8_s, builtin_i32x4_widen_high_i16x8_s);

// i32x4.widen_high_i16x8_u -> v128.widen_high<u16>
function builtin_i32x4_widen_high_i16x8_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_widen_high(ctx);
}
builtins.set(BuiltinNames.i32x4_widen_high_i16x8_u, builtin_i32x4_widen_high_i16x8_u);

// i32x4.load16x4_s -> v128.load_ext<i16>
function builtin_i32x4_load16x4_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_load_ext(ctx);
}
builtins.set(BuiltinNames.i32x4_load16x4_s, builtin_i32x4_load16x4_s);

// i32x4.load16x4_u -> v128.load_ext<u16>
function builtin_i32x4_load16x4_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_load_ext(ctx);
}
builtins.set(BuiltinNames.i32x4_load16x4_u, builtin_i32x4_load16x4_u);

// i64x2.splat -> v128.splat<i64>
function builtin_i64x2_splat(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i64 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_splat(ctx);
}
builtins.set(BuiltinNames.i64x2_splat, builtin_i64x2_splat);

// i64x2.extract_lane -> <i64>v128.extract_lane<i64>
function builtin_i64x2_extract_lane(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i64 ];
  ctx.contextualType = Type.i64;
  return builtin_v128_extract_lane(ctx);
}
builtins.set(BuiltinNames.i64x2_extract_lane, builtin_i64x2_extract_lane);

// i64x2.replace_lane -> v128.replace_lane<i64>
function builtin_i64x2_replace_lane(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i64 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_replace_lane(ctx);
}
builtins.set(BuiltinNames.i64x2_replace_lane, builtin_i64x2_replace_lane);

// i64x2.add -> v128.add<i64>
function builtin_i64x2_add(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i64 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_add(ctx);
}
builtins.set(BuiltinNames.i64x2_add, builtin_i64x2_add);

// i64x2.sub -> v128.sub<i64>
function builtin_i64x2_sub(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i64 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_sub(ctx);
}
builtins.set(BuiltinNames.i64x2_sub, builtin_i64x2_sub);

// i64x2.neg -> v128.neg<i64>
function builtin_i64x2_neg(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i64 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_neg(ctx);
}
builtins.set(BuiltinNames.i64x2_neg, builtin_i64x2_neg);

// i64x2.shl -> v128.shl<i64>
function builtin_i64x2_shl(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i64 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_shl(ctx);
}
builtins.set(BuiltinNames.i64x2_shl, builtin_i64x2_shl);

// i64x2.shr_s -> v128.shr<i64>
function builtin_i64x2_shr_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i64 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_shr(ctx);
}
builtins.set(BuiltinNames.i64x2_shr_s, builtin_i64x2_shr_s);

// i64x2.shr_u -> v128.shr<u64>
function builtin_i64x2_shr_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u64 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_shr(ctx);
}
builtins.set(BuiltinNames.i64x2_shr_u, builtin_i64x2_shr_u);

// i64x2.any_true -> v128.any_true<i64>
function builtin_i64x2_any_true(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i64 ];
  ctx.contextualType = Type.i32;
  return builtin_v128_any_true(ctx);
}
builtins.set(BuiltinNames.i64x2_any_true, builtin_i64x2_any_true);

// i64x2.all_true -> v128.all_true<i64>
function builtin_i64x2_all_true(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i64 ];
  ctx.contextualType = Type.i32;
  return builtin_v128_all_true(ctx);
}
builtins.set(BuiltinNames.i64x2_all_true, builtin_i64x2_all_true);

// i64x2.trunc_sat_f64x2_s -> v128.trunc_sat<i64>
function builtin_i64x2_trunc_sat_f64x2_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i64 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_trunc_sat(ctx);
}
builtins.set(BuiltinNames.i64x2_trunc_sat_f64x2_s, builtin_i64x2_trunc_sat_f64x2_s);

// i64x2.trunc_sat_f64x2_u -> v128.trunc_sat<u64>
function builtin_i64x2_trunc_sat_f64x2_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u64 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_trunc_sat(ctx);
}
builtins.set(BuiltinNames.i64x2_trunc_sat_f64x2_u, builtin_i64x2_trunc_sat_f64x2_u);

// i64x2.load32x2_s -> v128.load_ext<i32>
function builtin_i64x2_load32x2_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_load_ext(ctx);
}
builtins.set(BuiltinNames.i64x2_load32x2_s, builtin_i64x2_load32x2_s);

// i64x2.load32x2_u -> v128.load_ext<u32>
function builtin_i64x2_load32x2_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_load_ext(ctx);
}
builtins.set(BuiltinNames.i64x2_load32x2_u, builtin_i64x2_load32x2_u);

// f32x4.splat -> v128.splat<f32>
function builtin_f32x4_splat(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_splat(ctx);
}
builtins.set(BuiltinNames.f32x4_splat, builtin_f32x4_splat);

// f32x4.extract_lane -> <f32>v128.extract_lane<f32>
function builtin_f32x4_extract_lane(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.f32;
  return builtin_v128_extract_lane(ctx);
}
builtins.set(BuiltinNames.f32x4_extract_lane, builtin_f32x4_extract_lane);

// f32x4.replace_lane -> v128.replace_lane<f32>
function builtin_f32x4_replace_lane(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_replace_lane(ctx);
}
builtins.set(BuiltinNames.f32x4_replace_lane, builtin_f32x4_replace_lane);

// f32x4.add -> v128.add<f32>
function builtin_f32x4_add(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_add(ctx);
}
builtins.set(BuiltinNames.f32x4_add, builtin_f32x4_add);

// f32x4.sub -> v128.sub<f32>
function builtin_f32x4_sub(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_sub(ctx);
}
builtins.set(BuiltinNames.f32x4_sub, builtin_f32x4_sub);

// f32x4.mul -> v128.mul<f32>
function builtin_f32x4_mul(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_mul(ctx);
}
builtins.set(BuiltinNames.f32x4_mul, builtin_f32x4_mul);

// f32x4.div -> v128.div<f32>
function builtin_f32x4_div(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_div(ctx);
}
builtins.set(BuiltinNames.f32x4_div, builtin_f32x4_div);

// f32x4.neg -> v128.neg<f32>
function builtin_f32x4_neg(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_neg(ctx);
}
builtins.set(BuiltinNames.f32x4_neg, builtin_f32x4_neg);

// f32x4.min -> v128.min<f32>
function builtin_f32x4_min(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_min(ctx);
}
builtins.set(BuiltinNames.f32x4_min, builtin_f32x4_min);

// f32x4.max -> v128.max<f32>
function builtin_f32x4_max(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_max(ctx);
}
builtins.set(BuiltinNames.f32x4_max, builtin_f32x4_max);

// f32x4.pmin -> v128.pmin<f32>
function builtin_f32x4_pmin(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_pmin(ctx);
}
builtins.set(BuiltinNames.f32x4_pmin, builtin_f32x4_pmin);

// f32x4.pmax -> v128.pmax<f32>
function builtin_f32x4_pmax(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_pmax(ctx);
}
builtins.set(BuiltinNames.f32x4_pmax, builtin_f32x4_pmax);

// f32x4.abs -> v128.abs<f32>
function builtin_f32x4_abs(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_abs(ctx);
}
builtins.set(BuiltinNames.f32x4_abs, builtin_f32x4_abs);

// f32x4.sqrt -> v128.sqrt<f32>
function builtin_f32x4_sqrt(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_sqrt(ctx);
}
builtins.set(BuiltinNames.f32x4_sqrt, builtin_f32x4_sqrt);

// f32x4.ceil -> v128.ceil<f32>
function builtin_f32x4_ceil(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_ceil(ctx);
}
builtins.set(BuiltinNames.f32x4_ceil, builtin_f32x4_ceil);

// f32x4.floor -> v128.floor<f32>
function builtin_f32x4_floor(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_floor(ctx);
}
builtins.set(BuiltinNames.f32x4_floor, builtin_f32x4_floor);

// f32x4.trunc -> v128.trunc<f32>
function builtin_f32x4_trunc(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_trunc(ctx);
}
builtins.set(BuiltinNames.f32x4_trunc, builtin_f32x4_trunc);

// f32x4.nearest -> v128.nearest<f32>
function builtin_f32x4_nearest(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_nearest(ctx);
}
builtins.set(BuiltinNames.f32x4_nearest, builtin_f32x4_nearest);

// f32x4.eq -> v128.eq<f32>
function builtin_f32x4_eq(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_eq(ctx);
}
builtins.set(BuiltinNames.f32x4_eq, builtin_f32x4_eq);

// f32x4.ne -> v128.ne<f32>
function builtin_f32x4_ne(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_ne(ctx);
}
builtins.set(BuiltinNames.f32x4_ne, builtin_f32x4_ne);

// f32x4.lt -> v128.lt<f32>
function builtin_f32x4_lt(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_lt(ctx);
}
builtins.set(BuiltinNames.f32x4_lt, builtin_f32x4_lt);

// f32x4.le -> v128.le<f32>
function builtin_f32x4_le(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_le(ctx);
}
builtins.set(BuiltinNames.f32x4_le, builtin_f32x4_le);

// f32x4.gt -> v128.gt<f32>
function builtin_f32x4_gt(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_gt(ctx);
}
builtins.set(BuiltinNames.f32x4_gt, builtin_f32x4_gt);

// f32x4.ge -> v128.ge<f32>
function builtin_f32x4_ge(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_ge(ctx);
}
builtins.set(BuiltinNames.f32x4_ge, builtin_f32x4_ge);

// f32x4.convert_i32x4_s -> v128.convert<i32>
function builtin_f32x4_convert_i32x4_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_convert(ctx);
}
builtins.set(BuiltinNames.f32x4_convert_i32x4_s, builtin_f32x4_convert_i32x4_s);

// f32x4.convert_i32x4_u -> v128.convert<u32>
function builtin_f32x4_convert_i32x4_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_convert(ctx);
}
builtins.set(BuiltinNames.f32x4_convert_i32x4_u, builtin_f32x4_convert_i32x4_u);

// f32x4.qfma -> v128.qfma<f32>
function builtin_f32x4_qfma(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_qfma(ctx);
}
builtins.set(BuiltinNames.f32x4_qfma, builtin_f32x4_qfma);

// f32x4.qfms -> v128.qfms<f32>
function builtin_f32x4_qfms(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_qfms(ctx);
}
builtins.set(BuiltinNames.f32x4_qfms, builtin_f32x4_qfms);

// f64x2.splat -> v128.splat<f64>
function builtin_f64x2_splat(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_splat(ctx);
}
builtins.set(BuiltinNames.f64x2_splat, builtin_f64x2_splat);

// f64x2.extract_lane -> <f64>v128.extract_lane<f64>
function builtin_f64x2_extract_lane(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.f64;
  return builtin_v128_extract_lane(ctx);
}
builtins.set(BuiltinNames.f64x2_extract_lane, builtin_f64x2_extract_lane);

// f64x2.replace_lane -> v128.replace_lane
function builtin_f64x2_replace_lane(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_replace_lane(ctx);
}
builtins.set(BuiltinNames.f64x2_replace_lane, builtin_f64x2_replace_lane);

// f64x2.add -> v128.add<f64>
function builtin_f64x2_add(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_add(ctx);
}
builtins.set(BuiltinNames.f64x2_add, builtin_f64x2_add);

// f64x2.sub -> v128.sub<f64>
function builtin_f64x2_sub(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_sub(ctx);
}
builtins.set(BuiltinNames.f64x2_sub, builtin_f64x2_sub);

// f64x2.mul -> v128.mul<f64>
function builtin_f64x2_mul(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_mul(ctx);
}
builtins.set(BuiltinNames.f64x2_mul, builtin_f64x2_mul);

// f64x2.div -> v128.div<f64>
function builtin_f64x2_div(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_div(ctx);
}
builtins.set(BuiltinNames.f64x2_div, builtin_f64x2_div);

// f64x2.neg -> v128.neg<f64>
function builtin_f64x2_neg(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_neg(ctx);
}
builtins.set(BuiltinNames.f64x2_neg, builtin_f64x2_neg);

// f64x2.min -> v128.min<f64>
function builtin_f64x2_min(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_min(ctx);
}
builtins.set(BuiltinNames.f64x2_min, builtin_f64x2_min);

// f64x2.max -> v128.max<f64>
function builtin_f64x2_max(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_max(ctx);
}
builtins.set(BuiltinNames.f64x2_max, builtin_f64x2_max);

// f64x2.pmin -> v128.pmin<f64>
function builtin_f64x2_pmin(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_pmin(ctx);
}
builtins.set(BuiltinNames.f64x2_pmin, builtin_f64x2_pmin);

// f64x2.pmax -> v128.pmax<f64>
function builtin_f64x2_pmax(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_pmax(ctx);
}
builtins.set(BuiltinNames.f64x2_pmax, builtin_f64x2_pmax);

// f64x2.abs -> v128.abs<f64>
function builtin_f64x2_abs(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_abs(ctx);
}
builtins.set(BuiltinNames.f64x2_abs, builtin_f64x2_abs);

// f64x2.sqrt -> v128.sqrt<f64>
function builtin_f64x2_sqrt(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_sqrt(ctx);
}
builtins.set(BuiltinNames.f64x2_sqrt, builtin_f64x2_sqrt);

// f64x2.ceil -> v128.ceil<f64>
function builtin_f64x2_ceil(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_ceil(ctx);
}
builtins.set(BuiltinNames.f64x2_ceil, builtin_f64x2_ceil);

// f64x2.floor -> v128.floor<f64>
function builtin_f64x2_floor(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_floor(ctx);
}
builtins.set(BuiltinNames.f64x2_floor, builtin_f64x2_floor);

// f64x2.trunc -> v128.trunc<f64>
function builtin_f64x2_trunc(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_trunc(ctx);
}
builtins.set(BuiltinNames.f64x2_trunc, builtin_f64x2_trunc);

// f64x2.nearest -> v128.nearest<f64>
function builtin_f64x2_nearest(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_nearest(ctx);
}
builtins.set(BuiltinNames.f64x2_nearest, builtin_f64x2_nearest);

// f64x2.eq -> v128.eq<f64>
function builtin_f64x2_eq(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_eq(ctx);
}
builtins.set(BuiltinNames.f64x2_eq, builtin_f64x2_eq);

// f64x2.ne -> v128.ne<f64>
function builtin_f64x2_ne(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_ne(ctx);
}
builtins.set(BuiltinNames.f64x2_ne, builtin_f64x2_ne);

// f64x2.lt -> v128.lt<f64>
function builtin_f64x2_lt(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_lt(ctx);
}
builtins.set(BuiltinNames.f64x2_lt, builtin_f64x2_lt);

// f64x2.le -> v128.le<f64>
function builtin_f64x2_le(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_le(ctx);
}
builtins.set(BuiltinNames.f64x2_le, builtin_f64x2_le);

// f64x2.gt -> v128.gt<f64>
function builtin_f64x2_gt(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_gt(ctx);
}
builtins.set(BuiltinNames.f64x2_gt, builtin_f64x2_gt);

// f64x2.ge -> v128.ge<f64>
function builtin_f64x2_ge(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_ge(ctx);
}
builtins.set(BuiltinNames.f64x2_ge, builtin_f64x2_ge);

// f64x2.convert_i64x2_s -> v128.convert<i64>
function builtin_f64x2_convert_i64x2_s(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i64 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_convert(ctx);
}
builtins.set(BuiltinNames.f64x2_convert_i64x2_s, builtin_f64x2_convert_i64x2_s);

// f64x2.convert_i64x2_u -> v128.convert<u64>
function builtin_f64x2_convert_i64x2_u(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u64 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_convert(ctx);
}
builtins.set(BuiltinNames.f64x2_convert_i64x2_u, builtin_f64x2_convert_i64x2_u);

// f64x2.qfma -> v128.qfma<f64>
function builtin_f64x2_qfma(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_qfma(ctx);
}
builtins.set(BuiltinNames.f64x2_qfma, builtin_f64x2_qfma);

// f64x2.qfms -> v128.qfms<f64>
function builtin_f64x2_qfms(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.f64 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_qfms(ctx);
}
builtins.set(BuiltinNames.f64x2_qfms, builtin_f64x2_qfms);

// v8x16.shuffle -> v128.shuffle<i8>
function builtin_v8x16_shuffle(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.i8 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_shuffle(ctx);
}
builtins.set(BuiltinNames.v8x16_shuffle, builtin_v8x16_shuffle);

// v8x16.swizzle -> v128.swizzle
function builtin_v8x16_swizzle(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = null;
  ctx.contextualType = Type.v128;
  return builtin_v128_swizzle(ctx);
}
builtins.set(BuiltinNames.v8x16_swizzle, builtin_v8x16_swizzle);

// v8x16.load_splat -> v128.load_splat<u8>
function builtin_v8x16_load_splat(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u8 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_load_splat(ctx);
}
builtins.set(BuiltinNames.v8x16_load_splat, builtin_v8x16_load_splat);

// v16x8.load_splat -> v128.load_splat<u16>
function builtin_v16x8_load_splat(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u16 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_load_splat(ctx);
}
builtins.set(BuiltinNames.v16x8_load_splat, builtin_v16x8_load_splat);

// v32x4.load_splat -> v128.load_splat<u32>
function builtin_v32x4_load_splat(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u32 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_load_splat(ctx);
}
builtins.set(BuiltinNames.v32x4_load_splat, builtin_v32x4_load_splat);

// v64x2.load_splat -> v128.load_splat<u64>
function builtin_v64x2_load_splat(ctx: BuiltinContext): ExpressionRef {
  checkTypeAbsent(ctx);
  ctx.typeArguments = [ Type.u64 ];
  ctx.contextualType = Type.v128;
  return builtin_v128_load_splat(ctx);
}
builtins.set(BuiltinNames.v64x2_load_splat, builtin_v64x2_load_splat);

// === Internal helpers =======================================================================

/** Compiles the `visit_globals` function. */
export function compileVisitGlobals(compiler: Compiler): void {
  var module = compiler.module;
  var exprs = new Array<ExpressionRef>();
  var nativeSizeType = compiler.options.nativeSizeType;
  var visitInstance = assert(compiler.program.visitInstance);

  // this function is @lazy: make sure it exists
  compiler.compileFunction(visitInstance, true);

  // TODO: for (let element of compiler.program.elementsByName.values()) {
  for (let _values = Map_values(compiler.program.elementsByName), i = 0, k = _values.length; i < k; ++i) {
    let element = unchecked(_values[i]);
    if (element.kind != ElementKind.GLOBAL) continue;
    let global = <Global>element;
    let globalType = global.type;
    let classReference = globalType.getClass();
    if (
      classReference !== null &&
      !classReference.hasDecorator(DecoratorFlags.UNMANAGED) &&
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

/** Ensures that the visitor function of the specified class is compiled. */
function ensureVisitMembersOf(compiler: Compiler, instance: Class): void {
  assert(instance.type.isManaged);
  if (instance.visitRef) return;

  var program = compiler.program;
  var module = compiler.module;
  var usizeType = program.options.usizeType;
  var nativeSizeType = usizeType.toNativeType();
  var nativeSizeSize = usizeType.byteSize;
  var visitInstance = assert(program.visitInstance);
  var body = new Array<ExpressionRef>();

  // If the class has a base class, call its visitor first
  var base = instance.base;
  if (base) {
    body.push(
      module.call(base.internalName + "~visit", [
        module.local_get(0, nativeSizeType), // this
        module.local_get(1, NativeType.I32)  // cookie
      ], NativeType.None)
    );
  }

  // Some standard library components provide a custom visitor implementation,
  // for example to visit all members of a collection, e.g. arrays and maps.
  var hasVisitImpl = false;
  if (instance.isDeclaredInLibrary) {
    let visitPrototype = instance.lookupInSelf("__visit");
    if (visitPrototype) {
      assert(visitPrototype.kind == ElementKind.FUNCTION_PROTOTYPE);
      let visitInstance = program.resolver.resolveFunction(<FunctionPrototype>visitPrototype, null);
      if (!visitInstance || !compiler.compileFunction(visitInstance)) {
        body.push(
          module.unreachable()
        );
      } else {
        let visitSignature = visitInstance.signature;
        let visitThisType = assert(visitSignature.thisType);
        assert(
          visitSignature.parameterTypes.length == 1 &&
          visitSignature.parameterTypes[0] == Type.u32 &&
          visitSignature.returnType == Type.void &&
          instance.type.isStrictlyAssignableTo(visitThisType) // incl. implemented on super
        );
        body.push(
          module.call(visitInstance.internalName, [
            module.local_get(0, nativeSizeType), // this
            module.local_get(1, NativeType.I32)  // cookie
          ], NativeType.None)
        );
      }
      hasVisitImpl = true;
    }
  }

  // Otherwise, if there is no custom visitor, generate a visitor function
  // according to class layout, visiting all _own_ managed members.
  var needsTempValue = false;
  if (!hasVisitImpl) {
    let members = instance.members;
    if (members) {
      // TODO: for (let member of members.values()) {
      for (let _values = Map_values(members), j = 0, l = _values.length; j < l; ++j) {
        let member = unchecked(_values[j]);
        if (member.kind == ElementKind.FIELD) {
          if ((<Field>member).parent === instance) {
            let fieldType = (<Field>member).type;
            if (fieldType.isManaged) {
              let fieldOffset = (<Field>member).memoryOffset;
              assert(fieldOffset >= 0);
              needsTempValue = true;
              body.push(
                // if ($2 = value) __visit($2, $1)
                module.if(
                  module.local_tee(2,
                    module.load(nativeSizeSize, false,
                      module.local_get(0, nativeSizeType),
                      nativeSizeType, fieldOffset
                    )
                  ),
                  module.call(visitInstance.internalName, [
                    module.local_get(2, nativeSizeType), // value
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

  // Create the visitor function
  instance.visitRef = module.addFunction(instance.internalName + "~visit",
    createType([nativeSizeType, NativeType.I32]),
    NativeType.None,
    needsTempValue ? [ nativeSizeType ] : null,
    module.flatten(body, NativeType.None)
  );

  // And make sure the base visitor function exists
  if (base) ensureVisitMembersOf(compiler, base);
}

/** Compiles the `__visit_members` function. */
export function compileVisitMembers(compiler: Compiler): void {
  var program = compiler.program;
  var module = compiler.module;
  var usizeType = program.options.usizeType;
  var nativeSizeType = usizeType.toNativeType();
  var managedClasses = program.managedClasses;
  var visitInstance = assert(program.visitInstance);
  compiler.compileFunction(visitInstance, true); // is lazy, make sure it is compiled

  // Prepare a mapping of class names to visitor calls. Each name corresponds to
  // the respective sequential (0..N) class id.
  var names = new Array<string>();
  var cases = new Array<ExpressionRef>();
  var nextId = 0;
  for (let _keys = Map_keys(managedClasses), i = 0, k = _keys.length; i < k; ++i) {
    let instanceId = _keys[i];
    assert(instanceId == nextId++);
    let instance = assert(managedClasses.get(instanceId));
    names[i] = instance.internalName;
    cases[i] = module.block(null, [
      module.call(instance.internalName + "~visit", [
        module.local_get(0, nativeSizeType), // this
        module.local_get(1, NativeType.I32)  // cookie
      ], NativeType.None),
      module.return()
    ], NativeType.None);
    ensureVisitMembersOf(compiler, instance);
  }

  // Make a br_table of the mapping, calling visitor functions by unique class id
  var current = module.block(names[0], [
    module.switch(names, "invalid",
      // load<u32>(changetype<usize>(this) - 8)
      module.load(4, false,
        nativeSizeType == NativeType.I64
          ? module.binary(BinaryOp.SubI64,
              module.local_get(0, nativeSizeType),
              module.i64(8)
            )
          : module.binary(BinaryOp.SubI32,
              module.local_get(0, nativeSizeType),
              module.i32(8) // rtId is at -8
            ),
        NativeType.I32, 0
      )
    )
  ], NativeType.None);

  // Wrap blocks in order
  for (let i = 0, k = names.length - 1; i < k; ++i) {
    current = module.block(names[i + 1], [
      current,
      cases[i]
    ], NativeType.None);
  }

  // Wrap the last id in an 'invalid' block to break out of on invalid ids
  current = module.block("invalid", [
    current,
    cases[names.length - 1]
  ], NativeType.None);

  // Add the function, executing an unreachable if breaking to 'invalid'
  module.addFunction(BuiltinNames.visit_members,
    createType([ nativeSizeType, NativeType.I32 ]), // this, cookie
    NativeType.None, // => void
    null,
    module.flatten([
      current,
      module.unreachable()
    ])
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
  var staticArrayPrototype = program.staticArrayPrototype;
  var lastId = 0;
  // TODO: for (let [instanceId, instance] of managedClasses) {
  for (let _keys = Map_keys(managedClasses), i = 0, k = _keys.length; i < k; ++i) {
    let instanceId = unchecked(_keys[i]);
    let instance = assert(managedClasses.get(instanceId));
    assert(instanceId == lastId++);
    let flags: TypeinfoFlags = 0;
    if (instance.isAcyclic) flags |= TypeinfoFlags.ACYCLIC;
    if (instance !== abvInstance && instance.extends(abvPrototype)) {
      let valueType = instance.getArrayValueType();
      flags |= TypeinfoFlags.ARRAYBUFFERVIEW;
      flags |= TypeinfoFlags.VALUE_ALIGN_0 * typeToRuntimeFlags(valueType);
    } else if (instance.extends(arrayPrototype)) {
      let valueType = instance.getArrayValueType();
      flags |= TypeinfoFlags.ARRAY;
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
    } else if (instance.extends(staticArrayPrototype)) {
      let valueType = instance.getArrayValueType();
      flags |= TypeinfoFlags.STATICARRAY;
      flags |= TypeinfoFlags.VALUE_ALIGN_0 * typeToRuntimeFlags(valueType);
    }
    writeI32(flags, data, off); off += 4;
    instance.rttiFlags = flags;
    let base = instance.base;
    writeI32(base ? base.id : 0, data, off); off += 4;
  }
  assert(off == size);
  var usizeType = program.options.usizeType;
  var segment = compiler.addAlignedMemorySegment(data);
  if (usizeType.size == 8) {
    let offset = segment.offset;
    module.addGlobal(BuiltinNames.rtti_base, NativeType.I64, false, module.i64(i64_low(offset), i64_high(offset)));
  } else {
    module.addGlobal(BuiltinNames.rtti_base, NativeType.I32, false, module.i32(i64_low(segment.offset)));
  }
}

/** Compiles a class-specific instanceof helper, checking a ref against all concrete instances. */
export function compileClassInstanceOf(compiler: Compiler, prototype: ClassPrototype): void {
  var module = compiler.module;
  var nativeSizeType = compiler.options.nativeSizeType;
  var instanceofInstance = assert(prototype.program.instanceofInstance);
  compiler.compileFunction(instanceofInstance);

  var stmts = new Array<ExpressionRef>();

  // if (!ref) return false
  stmts.push(
    module.if(
      module.unary(
        nativeSizeType == NativeType.I64
          ? UnaryOp.EqzI64
          : UnaryOp.EqzI32,
        module.local_get(0, nativeSizeType)
      ),
      module.return(
        module.i32(0)
      )
    )
  );

  // if (__instanceof(ref, ID[i])) return true
  var instances = prototype.instances;
  if (instances !== null && instances.size > 0) {
    // TODO: for (let instance of instances.values()) {
    for (let _values = Map_values(instances), i = 0, k = _values.length; i < k; ++i) {
      let instance = unchecked(_values[i]);
      stmts.push(
        module.if(
          module.call(instanceofInstance.internalName, [
            module.local_get(0, nativeSizeType),
            module.i32(instance.id)
          ], NativeType.I32),
          module.return(
            module.i32(1)
          )
        )
      );
    }
  }

  // return false
  stmts.push(
    module.return(
      module.i32(0)
    )
  );

  module.addFunction(prototype.internalName + "~instanceof", nativeSizeType, NativeType.I32, null, module.flatten(stmts));
}

// Helpers

/** Evaluates the constant type of a type argument *or* expression. */
function evaluateConstantType(ctx: BuiltinContext): Type | null {
  var compiler = ctx.compiler;
  var operands = ctx.operands;
  var typeArguments = ctx.typeArguments;
  if (operands.length == 0) { // requires type argument
    if (!typeArguments || typeArguments.length != 1) {
      compiler.error(
        DiagnosticCode.Expected_0_type_arguments_but_got_1,
        ctx.reportNode.typeArgumentsRange, "1", typeArguments ? typeArguments.length.toString() : "0"
      );
      return null;
    }
    return typeArguments[0];
  }
  if (operands.length == 1) { // optional type argument
    if (typeArguments !== null && typeArguments.length > 0) {
      if (typeArguments.length > 1) {
        compiler.error(
          DiagnosticCode.Expected_0_type_arguments_but_got_1,
          ctx.reportNode.typeArgumentsRange, "1", typeArguments.length.toString()
        );
        return null;
      }
      compiler.compileExpression(operands[0], typeArguments[0], Constraints.CONV_IMPLICIT);
    } else {
      compiler.compileExpression(operands[0], Type.auto);
    }
    return compiler.currentType;
  }
  if (typeArguments !== null && typeArguments.length > 1) {
    compiler.error(
      DiagnosticCode.Expected_0_type_arguments_but_got_1,
      ctx.reportNode.typeArgumentsRange, "1", typeArguments.length.toString()
    );
  }
  compiler.error(
    DiagnosticCode.Expected_0_arguments_but_got_1,
    ctx.reportNode.argumentsRange, "1", operands.length.toString()
  );
  return null;
}

/** Evaluates a compile-time constant immediate offset argument.*/
function evaluateImmediateOffset(expression: Expression, compiler: Compiler): i32 {
  var module = compiler.module;
  var value: i32;
  if (compiler.options.isWasm64) {
    let expr = compiler.compileExpression(expression, Type.usize64, Constraints.CONV_IMPLICIT);
    let precomp = module.runExpression(expr, ExpressionRunnerFlags.PreserveSideeffects);
    if (precomp) {
      assert(getConstValueI64High(precomp) == 0); // TODO
      value = getConstValueI64Low(precomp);
    } else {
      compiler.error(
        DiagnosticCode.Expression_must_be_a_compile_time_constant,
        expression.range
      );
      value = -1;
    }
  } else {
    let expr = compiler.compileExpression(expression, Type.usize32, Constraints.CONV_IMPLICIT);
    let precomp = module.runExpression(expr, ExpressionRunnerFlags.PreserveSideeffects);
    if (precomp) {
      value = getConstValueI32(precomp);
    } else {
      compiler.error(
        DiagnosticCode.Expression_must_be_a_compile_time_constant,
        expression.range
      );
      value = -1;
    }
  }
  return value;
}

/** Evaluates a compile-time constant immediate align argument. */
function evaluateImmediateAlign(expression: Expression, naturalAlign: i32, compiler: Compiler): i32 {
  var align = evaluateImmediateOffset(expression, compiler);
  if (align < 0) return align;
  if (align < 1 || naturalAlign > 16) {
    compiler.error(
      DiagnosticCode._0_must_be_a_value_between_1_and_2_inclusive,
      expression.range, "Alignment", "1", naturalAlign.toString()
    );
    return -1;
  }
  if (!isPowerOf2(align)) {
    compiler.error(
      DiagnosticCode._0_must_be_a_power_of_two,
      expression.range, "Alignment"
    );
    return -1;
  }
  return align;
}

/** Checks that the specified feature is enabled. */
function checkFeatureEnabled(ctx: BuiltinContext, feature: Feature): i32 {
  var compiler = ctx.compiler;
  if (!compiler.options.hasFeature(feature)) {
    compiler.error(
      DiagnosticCode.Feature_0_is_not_enabled,
      ctx.reportNode.range, featureToString(feature)
    );
    return 1;
  }
  return 0;
}

/** Checks a call with a single required type argument. Returns `1` on error. */
function checkTypeRequired(ctx: BuiltinContext, setCurrentTypeOnError: bool = false): i32 {
  var compiler = ctx.compiler;
  var typeArguments = ctx.typeArguments;
  if (typeArguments) {
    let numTypeArguments = typeArguments.length;
    if (numTypeArguments == 1) return 0;
    assert(numTypeArguments); // invalid if 0, must not be set at all instead
    if (setCurrentTypeOnError) compiler.currentType = typeArguments[0];
    compiler.error(
      DiagnosticCode.Expected_0_type_arguments_but_got_1,
      ctx.reportNode.typeArgumentsRange, "1", numTypeArguments.toString()
    );
  } else {
    compiler.error(
      DiagnosticCode.Expected_0_type_arguments_but_got_1,
      ctx.reportNode.range, "1", "0"
    );
  }
  return 1;
}

/** Checks a call with a single optional type argument. Returns `1` on error. */
function checkTypeOptional(ctx: BuiltinContext, setCurrentTypeOnError: bool = false): i32 {
  var typeArguments = ctx.typeArguments;
  if (typeArguments) {
    let compiler = ctx.compiler;
    let numTypeArguments = typeArguments.length;
    if (numTypeArguments == 1) return 0;
    assert(numTypeArguments); // invalid if 0, must not be set at all instead
    if (setCurrentTypeOnError) compiler.currentType = typeArguments[0];
    compiler.error(
      DiagnosticCode.Expected_0_type_arguments_but_got_1,
      ctx.reportNode.typeArgumentsRange, "1", numTypeArguments.toString()
    );
    return 1;
  }
  return 0;
}

/** Checks a call that is not generic. Returns `1` on error. */
function checkTypeAbsent(ctx: BuiltinContext): i32 {
  var typeArguments = ctx.typeArguments;
  if (typeArguments) {
    let prototype = ctx.prototype;
    prototype.program.error(
      DiagnosticCode.Type_0_is_not_generic,
      ctx.reportNode.typeArgumentsRange, prototype.internalName
    );
    return 1;
  }
  return 0;
}

/** Checks a call that requires a fixed number of arguments. Returns `1` on error. */
function checkArgsRequired(ctx: BuiltinContext, expected: i32): i32 {
  var operands = ctx.operands;
  if (operands.length != expected) {
    ctx.compiler.error(
      DiagnosticCode.Expected_0_arguments_but_got_1,
      ctx.reportNode.range, expected.toString(), operands.length.toString()
    );
    return 1;
  }
  return 0;
}

/** Checks a call that requires a variable number of arguments. Returns `1` on error. */
function checkArgsOptional(ctx: BuiltinContext, expectedMinimum: i32, expectedMaximum: i32): i32 {
  var operands = ctx.operands;
  var numOperands = operands.length;
  if (numOperands < expectedMinimum) {
    ctx.compiler.error(
      DiagnosticCode.Expected_at_least_0_arguments_but_got_1,
      ctx.reportNode.range, expectedMinimum.toString(), numOperands.toString()
    );
    return 1;
  } else if (numOperands > expectedMaximum) {
    ctx.compiler.error(
      DiagnosticCode.Expected_0_arguments_but_got_1,
      ctx.reportNode.range, expectedMaximum.toString(), numOperands.toString()
    );
    return 1;
  }
  return 0;
}

/** Makes an usize constant matching contextual type if reasonable. */
function contextualUsize(compiler: Compiler, value: i64, contextualType: Type): ExpressionRef {
  var module = compiler.module;
  // Check if contextual type fits
  if (contextualType != Type.auto && contextualType.isIntegerValue) {
    switch (contextualType.kind) {
      case TypeKind.I32: {
        if (i64_is_i32(value)) {
          compiler.currentType = Type.i32;
          return module.i32(i64_low(value));
        }
        break;
      }
      case TypeKind.U32: {
        if (i64_is_u32(value)) {
          compiler.currentType = Type.u32;
          return module.i32(i64_low(value));
        }
        break;
      }
      case TypeKind.I64:
      case TypeKind.U64: {
        compiler.currentType = contextualType;
        return module.i64(i64_low(value), i64_high(value));
      }
      // isize/usize falls through
      // small int is probably not intended
    }
  }
  // Default to usize
  if (compiler.options.isWasm64) {
    compiler.currentType = Type.usize64;
    return module.i64(i64_low(value), i64_high(value));
  } else {
    compiler.currentType = Type.usize32;
    assert(!i64_high(value));
    return module.i32(i64_low(value));
  }
}
