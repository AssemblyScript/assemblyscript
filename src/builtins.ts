/**
 * Built-in elements providing WebAssembly core functionality.
 * @module builtins
 *//***/

 import {
  Compiler,
  ConversionKind,
  WrapMode,
  Feature
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
  TypeFlags
} from "./types";

import {
  BinaryOp,
  UnaryOp,
  HostOp,
  AtomicRMWOp,
  SIMDExtractOp,
  SIMDReplaceOp,
  NativeType,
  ExpressionRef,
  ExpressionId,
  getExpressionId,
  getExpressionType,
  getConstValueI64High,
  getConstValueI64Low,
  getConstValueI32,
  getConstValueF32,
  getConstValueF64
} from "./module";

import {
  ElementKind,
  FunctionPrototype,
  Class,
  Field,
  Global,
  DecoratorFlags,
  ClassPrototype
} from "./program";

import {
  FlowFlags
} from "./flow";

import {
  ReportMode
} from "./resolver";

import {
  CommonFlags, CommonSymbols
} from "./common";
import { writeI16, writeI8, writeI32, writeF32, writeF64 } from "./util";

/** Symbols of various compiler built-ins. */
export namespace BuiltinSymbols {
  // std/builtins.ts
  export const isInteger = "~lib/builtins/isInteger";
  export const isFloat = "~lib/builtins/isFloat";
  export const isSigned = "~lib/builtins/isSigned";
  export const isReference = "~lib/builtins/isReference";
  export const isString = "~lib/builtins/isString";
  export const isArray = "~lib/builtins/isArray";
  export const isFunction = "~lib/builtins/isFunction";
  export const isNullable = "~lib/builtins/isNullable";
  export const isDefined = "~lib/builtins/isDefined";
  export const isConstant = "~lib/builtins/isConstant";
  export const isManaged = "~lib/builtins/isManaged";
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
  export const select = "~lib/builtins/select";
  export const unreachable = "~lib/builtins/unreachable";
  export const changetype = "~lib/builtins/changetype";
  export const assert = "~lib/builtins/assert";
  export const unchecked = "~lib/builtins/unchecked";
  export const call_indirect = "~lib/builtins/call_indirect";
  export const instantiate = "~lib/builtins/instantiate";
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
  export const i32_atomic_rmw8_u_add = "~lib/builtins/i32.atomic.rmw8_u.add";
  export const i32_atomic_rmw16_u_add = "~lib/builtins/i32.atomic.rmw16_u.add";
  export const i32_atomic_rmw_add = "~lib/builtins/i32.atomic.rmw.add";
  export const i64_atomic_rmw8_u_add = "~lib/builtins/i64.atomic.rmw8_u.add";
  export const i64_atomic_rmw16_u_add = "~lib/builtins/i64.atomic.rmw16_u.add";
  export const i64_atomic_rmw32_u_add = "~lib/builtins/i64.atomic.rmw32_u.add";
  export const i64_atomic_rmw_add = "~lib/builtins/i64.atomic.rmw.add";
  export const i32_atomic_rmw8_u_sub = "~lib/builtins/i32.atomic.rmw8_u.sub";
  export const i32_atomic_rmw16_u_sub = "~lib/builtins/i32.atomic.rmw16_u.sub";
  export const i32_atomic_rmw_sub = "~lib/builtins/i32.atomic.rmw.sub";
  export const i64_atomic_rmw8_u_sub = "~lib/builtins/i64.atomic.rmw8_u.sub";
  export const i64_atomic_rmw16_u_sub = "~lib/builtins/i64.atomic.rmw16_u.sub";
  export const i64_atomic_rmw32_u_sub = "~lib/builtins/i64.atomic.rmw32_u.sub";
  export const i64_atomic_rmw_sub = "~lib/builtins/i64.atomic.rmw.sub";
  export const i32_atomic_rmw8_u_and = "~lib/builtins/i32.atomic.rmw8_u.and";
  export const i32_atomic_rmw16_u_and = "~lib/builtins/i32.atomic.rmw16_u.and";
  export const i32_atomic_rmw_and = "~lib/builtins/i32.atomic.rmw.and";
  export const i64_atomic_rmw8_u_and = "~lib/builtins/i64.atomic.rmw8_u.and";
  export const i64_atomic_rmw16_u_and = "~lib/builtins/i64.atomic.rmw16_u.and";
  export const i64_atomic_rmw32_u_and = "~lib/builtins/i64.atomic.rmw32_u.and";
  export const i64_atomic_rmw_and = "~lib/builtins/i64.atomic.rmw.and";
  export const i32_atomic_rmw8_u_or = "~lib/builtins/i32.atomic.rmw8_u.or";
  export const i32_atomic_rmw16_u_or = "~lib/builtins/i32.atomic.rmw16_u.or";
  export const i32_atomic_rmw_or = "~lib/builtins/i32.atomic.rmw.or";
  export const i64_atomic_rmw8_u_or = "~lib/builtins/i64.atomic.rmw8_u.or";
  export const i64_atomic_rmw16_u_or = "~lib/builtins/i64.atomic.rmw16_u.or";
  export const i64_atomic_rmw32_u_or = "~lib/builtins/i64.atomic.rmw32_u.or";
  export const i64_atomic_rmw_or = "~lib/builtins/i64.atomic.rmw.or";
  export const i32_atomic_rmw8_u_xor = "~lib/builtins/i32.atomic.rmw8_u.xor";
  export const i32_atomic_rmw16_u_xor = "~lib/builtins/i32.atomic.rmw16_u.xor";
  export const i32_atomic_rmw_xor = "~lib/builtins/i32.atomic.rmw.xor";
  export const i64_atomic_rmw8_u_xor = "~lib/builtins/i64.atomic.rmw8_u.xor";
  export const i64_atomic_rmw16_u_xor = "~lib/builtins/i64.atomic.rmw16_u.xor";
  export const i64_atomic_rmw32_u_xor = "~lib/builtins/i64.atomic.rmw32_u.xor";
  export const i64_atomic_rmw_xor = "~lib/builtins/i64.atomic.rmw.xor";
  export const i32_atomic_rmw8_u_xchg = "~lib/builtins/i32.atomic.rmw8_u.xchg";
  export const i32_atomic_rmw16_u_xchg = "~lib/builtins/i32.atomic.rmw16_u.xchg";
  export const i32_atomic_rmw_xchg = "~lib/builtins/i32.atomic.rmw.xchg";
  export const i64_atomic_rmw8_u_xchg = "~lib/builtins/i64.atomic.rmw8_u.xchg";
  export const i64_atomic_rmw16_u_xchg = "~lib/builtins/i64.atomic.rmw16_u.xchg";
  export const i64_atomic_rmw32_u_xchg = "~lib/builtins/i64.atomic.rmw32_u.xchg";
  export const i64_atomic_rmw_xchg = "~lib/builtins/i64.atomic.rmw.xchg";
  export const i32_atomic_rmw8_u_cmpxchg = "~lib/builtins/i32.atomic.rmw8_u.cmpxchg";
  export const i32_atomic_rmw16_u_cmpxchg = "~lib/builtins/i32.atomic.rmw16_u.cmpxchg";
  export const i32_atomic_rmw_cmpxchg = "~lib/builtins/i32.atomic.rmw.cmpxchg";
  export const i64_atomic_rmw8_u_cmpxchg = "~lib/builtins/i64.atomic.rmw8_u.cmpxchg";
  export const i64_atomic_rmw16_u_cmpxchg = "~lib/builtins/i64.atomic.rmw16_u.cmpxchg";
  export const i64_atomic_rmw32_u_cmpxchg = "~lib/builtins/i64.atomic.rmw32_u.cmpxchg";
  export const i64_atomic_rmw_cmpxchg = "~lib/builtins/i64.atomic.rmw.cmpxchg";
  export const i32_wait = "~lib/builtins/i32.wait";
  export const i64_wait = "~lib/builtins/i64.wait";
  export const i32_notify = "~lib/builtins/i32.notify";
  export const i64_notify = "~lib/builtins/i64.notify";
  export const v128_splat = "~lib/builtins/v128.splat";
  export const v128_extract_lane = "~lib/builtins/v128.extract_lane";
  export const v128_replace_lane = "~lib/builtins/v128.replace_lane";
  export const v128_shuffle = "~lib/builtins/v128.shuffle";
  export const v128_add = "~lib/builtins/v128.add";
  export const i64x2 = "~lib/builtins/i64x2";
  export const i32x4 = "~lib/builtins/i32x4";
  export const i16x8 = "~lib/builtins/i16x8";
  export const i8x16 = "~lib/builtins/i8x16";
  export const f32x4 = "~lib/builtins/f32x4";
  export const f64x2 = "~lib/builtins/f64x2";
  export const i8x16_splat = "~lib/builtins/i8x16.splat";
  export const i8x16_extract_lane_s = "~lib/builtins/i8x16.extract_lane_s";
  export const i8x16_extract_lane_u = "~lib/builtins/i8x16.extract_lane_u";
  export const i8x16_replace_lane = "~lib/builtins/i8x16.replace_lane";
  export const i8x16_shuffle = "~lib/builtins/i8x16.shuffle";
  export const i8x16_add = "~lib/builtins/i8x16.add";
  export const i16x8_splat = "~lib/builtins/i16x8.splat";
  export const i16x8_extract_lane_s = "~lib/builtins/i16x8.extract_lane_s";
  export const i16x8_extract_lane_u = "~lib/builtins/i16x8.extract_lane_u";
  export const i16x8_replace_lane = "~lib/builtins/i16x8.replace_lane";
  export const i16x8_shuffle = "~lib/builtins/i16x8.shuffle";
  export const i16x8_add = "~lib/builtins/i16x8.add";
  export const i32x4_splat = "~lib/builtins/i32x4.splat";
  export const i32x4_extract_lane = "~lib/builtins/i32x4.extract_lane";
  export const i32x4_replace_lane = "~lib/builtins/i32x4.replace_lane";
  export const i32x4_shuffle = "~lib/builtins/i32x4.shuffle";
  export const i32x4_add = "~lib/builtins/i32x4.add";
  export const i64x2_splat = "~lib/builtins/i64x2.splat";
  export const i64x2_extract_lane = "~lib/builtins/i64x2.extract_lane";
  export const i64x2_replace_lane = "~lib/builtins/i64x2.replace_lane";
  export const i64x2_shuffle = "~lib/builtins/i64x2.shuffle";
  export const i64x2_add = "~lib/builtins/i64x2.add";
  export const f32x4_splat = "~lib/builtins/f32x4.splat";
  export const f32x4_extract_lane = "~lib/builtins/f32x4.extract_lane";
  export const f32x4_replace_lane = "~lib/builtins/f32x4.replace_lane";
  export const f32x4_shuffle = "~lib/builtins/f32x4.shuffle";
  export const f32x4_add = "~lib/builtins/f32x4.add";
  export const f64x2_splat = "~lib/builtins/f64x2.splat";
  export const f64x2_extract_lane = "~lib/builtins/f64x2.extract_lane";
  export const f64x2_replace_lane = "~lib/builtins/f64x2.replace_lane";
  export const f64x2_shuffle = "~lib/builtins/f64x2.shuffle";
  export const f64x2_add = "~lib/builtins/f64x2.add";
  export const v8x16_shuffle = "~lib/builtins/v8x16.shuffle";
  // std/diagnostics.ts
  export const ERROR = "~lib/diagnostics/ERROR";
  export const WARNING = "~lib/diagnostics/WARNING";
  export const INFO = "~lib/diagnostics/INFO";
  // std/memory.ts
  export const HEAP_BASE = "~lib/memory/HEAP_BASE";
  export const memory_size = "~lib/memory/memory.size";
  export const memory_grow = "~lib/memory/memory.grow";
  export const memory_copy = "~lib/memory/memory.copy";
  export const memory_fill = "~lib/memory/memory.fill";
  // std/gc.ts
  export const iterateRoots = "~lib/gc/iterateRoots";
}

/** Compiles a call to a built-in function. */
export function compileCall(
  compiler: Compiler,
  prototype: FunctionPrototype,
  typeArguments: Type[] | null,
  operands: Expression[],
  contextualType: Type,
  reportNode: CallExpression
): ExpressionRef {
  var module = compiler.module;

  var arg0: ExpressionRef,
      arg1: ExpressionRef,
      arg2: ExpressionRef,
      ret: ExpressionRef;

  // NOTE that some implementations below make use of the select expression where straight-forward.
  // whether worth or not should probably be tested once it's known if/how embedders handle it.
  // search: createSelect

  switch (prototype.internalName) {

    // types

    case BuiltinSymbols.isInteger: { // isInteger<T!>() / isInteger<T?>(value: T) -> bool
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.bool;
      if (!type) return module.createUnreachable();
      return type.is(TypeFlags.INTEGER) && !type.is(TypeFlags.REFERENCE)
        ? module.createI32(1)
        : module.createI32(0);
    }
    case BuiltinSymbols.isFloat: { // isFloat<T!>() / isFloat<T?>(value: T) -> bool
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.bool;
      if (!type) return module.createUnreachable();
      return type.is(TypeFlags.FLOAT)
        ? module.createI32(1)
        : module.createI32(0);
    }
    case BuiltinSymbols.isSigned: { // isSigned<T!>() / isSigned<T?>(value: T) -> bool
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.bool;
      if (!type) return module.createUnreachable();
      return type.is(TypeFlags.SIGNED)
        ? module.createI32(1)
        : module.createI32(0);
    }
    case BuiltinSymbols.isReference: { // isReference<T!>() / isReference<T?>(value: T) -> bool
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.bool;
      if (!type) return module.createUnreachable();
      return type.is(TypeFlags.REFERENCE)
        ? module.createI32(1)
        : module.createI32(0);
    }
    case BuiltinSymbols.isString: { // isString<T!>() / isString<T?>(value: T) -> bool
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.bool;
      if (!type) return module.createUnreachable();
      let classType = type.classReference;
      if (classType) {
        let stringInstance = compiler.program.stringInstance;
        if (stringInstance && classType.isAssignableTo(stringInstance)) return module.createI32(1);
      }
      return module.createI32(0);
    }
    case BuiltinSymbols.isArray: { // isArray<T!>() / isArray<T?>(value: T) -> bool
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.bool;
      if (!type) return module.createUnreachable();
      let classReference = type.classReference;
      if (!classReference) return module.createI32(0);
      let classPrototype = classReference.prototype;
      return module.createI32(
        (<ClassPrototype>classPrototype).extends(compiler.program.arrayPrototype)
          ? 1
          : 0
      );
    }
    case BuiltinSymbols.isFunction: { // isFunction<T!> / isFunction<T?>(value: T) -> bool
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.bool;
      if (!type) return module.createUnreachable();
      return module.createI32(type.signatureReference ? 1 : 0);
    }
    case BuiltinSymbols.isNullable: { // isNullable<T!> / isNullable<T?>(value: T) -> bool
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.bool;
      if (!type) return module.createUnreachable();
      return module.createI32(type.is(TypeFlags.NULLABLE) ? 1 : 0);
    }
    case BuiltinSymbols.isDefined: { // isDefined(expression) -> bool
      compiler.currentType = Type.bool;
      if (typeArguments) {
        compiler.error(
          DiagnosticCode.Type_0_is_not_generic,
          reportNode.range, prototype.internalName
        );
      }
      if (operands.length != 1) {
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "1", operands.length.toString(10)
        );
        return module.createUnreachable();
      }
      let element = compiler.resolver.resolveExpression(
        operands[0],
        compiler.currentFlow,
        Type.void,
        ReportMode.SWALLOW
      );
      return module.createI32(element ? 1 : 0);
    }
    case BuiltinSymbols.isConstant: { // isConstant(expression) -> bool
      compiler.currentType = Type.bool;
      if (typeArguments) {
        compiler.error(
          DiagnosticCode.Type_0_is_not_generic,
          reportNode.range, prototype.internalName
        );
      }
      if (operands.length != 1) {
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "1", operands.length.toString(10)
        );
        return module.createUnreachable();
      }
      let expr = compiler.compileExpressionRetainType(operands[0], Type.i32, WrapMode.NONE);
      compiler.currentType = Type.bool;
      return module.createI32(getExpressionId(expr) == ExpressionId.Const ? 1 : 0);
    }
    case BuiltinSymbols.isManaged: { // isManaged<T>() -> bool
      if (!compiler.program.hasGC) {
        compiler.currentType = Type.bool;
        return module.createI32(0);
      }
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.bool;
      if (!type) return module.createUnreachable();
      let classType = type.classReference;
      return classType !== null && !classType.hasDecorator(DecoratorFlags.UNMANAGED)
        ? module.createI32(1)
        : module.createI32(0);
    }

    // math

    case BuiltinSymbols.clz: { // clz<T?>(value: T) -> T
      if (operands.length != 1) {
        if (typeArguments) {
          if (typeArguments.length) compiler.currentType = typeArguments[0];
          if (typeArguments.length != 1) {
            compiler.error(
              DiagnosticCode.Expected_0_type_arguments_but_got_1,
              reportNode.range, "1", typeArguments.length.toString(10)
            );
          }
        }
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "1", operands.length.toString(10)
        );
        return module.createUnreachable();
      }
      if (typeArguments) {
        if (typeArguments.length != 1) {
          if (typeArguments.length) compiler.currentType = typeArguments[0];
          compiler.error(
            DiagnosticCode.Expected_0_type_arguments_but_got_1,
            reportNode.range, "1", typeArguments.length.toString(10)
          );
          return module.createUnreachable();
        }
        arg0 = compiler.compileExpression(operands[0], typeArguments[0], ConversionKind.IMPLICIT, WrapMode.WRAP);
      } else {
        arg0 = compiler.compileExpression(operands[0], Type.i32, ConversionKind.NONE, WrapMode.WRAP);
      }
      switch (compiler.currentType.kind) {
        case TypeKind.BOOL: // usually overflows
        case TypeKind.I8:
        case TypeKind.U8:
        case TypeKind.I16:
        case TypeKind.U16:
        case TypeKind.I32:
        case TypeKind.U32: {
          ret = module.createUnary(UnaryOp.ClzI32, arg0);
          break;
        }
        case TypeKind.USIZE: {
          if (compiler.currentType.is(TypeFlags.REFERENCE)) {
            compiler.error(
              DiagnosticCode.Operation_not_supported,
              reportNode.range
            );
            ret = module.createUnreachable();
            break;
          }
          // fall-through
        }
        case TypeKind.ISIZE: {
          ret = module.createUnary(
            compiler.options.isWasm64
              ? UnaryOp.ClzI64
              : UnaryOp.ClzI32,
            arg0
          );
          break;
        }
        case TypeKind.I64:
        case TypeKind.U64: {
          ret = module.createUnary(UnaryOp.ClzI64, arg0);
          break;
        }
        default: {
          compiler.error(
            DiagnosticCode.Operation_not_supported,
            reportNode.range
          );
          ret = module.createUnreachable();
          break;
        }
      }
      return ret;
    }
    case BuiltinSymbols.ctz: { // ctz<T?>(value: T) -> T
      if (operands.length != 1) {
        if (typeArguments) {
          if (typeArguments.length) compiler.currentType = typeArguments[0];
          if (typeArguments.length != 1) {
            compiler.error(
              DiagnosticCode.Expected_0_type_arguments_but_got_1,
              reportNode.range, "1", typeArguments.length.toString(10)
            );
          }
        }
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "1", operands.length.toString(10)
        );
        return module.createUnreachable();
      }
      if (typeArguments) {
        if (typeArguments.length != 1) {
          if (typeArguments.length) compiler.currentType = typeArguments[0];
          compiler.error(
            DiagnosticCode.Expected_0_type_arguments_but_got_1,
            reportNode.range, "1", typeArguments.length.toString(10)
          );
          return module.createUnreachable();
        }
        arg0 = compiler.compileExpression(operands[0], typeArguments[0], ConversionKind.NONE, WrapMode.WRAP);
      } else {
        arg0 = compiler.compileExpression(operands[0], Type.i32, ConversionKind.NONE, WrapMode.WRAP);
      }
      switch (compiler.currentType.kind) {
        case TypeKind.BOOL: // usually overflows
        case TypeKind.I8:
        case TypeKind.U8:
        case TypeKind.I16:
        case TypeKind.U16:
        case TypeKind.I32:
        case TypeKind.U32: {
          ret = module.createUnary(UnaryOp.CtzI32, arg0);
          break;
        }
        case TypeKind.USIZE: {
          if (compiler.currentType.is(TypeFlags.REFERENCE)) {
            compiler.error(
              DiagnosticCode.Operation_not_supported,
              reportNode.range
            );
            ret = module.createUnreachable();
            break;
          }
          // fall-through
        }
        case TypeKind.ISIZE: {
          ret = module.createUnary(
            compiler.options.isWasm64
              ? UnaryOp.CtzI64
              : UnaryOp.CtzI32,
            arg0
          );
          break;
        }
        case TypeKind.I64:
        case TypeKind.U64: {
          ret = module.createUnary(UnaryOp.CtzI64, arg0);
          break;
        }
        default: {
          compiler.error(
            DiagnosticCode.Operation_not_supported,
            reportNode.range
          );
          ret = module.createUnreachable();
          break;
        }
      }
      return ret;
    }
    case BuiltinSymbols.popcnt: { // popcnt<T?>(value: T) -> T
      if (operands.length != 1) {
        if (typeArguments) {
          if (typeArguments.length) compiler.currentType = typeArguments[0];
          if (typeArguments.length != 1) {
            compiler.error(
              DiagnosticCode.Expected_0_type_arguments_but_got_1,
              reportNode.range, "1", typeArguments.length.toString(10)
            );
          }
        }
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "1", operands.length.toString(10)
        );
        return module.createUnreachable();
      }
      if (typeArguments) {
        if (typeArguments.length != 1) {
          if (typeArguments.length) compiler.currentType = typeArguments[0];
          compiler.error(
            DiagnosticCode.Expected_0_type_arguments_but_got_1,
            reportNode.range, "1", typeArguments.length.toString(10)
          );
          return module.createUnreachable();
        }
        arg0 = compiler.compileExpression(operands[0], typeArguments[0], ConversionKind.IMPLICIT, WrapMode.WRAP);
      } else {
        arg0 = compiler.compileExpression(operands[0], Type.i32, ConversionKind.NONE, WrapMode.WRAP);
      }
      switch (compiler.currentType.kind) {
        case TypeKind.BOOL: // usually overflows
        case TypeKind.I8:
        case TypeKind.U8:
        case TypeKind.I16:
        case TypeKind.U16:
        case TypeKind.I32:
        case TypeKind.U32: {
          ret = module.createUnary(UnaryOp.PopcntI32, arg0);
          break;
        }
        case TypeKind.USIZE: {
          if (compiler.currentType.is(TypeFlags.REFERENCE)) {
            compiler.error(
              DiagnosticCode.Operation_not_supported,
              reportNode.range
            );
            ret = module.createUnreachable();
            break;
          }
          // fall-through
        }
        case TypeKind.ISIZE: {
          ret = module.createUnary(
            compiler.options.isWasm64
              ? UnaryOp.PopcntI64
              : UnaryOp.PopcntI32,
            arg0
          );
          break;
        }
        case TypeKind.I64:
        case TypeKind.U64: {
          ret = module.createUnary(UnaryOp.PopcntI64, arg0);
          break;
        }
        default: {
          compiler.error(
            DiagnosticCode.Operation_not_supported,
            reportNode.range
          );
          ret = module.createUnreachable();
          break;
        }
      }
      return ret;
    }
    case BuiltinSymbols.rotl: { // rotl<T?>(value: T, shift: T) -> T
      if (operands.length != 2) {
        if (typeArguments) {
          if (typeArguments.length) compiler.currentType = typeArguments[0];
          if (typeArguments.length != 1) {
            compiler.error(
              DiagnosticCode.Expected_0_type_arguments_but_got_1,
              reportNode.range, "1", typeArguments.length.toString(10)
            );
          }
        }
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "2", operands.length.toString(10)
        );
        return module.createUnreachable();
      }
      if (typeArguments) {
        if (typeArguments.length != 1) {
          if (typeArguments.length) compiler.currentType = typeArguments[0];
          compiler.error(
            DiagnosticCode.Expected_0_type_arguments_but_got_1,
            reportNode.range, "1", typeArguments.length.toString(10)
          );
          return module.createUnreachable();
        }
        arg0 = compiler.compileExpression(operands[0], typeArguments[0], ConversionKind.IMPLICIT, WrapMode.WRAP);
      } else {
        arg0 = compiler.compileExpression(operands[0], Type.i32, ConversionKind.NONE, WrapMode.WRAP);
      }
      arg1 = compiler.compileExpression(operands[1], compiler.currentType, ConversionKind.IMPLICIT, WrapMode.NONE);
      switch (compiler.currentType.kind) {
        case TypeKind.I8:
        case TypeKind.I16:
        case TypeKind.U8:
        case TypeKind.U16:
        case TypeKind.BOOL: {
          ret = compiler.ensureSmallIntegerWrap(
            module.createBinary(BinaryOp.RotlI32, arg0, arg1),
            compiler.currentType
          );
          // fall-through
        }
        case TypeKind.I32:
        case TypeKind.U32: {
          ret = module.createBinary(BinaryOp.RotlI32, arg0, arg1);
          break;
        }
        case TypeKind.USIZE: {
          if (compiler.currentType.is(TypeFlags.REFERENCE)) {
            compiler.error(
              DiagnosticCode.Operation_not_supported,
              reportNode.range
            );
            ret = module.createUnreachable();
            break;
          }
          // fall-through
        }
        case TypeKind.ISIZE: {
          ret = module.createBinary(
            compiler.options.isWasm64
              ? BinaryOp.RotlI64
              : BinaryOp.RotlI32,
            arg0,
            arg1
          );
          break;
        }
        case TypeKind.I64:
        case TypeKind.U64: {
          ret = module.createBinary(BinaryOp.RotlI64, arg0, arg1);
          break;
        }
        default: {
          compiler.error(
            DiagnosticCode.Operation_not_supported,
            reportNode.range
          );
          ret = module.createUnreachable();
          break;
        }
      }
      return ret; // possibly overflows
    }
    case BuiltinSymbols.rotr: { // rotr<T?>(value: T, shift: T) -> T
      if (operands.length != 2) {
        if (typeArguments) {
          if (typeArguments.length) compiler.currentType = typeArguments[0];
          if (typeArguments.length != 1) {
            compiler.error(
              DiagnosticCode.Expected_0_type_arguments_but_got_1,
              reportNode.range, "1", typeArguments.length.toString(10)
            );
          }
        }
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "2", operands.length.toString(10)
        );
        return module.createUnreachable();
      }
      if (typeArguments) {
        if (typeArguments.length != 1) {
          if (typeArguments.length) compiler.currentType = typeArguments[0];
          compiler.error(
            DiagnosticCode.Expected_0_type_arguments_but_got_1,
            reportNode.range, "1", typeArguments.length.toString(10)
          );
          return module.createUnreachable();
        }
        arg0 = compiler.compileExpression(operands[0], typeArguments[0], ConversionKind.IMPLICIT, WrapMode.WRAP);
      } else {
        arg0 = compiler.compileExpression(operands[0], Type.i32, ConversionKind.NONE, WrapMode.WRAP);
      }
      arg1 = compiler.compileExpression(operands[1], compiler.currentType, ConversionKind.IMPLICIT, WrapMode.NONE);
      switch (compiler.currentType.kind) {
        case TypeKind.I8:
        case TypeKind.I16:
        case TypeKind.U8:
        case TypeKind.U16:
        case TypeKind.BOOL: {
          ret = compiler.ensureSmallIntegerWrap(
            module.createBinary(BinaryOp.RotrI32, arg0, arg1),
            compiler.currentType
          );
          break;
        }
        case TypeKind.I32:
        case TypeKind.U32: {
          ret = module.createBinary(BinaryOp.RotrI32, arg0, arg1);
          break;
        }
        case TypeKind.USIZE: {
          if (compiler.currentType.is(TypeFlags.REFERENCE)) {
            compiler.error(
              DiagnosticCode.Operation_not_supported,
              reportNode.range
            );
            ret = module.createUnreachable();
            break;
          }
          // fall-through
        }
        case TypeKind.ISIZE: {
          ret = module.createBinary(
            compiler.options.isWasm64
              ? BinaryOp.RotrI64
              : BinaryOp.RotrI32,
            arg0,
            arg1
          );
          break;
        }
        case TypeKind.I64:
        case TypeKind.U64: {
          ret = module.createBinary(BinaryOp.RotrI64, arg0, arg1);
          break;
        }
        default: {
          compiler.error(
            DiagnosticCode.Operation_not_supported,
            reportNode.range
          );
          ret = module.createUnreachable();
          break;
        }
      }
      return ret; // possibly overflowws
    }
    case BuiltinSymbols.abs: { // abs<T?>(value: T) -> T
      if (operands.length != 1) {
        if (typeArguments) {
          if (typeArguments.length) compiler.currentType = typeArguments[0];
          if (typeArguments.length != 1) {
            compiler.error(
              DiagnosticCode.Expected_0_type_arguments_but_got_1,
              reportNode.range, "1", typeArguments.length.toString(10)
            );
          }
        }
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "1", operands.length.toString(10)
        );
        return module.createUnreachable();
      }
      if (typeArguments) {
        if (typeArguments.length != 1) {
          if (typeArguments.length) compiler.currentType = typeArguments[0];
          compiler.error(
            DiagnosticCode.Expected_0_type_arguments_but_got_1,
            reportNode.range, "1", typeArguments.length.toString(10)
          );
          return module.createUnreachable();
        }
        arg0 = compiler.compileExpression(operands[0], typeArguments[0], ConversionKind.IMPLICIT, WrapMode.WRAP);
      } else {
        arg0 = compiler.compileExpression(operands[0], Type.f64, ConversionKind.NONE, WrapMode.WRAP);
      }
      switch (compiler.currentType.kind) {
        case TypeKind.I8:
        case TypeKind.I16:
        case TypeKind.I32: {
          let flow = compiler.currentFlow;

          // possibly overflows, e.g. abs<i8>(-128) == 128
          let tempLocal1 = flow.getTempLocal(Type.i32, false);
          let tempLocalIndex2 = flow.getAndFreeTempLocal(Type.i32, false).index;
          let tempLocalIndex1 = tempLocal1.index;

          // (x + (x >> 31)) ^ (x >> 31)
          ret = module.createBinary(BinaryOp.XorI32,
            module.createBinary(BinaryOp.AddI32,
              module.createTeeLocal(
                tempLocalIndex2,
                module.createBinary(BinaryOp.ShrI32,
                  module.createTeeLocal(tempLocalIndex1, arg0),
                  module.createI32(31)
                )
              ),
              module.createGetLocal(tempLocalIndex1, NativeType.I32)
            ),
            module.createGetLocal(tempLocalIndex2, NativeType.I32)
          );

          flow.freeTempLocal(tempLocal1);
          break;
        }
        case TypeKind.ISIZE: {
          let options = compiler.options;
          let flow = compiler.currentFlow;
          let wasm64 = options.isWasm64;

          let tempLocal1 = flow.getTempLocal(options.usizeType, false);
          let tempLocalIndex2 = flow.getAndFreeTempLocal(options.usizeType, false).index;
          let tempLocalIndex1 = tempLocal1.index;

          ret = module.createBinary(wasm64 ? BinaryOp.XorI64 : BinaryOp.XorI32,
            module.createBinary(wasm64 ? BinaryOp.AddI64 : BinaryOp.AddI32,
              module.createTeeLocal(
                tempLocalIndex2,
                module.createBinary(wasm64 ? BinaryOp.ShrI64 : BinaryOp.ShrI32,
                  module.createTeeLocal(tempLocalIndex1, arg0),
                  wasm64 ? module.createI64(63) : module.createI32(31)
                )
              ),
              module.createGetLocal(tempLocalIndex1, options.nativeSizeType)
            ),
            module.createGetLocal(tempLocalIndex2, options.nativeSizeType)
          );

          flow.freeTempLocal(tempLocal1);
          break;
        }
        case TypeKind.I64: {
          let flow = compiler.currentFlow;

          let tempLocal1 = flow.getTempLocal(Type.i64, false);
          let tempLocalIndex2 = flow.getAndFreeTempLocal(Type.i64, false).index;
          let tempLocalIndex1 = tempLocal1.index;

          // (x + (x >> 63)) ^ (x >> 63)
          ret = module.createBinary(BinaryOp.XorI64,
            module.createBinary(BinaryOp.AddI64,
              module.createTeeLocal(
                tempLocalIndex2,
                module.createBinary(BinaryOp.ShrI64,
                  module.createTeeLocal(tempLocalIndex1, arg0),
                  module.createI64(63)
                )
              ),
              module.createGetLocal(tempLocalIndex1, NativeType.I64)
            ),
            module.createGetLocal(tempLocalIndex2, NativeType.I64)
          );

          flow.freeTempLocal(tempLocal1);
          break;
        }
        case TypeKind.USIZE: {
          if (compiler.currentType.is(TypeFlags.REFERENCE)) {
            compiler.error(
              DiagnosticCode.Operation_not_supported,
              reportNode.range
            );
            ret = module.createUnreachable();
            break;
          }
          // fall-through
        }
        case TypeKind.U8:
        case TypeKind.U16:
        case TypeKind.U32:
        case TypeKind.U64:
        case TypeKind.BOOL: {
          ret = arg0;
          break;
        }
        case TypeKind.F32: {
          ret = module.createUnary(UnaryOp.AbsF32, arg0);
          break;
        }
        case TypeKind.F64: {
          ret = module.createUnary(UnaryOp.AbsF64, arg0);
          break;
        }
        case TypeKind.VOID: {
          ret = module.createUnreachable();
          break;
        }
        default: { // void
          compiler.error(
            DiagnosticCode.Operation_not_supported,
            reportNode.range
          );
          ret = module.createUnreachable();
          break;
        }
      }
      return ret;
    }
    case BuiltinSymbols.max: { // max<T?>(left: T, right: T) -> T
      if (operands.length != 2) {
        if (typeArguments) {
          if (typeArguments.length) compiler.currentType = typeArguments[0];
          if (typeArguments.length != 1) {
            compiler.error(
              DiagnosticCode.Expected_0_type_arguments_but_got_1,
              reportNode.range, "1", typeArguments.length.toString(10)
            );
          }
        }
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "2", operands.length.toString(10)
        );
        return module.createUnreachable();
      }
      if (typeArguments) {
        if (typeArguments.length != 1) {
          if (typeArguments.length) compiler.currentType = typeArguments[0];
          compiler.error(
            DiagnosticCode.Expected_0_type_arguments_but_got_1,
            reportNode.range, "1", typeArguments.length.toString(10)
          );
          return module.createUnreachable();
        }
        arg0 = compiler.compileExpression(operands[0], typeArguments[0], ConversionKind.IMPLICIT, WrapMode.WRAP);
      } else {
        arg0 = compiler.compileExpression(operands[0], Type.f64, ConversionKind.NONE, WrapMode.WRAP);
      }
      arg1 = compiler.compileExpression(operands[1], compiler.currentType, ConversionKind.IMPLICIT, WrapMode.WRAP);
      switch (compiler.currentType.kind) {
        case TypeKind.I8:
        case TypeKind.I16:
        case TypeKind.I32: {
          let flow = compiler.currentFlow;
          let tempLocal0 = flow.getTempLocal(
            compiler.currentType,
            !flow.canOverflow(arg0, compiler.currentType)
          );
          let tempLocal1 = flow.getAndFreeTempLocal(
            compiler.currentType,
            !flow.canOverflow(arg1, compiler.currentType)
          );
          flow.freeTempLocal(tempLocal0);
          ret = module.createSelect(
            module.createTeeLocal(tempLocal0.index, arg0),
            module.createTeeLocal(tempLocal1.index, arg1),
            module.createBinary(BinaryOp.GtI32,
              module.createGetLocal(tempLocal0.index, NativeType.I32),
              module.createGetLocal(tempLocal1.index, NativeType.I32)
            )
          );
          break;
        }
        case TypeKind.U8:
        case TypeKind.U16:
        case TypeKind.U32:
        case TypeKind.BOOL: {
          let flow = compiler.currentFlow;
          let tempLocal0 = flow.getTempLocal(
            compiler.currentType,
            !flow.canOverflow(arg0, compiler.currentType)
          );
          let tempLocal1 = flow.getAndFreeTempLocal(
            compiler.currentType,
            !flow.canOverflow(arg1, compiler.currentType)
          );
          flow.freeTempLocal(tempLocal0);
          ret = module.createSelect(
            module.createTeeLocal(tempLocal0.index, arg0),
            module.createTeeLocal(tempLocal1.index, arg1),
            module.createBinary(BinaryOp.GtU32,
              module.createGetLocal(tempLocal0.index, NativeType.I32),
              module.createGetLocal(tempLocal1.index, NativeType.I32)
            )
          );
          break;
        }
        case TypeKind.I64: {
          let flow = compiler.currentFlow;
          let tempLocal0 = flow.getTempLocal(Type.i64, false);
          let tempLocal1 = flow.getAndFreeTempLocal(Type.i64, false);
          flow.freeTempLocal(tempLocal0);
          ret = module.createSelect(
            module.createTeeLocal(tempLocal0.index, arg0),
            module.createTeeLocal(tempLocal1.index, arg1),
            module.createBinary(BinaryOp.GtI64,
              module.createGetLocal(tempLocal0.index, NativeType.I64),
              module.createGetLocal(tempLocal1.index, NativeType.I64)
            )
          );
          break;
        }
        case TypeKind.U64: {
          let flow = compiler.currentFlow;
          let tempLocal0 = flow.getTempLocal(Type.i64, false);
          let tempLocal1 = flow.getAndFreeTempLocal(Type.i64, false);
          flow.freeTempLocal(tempLocal0);
          ret = module.createSelect(
            module.createTeeLocal(tempLocal0.index, arg0),
            module.createTeeLocal(tempLocal1.index, arg1),
            module.createBinary(BinaryOp.GtU64,
              module.createGetLocal(tempLocal0.index, NativeType.I64),
              module.createGetLocal(tempLocal1.index, NativeType.I64)
            )
          );
          break;
        }
        case TypeKind.ISIZE: {
          let flow = compiler.currentFlow;
          let tempLocal0 = flow.getTempLocal(compiler.options.usizeType, false);
          let tempLocal1 = flow.getAndFreeTempLocal(compiler.options.usizeType, false);
          flow.freeTempLocal(tempLocal0);
          ret = module.createSelect(
            module.createTeeLocal(tempLocal0.index, arg0),
            module.createTeeLocal(tempLocal1.index, arg1),
            module.createBinary(
              compiler.options.isWasm64
                ? BinaryOp.GtI64
                : BinaryOp.GtI32,
              module.createGetLocal(tempLocal0.index, compiler.options.nativeSizeType),
              module.createGetLocal(tempLocal1.index, compiler.options.nativeSizeType)
            )
          );
          break;
        }
        case TypeKind.USIZE: {
          if (compiler.currentType.is(TypeFlags.REFERENCE)) {
            compiler.error(
              DiagnosticCode.Operation_not_supported,
              reportNode.range
            );
            ret = module.createUnreachable();
            break;
          }
          let flow = compiler.currentFlow;
          let tempLocal0 = flow.getTempLocal(compiler.options.usizeType, false);
          let tempLocal1 = flow.getAndFreeTempLocal(compiler.options.usizeType, false);
          flow.freeTempLocal(tempLocal0);
          ret = module.createSelect(
            module.createTeeLocal(tempLocal0.index, arg0),
            module.createTeeLocal(tempLocal1.index, arg1),
            module.createBinary(
              compiler.options.isWasm64
                ? BinaryOp.GtU64
                : BinaryOp.GtU32,
              module.createGetLocal(tempLocal0.index, compiler.options.nativeSizeType),
              module.createGetLocal(tempLocal1.index, compiler.options.nativeSizeType)
            )
          );
          break;
        }
        case TypeKind.F32: {
          ret = module.createBinary(BinaryOp.MaxF32, arg0, arg1);
          break;
        }
        case TypeKind.F64: {
          ret = module.createBinary(BinaryOp.MaxF64, arg0, arg1);
          break;
        }
        default: { // void
          compiler.error(
            DiagnosticCode.Operation_not_supported,
            reportNode.range
          );
          ret = module.createUnreachable();
          break;
        }
      }
      return ret;
    }
    case BuiltinSymbols.min: { // min<T?>(left: T, right: T) -> T
      if (operands.length != 2) {
        if (typeArguments) {
          if (typeArguments.length) compiler.currentType = typeArguments[0];
          if (typeArguments.length != 1) {
            compiler.error(
              DiagnosticCode.Expected_0_type_arguments_but_got_1,
              reportNode.range, "1", typeArguments.length.toString(10)
            );
          }
        }
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "2", operands.length.toString(10)
        );
        return module.createUnreachable();
      }
      if (typeArguments) {
        if (typeArguments.length != 1) {
          if (typeArguments.length) compiler.currentType = typeArguments[0];
          compiler.error(
            DiagnosticCode.Expected_0_type_arguments_but_got_1,
            reportNode.range, "1", typeArguments.length.toString(10)
          );
          return module.createUnreachable();
        }
        arg0 = compiler.compileExpression(operands[0], typeArguments[0], ConversionKind.IMPLICIT, WrapMode.WRAP);
      } else {
        arg0 = compiler.compileExpression(operands[0], Type.f64, ConversionKind.NONE, WrapMode.WRAP);
      }
      arg1 = compiler.compileExpression(operands[1], compiler.currentType, ConversionKind.IMPLICIT, WrapMode.WRAP);
      switch (compiler.currentType.kind) {
        case TypeKind.I8:
        case TypeKind.I16:
        case TypeKind.I32: {
          let flow = compiler.currentFlow;
          let tempLocal0 = flow.getTempLocal(
            compiler.currentType,
            !flow.canOverflow(arg0, compiler.currentType)
          );
          let tempLocal1 = flow.getAndFreeTempLocal(
            compiler.currentType,
            !flow.canOverflow(arg1, compiler.currentType)
          );
          flow.freeTempLocal(tempLocal0);
          ret = module.createSelect(
            module.createTeeLocal(tempLocal0.index, arg0),
            module.createTeeLocal(tempLocal1.index, arg1),
            module.createBinary(BinaryOp.LtI32,
              module.createGetLocal(tempLocal0.index, NativeType.I32),
              module.createGetLocal(tempLocal1.index, NativeType.I32)
            )
          );
          break;
        }
        case TypeKind.U8:
        case TypeKind.U16:
        case TypeKind.U32:
        case TypeKind.BOOL: {
          let flow = compiler.currentFlow;
          let tempLocal0 = flow.getTempLocal(
            compiler.currentType,
            !flow.canOverflow(arg0, compiler.currentType)
          );
          let tempLocal1 = flow.getAndFreeTempLocal(
            compiler.currentType,
            !flow.canOverflow(arg1, compiler.currentType)
          );
          flow.freeTempLocal(tempLocal0);
          ret = module.createSelect(
            module.createTeeLocal(tempLocal0.index, arg0),
            module.createTeeLocal(tempLocal1.index, arg1),
            module.createBinary(BinaryOp.LtU32,
              module.createGetLocal(tempLocal0.index, NativeType.I32),
              module.createGetLocal(tempLocal1.index, NativeType.I32)
            )
          );
          break;
        }
        case TypeKind.I64: {
          let flow = compiler.currentFlow;
          let tempLocal0 = flow.getTempLocal(Type.i64, false);
          let tempLocal1 = flow.getAndFreeTempLocal(Type.i64, false);
          flow.freeTempLocal(tempLocal0);
          ret = module.createSelect(
            module.createTeeLocal(tempLocal0.index, arg0),
            module.createTeeLocal(tempLocal1.index, arg1),
            module.createBinary(BinaryOp.LtI64,
              module.createGetLocal(tempLocal0.index, NativeType.I64),
              module.createGetLocal(tempLocal1.index, NativeType.I64)
            )
          );
          break;
        }
        case TypeKind.U64: {
          let flow = compiler.currentFlow;
          let tempLocal0 = flow.getTempLocal(Type.i64, false);
          let tempLocal1 = flow.getAndFreeTempLocal(Type.i64, false);
          flow.freeTempLocal(tempLocal0);
          ret = module.createSelect(
            module.createTeeLocal(tempLocal0.index, arg0),
            module.createTeeLocal(tempLocal1.index, arg1),
            module.createBinary(BinaryOp.LtU64,
              module.createGetLocal(tempLocal0.index, NativeType.I64),
              module.createGetLocal(tempLocal1.index, NativeType.I64)
            )
          );
          break;
        }
        case TypeKind.ISIZE: {
          let flow = compiler.currentFlow;
          let tempLocal0 = flow.getTempLocal(compiler.options.usizeType, false);
          let tempLocal1 = flow.getAndFreeTempLocal(compiler.options.usizeType, false);
          flow.freeTempLocal(tempLocal0);
          ret = module.createSelect(
            module.createTeeLocal(tempLocal0.index, arg0),
            module.createTeeLocal(tempLocal1.index, arg1),
            module.createBinary(
              compiler.options.isWasm64
                ? BinaryOp.LtI64
                : BinaryOp.LtI32,
              module.createGetLocal(tempLocal0.index, compiler.options.nativeSizeType),
              module.createGetLocal(tempLocal1.index, compiler.options.nativeSizeType)
            )
          );
          break;
        }
        case TypeKind.USIZE: {
          if (compiler.currentType.is(TypeFlags.REFERENCE)) {
            compiler.error(
              DiagnosticCode.Operation_not_supported,
              reportNode.range
            );
            ret = module.createUnreachable();
            break;
          }
          let flow = compiler.currentFlow;
          let tempLocal0 = flow.getTempLocal(compiler.options.usizeType, false);
          let tempLocal1 = flow.getAndFreeTempLocal(compiler.options.usizeType, false);
          flow.freeTempLocal(tempLocal0);
          ret = module.createSelect(
            module.createTeeLocal(tempLocal0.index, arg0),
            module.createTeeLocal(tempLocal1.index, arg1),
            module.createBinary(
              compiler.options.isWasm64
                ? BinaryOp.LtU64
                : BinaryOp.LtU32,
              module.createGetLocal(tempLocal0.index, compiler.options.nativeSizeType),
              module.createGetLocal(tempLocal1.index, compiler.options.nativeSizeType)
            )
          );
          break;
        }
        case TypeKind.F32: {
          ret = module.createBinary(BinaryOp.MinF32, arg0, arg1);
          break;
        }
        case TypeKind.F64: {
          ret = module.createBinary(BinaryOp.MinF64, arg0, arg1);
          break;
        }
        default: { // void
          compiler.error(
            DiagnosticCode.Operation_not_supported,
            reportNode.range
          );
          ret = module.createUnreachable();
          break;
        }
      }
      return ret;
    }
    case BuiltinSymbols.ceil: { // ceil<T?>(value: T) -> T
      if (operands.length != 1) {
        if (typeArguments) {
          if (typeArguments.length) compiler.currentType = typeArguments[0];
          if (typeArguments.length != 1) {
            compiler.error(
              DiagnosticCode.Expected_0_type_arguments_but_got_1,
              reportNode.range, "1", typeArguments.length.toString(10)
            );
          }
        }
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "1", operands.length.toString(10)
        );
        return module.createUnreachable();
      }
      if (typeArguments) {
        if (typeArguments.length != 1) {
          if (typeArguments.length) compiler.currentType = typeArguments[0];
          compiler.error(
            DiagnosticCode.Expected_0_type_arguments_but_got_1,
            reportNode.range, "1", typeArguments.length.toString(10)
          );
          return module.createUnreachable();
        }
        arg0 = compiler.compileExpression(operands[0], typeArguments[0], ConversionKind.IMPLICIT, WrapMode.NONE);
      } else {
        arg0 = compiler.compileExpression(operands[0], Type.f64, ConversionKind.NONE, WrapMode.NONE);
      }
      switch (compiler.currentType.kind) {
        case TypeKind.USIZE: {
          if (compiler.currentType.is(TypeFlags.REFERENCE)) {
            compiler.error(
              DiagnosticCode.Operation_not_supported,
              reportNode.range
            );
            ret = module.createUnreachable();
            break;
          }
          // fall-through
        }
        default: { // any integer
          ret = arg0;
          break;
        }
        case TypeKind.F32: {
          ret = module.createUnary(UnaryOp.CeilF32, arg0);
          break;
        }
        case TypeKind.F64: {
          ret = module.createUnary(UnaryOp.CeilF64, arg0);
          break;
        }
        case TypeKind.VOID: {
          compiler.error(
            DiagnosticCode.Operation_not_supported,
            reportNode.range
          );
          ret = module.createUnreachable();
          break;
        }
      }
      return ret;
    }
    case BuiltinSymbols.floor: { // floor<T?>(value: T) -> T
      if (operands.length != 1) {
        if (typeArguments) {
          if (typeArguments.length) compiler.currentType = typeArguments[0];
          if (typeArguments.length != 1) {
            compiler.error(
              DiagnosticCode.Expected_0_type_arguments_but_got_1,
              reportNode.range, "1", typeArguments.length.toString(10)
            );
          }
        }
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "1", operands.length.toString(10)
        );
        return module.createUnreachable();
      }
      if (typeArguments) {
        if (typeArguments.length != 1) {
          if (typeArguments.length) compiler.currentType = typeArguments[0];
          compiler.error(
            DiagnosticCode.Expected_0_type_arguments_but_got_1,
            reportNode.range, "1", typeArguments.length.toString(10)
          );
          return module.createUnreachable();
        }
        arg0 = compiler.compileExpression(operands[0], typeArguments[0], ConversionKind.IMPLICIT, WrapMode.NONE);
      } else {
        arg0 = compiler.compileExpression(operands[0], Type.f64, ConversionKind.NONE, WrapMode.NONE);
      }
      switch (compiler.currentType.kind) {
        case TypeKind.USIZE: {
          if (compiler.currentType.is(TypeFlags.REFERENCE)) {
            compiler.error(
              DiagnosticCode.Operation_not_supported,
              reportNode.range
            );
            ret = module.createUnreachable();
            break;
          }
          // fall-through
        }
        default: { // any integer
          ret = arg0;
          break;
        }
        case TypeKind.F32: {
          ret = module.createUnary(UnaryOp.FloorF32, arg0);
          break;
        }
        case TypeKind.F64: {
          ret = module.createUnary(UnaryOp.FloorF64, arg0);
          break;
        }
        case TypeKind.VOID: {
          compiler.error(
            DiagnosticCode.Operation_not_supported,
            reportNode.range
          );
          ret = module.createUnreachable();
          break;
        }
      }
      return ret;
    }
    case BuiltinSymbols.copysign: { // copysign<T?>(left: T, right: T) -> T
      if (operands.length != 2) {
        if (typeArguments) {
          if (typeArguments.length) compiler.currentType = typeArguments[0];
          if (typeArguments.length != 1) {
            compiler.error(
              DiagnosticCode.Expected_0_type_arguments_but_got_1,
              reportNode.range, "1", typeArguments.length.toString(10)
            );
          }
        }
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "2", operands.length.toString(10)
        );
        return module.createUnreachable();
      }
      if (typeArguments) {
        if (typeArguments.length != 1) {
          if (typeArguments.length) compiler.currentType = typeArguments[0];
          compiler.error(
            DiagnosticCode.Expected_0_type_arguments_but_got_1,
            reportNode.range, "1", typeArguments.length.toString(10)
          );
          return module.createUnreachable();
        }
        arg0 = compiler.compileExpression(operands[0], typeArguments[0], ConversionKind.IMPLICIT, WrapMode.NONE);
      } else {
        arg0 = compiler.compileExpression(operands[0], Type.f64, ConversionKind.NONE, WrapMode.NONE);
      }
      arg1 = compiler.compileExpression(operands[1], compiler.currentType, ConversionKind.IMPLICIT, WrapMode.NONE);
      switch (compiler.currentType.kind) { // TODO: does an integer version make sense?
        case TypeKind.F32: {
          ret = module.createBinary(BinaryOp.CopysignF32, arg0, arg1);
          break;
        }
        case TypeKind.F64: {
          ret = module.createBinary(BinaryOp.CopysignF64, arg0, arg1);
          break;
        }
        default: {
          compiler.error(
            DiagnosticCode.Operation_not_supported,
            reportNode.range
          );
          ret = module.createUnreachable();
          break;
        }
      }
      return ret;
    }
    case BuiltinSymbols.nearest: { // nearest<T?>(value: T) -> T
      if (operands.length != 1) {
        if (typeArguments) {
          if (typeArguments.length) compiler.currentType = typeArguments[0];
          if (typeArguments.length != 1) {
            compiler.error(
              DiagnosticCode.Expected_0_type_arguments_but_got_1,
              reportNode.range, "1", typeArguments.length.toString(10)
            );
          }
        }
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "1", operands.length.toString(10)
        );
        return module.createUnreachable();
      }
      if (typeArguments) {
        if (typeArguments.length != 1) {
          if (typeArguments.length) compiler.currentType = typeArguments[0];
          compiler.error(
            DiagnosticCode.Expected_0_type_arguments_but_got_1,
            reportNode.range, "1", typeArguments.length.toString(10)
          );
          return module.createUnreachable();
        }
        arg0 = compiler.compileExpression(operands[0], typeArguments[0], ConversionKind.IMPLICIT, WrapMode.NONE);
      } else {
        arg0 = compiler.compileExpression(operands[0], Type.f64, ConversionKind.NONE, WrapMode.NONE);
      }
      switch (compiler.currentType.kind) {
        case TypeKind.USIZE: {
          if (compiler.currentType.is(TypeFlags.REFERENCE)) {
            compiler.error(
              DiagnosticCode.Operation_not_supported,
              reportNode.range
            );
            ret = module.createUnreachable();
            break;
          }
          // fall-through
        }
        default: { // any integer
          ret = arg0;
          break;
        }
        case TypeKind.F32: {
          ret = module.createUnary(UnaryOp.NearestF32, arg0);
          break;
        }
        case TypeKind.F64: {
          ret = module.createUnary(UnaryOp.NearestF64, arg0);
          break;
        }
        case TypeKind.VOID: {
          compiler.error(
            DiagnosticCode.Operation_not_supported,
            reportNode.range
          );
          ret = module.createUnreachable();
          break;
        }
      }
      return ret;
    }
    case BuiltinSymbols.reinterpret: { // reinterpret<T!>(value: *) -> T
      if (operands.length != 1) {
        if (!(typeArguments && typeArguments.length == 1)) {
          if (typeArguments && typeArguments.length) compiler.currentType = typeArguments[0];
          compiler.error(
            DiagnosticCode.Expected_0_type_arguments_but_got_1,
            reportNode.range, "1", typeArguments ? typeArguments.length.toString(10) : "0"
          );
        }
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "1", operands.length.toString(10)
        );
        return module.createUnreachable();
      }
      if (!(typeArguments && typeArguments.length == 1)) {
        if (typeArguments && typeArguments.length) compiler.currentType = typeArguments[0];
        compiler.error(
          DiagnosticCode.Expected_0_type_arguments_but_got_1,
          reportNode.range, "1", typeArguments ? typeArguments.length.toString(10) : "0"
        );
        return module.createUnreachable();
      }
      switch (typeArguments[0].kind) {
        case TypeKind.I32:
        case TypeKind.U32: {
          arg0 = compiler.compileExpression(operands[0], Type.f32, ConversionKind.IMPLICIT, WrapMode.NONE);
          ret = module.createUnary(UnaryOp.ReinterpretF32, arg0);
          break;
        }
        case TypeKind.I64:
        case TypeKind.U64: {
          arg0 = compiler.compileExpression(operands[0], Type.f64, ConversionKind.IMPLICIT, WrapMode.NONE);
          ret = module.createUnary(UnaryOp.ReinterpretF64, arg0);
          break;
        }
        case TypeKind.USIZE: {
          if (typeArguments[0].is(TypeFlags.REFERENCE)) {
            compiler.error(
              DiagnosticCode.Operation_not_supported,
              reportNode.range
            );
            compiler.currentType = typeArguments[0];
            return module.createUnreachable();
          }
          // fall-through
        }
        case TypeKind.ISIZE: {
          arg0 = compiler.compileExpression(
            operands[0],
            compiler.options.isWasm64
              ? Type.f64
              : Type.f32,
            ConversionKind.IMPLICIT,
            WrapMode.NONE
          );
          ret = module.createUnary(
            compiler.options.isWasm64
              ? UnaryOp.ReinterpretF64
              : UnaryOp.ReinterpretF32,
            arg0
          );
          break;
        }
        case TypeKind.F32: {
          arg0 = compiler.compileExpression(operands[0], Type.i32, ConversionKind.IMPLICIT, WrapMode.NONE);
          ret = module.createUnary(UnaryOp.ReinterpretI32, arg0);
          break;
        }
        case TypeKind.F64: {
          arg0 = compiler.compileExpression(operands[0], Type.i64, ConversionKind.IMPLICIT, WrapMode.NONE);
          ret = module.createUnary(UnaryOp.ReinterpretI64, arg0);
          break;
        }
        default: { // small integers and void
          compiler.error(
            DiagnosticCode.Operation_not_supported,
            reportNode.range
          );
          ret = module.createUnreachable();
          break;
        }
      }
      compiler.currentType = typeArguments[0];
      return ret;
    }
    case BuiltinSymbols.sqrt: { // sqrt<T?>(value: T) -> T
      if (operands.length != 1) {
        if (typeArguments) {
          if (typeArguments.length) compiler.currentType = typeArguments[0];
          if (typeArguments.length != 1) {
            compiler.error(
              DiagnosticCode.Expected_0_type_arguments_but_got_1,
              reportNode.range, "1", typeArguments.length.toString(10)
            );
          }
        }
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "1", operands.length.toString(10)
        );
        return module.createUnreachable();
      }
      if (typeArguments) {
        if (typeArguments.length != 1) {
          if (typeArguments.length) compiler.currentType = typeArguments[0];
          compiler.error(
            DiagnosticCode.Expected_0_type_arguments_but_got_1,
            reportNode.range, "1", typeArguments.length.toString(10)
          );
          return module.createUnreachable();
        }
        arg0 = compiler.compileExpression(operands[0], typeArguments[0], ConversionKind.IMPLICIT, WrapMode.NONE);
      } else {
        arg0 = compiler.compileExpression(operands[0], Type.f64, ConversionKind.NONE, WrapMode.NONE);
      }
      switch (compiler.currentType.kind) { // TODO: integer versions (that return f64 or convert)?
        case TypeKind.F32: {
          ret = module.createUnary(UnaryOp.SqrtF32, arg0);
          break;
        }
        case TypeKind.F64: {
          ret = module.createUnary(UnaryOp.SqrtF64, arg0);
          break;
        }
        // case TypeKind.VOID:
        default: {
          compiler.error(
            DiagnosticCode.Operation_not_supported,
            reportNode.range
          );
          ret = module.createUnreachable();
          break;
        }
      }
      return ret;
    }
    case BuiltinSymbols.trunc: { // trunc<T?>(value: T) -> T
      if (operands.length != 1) {
        if (typeArguments) {
          if (typeArguments.length) compiler.currentType = typeArguments[0];
          if (typeArguments.length != 1) {
            compiler.error(
              DiagnosticCode.Expected_0_type_arguments_but_got_1,
              reportNode.range, "1", typeArguments.length.toString(10)
            );
          }
        }
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "1", operands.length.toString(10)
        );
        return module.createUnreachable();
      }
      if (typeArguments && typeArguments.length) {
        compiler.currentType = typeArguments[0];
        if (typeArguments.length != 1) {
          if (typeArguments.length) compiler.currentType = typeArguments[0];
          compiler.error(
            DiagnosticCode.Expected_0_type_arguments_but_got_1,
            reportNode.range, "1", typeArguments.length.toString(10)
          );
          return module.createUnreachable();
        }
        arg0 = compiler.compileExpression(operands[0], typeArguments[0], ConversionKind.IMPLICIT, WrapMode.NONE);
      } else {
        arg0 = compiler.compileExpression(operands[0], Type.f64, ConversionKind.NONE, WrapMode.NONE);
      }
      switch (compiler.currentType.kind) {
        case TypeKind.USIZE: {
          if (compiler.currentType.is(TypeFlags.REFERENCE)) {
            compiler.error(
              DiagnosticCode.Operation_not_supported,
              reportNode.range
            );
            ret = module.createUnreachable();
            break;
          }
          // fall-through
        }
        default: { // any integer
          ret = arg0;
          break;
        }
        // TODO: truncate to contextual type directly (if not void etc.)?
        case TypeKind.F32: {
          ret = module.createUnary(UnaryOp.TruncF32, arg0);
          break;
        }
        case TypeKind.F64: {
          ret = module.createUnary(UnaryOp.TruncF64, arg0);
          break;
        }
        case TypeKind.VOID: {
          compiler.error(
            DiagnosticCode.Operation_not_supported,
            reportNode.range
          );
          ret = module.createUnreachable();
          break;
        }
      }
      return ret;
    }

    // memory access

    case BuiltinSymbols.load: { // load<T!>(offset: usize, constantOffset?: usize) -> *
      if (operands.length < 1 || operands.length > 2) {
        if (!(typeArguments && typeArguments.length == 1)) {
          compiler.error(
            DiagnosticCode.Expected_0_type_arguments_but_got_1,
            reportNode.range, "1", typeArguments ? typeArguments.length.toString(10) : "0"
          );
        }
        if (operands.length < 1) {
          compiler.error(
            DiagnosticCode.Expected_at_least_0_arguments_but_got_1,
            reportNode.range, "1", operands.length.toString(10)
          );
        } else {
          compiler.error(
            DiagnosticCode.Expected_0_arguments_but_got_1,
            reportNode.range, "2", operands.length.toString(10)
          );
        }
        return module.createUnreachable();
      }
      if (!(typeArguments && typeArguments.length == 1)) {
        if (typeArguments && typeArguments.length) compiler.currentType = typeArguments[0];
        compiler.error(
          DiagnosticCode.Expected_0_type_arguments_but_got_1,
          reportNode.range, "1", typeArguments ? typeArguments.length.toString(10) : "0"
        );
        return module.createUnreachable();
      }
      arg0 = compiler.compileExpression(
        operands[0],
        compiler.options.usizeType,
        ConversionKind.IMPLICIT,
        WrapMode.NONE
      );
      let offset = operands.length == 2 ? evaluateConstantOffset(compiler, operands[1]) : 0; // reports
      if (offset < 0) { // reported in evaluateConstantOffset
        return module.createUnreachable();
      }
      compiler.currentType = typeArguments[0];
      return module.createLoad(
        typeArguments[0].byteSize,
        typeArguments[0].is(TypeFlags.SIGNED | TypeFlags.INTEGER),
        arg0,
        typeArguments[0].is(TypeFlags.INTEGER) &&
        contextualType.is(TypeFlags.INTEGER) &&
        contextualType.size > typeArguments[0].size
          ? (compiler.currentType = contextualType).toNativeType()
          : (compiler.currentType = typeArguments[0]).toNativeType(),
        offset
      );
    }
    case BuiltinSymbols.store: { // store<T!>(offset: usize, value: *, constantOffset?: usize) -> void
      compiler.currentType = Type.void;
      if (operands.length < 2 || operands.length > 3) {
        if (!(typeArguments && typeArguments.length == 1)) {
          compiler.error(
            DiagnosticCode.Expected_0_type_arguments_but_got_1,
            reportNode.range, "1", typeArguments ? typeArguments.length.toString(10) : "0"
          );
        }
        if (operands.length < 2) {
          compiler.error(
            DiagnosticCode.Expected_at_least_0_arguments_but_got_1,
            reportNode.range, "2", operands.length.toString(10)
          );
        } else {
          compiler.error(
            DiagnosticCode.Expected_0_arguments_but_got_1,
            reportNode.range, "3", operands.length.toString(10)
          );
        }
        return module.createUnreachable();
      }
      if (!(typeArguments && typeArguments.length == 1)) {
        compiler.error(
          DiagnosticCode.Expected_0_type_arguments_but_got_1,
          reportNode.range, "1", typeArguments ? typeArguments.length.toString(10) : "0"
        );
        return module.createUnreachable();
      }
      arg0 = compiler.compileExpression(
        operands[0],
        compiler.options.usizeType,
        ConversionKind.IMPLICIT,
        WrapMode.NONE
      );
      arg1 = compiler.compileExpression(
        operands[1],
        typeArguments[0],
        typeArguments[0].is(TypeFlags.INTEGER)
          ? ConversionKind.NONE // no need to convert to small int (but now might result in a float)
          : ConversionKind.IMPLICIT,
        WrapMode.NONE
      );
      let type: Type;
      if (
        typeArguments[0].is(TypeFlags.INTEGER) &&
        (
          !compiler.currentType.is(TypeFlags.INTEGER) ||    // float to int
          compiler.currentType.size < typeArguments[0].size // int to larger int (clear garbage bits)
        )
      ) {
        arg1 = compiler.convertExpression(
          arg1,
          compiler.currentType, typeArguments[0],
          ConversionKind.IMPLICIT,
          WrapMode.NONE, // still clears garbage bits
          operands[1]
        );
        type = typeArguments[0];
      } else {
        type = compiler.currentType;
      }
      let offset = operands.length == 3 ? evaluateConstantOffset(compiler, operands[2]) : 0; // reports
      if (offset < 0) { // reported in evaluateConstantOffset
        return module.createUnreachable();
      }
      compiler.currentType = Type.void;
      return module.createStore(typeArguments[0].byteSize, arg0, arg1, type.toNativeType(), offset);
    }
    case BuiltinSymbols.atomic_load: { // load<T!>(offset: usize, constantOffset?: usize) -> *
      if (!compiler.options.hasFeature(Feature.THREADS)) break;
      if (operands.length < 1 || operands.length > 2) {
        if (!(typeArguments && typeArguments.length == 1)) {
          compiler.error(
            DiagnosticCode.Expected_0_type_arguments_but_got_1,
            reportNode.range, "1", typeArguments ? typeArguments.length.toString(10) : "0"
          );
        }
        if (operands.length < 1) {
          compiler.error(
            DiagnosticCode.Expected_at_least_0_arguments_but_got_1,
            reportNode.range, "1", operands.length.toString(10)
          );
        } else {
          compiler.error(
            DiagnosticCode.Expected_0_arguments_but_got_1,
            reportNode.range, "2", operands.length.toString(10)
          );
        }
        return module.createUnreachable();
      }
      if (!(typeArguments && typeArguments.length == 1)) {
        if (typeArguments && typeArguments.length) compiler.currentType = typeArguments[0];
        compiler.error(
          DiagnosticCode.Expected_0_type_arguments_but_got_1,
          reportNode.range, "1", typeArguments ? typeArguments.length.toString(10) : "0"
        );
        return module.createUnreachable();
      }
      arg0 = compiler.compileExpression(
        operands[0],
        compiler.options.usizeType,
        ConversionKind.IMPLICIT,
        WrapMode.NONE
      );
      let offset = operands.length == 2 ? evaluateConstantOffset(compiler, operands[1]) : 0; // reports
      if (offset < 0) { // reported in evaluateConstantOffset
        return module.createUnreachable();
      }
      compiler.currentType = typeArguments[0];
      return module.createAtomicLoad(
        typeArguments[0].byteSize,
        arg0,
        typeArguments[0].is(TypeFlags.INTEGER) &&
        contextualType.is(TypeFlags.INTEGER) &&
        contextualType.size > typeArguments[0].size
          ? (compiler.currentType = contextualType).toNativeType()
          : (compiler.currentType = typeArguments[0]).toNativeType(),
        offset
      );
    }
    case BuiltinSymbols.atomic_store: { // store<T!>(offset: usize, value: *, constantOffset?: usize) -> void
      if (!compiler.options.hasFeature(Feature.THREADS)) break;
      compiler.currentType = Type.void;
      if (operands.length < 2 || operands.length > 3) {
        if (!(typeArguments && typeArguments.length == 1)) {
          compiler.error(
            DiagnosticCode.Expected_0_type_arguments_but_got_1,
            reportNode.range, "1", typeArguments ? typeArguments.length.toString(10) : "0"
          );
        }
        if (operands.length < 2) {
          compiler.error(
            DiagnosticCode.Expected_at_least_0_arguments_but_got_1,
            reportNode.range, "2", operands.length.toString(10)
          );
        } else {
          compiler.error(
            DiagnosticCode.Expected_0_arguments_but_got_1,
            reportNode.range, "3", operands.length.toString(10)
          );
        }
        return module.createUnreachable();
      }
      if (!(typeArguments && typeArguments.length == 1)) {
        compiler.error(
          DiagnosticCode.Expected_0_type_arguments_but_got_1,
          reportNode.range, "1", typeArguments ? typeArguments.length.toString(10) : "0"
        );
        return module.createUnreachable();
      }
      arg0 = compiler.compileExpression(
        operands[0],
        compiler.options.usizeType,
        ConversionKind.IMPLICIT,
        WrapMode.NONE
      );
      arg1 = compiler.compileExpression(
        operands[1],
        typeArguments[0],
        typeArguments[0].is(TypeFlags.INTEGER)
          ? ConversionKind.NONE // no need to convert to small int (but now might result in a float)
          : ConversionKind.IMPLICIT,
        WrapMode.NONE
      );
      let type: Type;
      if (
        typeArguments[0].is(TypeFlags.INTEGER) &&
        (
          !compiler.currentType.is(TypeFlags.INTEGER) ||    // float to int
          compiler.currentType.size < typeArguments[0].size // int to larger int (clear garbage bits)
        )
      ) {
        arg1 = compiler.convertExpression(
          arg1,
          compiler.currentType, typeArguments[0],
          ConversionKind.IMPLICIT,
          WrapMode.NONE, // still clears garbage bits
          operands[1]
        );
        type = typeArguments[0];
      } else {
        type = compiler.currentType;
      }
      let offset = operands.length == 3 ? evaluateConstantOffset(compiler, operands[2]) : 0; // reports
      if (offset < 0) { // reported in evaluateConstantOffset
        return module.createUnreachable();
      }
      compiler.currentType = Type.void;
      return module.createAtomicStore(typeArguments[0].byteSize, arg0, arg1, type.toNativeType(), offset);
    }
    case BuiltinSymbols.atomic_add:  // add<T!>(ptr: usize, value: T, constantOffset?: usize): T;
    case BuiltinSymbols.atomic_sub:  // sub<T!>(ptr: usize, value: T, constantOffset?: usize): T;
    case BuiltinSymbols.atomic_and:  // and<T!>(ptr: usize, value: T, constantOffset?: usize): T;
    case BuiltinSymbols.atomic_or:   // or<T!>(ptr: usize, value: T, constantOffset?: usize): T;
    case BuiltinSymbols.atomic_xor:  // xor<T!>(ptr: usize, value: T, constantOffset?: usize): T;
    case BuiltinSymbols.atomic_xchg: // xchg<T!>(ptr: usize, value: T, constantOffset?: usize): T;
    {
      if (!compiler.options.hasFeature(Feature.THREADS)) break;
      if (operands.length < 2 || operands.length > 3) {
        if (!(typeArguments && typeArguments.length == 1)) {
          compiler.error(
            DiagnosticCode.Expected_0_type_arguments_but_got_1,
            reportNode.range, "1", typeArguments ? typeArguments.length.toString(10) : "0"
          );
        }
        if (operands.length < 2) {
          compiler.error(
            DiagnosticCode.Expected_at_least_0_arguments_but_got_1,
            reportNode.range, "2", operands.length.toString(10)
          );
        } else {
          compiler.error(
            DiagnosticCode.Expected_0_arguments_but_got_1,
            reportNode.range, "3", operands.length.toString(10)
          );
        }
        return module.createUnreachable();
      }
      if (!(typeArguments && typeArguments.length == 1)) {
        compiler.error(
          DiagnosticCode.Expected_0_type_arguments_but_got_1,
          reportNode.range, "1", typeArguments ? typeArguments.length.toString(10) : "0"
        );
        return module.createUnreachable();
      }
      arg0 = compiler.compileExpression(
        operands[0],
        compiler.options.usizeType,
        ConversionKind.IMPLICIT,
        WrapMode.NONE
      );
      arg1 = compiler.compileExpression(
        operands[1],
        typeArguments[0],
        typeArguments[0].is(TypeFlags.INTEGER)
          ? ConversionKind.NONE // no need to convert to small int (but now might result in a float)
          : ConversionKind.IMPLICIT,
        WrapMode.NONE
      );

      let type: Type;
      if (
        typeArguments[0].is(TypeFlags.INTEGER) &&
        (
          !compiler.currentType.is(TypeFlags.INTEGER) ||    // float to int
          compiler.currentType.size < typeArguments[0].size // int to larger int (clear garbage bits)
        )
      ) {
        arg1 = compiler.convertExpression(
          arg1,
          compiler.currentType, typeArguments[0],
          ConversionKind.IMPLICIT,
          WrapMode.NONE, // still clears garbage bits
          operands[1]
        );
        type = typeArguments[0];
      } else {
        type = compiler.currentType;
      }

      let offset = operands.length == 3 ? evaluateConstantOffset(compiler, operands[2]) : 0; // reports
      if (offset < 0) { // reported in evaluateConstantOffset
        return module.createUnreachable();
      }
      let RMWOp: AtomicRMWOp | null = null;
      switch (prototype.internalName) {
        case BuiltinSymbols.atomic_add: { RMWOp = AtomicRMWOp.Add; break; }
        case BuiltinSymbols.atomic_sub: { RMWOp = AtomicRMWOp.Sub; break; }
        case BuiltinSymbols.atomic_and: { RMWOp = AtomicRMWOp.And; break; }
        case BuiltinSymbols.atomic_or: { RMWOp = AtomicRMWOp.Or; break; }
        case BuiltinSymbols.atomic_xor: { RMWOp = AtomicRMWOp.Xor; break; }
        case BuiltinSymbols.atomic_xchg: { RMWOp = AtomicRMWOp.Xchg; break; }
      }
      compiler.currentType = typeArguments[0];
      if (RMWOp !== null) {
        return module.createAtomicRMW(
          RMWOp, typeArguments[0].byteSize, offset, arg0, arg1, type.toNativeType()
        );
      } else {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.range, "1", typeArguments ? typeArguments.length.toString(10) : "0"
        );
        return module.createUnreachable();
      }
    }
    case BuiltinSymbols.atomic_cmpxchg: { // cmpxchg<T!>(ptr: usize, expected: T, replacement: T, cOff?: usize): T
      if (!compiler.options.hasFeature(Feature.THREADS)) break;
      if (operands.length < 3 || operands.length > 4) {
        if (!(typeArguments && typeArguments.length == 1)) {
          compiler.error(
            DiagnosticCode.Expected_0_type_arguments_but_got_1,
            reportNode.range, "1", typeArguments ? typeArguments.length.toString(10) : "0"
          );
        }
        if (operands.length < 3) {
          compiler.error(
            DiagnosticCode.Expected_at_least_0_arguments_but_got_1,
            reportNode.range, "2", operands.length.toString(10)
          );
        } else {
          compiler.error(
            DiagnosticCode.Expected_0_arguments_but_got_1,
            reportNode.range, "3", operands.length.toString(10)
          );
        }
        return module.createUnreachable();
      }
      if (!(typeArguments && typeArguments.length == 1)) {
        compiler.error(
          DiagnosticCode.Expected_0_type_arguments_but_got_1,
          reportNode.range, "1", typeArguments ? typeArguments.length.toString(10) : "0"
        );
        return module.createUnreachable();
      }
      arg0 = compiler.compileExpression(
        operands[0],
        compiler.options.usizeType,
        ConversionKind.IMPLICIT,
        WrapMode.NONE
      );
      arg1 = compiler.compileExpression(
        operands[1],
        typeArguments[0],
        typeArguments[0].is(TypeFlags.INTEGER)
          ? ConversionKind.NONE // no need to convert to small int (but now might result in a float)
          : ConversionKind.IMPLICIT,
        WrapMode.NONE
      );
      arg2 = compiler.compileExpression(
        operands[2],
        typeArguments[0],
        typeArguments[0].is(TypeFlags.INTEGER)
          ? ConversionKind.NONE // no need to convert to small int (but now might result in a float)
          : ConversionKind.IMPLICIT,
        WrapMode.NONE
      );

      let type: Type;
      if (
        typeArguments[0].is(TypeFlags.INTEGER) &&
        (
          !compiler.currentType.is(TypeFlags.INTEGER) ||    // float to int
          compiler.currentType.size < typeArguments[0].size // int to larger int (clear garbage bits)
        )
      ) {
        arg1 = compiler.convertExpression(
          arg1,
          compiler.currentType, typeArguments[0],
          ConversionKind.IMPLICIT,
          WrapMode.NONE, // still clears garbage bits
          operands[1]
        );
        arg2 = compiler.convertExpression(
          arg2,
          compiler.currentType, typeArguments[0],
          ConversionKind.IMPLICIT,
          WrapMode.NONE, // still clears garbage bits
          operands[2]
        );
        type = typeArguments[0];
      } else {
        type = compiler.currentType;
      }

      let offset = operands.length == 4 ? evaluateConstantOffset(compiler, operands[3]) : 0; // reports
      if (offset < 0) { // reported in evaluateConstantOffset
        return module.createUnreachable();
      }
      compiler.currentType = typeArguments[0];
      return module.createAtomicCmpxchg(
        typeArguments[0].byteSize, offset, arg0, arg1, arg2, type.toNativeType()
      );
    }
    case BuiltinSymbols.atomic_wait: { // wait<T!>(ptr: usize, expected:T, timeout: i64): i32;
      if (!compiler.options.hasFeature(Feature.THREADS)) break;
      let hasError = typeArguments == null;
      if (operands.length != 3) {
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "3", operands.length.toString(10)
        );
        hasError = true;
      }
      if (!(typeArguments && typeArguments.length == 1)) {
        compiler.error(
          DiagnosticCode.Expected_0_type_arguments_but_got_1,
          reportNode.range, "1", typeArguments ? typeArguments.length.toString(10) : "0"
        );
        hasError = true;
      }

      if (!typeArguments || hasError) {
        return module.createUnreachable();
      }

      arg0 = compiler.compileExpression(
        operands[0],
        compiler.options.usizeType,
        ConversionKind.IMPLICIT,
        WrapMode.NONE
      );
      arg1 = compiler.compileExpression(
        operands[1],
        typeArguments[0],
        typeArguments[0].is(TypeFlags.INTEGER)
          ? ConversionKind.NONE // no need to convert to small int (but now might result in a float)
          : ConversionKind.IMPLICIT,
        WrapMode.NONE
      );
      arg2 = compiler.compileExpression(
        operands[2],
        Type.i64,
        ConversionKind.IMPLICIT,
        WrapMode.NONE
      );

      let type: Type = typeArguments[0];
      if (
        typeArguments[0].is(TypeFlags.INTEGER) &&
        (
          !compiler.currentType.is(TypeFlags.INTEGER) ||    // float to int
          compiler.currentType.size < typeArguments[0].size // int to larger int (clear garbage bits)
        )
      ) {
        arg1 = compiler.convertExpression(
          arg1,
          compiler.currentType, typeArguments[0],
          ConversionKind.IMPLICIT,
          WrapMode.NONE, // still clears garbage bits
          operands[1]
        );
        arg2 = compiler.convertExpression(
          arg2,
          compiler.currentType, typeArguments[0],
          ConversionKind.IMPLICIT,
          WrapMode.NONE, // still clears garbage bits
          operands[2]
        );
      }

      return module.createAtomicWait(
        arg0, arg1, arg2, type.toNativeType()
      );
    }
    case BuiltinSymbols.atomic_notify: { // notify<T!>(ptr: usize, count: u32): u32;
      if (!compiler.options.hasFeature(Feature.THREADS)) break;
      let hasError = typeArguments == null;
      if (operands.length != 2) {
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "2", operands.length.toString(10)
        );
        hasError = true;
      }
      if (!(typeArguments && typeArguments.length == 1)) {
        compiler.error(
          DiagnosticCode.Expected_0_type_arguments_but_got_1,
          reportNode.range, "1", typeArguments ? typeArguments.length.toString(10) : "0"
        );
        hasError = true;
      }

      if (!typeArguments || hasError) {
        return module.createUnreachable();
      }

      arg0 = compiler.compileExpression(
        operands[0],
        compiler.options.usizeType,
        ConversionKind.IMPLICIT,
        WrapMode.NONE
      );
      arg1 = compiler.compileExpression(
        operands[1],
        Type.i32,
        ConversionKind.IMPLICIT,
        WrapMode.NONE
      );

      return module.createAtomicWake(
        arg0, arg1
      );
    }
    case BuiltinSymbols.sizeof: { // sizeof<T!>() -> usize
      compiler.currentType = compiler.options.usizeType;
      if (operands.length != 0) {
        if (!(typeArguments && typeArguments.length == 1)) {
          compiler.error(
            DiagnosticCode.Expected_0_type_arguments_but_got_1,
            reportNode.range, "1", typeArguments ? typeArguments.length.toString(10) : "0"
          );
        }
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "0", operands.length.toString(10)
        );
        return module.createUnreachable();
      }
      if (!(typeArguments && typeArguments.length == 1)) {
        compiler.error(
          DiagnosticCode.Expected_0_type_arguments_but_got_1,
          reportNode.range, "1", typeArguments ? typeArguments.length.toString(10) : "0"
        );
      }
      let byteSize = (<Type[]>typeArguments)[0].byteSize;
      if (compiler.options.isWasm64) {
        // implicitly wrap if contextual type is a 32-bit integer
        if (contextualType.is(TypeFlags.INTEGER) && contextualType.size <= 32) {
          compiler.currentType = Type.u32;
          ret = module.createI32(byteSize);
        } else {
          ret = module.createI64(byteSize, 0);
        }
      } else {
        // implicitly extend if contextual type is a 64-bit integer
        if (contextualType.is(TypeFlags.INTEGER) && contextualType.size == 64) {
          compiler.currentType = Type.u64;
          ret = module.createI64(byteSize, 0);
        } else {
          ret = module.createI32(byteSize);
        }
      }
      return ret;
    }
    case BuiltinSymbols.alignof: { // alignof<T!>() -> usize
      compiler.currentType = compiler.options.usizeType;
      if (operands.length != 0) {
        if (!(typeArguments && typeArguments.length == 1)) {
          compiler.error(
            DiagnosticCode.Expected_0_type_arguments_but_got_1,
            reportNode.range, "1", typeArguments ? typeArguments.length.toString(10) : "0"
          );
        }
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "0", operands.length.toString(10)
        );
        return module.createUnreachable();
      }
      if (!(typeArguments && typeArguments.length == 1)) {
        compiler.error(
          DiagnosticCode.Expected_0_type_arguments_but_got_1,
          reportNode.range, "1", typeArguments ? typeArguments.length.toString(10) : "0"
        );
        return module.createUnreachable();
      }
      let byteSize = (<Type[]>typeArguments)[0].byteSize;
      let alignLog2: i32;
      switch (byteSize) {
        case 1: { alignLog2 = 0; break; }
        case 2: { alignLog2 = 1; break; }
        case 4: { alignLog2 = 2; break; }
        case 8: { alignLog2 = 3; break; }
        default: { assert(false, "unexected byte size"); return module.createUnreachable(); }
      }
      if (compiler.options.isWasm64) {
        // implicitly wrap if contextual type is a 32-bit integer
        if (contextualType.is(TypeFlags.INTEGER) && contextualType.size <= 32) {
          compiler.currentType = Type.u32;
          ret = module.createI32(alignLog2);
        } else {
          ret = module.createI64(alignLog2, 0);
        }
      } else {
        // implicitly extend if contextual type is a 64-bit integer
        if (contextualType.is(TypeFlags.INTEGER) && contextualType.size == 64) {
          compiler.currentType = Type.u64;
          ret = module.createI64(alignLog2, 0);
        } else {
          ret = module.createI32(alignLog2);
        }
      }
      return ret;
    }
    case BuiltinSymbols.offsetof: { // offsetof<T!>(fieldName?: string) -> usize
      compiler.currentType = compiler.options.usizeType;
      if (operands.length > 1) {
        if (!(typeArguments && typeArguments.length == 1)) {
          compiler.error(
            DiagnosticCode.Expected_0_type_arguments_but_got_1,
            reportNode.range, "1", typeArguments ? typeArguments.length.toString(10) : "0"
          );
        }
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "1", operands.length.toString(10)
        );
        return module.createUnreachable();
      }
      if (!(typeArguments && typeArguments.length == 1)) {
        compiler.error(
          DiagnosticCode.Expected_0_type_arguments_but_got_1,
          reportNode.range, "1", typeArguments ? typeArguments.length.toString(10) : "0"
        );
        return module.createUnreachable();
      }
      let classType = typeArguments[0].classReference;
      if (!classType) {
        compiler.error( // TODO: better error
          DiagnosticCode.Operation_not_supported,
          reportNode.range
        );
        return module.createUnreachable();
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
          return module.createUnreachable();
        }
        let fieldName = (<StringLiteralExpression>operands[0]).value;
        let field = classType.members ? classType.members.get(fieldName) : null;
        if (!(field && field.kind == ElementKind.FIELD)) {
          compiler.error(
            DiagnosticCode.Type_0_has_no_property_1,
            operands[0].range, classType.internalName, fieldName
          );
          return module.createUnreachable();
        }
        offset = (<Field>field).memoryOffset;
      } else {
        offset = classType.currentMemoryOffset;
      }
      if (compiler.options.isWasm64) {
        // implicitly wrap if contextual type is a 32-bit integer
        if (contextualType.is(TypeFlags.INTEGER) && contextualType.size <= 32) {
          compiler.currentType = Type.u32;
          return module.createI32(offset);
        } else {
          return module.createI64(offset);
        }
      } else {
        // implicitly extend if contextual type is a 64-bit integer
        if (contextualType.is(TypeFlags.INTEGER) && contextualType.size == 64) {
          compiler.currentType = Type.u64;
          return module.createI64(offset);
        } else {
          return module.createI32(offset);
        }
      }
    }

    // control flow

    case BuiltinSymbols.select: { // select<T?>(ifTrue: T, ifFalse: T, condition: bool) -> T
      if (operands.length != 3) {
        if (typeArguments) {
          if (typeArguments.length) compiler.currentType = typeArguments[0];
          if (typeArguments.length != 1) {
            compiler.error(
              DiagnosticCode.Expected_0_type_arguments_but_got_1,
              reportNode.range, "1", typeArguments.length.toString(10)
            );
          }
        }
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "3", operands.length.toString(10)
        );
        return module.createUnreachable();
      }
      if (typeArguments) {
        if (typeArguments.length != 1) {
          if (typeArguments.length) compiler.currentType = typeArguments[0];
          compiler.error(
            DiagnosticCode.Expected_0_type_arguments_but_got_1,
            reportNode.range, "1", typeArguments.length.toString(10)
          );
          return module.createUnreachable();
        }
        arg0 = compiler.compileExpression(operands[0], typeArguments[0], ConversionKind.IMPLICIT, WrapMode.NONE);
      } else {
        arg0 = compiler.compileExpressionRetainType(operands[0], Type.i32, WrapMode.NONE);
      }
      let type = compiler.currentType;
      arg1 = compiler.compileExpression(operands[1], type, ConversionKind.IMPLICIT, WrapMode.NONE);
      arg2 = compiler.makeIsTrueish(
        compiler.compileExpressionRetainType(operands[2], Type.bool, WrapMode.NONE),
        compiler.currentType
      );
      compiler.currentType = type;
      switch (compiler.currentType.kind) {
        case TypeKind.I8:
        case TypeKind.I16:
        case TypeKind.U8:
        case TypeKind.U16:
        case TypeKind.BOOL:
        default: {
          ret = module.createSelect(arg0, arg1, arg2);
          break;
        }
        case TypeKind.VOID: {
          compiler.error(
            DiagnosticCode.Operation_not_supported,
            reportNode.range
          );
          ret = module.createUnreachable();
          break;
        }
      }
      return ret;
    }
    case BuiltinSymbols.unreachable: { // unreachable() -> *
      if (operands.length != 0) {
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "0", operands.length.toString(10)
        );
      }
      if (typeArguments) {
        compiler.error(
          DiagnosticCode.Type_0_is_not_generic,
          reportNode.range, prototype.internalName
        );
      }
      return module.createUnreachable();
    }

    // host operations

    case BuiltinSymbols.memory_size: { // memory.size() -> i32
      compiler.currentType = Type.i32;
      if (operands.length != 0) {
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "0", operands.length.toString(10)
        );
      }
      if (typeArguments) {
        compiler.error(
          DiagnosticCode.Type_0_is_not_generic,
          reportNode.range, prototype.internalName
        );
      }
      return module.createHost(HostOp.CurrentMemory);
    }
    case BuiltinSymbols.memory_grow: { // memory.grow(pages: i32) -> i32
      compiler.currentType = Type.i32;
      if (operands.length != 1) {
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "0", operands.length.toString(10)
        );
        arg0 = module.createUnreachable();
      } else {
        arg0 = compiler.compileExpression(operands[0], Type.i32, ConversionKind.IMPLICIT, WrapMode.NONE);
      }
      if (typeArguments) {
        compiler.error(
          DiagnosticCode.Type_0_is_not_generic,
          reportNode.range, prototype.internalName
        );
      }
      return module.createHost(HostOp.GrowMemory, null, [ arg0 ]);
    }
    // see: https://github.com/WebAssembly/bulk-memory-operations
    case BuiltinSymbols.memory_copy: { // memory.copy(dest: usize, src: usize: n: usize) -> void
      if (!compiler.options.hasFeature(Feature.BULK_MEMORY)) {
        let instance = compiler.resolver.resolveFunction(prototype, null); // reports
        compiler.currentType = Type.void;
        if (!instance) return module.createUnreachable();
        return compiler.compileCallDirect(instance, operands, reportNode);
      }
      if (typeArguments) {
        compiler.error(
          DiagnosticCode.Type_0_is_not_generic,
          reportNode.range, prototype.internalName
        );
      }
      if (operands.length != 3) {
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "3", operands.length.toString(10)
        );
        compiler.currentType = Type.void;
        return module.createUnreachable();
      }
      let usizeType = compiler.options.usizeType;
      arg0 = compiler.compileExpression(
        operands[0],
        usizeType,
        ConversionKind.IMPLICIT,
        WrapMode.NONE
      );
      arg1 = compiler.compileExpression(
        operands[1],
        usizeType,
        ConversionKind.IMPLICIT,
        WrapMode.NONE
      );
      arg2 = compiler.compileExpression(
        operands[2],
        usizeType,
        ConversionKind.IMPLICIT,
        WrapMode.NONE
      );
      compiler.currentType = Type.void;
      return module.createMemoryCopy(arg0, arg1, arg2);
    }
    case BuiltinSymbols.memory_fill: { // memory.fill(dest: usize, value: u8, n: usize) -> void
      if (!compiler.options.hasFeature(Feature.BULK_MEMORY)) {
        let instance = compiler.resolver.resolveFunction(prototype, null); // reports
        compiler.currentType = Type.void;
        if (!instance) return module.createUnreachable();
        return compiler.compileCallDirect(instance, operands, reportNode);
      }
      if (typeArguments) {
        compiler.error(
          DiagnosticCode.Type_0_is_not_generic,
          reportNode.range, prototype.internalName
        );
      }
      if (operands.length != 3) {
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "3", operands.length.toString(10)
        );
        compiler.currentType = Type.void;
        return module.createUnreachable();
      }
      let usizeType = compiler.options.usizeType;
      arg0 = compiler.compileExpression(
        operands[0],
        usizeType,
        ConversionKind.IMPLICIT,
        WrapMode.NONE
      );
      arg1 = compiler.compileExpression(
        operands[1],
        Type.u32,
        ConversionKind.IMPLICIT,
        WrapMode.NONE
      );
      arg2 = compiler.compileExpression(
        operands[2],
        usizeType,
        ConversionKind.IMPLICIT,
        WrapMode.NONE
      );
      compiler.currentType = Type.void;
      return module.createMemoryFill(arg0, arg1, arg2);
    }

    // other

    case BuiltinSymbols.changetype: { // changetype<T!>(value: *) -> T
      if (!(typeArguments && typeArguments.length == 1)) {
        if (typeArguments && typeArguments.length) compiler.currentType = typeArguments[0];
        compiler.error(
          DiagnosticCode.Expected_0_type_arguments_but_got_1,
          reportNode.range, "1", typeArguments ? typeArguments.length.toString(10) : "0"
        );
        return module.createUnreachable();
      }
      if (operands.length != 1) {
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "1", operands.length.toString(10)
        );
        compiler.currentType = typeArguments[0];
        return module.createUnreachable();
      }
      arg0 = compiler.compileExpressionRetainType(
        operands[0],
        typeArguments[0],
        WrapMode.NONE
      );
      compiler.currentType = typeArguments[0];
      if (compiler.currentType.size != typeArguments[0].size) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.range
        );
        return module.createUnreachable();
      }
      // if (reportNode.range.source.sourceKind != SourceKind.STDLIB)
      //  compiler.warning(DiagnosticCode.Operation_is_unsafe, reportNode.range);
      return arg0; // any usize to any usize
    }
    case BuiltinSymbols.assert: { // assert<T?>(isTrueish: T, message?: string) -> T with T != null
      if (operands.length < 1 || operands.length > 2) {
        if (typeArguments) {
          if (typeArguments.length) compiler.currentType = typeArguments[0].nonNullableType;
          if (typeArguments.length != 1) {
            compiler.error(
              DiagnosticCode.Expected_0_type_arguments_but_got_1,
              reportNode.range, "1", typeArguments.length.toString(10)
            );
          }
        }
        if (operands.length < 1) {
          compiler.error(
            DiagnosticCode.Expected_at_least_0_arguments_but_got_1,
            reportNode.range, "1", operands.length.toString(10)
          );
        } else if (operands.length > 2) {
          compiler.error(
            DiagnosticCode.Expected_0_arguments_but_got_1,
            reportNode.range, "2", operands.length.toString(10)
          );
        }
        return module.createUnreachable();
      }
      if (typeArguments) {
        if (typeArguments.length) compiler.currentType = typeArguments[0].nonNullableType;
        if (typeArguments.length != 1) {
          compiler.error(
            DiagnosticCode.Expected_0_type_arguments_but_got_1,
            reportNode.range, "1", typeArguments.length.toString(10)
          );
          return module.createUnreachable();
        }
        arg0 = compiler.compileExpression(operands[0], typeArguments[0], ConversionKind.IMPLICIT, WrapMode.WRAP);
      } else {
        arg0 = compiler.compileExpressionRetainType(operands[0], Type.bool, WrapMode.WRAP);
      }

      let type = compiler.currentType;
      compiler.currentType = type.nonNullableType;

      // just return ifTrueish if assertions are disabled, or simplify if dropped anyway
      if (compiler.options.noAssert) {
        if (contextualType == Type.void) {
          compiler.currentType = Type.void;
          return module.createNop();
        }
        return arg0;
      }

      let abort = compileAbort(compiler, operands.length == 2 ? operands[1] : null, reportNode);

      compiler.currentType = type.nonNullableType;

      if (contextualType == Type.void) { // simplify if dropped anyway
        switch (compiler.currentType.kind) {
          default: { // any integer up to 32-bits incl. bool
            ret = module.createIf(
              module.createUnary(UnaryOp.EqzI32,
                arg0
              ),
              abort
            );
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            ret = module.createIf(
              module.createUnary(UnaryOp.EqzI64,
                arg0
              ),
              abort
            );
            break;
          }
          case TypeKind.ISIZE:
          case TypeKind.USIZE: {
            ret = module.createIf(
              module.createUnary(
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
            ret = module.createIf(
              module.createBinary(BinaryOp.EqF32,
                arg0,
                module.createF32(0)
              ),
              abort
            );
            break;
          }
          case TypeKind.F64: {
            ret = module.createIf(
              module.createBinary(BinaryOp.EqF64,
                arg0,
                module.createF64(0)
              ),
              abort
            );
            break;
          }
          case TypeKind.VOID: {
            compiler.error(
              DiagnosticCode.Operation_not_supported,
              reportNode.range
            );
            ret = abort;
            break;
          }
        }
        compiler.currentType = Type.void;
      } else {
        switch (compiler.currentType.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL: {
            let flow = compiler.currentFlow;
            let tempLocal = flow.getAndFreeTempLocal(
              compiler.currentType,
              !flow.canOverflow(arg0, compiler.currentType)
            );
            ret = module.createIf(
              module.createTeeLocal(tempLocal.index, arg0),
              module.createGetLocal(tempLocal.index, NativeType.I32),
              abort
            );
            break;
          }
          case TypeKind.I32:
          case TypeKind.U32:
          default: {
            let tempLocal = compiler.currentFlow.getAndFreeTempLocal(Type.i32, false);
            ret = module.createIf(
              module.createTeeLocal(tempLocal.index, arg0),
              module.createGetLocal(tempLocal.index, NativeType.I32),
              abort
            );
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            let tempLocal = compiler.currentFlow.getAndFreeTempLocal(Type.i64, false);
            ret = module.createIf(
              module.createUnary(UnaryOp.EqzI64,
                module.createTeeLocal(tempLocal.index, arg0)
              ),
              abort,
              module.createGetLocal(tempLocal.index, NativeType.I64)
            );
            break;
          }
          case TypeKind.ISIZE:
          case TypeKind.USIZE: {
            let tempLocal = compiler.currentFlow.getAndFreeTempLocal(compiler.options.usizeType, false);
            ret = module.createIf(
              module.createUnary(
                compiler.options.isWasm64
                  ? UnaryOp.EqzI64
                  : UnaryOp.EqzI32,
                module.createTeeLocal(tempLocal.index, arg0)
              ),
              abort,
              module.createGetLocal(tempLocal.index, compiler.options.nativeSizeType)
            );
            break;
          }
          case TypeKind.F32: {
            let tempLocal = compiler.currentFlow.getAndFreeTempLocal(Type.f32, false);
            ret = module.createIf(
              module.createBinary(BinaryOp.EqF32,
                module.createTeeLocal(tempLocal.index, arg0),
                module.createF32(0)
              ),
              abort,
              module.createGetLocal(tempLocal.index, NativeType.F32)
            );
            break;
          }
          case TypeKind.F64: {
            let tempLocal = compiler.currentFlow.getAndFreeTempLocal(Type.f64, false);
            ret = module.createIf(
              module.createBinary(BinaryOp.EqF64,
                module.createTeeLocal(tempLocal.index, arg0),
                module.createF64(0)
              ),
              abort,
              module.createGetLocal(tempLocal.index, NativeType.F64)
            );
            break;
          }
          case TypeKind.VOID: {
            compiler.error(
              DiagnosticCode.Operation_not_supported,
              reportNode.range
            );
            ret = abort;
            break;
          }
        }
      }
      return ret;
    }
    case BuiltinSymbols.unchecked: {
      if (typeArguments) {
        compiler.error(
          DiagnosticCode.Type_0_is_not_generic,
          reportNode.range, prototype.internalName
        );
      }
      if (operands.length != 1) {
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "1", operands.length.toString(10)
        );
        return module.createUnreachable();
      }
      let flow = compiler.currentFlow;
      flow.set(FlowFlags.UNCHECKED_CONTEXT);
      ret = compiler.compileExpressionRetainType(operands[0], contextualType, WrapMode.NONE);
      flow.unset(FlowFlags.UNCHECKED_CONTEXT);
      return ret;
    }
    case BuiltinSymbols.call_indirect: { // call_indirect<T?>(target: Function | u32, ...args: *[]) -> T
      if (operands.length < 1) {
        if (typeArguments) {
          if (typeArguments.length) compiler.currentType = typeArguments[0];
          if (typeArguments.length != 1) {
            compiler.error(
              DiagnosticCode.Expected_0_type_arguments_but_got_1,
              reportNode.range, "1", typeArguments.length.toString(10)
            );
          }
        }
        compiler.error(
          DiagnosticCode.Expected_at_least_0_arguments_but_got_1,
          reportNode.range, "1", operands.length.toString(10)
        );
        return module.createUnreachable();
      }
      let returnType: Type;
      if (typeArguments) {
        if (typeArguments.length != 1) {
          if (typeArguments.length) compiler.currentType = typeArguments[0];
          compiler.error(
            DiagnosticCode.Expected_0_type_arguments_but_got_1,
            reportNode.range, "1", typeArguments.length.toString(10)
          );
          return module.createUnreachable();
        }
        returnType = typeArguments[0];
      } else {
        returnType = contextualType;
      }
      arg0 = compiler.compileExpressionRetainType(operands[0], Type.u32, WrapMode.NONE);
      if (compiler.currentType.kind != TypeKind.U32) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          operands[0].range
        );
        return module.createUnreachable();
      }
      let numOperands = operands.length - 1;
      let operandExprs = new Array<ExpressionRef>(numOperands);
      let signatureParts = new Array<string>(numOperands + 1);
      let nativeReturnType = returnType.toNativeType();
      let nativeParamTypes = new Array<NativeType>(numOperands);
      for (let i = 0; i < numOperands; ++i) {
        operandExprs[i] = compiler.compileExpressionRetainType(operands[1 + i], Type.i32, WrapMode.NONE);
        let operandType = compiler.currentType;
        signatureParts[i] = operandType.toSignatureString();
        nativeParamTypes[i] = operandType.toNativeType();
      }
      signatureParts[numOperands] = returnType.toSignatureString();
      let typeName = signatureParts.join("");
      let typeRef = module.getFunctionTypeBySignature(nativeReturnType, nativeParamTypes);
      if (!typeRef) typeRef = module.addFunctionType(typeName, nativeReturnType, nativeParamTypes);
      compiler.currentType = returnType;
      // of course this can easily result in a 'RuntimeError: function signature mismatch' trap and
      // thus must be used with care. it exists because it *might* be useful in specific scenarios.
      return module.createCallIndirect(arg0, operandExprs, typeName);
    }
    case BuiltinSymbols.instantiate: {
      if (!(typeArguments && typeArguments.length == 1)) {
        if (typeArguments && typeArguments.length) compiler.currentType = typeArguments[0];
        compiler.error(
          DiagnosticCode.Expected_0_type_arguments_but_got_1,
          reportNode.range, "1", typeArguments ? typeArguments.length.toString(10) : "0"
        );
        return module.createUnreachable();
      }
      let classInstance = typeArguments[0].classReference;
      if (!classInstance) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.range
        );
        return module.createUnreachable();
      }
      return compiler.compileInstantiate(classInstance, operands, reportNode);
    }

    // user-defined diagnostic macros

    case BuiltinSymbols.ERROR: {
      compiler.error(
        DiagnosticCode.User_defined_0,
        reportNode.range, (operands.length ? operands[0] : reportNode).range.toString()
      );
      return module.createUnreachable();
    }
    case BuiltinSymbols.WARNING: {
      compiler.warning(
        DiagnosticCode.User_defined_0,
        reportNode.range, (operands.length ? operands[0] : reportNode).range.toString()
      );
      return module.createNop();
    }
    case BuiltinSymbols.INFO: {
      compiler.info(
        DiagnosticCode.User_defined_0,
        reportNode.range, (operands.length ? operands[0] : reportNode).range.toString()
      );
      return module.createNop();
    }

    // conversions

    case BuiltinSymbols.i8: {
      if (typeArguments) {
        compiler.error(
          DiagnosticCode.Type_0_is_not_generic,
          reportNode.range, prototype.internalName
        );
      }
      if (operands.length != 1) {
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "1", operands.length.toString(10)
        );
        compiler.currentType = Type.i8;
        return module.createUnreachable();
      }
      return compiler.compileExpression(
        operands[0],
        Type.i8,
        ConversionKind.EXPLICIT,
        WrapMode.NONE
      );
    }
    case BuiltinSymbols.i16: {
      if (typeArguments) {
        compiler.error(
          DiagnosticCode.Type_0_is_not_generic,
          reportNode.range, prototype.internalName
        );
      }
      if (operands.length != 1) {
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "1", operands.length.toString(10)
        );
        compiler.currentType = Type.i16;
        return module.createUnreachable();
      }
      return compiler.compileExpression(
        operands[0],
        Type.i16,
        ConversionKind.EXPLICIT,
        WrapMode.NONE
      );
    }
    case BuiltinSymbols.i32: {
      if (typeArguments) {
        compiler.error(
          DiagnosticCode.Type_0_is_not_generic,
          reportNode.range, prototype.internalName
        );
      }
      if (operands.length != 1) {
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "1", operands.length.toString(10)
        );
        compiler.currentType = Type.i32;
        return module.createUnreachable();
      }
      return compiler.compileExpression(
        operands[0],
        Type.i32,
        ConversionKind.EXPLICIT,
        WrapMode.NONE
      );
    }
    case BuiltinSymbols.i64: {
      if (typeArguments) {
        compiler.error(
          DiagnosticCode.Type_0_is_not_generic,
          reportNode.range, prototype.internalName
        );
      }
      if (operands.length != 1) {
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "1", operands.length.toString(10)
        );
        compiler.currentType = Type.i64;
        return module.createUnreachable();
      }
      return compiler.compileExpression(
        operands[0],
        Type.i64,
        ConversionKind.EXPLICIT,
        WrapMode.NONE
      );
    }
    case BuiltinSymbols.isize: {
      if (typeArguments) {
        compiler.error(
          DiagnosticCode.Type_0_is_not_generic,
          reportNode.range, prototype.internalName
        );
      }
      if (operands.length != 1) {
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "1", operands.length.toString(10)
        );
        compiler.currentType = compiler.options.isWasm64
          ? Type.isize64
          : Type.isize32;
        return module.createUnreachable();
      }
      return compiler.compileExpression(
        operands[0],
        compiler.options.isWasm64
          ? Type.isize64
          : Type.isize32,
        ConversionKind.EXPLICIT,
        WrapMode.NONE
      );
    }
    case BuiltinSymbols.u8: {
      if (typeArguments) {
        compiler.error(
          DiagnosticCode.Type_0_is_not_generic,
          reportNode.range, prototype.internalName
        );
      }
      if (operands.length != 1) {
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "1", operands.length.toString(10)
        );
        compiler.currentType = Type.u8;
        return module.createUnreachable();
      }
      return compiler.compileExpression(
        operands[0],
        Type.u8,
        ConversionKind.EXPLICIT,
        WrapMode.NONE
      );
    }
    case BuiltinSymbols.u16: {
      if (typeArguments) {
        compiler.error(
          DiagnosticCode.Type_0_is_not_generic,
          reportNode.range, prototype.internalName
        );
      }
      if (operands.length != 1) {
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "1", operands.length.toString(10)
        );
        compiler.currentType = Type.u16;
        return module.createUnreachable();
      }
      return compiler.compileExpression(
        operands[0],
        Type.u16,
        ConversionKind.EXPLICIT,
        WrapMode.NONE
      );
    }
    case BuiltinSymbols.u32: {
      if (typeArguments) {
        compiler.error(
          DiagnosticCode.Type_0_is_not_generic,
          reportNode.range, prototype.internalName
        );
      }
      if (operands.length != 1) {
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "1", operands.length.toString(10)
        );
        compiler.currentType = Type.u32;
        return module.createUnreachable();
      }
      return compiler.compileExpression(
        operands[0],
        Type.u32,
        ConversionKind.EXPLICIT,
        WrapMode.NONE
      );
    }
    case BuiltinSymbols.u64: {
      if (typeArguments) {
        compiler.error(
          DiagnosticCode.Type_0_is_not_generic,
          reportNode.range, prototype.internalName
        );
      }
      if (operands.length != 1) {
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "1", operands.length.toString(10)
        );
        compiler.currentType = Type.u64;
        return module.createUnreachable();
      }
      return compiler.compileExpression(
        operands[0],
        Type.u64,
        ConversionKind.EXPLICIT,
        WrapMode.NONE
      );
    }
    case BuiltinSymbols.usize: {
      if (typeArguments) {
        compiler.error(
          DiagnosticCode.Type_0_is_not_generic,
          reportNode.range, prototype.internalName
        );
      }
      if (operands.length != 1) {
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "1", operands.length.toString(10)
        );
        compiler.currentType = compiler.options.usizeType;
        return module.createUnreachable();
      }
      return compiler.compileExpression(
        operands[0],
        compiler.options.usizeType,
        ConversionKind.EXPLICIT,
        WrapMode.NONE
      );
    }
    case BuiltinSymbols.bool: {
      if (typeArguments) {
        compiler.error(
          DiagnosticCode.Type_0_is_not_generic,
          reportNode.range, prototype.internalName
        );
      }
      if (operands.length != 1) {
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "1", operands.length.toString(10)
        );
        compiler.currentType = Type.bool;
        return module.createUnreachable();
      }
      return compiler.compileExpression(
        operands[0],
        Type.bool,
        ConversionKind.EXPLICIT,
        WrapMode.NONE
      );
    }
    case BuiltinSymbols.f32: {
      if (typeArguments) {
        compiler.error(
          DiagnosticCode.Type_0_is_not_generic,
          reportNode.range, prototype.internalName
        );
      }
      if (operands.length != 1) {
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "1", operands.length.toString(10)
        );
        compiler.currentType = Type.f32;
        return module.createUnreachable();
      }
      return compiler.compileExpression(
        operands[0],
        Type.f32,
        ConversionKind.EXPLICIT,
        WrapMode.NONE
      );
    }
    case BuiltinSymbols.f64: {
      if (typeArguments) {
        compiler.error(
          DiagnosticCode.Type_0_is_not_generic,
          reportNode.range, prototype.internalName
        );
      }
      if (operands.length != 1) {
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "1", operands.length.toString(10)
        );
        compiler.currentType = Type.f64;
        return module.createUnreachable();
      }
      return compiler.compileExpression(
        operands[0],
        Type.f64,
        ConversionKind.EXPLICIT,
        WrapMode.NONE
      );
    }

    // === SIMD ===================================================================================

    // const

    case BuiltinSymbols.v128: // alias for now
    case BuiltinSymbols.i8x16: {
      if (!compiler.options.hasFeature(Feature.SIMD)) break;
      if (typeArguments) {
        compiler.error(
          DiagnosticCode.Type_0_is_not_generic,
          reportNode.range, prototype.internalName
        );
      }
      if (operands.length != 16) {
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "16", operands.length.toString(10)
        );
        compiler.currentType = Type.v128;
        return module.createUnreachable();
      }
      let bytes = new Uint8Array(16);
      for (let i = 0; i < 16; ++i) {
        let value = operands[i];
        if (value) {
          let expr = module.precomputeExpression(
            compiler.compileExpression(value, Type.i8, ConversionKind.IMPLICIT, WrapMode.NONE)
          );
          if (getExpressionId(expr) != ExpressionId.Const) {
            compiler.error(
              DiagnosticCode.Expression_must_be_a_compile_time_constant,
              value.range
            );
            compiler.currentType = Type.v128;
            return module.createUnreachable();
          }
          assert(getExpressionType(expr) == NativeType.I32);
          writeI8(getConstValueI32(expr), bytes, i);
        }
      }
      compiler.currentType = Type.v128;
      return module.createV128(bytes);
    }
    case BuiltinSymbols.i16x8: {
      if (!compiler.options.hasFeature(Feature.SIMD)) break;
      if (typeArguments) {
        compiler.error(
          DiagnosticCode.Type_0_is_not_generic,
          reportNode.range, prototype.internalName
        );
      }
      if (operands.length != 8) {
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "8", operands.length.toString(10)
        );
        compiler.currentType = Type.v128;
        return module.createUnreachable();
      }
      let bytes = new Uint8Array(16);
      for (let i = 0; i < 8; ++i) {
        let value = operands[i];
        if (value) {
          let expr = module.precomputeExpression(
            compiler.compileExpression(value, Type.i16, ConversionKind.IMPLICIT, WrapMode.NONE)
          );
          if (getExpressionId(expr) != ExpressionId.Const) {
            compiler.error(
              DiagnosticCode.Expression_must_be_a_compile_time_constant,
              value.range
            );
            compiler.currentType = Type.v128;
            return module.createUnreachable();
          }
          assert(getExpressionType(expr) == NativeType.I32);
          writeI16(getConstValueI32(expr), bytes, i << 1);
        }
      }
      compiler.currentType = Type.v128;
      return module.createV128(bytes);
    }
    case BuiltinSymbols.i32x4: {
      if (!compiler.options.hasFeature(Feature.SIMD)) break;
      if (typeArguments) {
        compiler.error(
          DiagnosticCode.Type_0_is_not_generic,
          reportNode.range, prototype.internalName
        );
      }
      if (operands.length != 4) {
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "4", operands.length.toString(10)
        );
        compiler.currentType = Type.v128;
        return module.createUnreachable();
      }
      let bytes = new Uint8Array(16);
      for (let i = 0; i < 4; ++i) {
        let value = operands[i];
        if (value) {
          let expr = module.precomputeExpression(
            compiler.compileExpression(value, Type.i32, ConversionKind.IMPLICIT, WrapMode.NONE)
          );
          if (getExpressionId(expr) != ExpressionId.Const) {
            compiler.error(
              DiagnosticCode.Expression_must_be_a_compile_time_constant,
              value.range
            );
            compiler.currentType = Type.v128;
            return module.createUnreachable();
          }
          assert(getExpressionType(expr) == NativeType.I32);
          writeI32(getConstValueI32(expr), bytes, i << 2);
        }
      }
      compiler.currentType = Type.v128;
      return module.createV128(bytes);
    }
    case BuiltinSymbols.i64x2: {
      if (!compiler.options.hasFeature(Feature.SIMD)) break;
      if (typeArguments) {
        compiler.error(
          DiagnosticCode.Type_0_is_not_generic,
          reportNode.range, prototype.internalName
        );
      }
      if (operands.length != 2) {
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "2", operands.length.toString(10)
        );
        compiler.currentType = Type.v128;
        return module.createUnreachable();
      }
      let bytes = new Uint8Array(16);
      for (let i = 0; i < 2; ++i) {
        let value = operands[i];
        if (value) {
          let expr = module.precomputeExpression(
            compiler.compileExpression(value, Type.i64, ConversionKind.IMPLICIT, WrapMode.NONE)
          );
          if (getExpressionId(expr) != ExpressionId.Const) {
            compiler.error(
              DiagnosticCode.Expression_must_be_a_compile_time_constant,
              value.range
            );
            compiler.currentType = Type.v128;
            return module.createUnreachable();
          }
          assert(getExpressionType(expr) == NativeType.I64);
          let off = i << 3;
          writeI32(getConstValueI64Low(expr), bytes, off);
          writeI32(getConstValueI64High(expr), bytes, off + 4);
        }
      }
      compiler.currentType = Type.v128;
      return module.createV128(bytes);
    }
    case BuiltinSymbols.f32x4: {
      if (!compiler.options.hasFeature(Feature.SIMD)) break;
      if (typeArguments) {
        compiler.error(
          DiagnosticCode.Type_0_is_not_generic,
          reportNode.range, prototype.internalName
        );
      }
      if (operands.length != 4) {
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "4", operands.length.toString(10)
        );
        compiler.currentType = Type.v128;
        return module.createUnreachable();
      }
      let bytes = new Uint8Array(16);
      for (let i = 0; i < 4; ++i) {
        let value = operands[i];
        if (value) {
          let expr = module.precomputeExpression(
            compiler.compileExpression(value, Type.f32, ConversionKind.IMPLICIT, WrapMode.NONE)
          );
          if (getExpressionId(expr) != ExpressionId.Const) {
            compiler.error(
              DiagnosticCode.Expression_must_be_a_compile_time_constant,
              value.range
            );
            compiler.currentType = Type.v128;
            return module.createUnreachable();
          }
          assert(getExpressionType(expr) == NativeType.F32);
          writeF32(getConstValueF32(expr), bytes, i << 2);
        }
      }
      compiler.currentType = Type.v128;
      return module.createV128(bytes);
    }
    case BuiltinSymbols.f64x2: {
      if (!compiler.options.hasFeature(Feature.SIMD)) break;
      if (typeArguments) {
        compiler.error(
          DiagnosticCode.Type_0_is_not_generic,
          reportNode.range, prototype.internalName
        );
      }
      if (operands.length != 2) {
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "2", operands.length.toString(10)
        );
        compiler.currentType = Type.v128;
        return module.createUnreachable();
      }
      let bytes = new Uint8Array(16);
      for (let i = 0; i < 2; ++i) {
        let value = operands[i];
        if (value) {
          let expr = module.precomputeExpression(
            compiler.compileExpression(value, Type.f64, ConversionKind.IMPLICIT, WrapMode.NONE)
          );
          if (getExpressionId(expr) != ExpressionId.Const) {
            compiler.error(
              DiagnosticCode.Expression_must_be_a_compile_time_constant,
              value.range
            );
            compiler.currentType = Type.v128;
            return module.createUnreachable();
          }
          assert(getExpressionType(expr) == NativeType.F64);
          writeF64(getConstValueF64(expr), bytes, i << 3);
        }
      }
      compiler.currentType = Type.v128;
      return module.createV128(bytes);
    }

    // v128.*

    case BuiltinSymbols.v128_splat: {
      if (!compiler.options.hasFeature(Feature.SIMD)) break;
      if (!(typeArguments && typeArguments.length == 1)) {
        compiler.error(
          DiagnosticCode.Expected_0_type_arguments_but_got_1,
          reportNode.range, "1", typeArguments ? typeArguments.length.toString() : "0"
        );
        compiler.currentType = Type.v128;
        return module.createUnreachable();
      }
      if (operands.length != 1) {
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "1", operands.length.toString(10)
        );
        compiler.currentType = Type.v128;
        return module.createUnreachable();
      }
      let type =  typeArguments[0];
      if (!type.is(TypeFlags.VALUE)) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.range
        );
        compiler.currentType = Type.v128;
        return module.createUnreachable();
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
        case TypeKind.F32: { op = UnaryOp.SplatVecF32x4; break; }
        case TypeKind.F64: { op = UnaryOp.SplatVecF64x2; break; }
        default: {
          compiler.error(
            DiagnosticCode.Operation_not_supported,
            reportNode.range
          );
          compiler.currentType = Type.v128;
          return module.createUnreachable();
        }
      }
      arg0 = compiler.compileExpression(operands[0], type, ConversionKind.IMPLICIT, WrapMode.NONE);
      compiler.currentType = Type.v128;
      return module.createUnary(op, arg0);
    }
    case BuiltinSymbols.v128_extract_lane: {
      if (!compiler.options.hasFeature(Feature.SIMD)) break;
      if (!(typeArguments && typeArguments.length == 1)) {
        compiler.error(
          DiagnosticCode.Expected_0_type_arguments_but_got_1,
          reportNode.range, "1", typeArguments ? typeArguments.length.toString() : "0"
        );
        return module.createUnreachable();
      }
      if (operands.length != 2) {
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "2", operands.length.toString(10)
        );
        return module.createUnreachable();
      }
      let type = typeArguments[0];
      if (!type.is(TypeFlags.VALUE)) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.range
        );
        compiler.currentType = type;
        return module.createUnreachable();
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
        case TypeKind.F32: { op = SIMDExtractOp.ExtractLaneVecF32x4; break; }
        case TypeKind.F64: { op = SIMDExtractOp.ExtractLaneVecF64x2; break; }
        default: {
          compiler.error(
            DiagnosticCode.Operation_not_supported,
            reportNode.range
          );
          compiler.currentType = type;
          return module.createUnreachable();
        }
      }
      arg0 = compiler.compileExpression(operands[0], Type.v128, ConversionKind.IMPLICIT, WrapMode.NONE);
      arg1 = module.precomputeExpression(
        compiler.compileExpression(operands[1], Type.u8, ConversionKind.IMPLICIT, WrapMode.NONE)
      );
      compiler.currentType = type;
      if (getExpressionId(arg1) != ExpressionId.Const) {
        compiler.error(
          DiagnosticCode.Expression_must_be_a_compile_time_constant,
          operands[1].range
        );
        return module.createUnreachable();
      }
      assert(getExpressionType(arg1) == NativeType.I32);
      let maxIdx = (16 / type.byteSize) - 1;
      let idx = getConstValueI32(arg1);
      if (idx < 0 || idx > maxIdx) {
        compiler.error(
          DiagnosticCode._0_must_be_a_value_between_1_and_2_inclusive,
          operands[1].range, "Lane index", "0", maxIdx.toString()
        );
        return module.createUnreachable();
      }
      return module.createSIMDExtract(op, arg0, idx);
    }
    case BuiltinSymbols.v128_replace_lane: {
      if (!compiler.options.hasFeature(Feature.SIMD)) break;
      compiler.currentType = Type.v128;
      if (!(typeArguments && typeArguments.length == 1)) {
        compiler.error(
          DiagnosticCode.Expected_0_type_arguments_but_got_1,
          reportNode.range, "1", typeArguments ? typeArguments.length.toString() : "0"
        );
        return module.createUnreachable();
      }
      if (operands.length != 3) {
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "3", operands.length.toString(10)
        );
        return module.createUnreachable();
      }
      let type = typeArguments[0];
      if (!type.is(TypeFlags.VALUE)) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.range
        );
        return module.createUnreachable();
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
        case TypeKind.F32: { op = SIMDReplaceOp.ReplaceLaneVecF32x4; break; }
        case TypeKind.F64: { op = SIMDReplaceOp.ReplaceLaneVecF64x2; break; }
        default: {
          compiler.error(
            DiagnosticCode.Operation_not_supported,
            reportNode.range
          );
          return module.createUnreachable();
        }
      }
      arg0 = compiler.compileExpression(operands[0], Type.v128, ConversionKind.IMPLICIT, WrapMode.NONE);
      arg1 = module.precomputeExpression(
        compiler.compileExpression(operands[1], Type.u8, ConversionKind.IMPLICIT, WrapMode.NONE)
      );
      if (getExpressionId(arg1) != ExpressionId.Const) {
        compiler.error(
          DiagnosticCode.Expression_must_be_a_compile_time_constant,
          operands[1].range
        );
        compiler.currentType = Type.v128;
        return module.createUnreachable();
      }
      assert(getExpressionType(arg1) == NativeType.I32);
      let maxIdx = (16 / type.byteSize) - 1;
      let idx = getConstValueI32(arg1);
      if (idx < 0 || idx > maxIdx) {
        compiler.error(
          DiagnosticCode._0_must_be_a_value_between_1_and_2_inclusive,
          operands[1].range, "Lane index", "0", maxIdx.toString()
        );
        return module.createUnreachable();
      }
      arg2 = compiler.compileExpression(operands[2], type, ConversionKind.IMPLICIT, WrapMode.NONE);
      compiler.currentType = Type.v128;
      return module.createSIMDReplace(op, arg0, idx, arg2);
    }
    case BuiltinSymbols.v128_shuffle: {
      if (!compiler.options.hasFeature(Feature.SIMD)) break;
      if (!(typeArguments && typeArguments.length == 1)) {
        compiler.error(
          DiagnosticCode.Expected_0_type_arguments_but_got_1,
          reportNode.range, "1", typeArguments ? typeArguments.length.toString() : "0"
        );
        return module.createUnreachable();
      }
      let type = typeArguments[0];
      if (!type.is(TypeFlags.VALUE)) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.range
        );
        compiler.currentType = type;
        return module.createUnreachable();
      }
      switch (type.kind) {
        case TypeKind.I8:
        case TypeKind.U8:
        case TypeKind.I16:
        case TypeKind.U16:
        case TypeKind.I32:
        case TypeKind.U32:
        case TypeKind.I64:
        case TypeKind.U64:
        case TypeKind.ISIZE:
        case TypeKind.USIZE:
        case TypeKind.F32:
        case TypeKind.F64: break;
        default: {
          compiler.error(
            DiagnosticCode.Operation_not_supported,
            reportNode.range
          );
          compiler.currentType = type;
          return module.createUnreachable();
        }
      }
      let laneWidth = type.byteSize;
      let laneCount = 16 / laneWidth;
      if (operands.length != 2 + laneCount) {
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, (2 + laneCount).toString(), operands.length.toString(10)
        );
        compiler.currentType = Type.v128;
        return module.createUnreachable();
      }
      arg0 = compiler.compileExpression(operands[0], Type.v128, ConversionKind.IMPLICIT, WrapMode.NONE);
      arg1 = compiler.compileExpression(operands[1], Type.v128, ConversionKind.IMPLICIT, WrapMode.NONE);
      let mask = new Uint8Array(16);
      let maxIdx = (laneCount << 1) - 1;
      for (let i = 0; i < laneCount; ++i) {
        let operand = operands[2 + i];
        arg2 = module.precomputeExpression(
          compiler.compileExpression(operand, Type.u8, ConversionKind.IMPLICIT, WrapMode.NONE)
        );
        if (getExpressionId(arg2) != ExpressionId.Const) {
          compiler.error(
            DiagnosticCode.Expression_must_be_a_compile_time_constant,
            operand.range
          );
          compiler.currentType = Type.v128;
          return module.createUnreachable();
        }
        assert(getExpressionType(arg2) == NativeType.I32);
        let idx = getConstValueI32(arg2);
        if (idx < 0 || idx > maxIdx) {
          compiler.error(
            DiagnosticCode._0_must_be_a_value_between_1_and_2_inclusive,
            operand.range, "Lane index", "0", maxIdx.toString()
          );
          compiler.currentType = Type.v128;
          return module.createUnreachable();
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
      return module.createSIMDShuffle(arg0, arg1, mask);
    }
    case BuiltinSymbols.v128_add: {
      if (!compiler.options.hasFeature(Feature.SIMD)) break;
      compiler.currentType = Type.v128;
      if (!(typeArguments && typeArguments.length == 1)) {
        compiler.error(
          DiagnosticCode.Expected_0_type_arguments_but_got_1,
          reportNode.range, "1", typeArguments ? typeArguments.length.toString() : "0"
        );
        return module.createUnreachable();
      }
      if (operands.length != 2) {
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "2", operands.length.toString(10)
        );
        return module.createUnreachable();
      }
      let type =  typeArguments[0];
      if (!type.is(TypeFlags.VALUE)) {
        compiler.error(
          DiagnosticCode.Operation_not_supported,
          reportNode.range
        );
        return module.createUnreachable();
      }
      let op: BinaryOp;
      switch (type.kind) {
        case TypeKind.I8:
        case TypeKind.U8:  { op = BinaryOp.AddVecI8x16; break; }
        case TypeKind.I16:
        case TypeKind.U16: { op = BinaryOp.AddVecI16x8; break; }
        case TypeKind.I32:
        case TypeKind.U32: { op = BinaryOp.AddVecI32x4; break; }
        case TypeKind.I64:
        case TypeKind.U64: { op = BinaryOp.AddVecI16x8; break; }
        case TypeKind.F32: { op = BinaryOp.AddVecF32x4; break; }
        case TypeKind.F64: { op = BinaryOp.AddVecF64x2; break; }
        default: {
          compiler.error(
            DiagnosticCode.Operation_not_supported,
            reportNode.range
          );
          return module.createUnreachable();
        }
      }
      arg0 = compiler.compileExpression(operands[0], Type.v128, ConversionKind.IMPLICIT, WrapMode.NONE);
      arg1 = compiler.compileExpression(operands[1], Type.v128, ConversionKind.IMPLICIT, WrapMode.NONE);
      compiler.currentType = Type.v128;
      return module.createBinary(op, arg0, arg1);
    }

    // === GC integration =========================================================================

    case BuiltinSymbols.iterateRoots: {
      if (typeArguments) {
        compiler.error(
          DiagnosticCode.Type_0_is_not_generic,
          reportNode.range, prototype.internalName
        );
      }
      if (operands.length != 1) {
        compiler.error(
          DiagnosticCode.Expected_0_arguments_but_got_1,
          reportNode.range, "1", operands.length.toString(10)
        );
        compiler.currentType = Type.void;
        return module.createUnreachable();
      }
      let expr = compiler.compileExpressionRetainType(operands[0], Type.u32, WrapMode.NONE);
      let type = compiler.currentType;
      let signatureReference = type.signatureReference;
      compiler.currentType = Type.void;
      if (
        !type.is(TypeFlags.REFERENCE) ||
        !signatureReference ||
        signatureReference.parameterTypes.length != 1 ||
        signatureReference.parameterTypes[0] != compiler.options.usizeType
       ) {
        compiler.error(
          DiagnosticCode.Type_0_is_not_assignable_to_type_1,
          reportNode.range, type.toString(), "(ref: usize) => void"
        );
        return module.createUnreachable();
      }
      compiler.currentType = Type.void;
      // just emit a call even if the function doesn't yet exist
      compiler.needsIterateRoots = true;
      return module.createCall("~iterateRoots", [ expr ], NativeType.None);
    }
  }

  // try to defer inline asm to a concrete built-in
  var expr = deferASMCall(compiler, prototype, operands, contextualType, reportNode);
  if (expr) {
    if (typeArguments) {
      compiler.error(
        DiagnosticCode.Type_0_is_not_generic,
        reportNode.range, prototype.internalName
      );
    }
    return expr;
  }
  compiler.error(
    DiagnosticCode.Cannot_find_name_0,
    reportNode.expression.range, prototype.internalName
  );
  return module.createUnreachable();
}

/** Defers an inline-assembler-like call to a built-in function. */
function deferASMCall(
  compiler: Compiler,
  prototype: FunctionPrototype,
  operands: Expression[],
  contextualType: Type,
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
    case BuiltinSymbols.i32_load8_u: return deferASM(BuiltinSymbols.load, compiler, Type.u8, operands, Type.u32, reportNode);
    case BuiltinSymbols.i32_load16_s: return deferASM(BuiltinSymbols.load, compiler, Type.i16, operands, Type.i32, reportNode);
    case BuiltinSymbols.i32_load16_u: return deferASM(BuiltinSymbols.load, compiler, Type.u16, operands, Type.u32, reportNode);
    case BuiltinSymbols.i32_load: return deferASM(BuiltinSymbols.load, compiler, Type.i32, operands, Type.i32, reportNode);
    case BuiltinSymbols.i64_load8_s: return deferASM(BuiltinSymbols.load, compiler, Type.i8, operands, Type.i64, reportNode);
    case BuiltinSymbols.i64_load8_u: return deferASM(BuiltinSymbols.load, compiler, Type.u8, operands, Type.u64, reportNode);
    case BuiltinSymbols.i64_load16_s: return deferASM(BuiltinSymbols.load, compiler, Type.i16, operands, Type.i64, reportNode);
    case BuiltinSymbols.i64_load16_u: return deferASM(BuiltinSymbols.load, compiler, Type.u16, operands, Type.u64, reportNode);
    case BuiltinSymbols.i64_load32_s: return deferASM(BuiltinSymbols.load, compiler, Type.i32, operands, Type.i64, reportNode);
    case BuiltinSymbols.i64_load32_u: return deferASM(BuiltinSymbols.load, compiler, Type.u32, operands, Type.u64, reportNode);
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
      case BuiltinSymbols.i32_atomic_load8_u: return deferASM(BuiltinSymbols.atomic_load, compiler, Type.u8, operands, Type.u32, reportNode);
      case BuiltinSymbols.i32_atomic_load16_u: return deferASM(BuiltinSymbols.atomic_load, compiler, Type.u16, operands, Type.u32, reportNode);
      case BuiltinSymbols.i32_atomic_load: return deferASM(BuiltinSymbols.atomic_load, compiler, Type.i32, operands, Type.i32, reportNode);
      case BuiltinSymbols.i64_atomic_load8_u: return deferASM(BuiltinSymbols.atomic_load, compiler, Type.u8, operands, Type.u64, reportNode);
      case BuiltinSymbols.i64_atomic_load16_u: return deferASM(BuiltinSymbols.atomic_load, compiler, Type.u16, operands, Type.u64, reportNode);
      case BuiltinSymbols.i64_atomic_load32_u: return deferASM(BuiltinSymbols.atomic_load, compiler, Type.u32, operands, Type.u64, reportNode);
      case BuiltinSymbols.i64_atomic_load: return deferASM(BuiltinSymbols.atomic_load, compiler, Type.i64, operands, Type.i64, reportNode);
      case BuiltinSymbols.i32_atomic_store8: return deferASM(BuiltinSymbols.atomic_store, compiler, Type.i8, operands, Type.i32, reportNode);
      case BuiltinSymbols.i32_atomic_store16: return deferASM(BuiltinSymbols.atomic_store, compiler, Type.i16, operands, Type.i32, reportNode);
      case BuiltinSymbols.i32_atomic_store: return deferASM(BuiltinSymbols.atomic_store, compiler, Type.i32, operands, Type.i32, reportNode);
      case BuiltinSymbols.i64_atomic_store8: return deferASM(BuiltinSymbols.atomic_store, compiler, Type.i8, operands, Type.i64, reportNode);
      case BuiltinSymbols.i64_atomic_store16: return deferASM(BuiltinSymbols.atomic_store, compiler, Type.i16, operands, Type.i64, reportNode);
      case BuiltinSymbols.i64_atomic_store32: return deferASM(BuiltinSymbols.atomic_store, compiler, Type.i32, operands, Type.i64, reportNode);
      case BuiltinSymbols.i64_atomic_store: return deferASM(BuiltinSymbols.atomic_store, compiler, Type.i64, operands, Type.i64, reportNode);
      case BuiltinSymbols.i32_atomic_rmw8_u_add: return deferASM(BuiltinSymbols.atomic_add, compiler, Type.u8, operands, Type.u32, reportNode);
      case BuiltinSymbols.i32_atomic_rmw16_u_add: return deferASM(BuiltinSymbols.atomic_add, compiler, Type.u16, operands, Type.u32, reportNode);
      case BuiltinSymbols.i32_atomic_rmw_add: return deferASM(BuiltinSymbols.atomic_add, compiler, Type.u32, operands, Type.u32, reportNode);
      case BuiltinSymbols.i64_atomic_rmw8_u_add: return deferASM(BuiltinSymbols.atomic_add, compiler, Type.u8, operands, Type.u64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw16_u_add: return deferASM(BuiltinSymbols.atomic_add, compiler, Type.u16, operands, Type.u64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw32_u_add: return deferASM(BuiltinSymbols.atomic_add, compiler, Type.u32, operands, Type.u64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw_add: return deferASM(BuiltinSymbols.atomic_add, compiler, Type.u64, operands, Type.u64, reportNode);
      case BuiltinSymbols.i32_atomic_rmw8_u_sub: return deferASM(BuiltinSymbols.atomic_sub, compiler, Type.u8, operands, Type.u32, reportNode);
      case BuiltinSymbols.i32_atomic_rmw16_u_sub: return deferASM(BuiltinSymbols.atomic_sub, compiler, Type.u16, operands, Type.u32, reportNode);
      case BuiltinSymbols.i32_atomic_rmw_sub: return deferASM(BuiltinSymbols.atomic_sub, compiler, Type.u32, operands, Type.u32, reportNode);
      case BuiltinSymbols.i64_atomic_rmw8_u_sub: return deferASM(BuiltinSymbols.atomic_sub, compiler, Type.u8, operands, Type.u64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw16_u_sub: return deferASM(BuiltinSymbols.atomic_sub, compiler, Type.u16, operands, Type.u64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw32_u_sub: return deferASM(BuiltinSymbols.atomic_sub, compiler, Type.u32, operands, Type.u64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw_sub: return deferASM(BuiltinSymbols.atomic_sub, compiler, Type.u64, operands, Type.u64, reportNode);
      case BuiltinSymbols.i32_atomic_rmw8_u_and: return deferASM(BuiltinSymbols.atomic_and, compiler, Type.u8, operands, Type.u32, reportNode);
      case BuiltinSymbols.i32_atomic_rmw16_u_and: return deferASM(BuiltinSymbols.atomic_and, compiler, Type.u16, operands, Type.u32, reportNode);
      case BuiltinSymbols.i32_atomic_rmw_and: return deferASM(BuiltinSymbols.atomic_and, compiler, Type.u32, operands, Type.u32, reportNode);
      case BuiltinSymbols.i64_atomic_rmw8_u_and: return deferASM(BuiltinSymbols.atomic_and, compiler, Type.u8, operands, Type.u64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw16_u_and: return deferASM(BuiltinSymbols.atomic_and, compiler, Type.u16, operands, Type.u64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw32_u_and: return deferASM(BuiltinSymbols.atomic_and, compiler, Type.u32, operands, Type.u64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw_and: return deferASM(BuiltinSymbols.atomic_and, compiler, Type.u64, operands, Type.u64, reportNode);
      case BuiltinSymbols.i32_atomic_rmw8_u_or: return deferASM(BuiltinSymbols.atomic_or, compiler, Type.u8, operands, Type.u32, reportNode);
      case BuiltinSymbols.i32_atomic_rmw16_u_or: return deferASM(BuiltinSymbols.atomic_or, compiler, Type.u16, operands, Type.u32, reportNode);
      case BuiltinSymbols.i32_atomic_rmw_or: return deferASM(BuiltinSymbols.atomic_or, compiler, Type.u32, operands, Type.u32, reportNode);
      case BuiltinSymbols.i64_atomic_rmw8_u_or: return deferASM(BuiltinSymbols.atomic_or, compiler, Type.u8, operands, Type.u64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw16_u_or: return deferASM(BuiltinSymbols.atomic_or, compiler, Type.u16, operands, Type.u64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw32_u_or: return deferASM(BuiltinSymbols.atomic_or, compiler, Type.u32, operands, Type.u64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw_or: return deferASM(BuiltinSymbols.atomic_or, compiler, Type.u64, operands, Type.u64, reportNode);
      case BuiltinSymbols.i32_atomic_rmw8_u_xor: return deferASM(BuiltinSymbols.atomic_xor, compiler, Type.u8, operands, Type.u32, reportNode);
      case BuiltinSymbols.i32_atomic_rmw16_u_xor: return deferASM(BuiltinSymbols.atomic_xor, compiler, Type.u8, operands, Type.u32, reportNode);
      case BuiltinSymbols.i32_atomic_rmw_xor: return deferASM(BuiltinSymbols.atomic_xor, compiler, Type.u8, operands, Type.u32, reportNode);
      case BuiltinSymbols.i64_atomic_rmw8_u_xor: return deferASM(BuiltinSymbols.atomic_xor, compiler, Type.u8, operands, Type.u64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw16_u_xor: return deferASM(BuiltinSymbols.atomic_xor, compiler, Type.u16, operands, Type.u64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw32_u_xor: return deferASM(BuiltinSymbols.atomic_xor, compiler, Type.u32, operands, Type.u64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw_xor: return deferASM(BuiltinSymbols.atomic_xor, compiler, Type.u64, operands, Type.u64, reportNode);
      case BuiltinSymbols.i32_atomic_rmw8_u_xchg: return deferASM(BuiltinSymbols.atomic_xchg, compiler, Type.u8, operands, Type.u32, reportNode);
      case BuiltinSymbols.i32_atomic_rmw16_u_xchg: return deferASM(BuiltinSymbols.atomic_xchg, compiler, Type.u8, operands, Type.u32, reportNode);
      case BuiltinSymbols.i32_atomic_rmw_xchg: return deferASM(BuiltinSymbols.atomic_xchg, compiler, Type.u8, operands, Type.u32, reportNode);
      case BuiltinSymbols.i64_atomic_rmw8_u_xchg: return deferASM(BuiltinSymbols.atomic_xchg, compiler, Type.u8, operands, Type.u64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw16_u_xchg: return deferASM(BuiltinSymbols.atomic_xchg, compiler, Type.u16, operands, Type.u64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw32_u_xchg: return deferASM(BuiltinSymbols.atomic_xchg, compiler, Type.u32, operands, Type.u64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw_xchg: return deferASM(BuiltinSymbols.atomic_xchg, compiler, Type.u64, operands, Type.u64, reportNode);
      case BuiltinSymbols.i32_atomic_rmw8_u_cmpxchg: return deferASM(BuiltinSymbols.atomic_cmpxchg, compiler, Type.u8, operands, Type.u32, reportNode);
      case BuiltinSymbols.i32_atomic_rmw16_u_cmpxchg: return deferASM(BuiltinSymbols.atomic_cmpxchg, compiler, Type.u8, operands, Type.u32, reportNode);
      case BuiltinSymbols.i32_atomic_rmw_cmpxchg: return deferASM(BuiltinSymbols.atomic_cmpxchg, compiler, Type.u8, operands, Type.u32, reportNode);
      case BuiltinSymbols.i64_atomic_rmw8_u_cmpxchg: return deferASM(BuiltinSymbols.atomic_cmpxchg, compiler, Type.u8, operands, Type.u64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw16_u_cmpxchg: return deferASM(BuiltinSymbols.atomic_cmpxchg, compiler, Type.u16, operands, Type.u64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw32_u_cmpxchg: return deferASM(BuiltinSymbols.atomic_cmpxchg, compiler, Type.u32, operands, Type.u64, reportNode);
      case BuiltinSymbols.i64_atomic_rmw_cmpxchg: return deferASM(BuiltinSymbols.atomic_cmpxchg, compiler, Type.u64, operands, Type.u64, reportNode);
      case BuiltinSymbols.i32_wait: return deferASM(BuiltinSymbols.atomic_wait, compiler, Type.i32, operands, Type.u32, reportNode);
      case BuiltinSymbols.i64_wait: return deferASM(BuiltinSymbols.atomic_wait, compiler, Type.i64, operands, Type.i64, reportNode);
      case BuiltinSymbols.i32_notify: return deferASM(BuiltinSymbols.atomic_notify, compiler, Type.i32, operands, Type.u32, reportNode);
      case BuiltinSymbols.i64_notify: return deferASM(BuiltinSymbols.atomic_notify, compiler, Type.i64, operands, Type.i64, reportNode);
    }
  }
  if (compiler.options.hasFeature(Feature.SIMD)) {
    switch (prototype.internalName) {
      case BuiltinSymbols.i8x16_splat: return deferASM(BuiltinSymbols.v128_splat, compiler, Type.i8, operands, Type.v128, reportNode);
      case BuiltinSymbols.i8x16_extract_lane_s: return deferASM(BuiltinSymbols.v128_extract_lane, compiler, Type.i8, operands, Type.i8, reportNode);
      case BuiltinSymbols.i8x16_extract_lane_u: return deferASM(BuiltinSymbols.v128_extract_lane, compiler, Type.u8, operands, Type.u8, reportNode);
      case BuiltinSymbols.i8x16_replace_lane: return deferASM(BuiltinSymbols.v128_replace_lane, compiler, Type.i8, operands, Type.v128, reportNode);
      case BuiltinSymbols.i8x16_shuffle: return deferASM(BuiltinSymbols.v128_shuffle, compiler, Type.i8, operands, Type.v128, reportNode);
      case BuiltinSymbols.i8x16_add: return deferASM(BuiltinSymbols.v128_add, compiler, Type.i8, operands, Type.v128, reportNode);
      case BuiltinSymbols.i16x8_splat: return deferASM(BuiltinSymbols.v128_splat, compiler, Type.i16, operands, Type.v128, reportNode);
      case BuiltinSymbols.i16x8_extract_lane_s: return deferASM(BuiltinSymbols.v128_extract_lane, compiler, Type.i16, operands, Type.i16, reportNode);
      case BuiltinSymbols.i16x8_extract_lane_u: return deferASM(BuiltinSymbols.v128_extract_lane, compiler, Type.u16, operands, Type.u16, reportNode);
      case BuiltinSymbols.i16x8_replace_lane: return deferASM(BuiltinSymbols.v128_replace_lane, compiler, Type.i16, operands, Type.v128, reportNode);
      case BuiltinSymbols.i16x8_shuffle: return deferASM(BuiltinSymbols.v128_shuffle, compiler, Type.i16, operands, Type.v128, reportNode);
      case BuiltinSymbols.i16x8_add: return deferASM(BuiltinSymbols.v128_add, compiler, Type.i16, operands, Type.v128, reportNode);
      case BuiltinSymbols.i32x4_splat: return deferASM(BuiltinSymbols.v128_splat, compiler, Type.i32, operands, Type.v128, reportNode);
      case BuiltinSymbols.i32x4_extract_lane: return deferASM(BuiltinSymbols.v128_extract_lane, compiler, Type.i32, operands, Type.i32, reportNode);
      case BuiltinSymbols.i32x4_replace_lane: return deferASM(BuiltinSymbols.v128_replace_lane, compiler, Type.i32, operands, Type.v128, reportNode);
      case BuiltinSymbols.i32x4_shuffle: return deferASM(BuiltinSymbols.v128_shuffle, compiler, Type.i32, operands, Type.v128, reportNode);
      case BuiltinSymbols.i32x4_add: return deferASM(BuiltinSymbols.v128_add, compiler, Type.i32, operands, Type.v128, reportNode);
      case BuiltinSymbols.i64x2_splat: return deferASM(BuiltinSymbols.v128_splat, compiler, Type.i64, operands, Type.v128, reportNode);
      case BuiltinSymbols.i64x2_extract_lane: return deferASM(BuiltinSymbols.v128_extract_lane, compiler, Type.i64, operands, Type.i64, reportNode);
      case BuiltinSymbols.i64x2_replace_lane: return deferASM(BuiltinSymbols.v128_replace_lane, compiler, Type.i64, operands, Type.v128, reportNode);
      case BuiltinSymbols.i64x2_shuffle: return deferASM(BuiltinSymbols.v128_shuffle, compiler, Type.i64, operands, Type.v128, reportNode);
      case BuiltinSymbols.i64x2_add: return deferASM(BuiltinSymbols.v128_add, compiler, Type.i64, operands, Type.v128, reportNode);
      case BuiltinSymbols.f32x4_splat: return deferASM(BuiltinSymbols.v128_splat, compiler, Type.f32, operands, Type.v128, reportNode);
      case BuiltinSymbols.f32x4_extract_lane: return deferASM(BuiltinSymbols.v128_extract_lane, compiler, Type.f32, operands, Type.f32, reportNode);
      case BuiltinSymbols.f32x4_replace_lane: return deferASM(BuiltinSymbols.v128_replace_lane, compiler, Type.f32, operands, Type.v128, reportNode);
      case BuiltinSymbols.f32x4_shuffle: return deferASM(BuiltinSymbols.v128_shuffle, compiler, Type.f32, operands, Type.v128, reportNode);
      case BuiltinSymbols.f32x4_add: return deferASM(BuiltinSymbols.v128_add, compiler, Type.f32, operands, Type.v128, reportNode);
      case BuiltinSymbols.f64x2_splat: return deferASM(BuiltinSymbols.v128_splat, compiler, Type.f64, operands, Type.v128, reportNode);
      case BuiltinSymbols.f64x2_extract_lane: return deferASM(BuiltinSymbols.v128_extract_lane, compiler, Type.f64, operands, Type.f64, reportNode);
      case BuiltinSymbols.f64x2_replace_lane: return deferASM(BuiltinSymbols.v128_replace_lane, compiler, Type.f64, operands, Type.v128, reportNode);
      case BuiltinSymbols.f64x2_shuffle: return deferASM(BuiltinSymbols.v128_shuffle, compiler, Type.f64, operands, Type.v128, reportNode);
      case BuiltinSymbols.f64x2_add: return deferASM(BuiltinSymbols.v128_add, compiler, Type.f64, operands, Type.v128, reportNode);
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
  valueType: Type,
  reportNode: CallExpression
): ExpressionRef {
  assert(compiler.program.elementsByName.has(name));
  var prototype = compiler.program.elementsByName.get(name)!;
  assert(prototype.kind == ElementKind.FUNCTION_PROTOTYPE);
  return compileCall(compiler, <FunctionPrototype>prototype, [ typeArgument ], operands, valueType, reportNode);
}

/** Evaluates the constant type of a type argument *or* expression. */
function evaluateConstantType(
  compiler: Compiler,
  typeArguments: Type[] | null,
  operands: Expression[],
  reportNode: Node
): Type | null {
  if (operands.length == 0) { // requires type argument
    if (!typeArguments || typeArguments.length != 1) {
      compiler.error(
        DiagnosticCode.Expected_0_type_arguments_but_got_1,
        reportNode.range, "1", typeArguments ? typeArguments.length.toString(10) : "0"
      );
      return null;
    }
    return typeArguments[0];
  }
  if (operands.length == 1) { // optional type argument
    if (typeArguments) {
      if (typeArguments.length == 1) {
        compiler.compileExpression(operands[0], typeArguments[0], ConversionKind.IMPLICIT, WrapMode.NONE);
      } else {
        if (typeArguments.length) {
          compiler.error(
            DiagnosticCode.Expected_0_type_arguments_but_got_1,
            reportNode.range, "1", typeArguments.length.toString(10)
          );
          return null;
        }
        compiler.compileExpressionRetainType(operands[0], Type.i32, WrapMode.NONE);
      }
    } else {
      compiler.compileExpressionRetainType(operands[0], Type.i32, WrapMode.NONE);
    }
    return compiler.currentType;
  }
  if (typeArguments && typeArguments.length > 1) {
    compiler.error(
      DiagnosticCode.Expected_0_type_arguments_but_got_1,
      reportNode.range, "1", typeArguments.length.toString(10)
    );
  }
  compiler.error(
    DiagnosticCode.Expected_0_arguments_but_got_1,
    reportNode.range, "1", operands.length.toString(10)
  );
  return null;
}

/** Evaluates a `constantOffset` argument.*/
function evaluateConstantOffset(compiler: Compiler, expression: Expression): i32 {
  var expr: ExpressionRef;
  var value: i32;
  if (compiler.options.isWasm64) {
    expr = compiler.precomputeExpression(expression, Type.usize64, ConversionKind.IMPLICIT, WrapMode.NONE);
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
    expr = compiler.precomputeExpression(expression, Type.usize32, ConversionKind.IMPLICIT, WrapMode.NONE);
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

/** Compiles an abort wired to the conditionally imported 'abort' function. */
export function compileAbort(
  compiler: Compiler,
  message: Expression | null,
  reportNode: Node
): ExpressionRef {
  var program = compiler.program;
  var module = compiler.module;

  var stringInstance = compiler.program.stringInstance;
  if (!stringInstance) return module.createUnreachable();

  var abortInstance = program.abortInstance;
  if (!(abortInstance && compiler.compileFunction(abortInstance))) return module.createUnreachable();

  var messageArg = message != null
    ? compiler.compileExpression(message, stringInstance.type, ConversionKind.IMPLICIT, WrapMode.NONE)
    : stringInstance.type.toNativeZero(module);

  var filenameArg = compiler.ensureStaticString(reportNode.range.source.normalizedPath);

  compiler.currentType = Type.void;
  return module.createBlock(null, [
    module.createCall(
      abortInstance.internalName, [
        messageArg,
        filenameArg,
        module.createI32(reportNode.range.line),
        module.createI32(reportNode.range.column)
      ],
      NativeType.None
    ),
    module.createUnreachable()
  ]);
}

/** Compiles the iterateRoots function if requires. */
export function compileIterateRoots(compiler: Compiler): void {
  var module = compiler.module;
  var exprs = new Array<ExpressionRef>();

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
        exprs.push(
          module.createCallIndirect(
            module.createGetLocal(0, NativeType.I32),
            [
              compiler.options.isWasm64
                ? module.createI64(i64_low(value), i64_high(value))
                : module.createI32(i64_low(value))
            ],
            "i_"
          )
        );
      } else {
        exprs.push(
          module.createCallIndirect(
            module.createGetLocal(0, NativeType.I32),
            [
              module.createGetGlobal(
                global.internalName,
                compiler.options.nativeSizeType
              )
            ],
            "i_"
          )
        );
      }
    }
  }
  var typeRef = compiler.ensureFunctionType([ Type.i32 ], Type.void);
  module.addFunction("~iterateRoots", typeRef, [],
    exprs.length
      ? module.createBlock(null, exprs)
      : module.createNop()
  );
}

/** Ensures that the specified class's GC hook exists and returns its function table index. */
export function ensureGCHook(
  compiler: Compiler,
  classInstance: Class
): u32 {
  var program = compiler.program;
  assert(classInstance.type.isManaged(program));

  // check if the GC hook has already been created
  {
    let existingIndex = classInstance.gcHookIndex;
    if (existingIndex != <u32>-1) return existingIndex;
  }

  // check if the class implements a custom GC function (only valid for library elements)
  var members = classInstance.members;
  if (classInstance.isDeclaredInLibrary) {
    if (members !== null && members.has("__gc")) {
      let gcPrototype = assert(members.get("__gc"));
      assert(gcPrototype.kind == ElementKind.FUNCTION_PROTOTYPE);
      let gcInstance = assert(program.resolver.resolveFunction(<FunctionPrototype>gcPrototype, null));
      assert(gcInstance.is(CommonFlags.PRIVATE | CommonFlags.INSTANCE));
      assert(!gcInstance.isAny(CommonFlags.AMBIENT | CommonFlags.VIRTUAL));
      assert(gcInstance.signature.parameterTypes.length == 0);
      assert(gcInstance.signature.returnType == Type.void);
      gcInstance.internalName = classInstance.internalName + "~gc";
      assert(compiler.compileFunction(gcInstance));
      let index = compiler.ensureFunctionTableEntry(gcInstance);
      classInstance.gcHookIndex = index;
      return index;
    }
  }

  var module = compiler.module;
  var options = compiler.options;
  var nativeSizeType = options.nativeSizeType;
  var nativeSizeSize = options.usizeType.byteSize;
  var body = new Array<ExpressionRef>();

  // nothing to mark if 'this' is null
  body.push(
    module.createIf(
      module.createUnary(
        options.isWasm64
          ? UnaryOp.EqzI64
          : UnaryOp.EqzI32,
        module.createGetLocal(0, nativeSizeType)
      ),
      module.createReturn()
    )
  );

  // remember the function index so we don't recurse infinitely
  var functionTable = compiler.functionTable;
  var gcHookIndex = functionTable.length;
  functionTable.push("<placeholder>");
  classInstance.gcHookIndex = gcHookIndex;

  // if the class extends a base class, call its hook first (calls mark)
  var baseInstance = classInstance.base;
  if (baseInstance) {
    assert(baseInstance.type.isManaged(program));
    body.push(
      module.createCallIndirect(
        module.createI32(
          ensureGCHook(compiler, <Class>baseInstance.type.classReference)
        ),
        [
          module.createGetLocal(0, nativeSizeType)
        ],
        nativeSizeType == NativeType.I64 ? "I_" : "i_"
      )
    );

  // if this class is the top-most base class, mark the instance
  } else {
    body.push(
      module.createCall(assert(program.gcMarkInstance).internalName, [
        module.createGetLocal(0, nativeSizeType)
      ], NativeType.None)
    );
  }

  // mark instances assigned to own fields that are again references
  if (members) {
    for (let member of members.values()) {
      if (member.kind == ElementKind.FIELD) {
        if ((<Field>member).parent === classInstance) {
          let type = (<Field>member).type;
          if (type.isManaged(program)) {
            let offset = (<Field>member).memoryOffset;
            assert(offset >= 0);
            body.push(
              module.createCall(assert(program.gcMarkInstance).internalName, [
                module.createLoad(
                  nativeSizeSize,
                  false,
                  module.createGetLocal(0, nativeSizeType),
                  nativeSizeType,
                  offset
                )
              ], NativeType.None)
            );
          }
        }
      }
    }
  }

  // add the function to the module and return its table index
  var funcName = classInstance.internalName + "~gc";
  module.addFunction(
    funcName,
    compiler.ensureFunctionType(null, Type.void, options.usizeType),
    null,
    module.createBlock(null, body)
  );
  functionTable[gcHookIndex] = funcName;
  return gcHookIndex;
}
