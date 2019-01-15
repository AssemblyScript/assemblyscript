/**
 * Built-in elements providing WebAssembly core functionality.
 * @module builtins
 *//***/

 import {
  Compiler,
  ConversionKind,
  WrapMode
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
  StringLiteralExpression
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
  NativeType,
  ExpressionRef,
  ExpressionId,
  getExpressionId,
  getExpressionType,
  getConstValueI64High,
  getConstValueI64Low,
  getConstValueI32
} from "./module";

import {
  ElementKind,
  FunctionPrototype,
  Class,
  Field,
  OperatorKind,
  FlowFlags,
  Global,
  DecoratorFlags
} from "./program";

import {
  ReportMode
} from "./resolver";

import {
  CommonFlags
} from "./common";

/** Compiles a call to a built-in function. */
export function compileCall(
  compiler: Compiler,
  prototype: FunctionPrototype,
  typeArguments: Type[] | null,
  operands: Expression[],
  contextualType: Type,
  reportNode: Node
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

    case "isInteger": { // isInteger<T!>() / isInteger<T?>(value: T) -> bool
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.bool;
      if (!type) return module.createUnreachable();
      return type.is(TypeFlags.INTEGER) && !type.is(TypeFlags.REFERENCE)
        ? module.createI32(1)
        : module.createI32(0);
    }
    case "isFloat": { // isFloat<T!>() / isFloat<T?>(value: T) -> bool
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.bool;
      if (!type) return module.createUnreachable();
      return type.is(TypeFlags.FLOAT)
        ? module.createI32(1)
        : module.createI32(0);
    }
    case "isSigned": { // isSigned<T!>() / isSigned<T?>(value: T) -> bool
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.bool;
      if (!type) return module.createUnreachable();
      return type.is(TypeFlags.SIGNED)
        ? module.createI32(1)
        : module.createI32(0);
    }
    case "isReference": { // isReference<T!>() / isReference<T?>(value: T) -> bool
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.bool;
      if (!type) return module.createUnreachable();
      compiler.currentType = Type.bool;
      return type.is(TypeFlags.REFERENCE)
        ? module.createI32(1)
        : module.createI32(0);
    }
    case "isString": { // isString<T!>() / isString<T?>(value: T) -> bool
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
    case "isArray": { // isArray<T!>() / isArray<T?>(value: T) -> bool
      let type = evaluateConstantType(compiler, typeArguments, operands, reportNode);
      compiler.currentType = Type.bool;
      if (!type) return module.createUnreachable();
      let classType = type.classReference;
      return classType !== null && classType.lookupOverload(OperatorKind.INDEXED_GET) !== null
        ? module.createI32(1)
        : module.createI32(0);
    }
    case "isDefined": { // isDefined(expression) -> bool
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
        compiler.currentFunction,
        Type.void,
        ReportMode.SWALLOW
      );
      return module.createI32(element ? 1 : 0);
    }
    case "isConstant": { // isConstant(expression) -> bool
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
    case "isManaged": { // isManaged<T>() -> bool
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

    case "clz": { // clz<T?>(value: T) -> T
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
        case TypeKind.I8:
        case TypeKind.I16:
        case TypeKind.U8:
        case TypeKind.U16: {
          ret = module.createUnary(UnaryOp.ClzI32, arg0);
          break;
        }
        case TypeKind.BOOL: // usually overflows
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
    case "ctz": { // ctz<T?>(value: T) -> T
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
        case TypeKind.I8:
        case TypeKind.I16:
        case TypeKind.U8:
        case TypeKind.U16: {
          ret = module.createUnary(UnaryOp.CtzI32, arg0);
          break;
        }
        case TypeKind.BOOL: // usually overflows
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
    case "popcnt": { // popcnt<T?>(value: T) -> T
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
        case TypeKind.I8:
        case TypeKind.I16:
        case TypeKind.U8:
        case TypeKind.U16: {
          ret = module.createUnary(UnaryOp.PopcntI32, arg0);
          break;
        }
        case TypeKind.BOOL: // usually overflows
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
    case "rotl": { // rotl<T?>(value: T, shift: T) -> T
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
    case "rotr": { // rotr<T?>(value: T, shift: T) -> T
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
    case "abs": { // abs<T?>(value: T) -> T
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
          let currentFunction = compiler.currentFunction;

          // possibly overflows, e.g. abs<i8>(-128) == 128
          let tempLocal1 = currentFunction.getTempLocal(Type.i32, false);
          let tempLocalIndex2 = currentFunction.getAndFreeTempLocal(Type.i32, false).index;
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

          currentFunction.freeTempLocal(tempLocal1);
          break;
        }
        case TypeKind.ISIZE: {
          let options = compiler.options;
          let currentFunction = compiler.currentFunction;
          let wasm64 = options.isWasm64;

          let tempLocal1 = currentFunction.getTempLocal(options.usizeType, false);
          let tempLocalIndex2 = currentFunction.getAndFreeTempLocal(options.usizeType, false).index;
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

          currentFunction.freeTempLocal(tempLocal1);
          break;
        }
        case TypeKind.I64: {
          let currentFunction = compiler.currentFunction;

          let tempLocal1 = currentFunction.getTempLocal(Type.i64, false);
          let tempLocalIndex2 = currentFunction.getAndFreeTempLocal(Type.i64, false).index;
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

          currentFunction.freeTempLocal(tempLocal1);
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
    case "max": { // max<T?>(left: T, right: T) -> T
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
          let flow = compiler.currentFunction.flow;
          let tempLocal0 = compiler.currentFunction.getTempLocal(
            compiler.currentType,
            !flow.canOverflow(arg0, compiler.currentType)
          );
          let tempLocal1 = compiler.currentFunction.getAndFreeTempLocal(
            compiler.currentType,
            !flow.canOverflow(arg1, compiler.currentType)
          );
          compiler.currentFunction.freeTempLocal(tempLocal0);
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
          let flow = compiler.currentFunction.flow;
          let tempLocal0 = compiler.currentFunction.getTempLocal(
            compiler.currentType,
            !flow.canOverflow(arg0, compiler.currentType)
          );
          let tempLocal1 = compiler.currentFunction.getAndFreeTempLocal(
            compiler.currentType,
            !flow.canOverflow(arg1, compiler.currentType)
          );
          compiler.currentFunction.freeTempLocal(tempLocal0);
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
          let tempLocal0 = compiler.currentFunction.getTempLocal(Type.i64, false);
          let tempLocal1 = compiler.currentFunction.getAndFreeTempLocal(Type.i64, false);
          compiler.currentFunction.freeTempLocal(tempLocal0);
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
          let tempLocal0 = compiler.currentFunction.getTempLocal(Type.i64, false);
          let tempLocal1 = compiler.currentFunction.getAndFreeTempLocal(Type.i64, false);
          compiler.currentFunction.freeTempLocal(tempLocal0);
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
          let tempLocal0 = compiler.currentFunction.getTempLocal(compiler.options.usizeType, false);
          let tempLocal1 = compiler.currentFunction.getAndFreeTempLocal(compiler.options.usizeType, false);
          compiler.currentFunction.freeTempLocal(tempLocal0);
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
          let tempLocal0 = compiler.currentFunction.getTempLocal(compiler.options.usizeType, false);
          let tempLocal1 = compiler.currentFunction.getAndFreeTempLocal(compiler.options.usizeType, false);
          compiler.currentFunction.freeTempLocal(tempLocal0);
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
    case "min": { // min<T?>(left: T, right: T) -> T
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
          let flow = compiler.currentFunction.flow;
          let tempLocal0 = compiler.currentFunction.getTempLocal(
            compiler.currentType,
            !flow.canOverflow(arg0, compiler.currentType)
          );
          let tempLocal1 = compiler.currentFunction.getAndFreeTempLocal(
            compiler.currentType,
            !flow.canOverflow(arg1, compiler.currentType)
          );
          compiler.currentFunction.freeTempLocal(tempLocal0);
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
          let flow = compiler.currentFunction.flow;
          let tempLocal0 = compiler.currentFunction.getTempLocal(
            compiler.currentType,
            !flow.canOverflow(arg0, compiler.currentType)
          );
          let tempLocal1 = compiler.currentFunction.getAndFreeTempLocal(
            compiler.currentType,
            !flow.canOverflow(arg1, compiler.currentType)
          );
          compiler.currentFunction.freeTempLocal(tempLocal0);
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
          let tempLocal0 = compiler.currentFunction.getTempLocal(Type.i64, false);
          let tempLocal1 = compiler.currentFunction.getAndFreeTempLocal(Type.i64, false);
          compiler.currentFunction.freeTempLocal(tempLocal0);
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
          let tempLocal0 = compiler.currentFunction.getTempLocal(Type.i64, false);
          let tempLocal1 = compiler.currentFunction.getAndFreeTempLocal(Type.i64, false);
          compiler.currentFunction.freeTempLocal(tempLocal0);
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
          let tempLocal0 = compiler.currentFunction.getTempLocal(compiler.options.usizeType, false);
          let tempLocal1 = compiler.currentFunction.getAndFreeTempLocal(compiler.options.usizeType, false);
          compiler.currentFunction.freeTempLocal(tempLocal0);
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
          let tempLocal0 = compiler.currentFunction.getTempLocal(compiler.options.usizeType, false);
          let tempLocal1 = compiler.currentFunction.getAndFreeTempLocal(compiler.options.usizeType, false);
          compiler.currentFunction.freeTempLocal(tempLocal0);
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
    case "ceil": { // ceil<T?>(value: T) -> T
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
    case "floor": { // floor<T?>(value: T) -> T
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
    case "copysign": { // copysign<T?>(left: T, right: T) -> T
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
    case "nearest": { // nearest<T?>(value: T) -> T
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
    case "reinterpret": { // reinterpret<T!>(value: *) -> T
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
    case "sqrt": { // sqrt<T?>(value: T) -> T
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
    case "trunc": { // trunc<T?>(value: T) -> T
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

    case "load": { // load<T!>(offset: usize, constantOffset?: usize) -> *
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
    case "store": { // store<T!>(offset: usize, value: *, constantOffset?: usize) -> void
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
    case "sizeof": { // sizeof<T!>() -> usize
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
    case "alignof": { // alignof<T!>() -> usize
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
        default: { assert(false); return module.createUnreachable(); }
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
    case "offsetof": { // offsetof<T!>(fieldName?: string) -> usize
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

    case "select": { // select<T?>(ifTrue: T, ifFalse: T, condition: bool) -> T
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
        case TypeKind.BOOL: {
          ret = module.createSelect(arg0, arg1, arg2);
          break;
        }
        default: { // any other value type
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
    case "unreachable": { // unreachable() -> *
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

    case "memory.size": { // memory.size() -> i32
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
    case "memory.grow": { // memory.grow(pages: i32) -> i32
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
    case "memory.copy": { // memory.copy(dest: usize, src: usize: n: usize) -> void
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
      arg0 = compiler.compileExpression(
        operands[0],
        compiler.options.usizeType,
        ConversionKind.IMPLICIT,
        WrapMode.NONE
      );
      arg1 = compiler.compileExpression(
        operands[1],
        compiler.options.usizeType,
        ConversionKind.IMPLICIT,
        WrapMode.NONE
      );
      arg2 = compiler.compileExpression(
        operands[2],
        compiler.options.usizeType,
        ConversionKind.IMPLICIT,
        WrapMode.NONE
      );
      compiler.currentType = Type.void;
      throw new Error("not implemented");
      // return module.createHost(HostOp.MoveMemory, null, [ arg0, arg1, arg2 ]);
    }
    case "memory.fill": { // memory.fill(dest: usize, value: u8, n: usize) -> void
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
      arg0 = compiler.compileExpression(
        operands[0],
        compiler.options.usizeType,
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
        compiler.options.usizeType,
        ConversionKind.IMPLICIT,
        WrapMode.NONE
      );
      compiler.currentType = Type.void;
      throw new Error("not implemented");
      // return module.createHost(HostOp.SetMemory, null, [ arg0, arg1, arg2 ]);
    }

    // other

    case "changetype": { // changetype<T!>(value: *) -> T
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
    case "assert": { // assert<T?>(isTrueish: T, message?: string) -> T with T != null
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
            let flow = compiler.currentFunction.flow;
            let tempLocal = compiler.currentFunction.getAndFreeTempLocal(
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
            let tempLocal = compiler.currentFunction.getAndFreeTempLocal(Type.i32, false);
            ret = module.createIf(
              module.createTeeLocal(tempLocal.index, arg0),
              module.createGetLocal(tempLocal.index, NativeType.I32),
              abort
            );
            break;
          }
          case TypeKind.I64:
          case TypeKind.U64: {
            let tempLocal = compiler.currentFunction.getAndFreeTempLocal(Type.i64, false);
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
            let tempLocal = compiler.currentFunction.getAndFreeTempLocal(compiler.options.usizeType, false);
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
            let tempLocal = compiler.currentFunction.getAndFreeTempLocal(Type.f32, false);
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
            let tempLocal = compiler.currentFunction.getAndFreeTempLocal(Type.f64, false);
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
    case "unchecked": {
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
      let flow = compiler.currentFunction.flow;
      flow.set(FlowFlags.UNCHECKED_CONTEXT);
      ret = compiler.compileExpressionRetainType(operands[0], contextualType, WrapMode.NONE);
      flow.unset(FlowFlags.UNCHECKED_CONTEXT);
      return ret;
    }
    case "call_indirect": { // call_indirect<T?>(target: Function | u32, ...args: *[]) -> T
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
    case "instantiate": {
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

    case "ERROR": {
      compiler.error(
        DiagnosticCode.User_defined_0,
        reportNode.range, (operands.length ? operands[0] : reportNode).range.toString()
      );
      return module.createUnreachable();
    }
    case "WARNING": {
      compiler.warning(
        DiagnosticCode.User_defined_0,
        reportNode.range, (operands.length ? operands[0] : reportNode).range.toString()
      );
      return module.createNop();
    }
    case "INFO": {
      compiler.info(
        DiagnosticCode.User_defined_0,
        reportNode.range, (operands.length ? operands[0] : reportNode).range.toString()
      );
      return module.createNop();
    }

    // conversions

    case "i8": {
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
    case "i16": {
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
    case "i32": {
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
    case "i64": {
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
    case "isize": {
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
    case "u8": {
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
    case "u16": {
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
    case "u32": {
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
    case "u64": {
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
    case "usize": {
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
    case "bool": {
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
    case "f32": {
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
    case "f64": {
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

    // gc

    case "iterateRoots": {
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
  var expr = deferASMCall(compiler, prototype, operands, contextualType, reportNode);
  if (expr) {
    if (typeArguments && typeArguments.length) {
      compiler.error(
        DiagnosticCode.Type_0_is_not_generic,
        reportNode.range, prototype.internalName
      );
    }
    return expr;
  }
  compiler.error(
    DiagnosticCode.Operation_not_supported,
    reportNode.range
  );
  return module.createUnreachable();
}

/** Defers an inline-assembler-like call to a built-in function. */
function deferASMCall(
  compiler: Compiler,
  prototype: FunctionPrototype,
  operands: Expression[],
  contextualType: Type,
  reportNode: Node
): ExpressionRef {
  switch (prototype.internalName) {

    // TODO: Operators can't be just deferred (don't have a corresponding generic built-in)
    //   add, sub, mul, div_s, div_u, rem_s, rem_u
    //   and, or, xor, shl, shr_u, shr_s
    //   eq, eqz, ne, lt_s, lt_u, le_s, le_u, gt_s, gt_u, ge_s, ge_u

    case "i32.clz": return deferASM("clz", compiler, Type.i32, operands, Type.i32, reportNode);
    case "i64.clz": return deferASM("clz", compiler, Type.i64, operands, Type.i64, reportNode);

    case "i32.ctz": return deferASM("ctz", compiler, Type.i32, operands, Type.i32, reportNode);
    case "i64.ctz": return deferASM("ctz", compiler, Type.i64, operands, Type.i64, reportNode);

    case "i32.popcnt": return deferASM("popcnt", compiler, Type.i32, operands, Type.i32, reportNode);
    case "i64.popcnt": return deferASM("popcnt", compiler, Type.i64, operands, Type.i64, reportNode);

    case "i32.rotl": return deferASM("rotl", compiler, Type.i32, operands, Type.i32, reportNode);
    case "i64.rotl": return deferASM("rotl", compiler, Type.i64, operands, Type.i64, reportNode);

    case "i32.rotr": return deferASM("rotr", compiler, Type.i32, operands, Type.i32, reportNode);
    case "i64.rotr": return deferASM("rotr", compiler, Type.i64, operands, Type.i64, reportNode);

    case "f32.abs": return deferASM("abs", compiler, Type.f32, operands, Type.f32, reportNode);
    case "f64.abs": return deferASM("abs", compiler, Type.f64, operands, Type.f64, reportNode);

    case "f32.max": return deferASM("max", compiler, Type.f32, operands, Type.f32, reportNode);
    case "f64.max": return deferASM("max", compiler, Type.f64, operands, Type.f64, reportNode);

    case "f32.min": return deferASM("min", compiler, Type.f32, operands, Type.f32, reportNode);
    case "f64.min": return deferASM("min", compiler, Type.f64, operands, Type.f64, reportNode);

    case "f32.ceil": return deferASM("ceil", compiler, Type.f32, operands, Type.f32, reportNode);
    case "f64.ceil": return deferASM("ceil", compiler, Type.f64, operands, Type.f64, reportNode);

    case "f32.floor": return deferASM("floor", compiler, Type.f32, operands, Type.f32, reportNode);
    case "f64.floor": return deferASM("floor", compiler, Type.f64, operands, Type.f64, reportNode);

    case "f32.copysign": return deferASM("copysign", compiler, Type.f32, operands, Type.f32, reportNode);
    case "f64.copysign": return deferASM("copysign", compiler, Type.f64, operands, Type.f64, reportNode);

    case "f32.nearest": return deferASM("nearest", compiler, Type.f32, operands, Type.f32, reportNode);
    case "f64.nearest": return deferASM("nearest", compiler, Type.f64, operands, Type.f64, reportNode);

    case "i32.reinterpret_f32": return deferASM("reinterpret", compiler, Type.i32, operands, Type.f32, reportNode);
    case "i64.reinterpret_f64": return deferASM("reinterpret", compiler, Type.i64, operands, Type.f64, reportNode);
    case "f32.reinterpret_i32": return deferASM("reinterpret", compiler, Type.f32, operands, Type.i32, reportNode);
    case "f64.reinterpret_i64": return deferASM("reinterpret", compiler, Type.f64, operands, Type.i64, reportNode);

    case "f32.sqrt": return deferASM("sqrt", compiler, Type.f32, operands, Type.f32, reportNode);
    case "f64.sqrt": return deferASM("sqrt", compiler, Type.f64, operands, Type.f64, reportNode);

    case "f32.trunc": return deferASM("trunc", compiler, Type.f32, operands, Type.f32, reportNode);
    case "f64.trunc": return deferASM("trunc", compiler, Type.f64, operands, Type.f64, reportNode);

    case "i32.load8_s": return deferASM("load", compiler, Type.i8, operands, Type.i32, reportNode);
    case "i32.load8_u": return deferASM("load", compiler, Type.u8, operands, Type.u32, reportNode);
    case "i32.load16_s": return deferASM("load", compiler, Type.i16, operands, Type.i32, reportNode);
    case "i32.load16_u": return deferASM("load", compiler, Type.u16, operands, Type.u32, reportNode);
    case "i32.load": return deferASM("load", compiler, Type.i32, operands, Type.i32, reportNode);
    case "i64.load8_s": return deferASM("load", compiler, Type.i8, operands, Type.i64, reportNode);
    case "i64.load8_u": return deferASM("load", compiler, Type.u8, operands, Type.u64, reportNode);
    case "i64.load16_s": return deferASM("load", compiler, Type.i16, operands, Type.i64, reportNode);
    case "i64.load16_u": return deferASM("load", compiler, Type.u16, operands, Type.u64, reportNode);
    case "i64.load32_s": return deferASM("load", compiler, Type.i32, operands, Type.i64, reportNode);
    case "i64.load32_u": return deferASM("load", compiler, Type.u32, operands, Type.u64, reportNode);
    case "i64.load": return deferASM("load", compiler, Type.i64, operands, Type.i64, reportNode);
    case "f32.load": return deferASM("load", compiler, Type.f32, operands, Type.f32, reportNode);
    case "f64.load": return deferASM("load", compiler, Type.f64, operands, Type.f64, reportNode);

    case "i32.store8": return deferASM("store", compiler, Type.i8, operands, Type.i32, reportNode);
    case "i32.store16": return deferASM("store", compiler, Type.i16, operands, Type.i32, reportNode);
    case "i32.store": return deferASM("store", compiler, Type.i32, operands, Type.i32, reportNode);
    case "i64.store8": return deferASM("store", compiler, Type.i8, operands, Type.i64, reportNode);
    case "i64.store16": return deferASM("store", compiler, Type.i16, operands, Type.i64, reportNode);
    case "i64.store32": return deferASM("store", compiler, Type.i32, operands, Type.i64, reportNode);
    case "i64.store": return deferASM("store", compiler, Type.i64, operands, Type.i64, reportNode);
    case "f32.store": return deferASM("store", compiler, Type.f32, operands, Type.f32, reportNode);
    case "f64.store": return deferASM("store", compiler, Type.f64, operands, Type.f64, reportNode);
  }
  return 0;
}

/** A helper for deferring inline-assembler-like calls to built-in functions. */
function deferASM(
  name: string,
  compiler: Compiler,
  typeArgument: Type,
  operands: Expression[],
  valueType: Type,
  reportNode: Node
): ExpressionRef {
  var prototype = assert(compiler.program.elementsLookup.get(name));
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
        DiagnosticCode.Operation_not_supported,
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
        DiagnosticCode.Operation_not_supported,
        expression.range
      );
      value = -1;
    }
  }
  return value;
}

/** Compiles a memory allocation for an instance of the specified class. */
export function compileAllocate(
  compiler: Compiler,
  classInstance: Class,
  reportNode: Node
): ExpressionRef {
  var program = compiler.program;
  assert(classInstance.program == program);
  var module = compiler.module;
  var options = compiler.options;

  // __gc_allocate(size, markFn)
  if (program.hasGC && classInstance.type.isManaged(program)) {
    let allocateInstance = assert(program.gcAllocateInstance);
    if (!compiler.compileFunction(allocateInstance)) return module.createUnreachable();
    compiler.currentType = classInstance.type;
    return module.createCall(
      allocateInstance.internalName, [
        options.isWasm64
          ? module.createI64(classInstance.currentMemoryOffset)
          : module.createI32(classInstance.currentMemoryOffset),
        module.createI32(
          ensureGCHook(compiler, classInstance)
        )
      ],
      options.nativeSizeType
    );

  // memory.allocate(size)
  } else {
    let allocateInstance = program.memoryAllocateInstance;
    if (!allocateInstance) {
      program.error(
        DiagnosticCode.Cannot_find_name_0,
        reportNode.range, "memory.allocate"
      );
      return module.createUnreachable();
    }
    if (!compiler.compileFunction(allocateInstance)) return module.createUnreachable();

    compiler.currentType = classInstance.type;
    return module.createCall(
      allocateInstance.internalName, [
        options.isWasm64
          ? module.createI64(classInstance.currentMemoryOffset)
          : module.createI32(classInstance.currentMemoryOffset)
      ],
      options.nativeSizeType
    );
  }
}

/** Compiles an abort wired to the conditionally imported 'abort' function. */
export function compileAbort(
  compiler: Compiler,
  message: Expression | null,
  reportNode: Node
): ExpressionRef {
  var program = compiler.program;
  var module = compiler.module;

  var stringType = program.typesLookup.get("string");
  if (!stringType) return module.createUnreachable();

  var abortInstance = program.abortInstance;
  if (!(abortInstance && compiler.compileFunction(abortInstance))) return module.createUnreachable();

  var messageArg = message != null
    ? compiler.compileExpression(message, stringType, ConversionKind.IMPLICIT, WrapMode.NONE)
    : stringType.toNativeZero(module);

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

  for (let element of compiler.program.elementsLookup.values()) {
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
            "iv"
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
            "iv"
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

  // check if the class implements a custom GC function (only valid for internals)
  var members = classInstance.members;
  if (classInstance.prototype.declaration.range.source.isLibrary) {
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
        nativeSizeType == NativeType.I64 ? "Iv" : "iv"
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
