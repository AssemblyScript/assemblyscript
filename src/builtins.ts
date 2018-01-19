import {
  Compiler,
  Target,
  ConversionKind,

  makeSmallIntegerWrap
} from "./compiler";

import {
  DiagnosticCode
} from "./diagnostics";

import {
  Node,
  Expression,
  BinaryExpression
} from "./ast";

import {
  Type,
  TypeKind,
  TypeFlags
} from "./types";

import {
  Module,
  UnaryOp,
  BinaryOp,
  HostOp,
  NativeType,
  ExpressionRef,
  FunctionTypeRef
} from "./module";

import {
  Program,
  Global,
  FunctionPrototype,
  Local,
  ElementFlags
} from "./program";

/** Initializes the specified program with built-in constants and functions. */
export function initialize(program: Program): void {

  // math
  addConstant(program, "NaN", Type.f64);
  addConstant(program, "Infinity", Type.f64);

  addFunction(program, "isNaN", true);
  addFunction(program, "isFinite", true);
  addFunction(program, "clz", true);
  addFunction(program, "ctz", true);
  addFunction(program, "popcnt", true);
  addFunction(program, "rotl", true);
  addFunction(program, "rotr", true);
  addFunction(program, "abs", true);
  addFunction(program, "max", true);
  addFunction(program, "min", true);
  addFunction(program, "ceil", true);
  addFunction(program, "floor", true);
  addFunction(program, "copysign", true);
  addFunction(program, "nearest", true);
  addFunction(program, "reinterpret", true);
  addFunction(program, "sqrt", true);
  addFunction(program, "trunc", true);

  // memory access
  addFunction(program, "load", true);
  addFunction(program, "store", true);
  addFunction(program, "sizeof", true);

  // control flow
  addFunction(program, "select", true);
  addFunction(program, "unreachable");

  // host operations
  addFunction(program, "current_memory");
  addFunction(program, "grow_memory");
  // addFunction(program, "move_memory");
  // addFunction(program, "set_memory");

  // other
  addFunction(program, "changetype", true);
  addFunction(program, "assert");

  // conversions and limits
  var i32Func: FunctionPrototype,
      u32Func: FunctionPrototype,
      i64Func: FunctionPrototype,
      u64Func: FunctionPrototype;
  addFunction(program, "i8").members = new Map([
    [ "MIN_VALUE", new Global(program, "MIN_VALUE", "i8.MIN_VALUE", null, Type.i8).withConstantIntegerValue(-128, -1) ],
    [ "MAX_VALUE", new Global(program, "MAX_VALUE", "i8.MAX_VALUE", null, Type.i8).withConstantIntegerValue(127, 0) ]
  ]);
  addFunction(program, "i16").members = new Map([
    [ "MIN_VALUE", new Global(program, "MIN_VALUE", "i16.MIN_VALUE", null, Type.i16).withConstantIntegerValue(-32768, -1) ],
    [ "MAX_VALUE", new Global(program, "MAX_VALUE", "i16.MAX_VALUE", null, Type.i16).withConstantIntegerValue(32767, 0) ]
  ]);
  (i32Func = addFunction(program, "i32")).members = new Map([
    [ "MIN_VALUE", new Global(program, "MIN_VALUE", "i32.MIN_VALUE", null, Type.i32).withConstantIntegerValue(-2147483648, -1) ],
    [ "MAX_VALUE", new Global(program, "MAX_VALUE", "i32.MAX_VALUE", null, Type.i32).withConstantIntegerValue(2147483647, 0) ]
  ]);
  (i64Func = addFunction(program, "i64")).members = new Map([
    [ "MIN_VALUE", new Global(program, "MIN_VALUE", "i64.MIN_VALUE", null, Type.i64).withConstantIntegerValue(0, -2147483648) ],
    [ "MAX_VALUE", new Global(program, "MAX_VALUE", "i64.MAX_VALUE", null, Type.i64).withConstantIntegerValue(-1, 2147483647) ]
  ]);
  addFunction(program, "u8").members = new Map([
    [ "MIN_VALUE", new Global(program, "MIN_VALUE", "u8.MIN_VALUE", null, Type.u8).withConstantIntegerValue(0, 0) ],
    [ "MAX_VALUE", new Global(program, "MAX_VALUE", "u8.MAX_VALUE", null, Type.u8).withConstantIntegerValue(255, 0) ]
  ]);
  addFunction(program, "u16").members = new Map([
    [ "MIN_VALUE", new Global(program, "MIN_VALUE", "u16.MIN_VALUE", null, Type.u16).withConstantIntegerValue(0, 0) ],
    [ "MAX_VALUE", new Global(program, "MAX_VALUE", "u16.MAX_VALUE", null, Type.u16).withConstantIntegerValue(65535, 0) ]
  ]);
  (u32Func = addFunction(program, "u32")).members = new Map([
    [ "MIN_VALUE", new Global(program, "MIN_VALUE", "u32.MIN_VALUE", null, Type.u32).withConstantIntegerValue(0, 0) ],
    [ "MAX_VALUE", new Global(program, "MAX_VALUE", "u32.MAX_VALUE", null, Type.u32).withConstantIntegerValue(-1, 0) ]
  ]);
  (u64Func = addFunction(program, "u64")).members = new Map([
    [ "MIN_VALUE", new Global(program, "MIN_VALUE", "u64.MIN_VALUE", null, Type.u64).withConstantIntegerValue(0, 0) ],
    [ "MAX_VALUE", new Global(program, "MAX_VALUE", "u64.MAX_VALUE", null, Type.i64).withConstantIntegerValue(-1, -1) ]
  ]);
  addFunction(program, "bool").members = new Map([
    [ "MIN_VALUE", new Global(program, "MIN_VALUE", "bool.MIN_VALUE", null, Type.bool).withConstantIntegerValue(0, 0) ],
    [ "MAX_VALUE", new Global(program, "MAX_VALUE", "bool.MAX_VALUE", null, Type.bool).withConstantIntegerValue(1, 0) ]
  ]);
  addFunction(program, "f32").members = new Map([
    [ "MIN_VALUE", new Global(program, "MIN_VALUE", "f32.MIN_VALUE", null, Type.f32).withConstantFloatValue(-3.40282347e+38) ],
    [ "MAX_VALUE", new Global(program, "MAX_VALUE", "f32.MAX_VALUE", null, Type.f32).withConstantFloatValue(3.40282347e+38) ],
    [ "MIN_SAFE_INTEGER", new Global(program, "MIN_SAFE_INTEGER", "f32.MIN_SAFE_INTEGER", null, Type.f32).withConstantFloatValue(-16777215) ],
    [ "MAX_SAFE_INTEGER", new Global(program, "MAX_SAFE_INTEGER", "f32.MAX_SAFE_INTEGER", null, Type.f32).withConstantFloatValue(16777215) ],
    [ "EPSILON", new Global(program, "EPSILON", "f32.EPSILON", null, Type.f32).withConstantFloatValue(1.19209290e-07) ]
  ]);
  addFunction(program, "f64").members = new Map([
    [ "MIN_VALUE", new Global(program, "MIN_VALUE", "f64.MIN_VALUE", null, Type.f64).withConstantFloatValue(-1.7976931348623157e+308) ],
    [ "MAX_VALUE", new Global(program, "MAX_VALUE", "f64.MAX_VALUE", null, Type.f64).withConstantFloatValue(1.7976931348623157e+308) ],
    [ "MIN_SAFE_INTEGER", new Global(program, "MIN_SAFE_INTEGER", "f64.MIN_SAFE_INTEGER", null, Type.f64).withConstantFloatValue(-9007199254740991) ],
    [ "MAX_SAFE_INTEGER", new Global(program, "MAX_SAFE_INTEGER", "f64.MAX_SAFE_INTEGER", null, Type.f64).withConstantFloatValue(9007199254740991) ],
    [ "EPSILON", new Global(program, "EPSILON", "f64.EPSILON", null, Type.f64).withConstantFloatValue(2.2204460492503131e-16) ]
  ]);
  if (program.target == Target.WASM64) {
    program.elements.set("isize", i64Func);
    program.elements.set("usize", u64Func);
    addConstant(program, "HEAP_BASE", Type.usize64);
  } else {
    program.elements.set("isize", i32Func);
    program.elements.set("usize", u32Func);
    addConstant(program, "HEAP_BASE", Type.usize32);
  }
}

/** Adds a built-in constant to the specified program. */
function addConstant(program: Program, name: string, type: Type): Global {
  var global = new Global(program, name, name, null, type);
  global.set(ElementFlags.BUILTIN);
  global.set(ElementFlags.CONSTANT);
  program.elements.set(name, global);
  return global;
}

/** Adds a built-in function to the specified program. */
function addFunction(program: Program, name: string, isGeneric: bool = false): FunctionPrototype {
  var prototype = new FunctionPrototype(program, name, name, null, null);
  prototype.set(ElementFlags.BUILTIN);
  if (isGeneric)
    prototype.set(ElementFlags.GENERIC);
  program.elements.set(name, prototype);
  return prototype;
}

/** Compiles a get of a built-in global. */
export function compileGetConstant(compiler: Compiler, global: Global, reportNode: Node): ExpressionRef {
  switch (global.internalName) { // switching on strings should become a compiler optimization eventually

    case "NaN":
      if (compiler.currentType == Type.f32)
        return compiler.module.createF32(NaN);
      compiler.currentType = Type.f64;
      return compiler.module.createF64(NaN);

    case "Infinity":
      if (compiler.currentType == Type.f32)
        return compiler.module.createF32(Infinity);
      compiler.currentType = Type.f64;
      return compiler.module.createF64(Infinity);

    case "HEAP_BASE": // constant, but never inlined
      return compiler.module.createGetGlobal("HEAP_BASE", (compiler.currentType = <Type>global.type).toNativeType());
  }
  compiler.error(DiagnosticCode.Operation_not_supported, reportNode.range);
  return compiler.module.createUnreachable();
}

/** Compiles a call to a built-in function. */
export function compileCall(compiler: Compiler, prototype: FunctionPrototype, typeArguments: Type[] | null, operands: Expression[], contextualType: Type, reportNode: Node): ExpressionRef {
  var module = compiler.module;
  var usizeType = compiler.options.target == Target.WASM64 ? Type.usize64 : Type.usize32;
  var nativeUsizeType = compiler.options.target == Target.WASM64 ? NativeType.I64 : NativeType.I32;

  var arg0: ExpressionRef,
      arg1: ExpressionRef,
      arg2: ExpressionRef,
      ret: ExpressionRef;

  var tempLocal0: Local,
      tempLocal1: Local;

  var type: Type,
      ftype: FunctionTypeRef;

  // NOTE that some implementations below make use of the select expression where straight-forward.
  // whether worth or not should probably be tested once it's known if/how embedders handle it.
  // search: createSelect

  switch (prototype.internalName) {

    // math

    case "isNaN": // isNaN<T?>(value: T) -> bool
      compiler.currentType = Type.bool;
      if (operands.length != 1) {
        if (typeArguments && typeArguments.length != 1)
          compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "1", operands.length.toString(10));
        return module.createUnreachable();
      }
      if (typeArguments) {
        if (typeArguments.length != 1) {
          compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
          return module.createUnreachable();
        }
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
      } else
        arg0 = compiler.compileExpression(operands[0], Type.f64, ConversionKind.NONE);

      switch (compiler.currentType.kind) {

        case TypeKind.F32:
          tempLocal0 = compiler.currentFunction.getAndFreeTempLocal(Type.f32);
          ret = module.createBinary(BinaryOp.NeF32,
            module.createTeeLocal(tempLocal0.index, arg0),
            module.createGetLocal(tempLocal0.index, NativeType.F32)
          );
          break;

        case TypeKind.F64:
          tempLocal0 = compiler.currentFunction.getAndFreeTempLocal(Type.f64);
          ret = module.createBinary(BinaryOp.NeF64,
            module.createTeeLocal(tempLocal0.index, arg0),
            module.createGetLocal(tempLocal0.index, NativeType.F64)
          );
          break;

        case TypeKind.VOID:
          compiler.error(DiagnosticCode.Operation_not_supported, reportNode.range);
          ret = module.createUnreachable();
          break;

        default: // every other type is never NaN
          ret = module.createI32(0);
          break;

      }
      compiler.currentType = Type.bool;
      return ret;

    case "isFinite": // isFinite<T?>(value: T) -> bool
      compiler.currentType = Type.bool;
      if (operands.length != 1) {
        if (typeArguments && typeArguments.length != 1)
          compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "1", operands.length.toString(10));
        return module.createUnreachable();
      }
      if (typeArguments) {
        if (typeArguments.length != 1) {
          compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
          return module.createUnreachable();
        }
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
      } else
        arg0 = compiler.compileExpression(operands[0], Type.f64, ConversionKind.NONE);

      switch (compiler.currentType.kind) {

        case TypeKind.F32:
          tempLocal0 = compiler.currentFunction.getAndFreeTempLocal(Type.f32);
          ret = module.createSelect(
            module.createBinary(BinaryOp.NeF32,
              module.createUnary(UnaryOp.AbsF32,
                module.createTeeLocal(tempLocal0.index, arg0)
              ),
              module.createF32(Infinity)
            ),
            module.createI32(0),
            module.createBinary(BinaryOp.EqF32,
              module.createGetLocal(tempLocal0.index, NativeType.F32),
              module.createGetLocal(tempLocal0.index, NativeType.F32)
            )
          );
          break;

        case TypeKind.F64:
          tempLocal0 = compiler.currentFunction.getAndFreeTempLocal(Type.f64);
          ret = module.createSelect(
            module.createBinary(BinaryOp.NeF64,
              module.createUnary(UnaryOp.AbsF64,
                module.createTeeLocal(tempLocal0.index, arg0)
              ),
              module.createF64(Infinity)
            ),
            module.createI32(0),
            module.createBinary(BinaryOp.EqF64,
              module.createGetLocal(tempLocal0.index, NativeType.F64),
              module.createGetLocal(tempLocal0.index, NativeType.F64)
            )
          );
          break;

        case TypeKind.VOID:
          compiler.error(DiagnosticCode.Operation_not_supported, reportNode.range);
          ret = module.createUnreachable();
          break;

        default: // every other type is always finite
          ret = module.createI32(1);
          break;
      }
      compiler.currentType = Type.bool;
      return ret;

    case "clz": // clz<T?>(value: T) -> T
      if (operands.length != 1) {
        if (typeArguments) {
          if (typeArguments.length)
            compiler.currentType = typeArguments[0];
          if (typeArguments.length != 1)
            compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
        }
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "1", operands.length.toString(10));
        return module.createUnreachable();
      }
      if (typeArguments) {
        if (typeArguments.length != 1) {
          if (typeArguments.length)
            compiler.currentType = typeArguments[0];
          compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
          return module.createUnreachable();
        }
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
      } else
        arg0 = compiler.compileExpression(operands[0], Type.i32, ConversionKind.NONE);

      switch (compiler.currentType.kind) {

        default: // any integer up to 32-bits incl. bool
          ret = module.createUnary(UnaryOp.ClzI32, arg0);
          break;

        case TypeKind.USIZE:
          if (compiler.currentType.isReference) {
            compiler.error(DiagnosticCode.Operation_not_supported, reportNode.range);
            ret = module.createUnreachable();
            break;
          }
          // fall-through
        case TypeKind.ISIZE:
          ret = module.createUnary(compiler.options.target == Target.WASM64 ? UnaryOp.ClzI64 : UnaryOp.ClzI32, arg0);
          break;

        case TypeKind.I64:
        case TypeKind.U64:
          ret = module.createUnary(UnaryOp.ClzI64, arg0);
          break;

        case TypeKind.F32:
        case TypeKind.F64:
        case TypeKind.VOID:
          compiler.error(DiagnosticCode.Operation_not_supported, reportNode.range);
          ret = module.createUnreachable();
          break;
      }
      return ret;

    case "ctz": // ctz<T?>(value: T) -> T
      if (operands.length != 1) {
        if (typeArguments) {
          if (typeArguments.length)
            compiler.currentType = typeArguments[0];
          if (typeArguments.length != 1)
            compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
        }
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "1", operands.length.toString(10));
        return module.createUnreachable();
      }
      if (typeArguments) {
        if (typeArguments.length != 1) {
          if (typeArguments.length)
            compiler.currentType = typeArguments[0];
          compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
          return module.createUnreachable();
        }
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
      } else
        arg0 = compiler.compileExpression(operands[0], Type.i32, ConversionKind.NONE);

      switch (compiler.currentType.kind) {

        default: // any integer up to 32-bits incl. bool
          ret = module.createUnary(UnaryOp.CtzI32, arg0);
          break;

        case TypeKind.USIZE:
          if (compiler.currentType.isReference) {
            compiler.error(DiagnosticCode.Operation_not_supported, reportNode.range);
            ret = module.createUnreachable();
            break;
          }
          // fall-through
        case TypeKind.ISIZE:
          ret = module.createUnary(compiler.options.target == Target.WASM64 ? UnaryOp.CtzI64 : UnaryOp.CtzI32, arg0);
          break;

        case TypeKind.I64:
        case TypeKind.U64:
          ret = module.createUnary(UnaryOp.CtzI64, arg0);
          break;

        case TypeKind.F32:
        case TypeKind.F64:
        case TypeKind.VOID:
          compiler.error(DiagnosticCode.Operation_not_supported, reportNode.range);
          ret = module.createUnreachable();
          break;
      }
      return ret;

    case "popcnt": // popcnt<T?>(value: T) -> T
      if (operands.length != 1) {
        if (typeArguments) {
          if (typeArguments.length)
            compiler.currentType = typeArguments[0];
          if (typeArguments.length != 1)
            compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
        }
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "1", operands.length.toString(10));
        return module.createUnreachable();
      }
      if (typeArguments) {
        if (typeArguments.length != 1) {
          if (typeArguments.length)
            compiler.currentType = typeArguments[0];
          compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
          return module.createUnreachable();
        }
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
      } else
        arg0 = compiler.compileExpression(operands[0], Type.i32, ConversionKind.NONE);

      switch (compiler.currentType.kind) {

        default: // any integer up to 32-bits incl. bool
          ret = module.createUnary(UnaryOp.PopcntI32, arg0);
          break;

        case TypeKind.USIZE:
          if (compiler.currentType.isReference) {
            compiler.error(DiagnosticCode.Operation_not_supported, reportNode.range);
            ret = module.createUnreachable();
            break;
          }
          // fall-through
        case TypeKind.ISIZE:
          ret = module.createUnary(compiler.options.target == Target.WASM64 ? UnaryOp.PopcntI64 : UnaryOp.PopcntI32, arg0);
          break;

        case TypeKind.I64:
        case TypeKind.U64:
          ret = module.createUnary(UnaryOp.PopcntI64, arg0);
          break;

        case TypeKind.F32:
        case TypeKind.F64:
        case TypeKind.VOID:
          compiler.error(DiagnosticCode.Operation_not_supported, reportNode.range);
          ret = module.createUnreachable();
          break;
      }
      return ret;

    case "rotl": // rotl<T?>(value: T, shift: T) -> T
      if (operands.length != 2) {
        if (typeArguments) {
          if (typeArguments.length)
            compiler.currentType = typeArguments[0];
          if (typeArguments.length != 1)
            compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
        }
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "2", operands.length.toString(10));
        return module.createUnreachable();
      }
      if (typeArguments) {
        if (typeArguments.length != 1) {
          if (typeArguments.length)
            compiler.currentType = typeArguments[0];
          compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
          return module.createUnreachable();
        }
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
      } else
        arg0 = compiler.compileExpression(operands[0], Type.i32, ConversionKind.NONE);
      arg1 = compiler.compileExpression(operands[1], compiler.currentType);

      switch (compiler.currentType.kind) {

        case TypeKind.I8:
        case TypeKind.I16:
        case TypeKind.U8:
        case TypeKind.U16:
        case TypeKind.BOOL:
          ret = makeSmallIntegerWrap(module.createBinary(BinaryOp.RotlI32, arg0, arg1), compiler.currentType, module);

        case TypeKind.I32:
        case TypeKind.U32:
          ret = module.createBinary(BinaryOp.RotlI32, arg0, arg1);
          break;

        case TypeKind.USIZE:
          if (compiler.currentType.isReference) {
            compiler.error(DiagnosticCode.Operation_not_supported, reportNode.range);
            ret = module.createUnreachable();
            break;
          }
          // fall-through
        case TypeKind.ISIZE:
          ret = module.createBinary(compiler.options.target == Target.WASM64 ? BinaryOp.RotlI64 : BinaryOp.RotlI32, arg0, arg1);
          break;

        case TypeKind.I64:
        case TypeKind.U64:
          ret = module.createBinary(BinaryOp.RotlI64, arg0, arg1);
          break;

        default:
          compiler.error(DiagnosticCode.Operation_not_supported, reportNode.range);
          ret = module.createUnreachable();
          break;
      }
      return ret;

    case "rotr": // rotr<T?>(value: T, shift: T) -> T
      if (operands.length != 2) {
        if (typeArguments) {
          if (typeArguments.length)
            compiler.currentType = typeArguments[0];
          if (typeArguments.length != 1)
            compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
        }
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "2", operands.length.toString(10));
        return module.createUnreachable();
      }
      if (typeArguments) {
        if (typeArguments.length != 1) {
          if (typeArguments.length)
            compiler.currentType = typeArguments[0];
          compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
          return module.createUnreachable();
        }
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
      } else
        arg0 = compiler.compileExpression(operands[0], Type.i32, ConversionKind.NONE);
      arg1 = compiler.compileExpression(operands[1], compiler.currentType);

      switch (compiler.currentType.kind) {

        case TypeKind.I8:
        case TypeKind.I16:
        case TypeKind.U8:
        case TypeKind.U16:
        case TypeKind.BOOL:
          ret = makeSmallIntegerWrap(module.createBinary(BinaryOp.RotrI32, arg0, arg1), compiler.currentType, module);
          break;

        case TypeKind.I32:
        case TypeKind.U32:
          ret = module.createBinary(BinaryOp.RotrI32, arg0, arg1);
          break;

        case TypeKind.USIZE:
          if (compiler.currentType.isReference) {
            compiler.error(DiagnosticCode.Operation_not_supported, reportNode.range);
            ret = module.createUnreachable();
            break;
          }
          // fall-through
        case TypeKind.ISIZE:
          ret = module.createBinary(compiler.options.target == Target.WASM64 ? BinaryOp.RotrI64 : BinaryOp.RotrI32, arg0, arg1);
          break;

        case TypeKind.I64:
        case TypeKind.U64:
          ret = module.createBinary(BinaryOp.RotrI64, arg0, arg1);
          break;

        default:
          compiler.error(DiagnosticCode.Operation_not_supported, reportNode.range);
          ret = module.createUnreachable();
          break;
      }
      return ret;

    case "abs": // abs<T?>(value: T) -> T
      if (operands.length != 1) {
        if (typeArguments) {
          if (typeArguments.length)
            compiler.currentType = typeArguments[0];
          if (typeArguments.length != 1)
            compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
        }
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "1", operands.length.toString(10));
        return module.createUnreachable();
      }
      if (typeArguments) {
        if (typeArguments.length != 1) {
          if (typeArguments.length)
            compiler.currentType = typeArguments[0];
          compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
          return module.createUnreachable();
        }
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
      } else
        arg0 = compiler.compileExpression(operands[0], Type.f64, ConversionKind.NONE);

      switch (compiler.currentType.kind) {

        case TypeKind.I8:
        case TypeKind.I16:
          // doesn't need sign-extension here because ifFalse below is either positive
          // or MIN_VALUE (-MIN_VALUE == MIN_VALUE) if selected
        case TypeKind.I32:
          tempLocal0 = compiler.currentFunction.getAndFreeTempLocal(Type.i32);
          ret = module.createSelect(
            module.createTeeLocal(tempLocal0.index, arg0),
            module.createBinary(BinaryOp.SubI32, // ifFalse
              module.createI32(0),
              module.createGetLocal(tempLocal0.index, NativeType.I32)
            ),
            module.createBinary(BinaryOp.GtI32,
              module.createGetLocal(tempLocal0.index, NativeType.I32),
              module.createI32(0)
            )
          );
          break;

        case TypeKind.ISIZE:
          tempLocal0 = compiler.currentFunction.getAndFreeTempLocal(usizeType);
          ret = module.createSelect(
            module.createTeeLocal(tempLocal0.index, arg0),
            module.createBinary(compiler.options.target == Target.WASM64 ? BinaryOp.SubI64 : BinaryOp.SubI32,
              usizeType.toNativeZero(module),
              module.createGetLocal(tempLocal0.index, nativeUsizeType)
            ),
            module.createBinary(compiler.options.target == Target.WASM64 ? BinaryOp.GtI64 : BinaryOp.GtI32,
              module.createGetLocal(tempLocal0.index, nativeUsizeType),
              usizeType.toNativeZero(module)
            )
          );
          break;

        case TypeKind.I64:
          tempLocal0 = compiler.currentFunction.getAndFreeTempLocal(Type.i64);
          ret = module.createSelect(
            module.createTeeLocal(tempLocal0.index, arg0),
            module.createBinary(BinaryOp.SubI64,
              module.createI64(0, 0),
              module.createGetLocal(tempLocal0.index, NativeType.I64),
            ),
            module.createBinary(BinaryOp.GtI64,
              module.createGetLocal(tempLocal0.index, NativeType.I64),
              module.createI64(0, 0)
            )
          );
          break;

        case TypeKind.USIZE:
          if (compiler.currentType.isReference) {
            compiler.error(DiagnosticCode.Operation_not_supported, reportNode.range);
            ret = module.createUnreachable();
            break;
          }
          // fall-through
        case TypeKind.U8:
        case TypeKind.U16:
        case TypeKind.U32:
        case TypeKind.U64:
        case TypeKind.BOOL:
          ret = arg0;
          break;

        case TypeKind.F32:
          ret = module.createUnary(UnaryOp.AbsF32, arg0);
          break;

        case TypeKind.F64:
          ret = module.createUnary(UnaryOp.AbsF64, arg0);
          break;

        case TypeKind.VOID:
          ret = module.createUnreachable();
          break;

        default: // void
          compiler.error(DiagnosticCode.Operation_not_supported, reportNode.range);
          ret = module.createUnreachable();
          break;
      }
      return ret;

    case "max": // max<T?>(left: T, right: T) -> T
      if (operands.length != 2) {
        if (typeArguments) {
          if (typeArguments.length)
            compiler.currentType = typeArguments[0];
          if (typeArguments.length != 1)
            compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
        }
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "2", operands.length.toString(10));
        return module.createUnreachable();
      }
      if (typeArguments) {
        if (typeArguments.length != 1) {
          if (typeArguments.length)
            compiler.currentType = typeArguments[0];
          compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
          return module.createUnreachable();
        }
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
      } else
        arg0 = compiler.compileExpression(operands[0], Type.f64, ConversionKind.NONE);
      arg1 = compiler.compileExpression(operands[1], compiler.currentType);

      switch (compiler.currentType.kind) {

        case TypeKind.I8:
        case TypeKind.I16:
        case TypeKind.I32:
          tempLocal0 = compiler.currentFunction.getTempLocal(Type.i32);
          tempLocal1 = compiler.currentFunction.getAndFreeTempLocal(Type.i32);
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

        case TypeKind.U8:
        case TypeKind.U16:
        case TypeKind.U32:
        case TypeKind.BOOL:
          tempLocal0 = compiler.currentFunction.getTempLocal(Type.i32);
          tempLocal1 = compiler.currentFunction.getAndFreeTempLocal(Type.i32);
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

        case TypeKind.I64:
          tempLocal0 = compiler.currentFunction.getTempLocal(Type.i64);
          tempLocal1 = compiler.currentFunction.getAndFreeTempLocal(Type.i64);
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

        case TypeKind.U64:
          tempLocal0 = compiler.currentFunction.getTempLocal(Type.i64);
          tempLocal1 = compiler.currentFunction.getAndFreeTempLocal(Type.i64);
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

        case TypeKind.ISIZE:
          tempLocal0 = compiler.currentFunction.getTempLocal(usizeType);
          tempLocal1 = compiler.currentFunction.getAndFreeTempLocal(usizeType);
          compiler.currentFunction.freeTempLocal(tempLocal0);
          ret = module.createSelect(
            module.createTeeLocal(tempLocal0.index, arg0),
            module.createTeeLocal(tempLocal1.index, arg1),
            module.createBinary(compiler.options.target == Target.WASM64 ? BinaryOp.GtI64 : BinaryOp.GtI32,
              module.createGetLocal(tempLocal0.index, nativeUsizeType),
              module.createGetLocal(tempLocal1.index, nativeUsizeType)
            )
          );
          break;

        case TypeKind.USIZE:
          if (compiler.currentType.isReference) {
            compiler.error(DiagnosticCode.Operation_not_supported, reportNode.range);
            ret = module.createUnreachable();
            break;
          }
          tempLocal0 = compiler.currentFunction.getTempLocal(usizeType);
          tempLocal1 = compiler.currentFunction.getAndFreeTempLocal(usizeType);
          compiler.currentFunction.freeTempLocal(tempLocal0);
          ret = module.createSelect(
            module.createTeeLocal(tempLocal0.index, arg0),
            module.createTeeLocal(tempLocal1.index, arg1),
            module.createBinary(compiler.options.target == Target.WASM64 ? BinaryOp.GtU64 : BinaryOp.GtU32,
              module.createGetLocal(tempLocal0.index, nativeUsizeType),
              module.createGetLocal(tempLocal1.index, nativeUsizeType)
            )
          );
          break;

        case TypeKind.F32:
          ret = module.createBinary(BinaryOp.MaxF32, arg0, arg1);
          break;

        case TypeKind.F64:
          ret = module.createBinary(BinaryOp.MaxF64, arg0, arg1);
          break;

        default: // void
          compiler.error(DiagnosticCode.Operation_not_supported, reportNode.range);
          ret = module.createUnreachable();
          break;
      }
      return ret;

    case "min": // min<T?>(left: T, right: T) -> T
      if (operands.length != 2) {
        if (typeArguments) {
          if (typeArguments.length)
            compiler.currentType = typeArguments[0];
          if (typeArguments.length != 1)
            compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
        }
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "2", operands.length.toString(10));
        return module.createUnreachable();
      }
      if (typeArguments) {
        if (typeArguments.length != 1) {
          if (typeArguments.length)
            compiler.currentType = typeArguments[0];
          compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
          return module.createUnreachable();
        }
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
      } else
        arg0 = compiler.compileExpression(operands[0], Type.f64, ConversionKind.NONE);
      arg1 = compiler.compileExpression(operands[1], compiler.currentType);

      switch (compiler.currentType.kind) {

        case TypeKind.I8:
        case TypeKind.I16:
        case TypeKind.I32:
          tempLocal0 = compiler.currentFunction.getTempLocal(Type.i32);
          tempLocal1 = compiler.currentFunction.getAndFreeTempLocal(Type.i32);
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

        case TypeKind.U8:
        case TypeKind.U16:
        case TypeKind.U32:
        case TypeKind.BOOL:
          tempLocal0 = compiler.currentFunction.getTempLocal(Type.i32);
          tempLocal1 = compiler.currentFunction.getAndFreeTempLocal(Type.i32);
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

        case TypeKind.I64:
          tempLocal0 = compiler.currentFunction.getTempLocal(Type.i64);
          tempLocal1 = compiler.currentFunction.getAndFreeTempLocal(Type.i64);
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

        case TypeKind.U64:
          tempLocal0 = compiler.currentFunction.getTempLocal(Type.i64);
          tempLocal1 = compiler.currentFunction.getAndFreeTempLocal(Type.i64);
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

        case TypeKind.ISIZE:
          tempLocal0 = compiler.currentFunction.getTempLocal(usizeType);
          tempLocal1 = compiler.currentFunction.getAndFreeTempLocal(usizeType);
          compiler.currentFunction.freeTempLocal(tempLocal0);
          ret = module.createSelect(
            module.createTeeLocal(tempLocal0.index, arg0),
            module.createTeeLocal(tempLocal1.index, arg1),
            module.createBinary(compiler.options.target == Target.WASM64 ? BinaryOp.LtI64 : BinaryOp.LtI32,
              module.createGetLocal(tempLocal0.index, nativeUsizeType),
              module.createGetLocal(tempLocal1.index, nativeUsizeType)
            )
          );
          break;

        case TypeKind.USIZE:
          if (compiler.currentType.isReference) {
            compiler.error(DiagnosticCode.Operation_not_supported, reportNode.range);
            ret = module.createUnreachable();
            break;
          }
          tempLocal0 = compiler.currentFunction.getTempLocal(usizeType);
          tempLocal1 = compiler.currentFunction.getAndFreeTempLocal(usizeType);
          compiler.currentFunction.freeTempLocal(tempLocal0);
          ret = module.createSelect(
            module.createTeeLocal(tempLocal0.index, arg0),
            module.createTeeLocal(tempLocal1.index, arg1),
            module.createBinary(compiler.options.target == Target.WASM64 ? BinaryOp.LtU64 : BinaryOp.LtU32,
              module.createGetLocal(tempLocal0.index, nativeUsizeType),
              module.createGetLocal(tempLocal1.index, nativeUsizeType)
            )
          );
          break;

        case TypeKind.F32:
          ret = module.createBinary(BinaryOp.MinF32, arg0, arg1);
          break;

        case TypeKind.F64:
          ret = module.createBinary(BinaryOp.MinF64, arg0, arg1);
          break;

        default: // void
          compiler.error(DiagnosticCode.Operation_not_supported, reportNode.range);
          ret = module.createUnreachable();
          break;
      }
      return ret;

    case "ceil": // ceil<T?>(value: T) -> T
      if (operands.length != 1) {
        if (typeArguments) {
          if (typeArguments.length)
            compiler.currentType = typeArguments[0];
          if (typeArguments.length != 1)
            compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
        }
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "1", operands.length.toString(10));
        return module.createUnreachable();
      }
      if (typeArguments) {
        if (typeArguments.length != 1) {
          if (typeArguments.length)
            compiler.currentType = typeArguments[0];
          compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
          return module.createUnreachable();
        }
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
      } else
        arg0 = compiler.compileExpression(operands[0], Type.f64, ConversionKind.NONE);

      switch (compiler.currentType.kind) {

        case TypeKind.USIZE:
          if (compiler.currentType.isReference) {
            compiler.error(DiagnosticCode.Operation_not_supported, reportNode.range);
            ret = module.createUnreachable();
            break;
          }
          // fall-through
        default: // any integer
          ret = arg0;
          break;

        case TypeKind.F32:
          ret = module.createUnary(UnaryOp.CeilF32, arg0);
          break;

        case TypeKind.F64:
          ret = module.createUnary(UnaryOp.CeilF64, arg0);
          break;

        case TypeKind.VOID:
          compiler.error(DiagnosticCode.Operation_not_supported, reportNode.range);
          ret = module.createUnreachable();
          break;
      }
      return ret;

    case "floor": // floor<T?>(value: T) -> T
      if (operands.length != 1) {
        if (typeArguments) {
          if (typeArguments.length)
            compiler.currentType = typeArguments[0];
          if (typeArguments.length != 1)
            compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
        }
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "1", operands.length.toString(10));
        return module.createUnreachable();
      }
      if (typeArguments) {
        if (typeArguments.length != 1) {
          if (typeArguments.length)
            compiler.currentType = typeArguments[0];
          compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
          return module.createUnreachable();
        }
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
      } else
        arg0 = compiler.compileExpression(operands[0], Type.f64, ConversionKind.NONE);

      switch (compiler.currentType.kind) {

        case TypeKind.USIZE:
          if (compiler.currentType.isReference) {
            compiler.error(DiagnosticCode.Operation_not_supported, reportNode.range);
            ret = module.createUnreachable();
            break;
          }
          // fall-through
        default: // any integer
          ret = arg0;
          break;

        case TypeKind.F32:
          ret = module.createUnary(UnaryOp.FloorF32, arg0);
          break;

        case TypeKind.F64:
          ret = module.createUnary(UnaryOp.FloorF64, arg0);
          break;

        case TypeKind.VOID:
          compiler.error(DiagnosticCode.Operation_not_supported, reportNode.range);
          ret = module.createUnreachable();
          break;
      }
      return ret;

    case "copysign": // copysign<T?>(left: T, right: T) -> T
      if (operands.length != 2) {
        if (typeArguments) {
          if (typeArguments.length)
            compiler.currentType = typeArguments[0];
          if (typeArguments.length != 1)
            compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
        }
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "2", operands.length.toString(10));
        return module.createUnreachable();
      }
      if (typeArguments) {
        if (typeArguments.length != 1) {
          if (typeArguments.length)
            compiler.currentType = typeArguments[0];
          compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
          return module.createUnreachable();
        }
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
      } else
        arg0 = compiler.compileExpression(operands[0], Type.f64, ConversionKind.NONE);
      arg1 = compiler.compileExpression(operands[1], compiler.currentType);

      switch (compiler.currentType.kind) {

        // TODO: does an integer version make sense?

        case TypeKind.F32:
          ret = module.createBinary(BinaryOp.CopysignF32, arg0, arg1);
          break;

        case TypeKind.F64:
          ret = module.createBinary(BinaryOp.CopysignF64, arg0, arg1);
          break;

        default:
          compiler.error(DiagnosticCode.Operation_not_supported, reportNode.range);
          ret = module.createUnreachable();
          break;
      }
      return ret;

    case "nearest": // nearest<T?>(value: T) -> T
      if (operands.length != 1) {
        if (typeArguments) {
          if (typeArguments.length)
            compiler.currentType = typeArguments[0];
          if (typeArguments.length != 1)
            compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
        }
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "1", operands.length.toString(10));
        return module.createUnreachable();
      }
      if (typeArguments) {
        if (typeArguments.length != 1) {
          if (typeArguments.length)
            compiler.currentType = typeArguments[0];
          compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
          return module.createUnreachable();
        }
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
      } else
        arg0 = compiler.compileExpression(operands[0], Type.f64, ConversionKind.NONE);

      switch (compiler.currentType.kind) {

        case TypeKind.USIZE:
          if (compiler.currentType.isReference) {
            compiler.error(DiagnosticCode.Operation_not_supported, reportNode.range);
            ret = module.createUnreachable();
            break;
          }
          // fall-through
        default: // any integer
          ret = arg0;
          break;

        case TypeKind.F32:
          ret = module.createUnary(UnaryOp.NearestF32, arg0);
          break;

        case TypeKind.F64:
          ret = module.createUnary(UnaryOp.NearestF64, arg0);
          break;

        case TypeKind.VOID:
          compiler.error(DiagnosticCode.Operation_not_supported, reportNode.range);
          ret = module.createUnreachable();
          break;
      }
      return ret;

    case "reinterpret": // reinterpret<T!>(value: *) -> T
      if (operands.length != 1) {
        if (!(typeArguments && typeArguments.length == 1)) {
          if (typeArguments && typeArguments.length)
            compiler.currentType = typeArguments[0];
          compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments ? typeArguments.length.toString(10) : "0");
        }
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "1", operands.length.toString(10));
        return module.createUnreachable();
      }
      if (!(typeArguments && typeArguments.length == 1)) {
        if (typeArguments && typeArguments.length)
          compiler.currentType = typeArguments[0];
        compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments ? typeArguments.length.toString(10) : "0");
        return module.createUnreachable();
      }

      switch (typeArguments[0].kind) {

        case TypeKind.I32:
        case TypeKind.U32:
          arg0 = compiler.compileExpression(operands[0], Type.f32);
          ret = module.createUnary(UnaryOp.ReinterpretF32, arg0);
          break;

        case TypeKind.I64:
        case TypeKind.U64:
          arg0 = compiler.compileExpression(operands[0], Type.f64);
          ret = module.createUnary(UnaryOp.ReinterpretF64, arg0);
          break;

        case TypeKind.USIZE:
          if (typeArguments[0].isReference) {
            compiler.error(DiagnosticCode.Operation_not_supported, reportNode.range);
            compiler.currentType = typeArguments[0];
            return module.createUnreachable();
          }
          // fall-through
        case TypeKind.ISIZE:
          arg0 = compiler.compileExpression(operands[0], compiler.options.target == Target.WASM64 ? Type.f64 : Type.f32);
          ret = module.createUnary(compiler.options.target == Target.WASM64 ? UnaryOp.ReinterpretF64 : UnaryOp.ReinterpretF32, arg0);
          break;

        case TypeKind.F32:
          arg0 = compiler.compileExpression(operands[0], Type.u32);
          ret = module.createUnary(UnaryOp.ReinterpretI32, arg0);
          break;

        case TypeKind.F64:
          arg0 = compiler.compileExpression(operands[0], Type.u64);
          ret = module.createUnary(UnaryOp.ReinterpretI64, arg0);
          break;

        default: // small integers and void
          compiler.error(DiagnosticCode.Operation_not_supported, reportNode.range);
          ret = module.createUnreachable();
          break;
      }
      compiler.currentType = typeArguments[0];
      return ret;

    case "sqrt": // sqrt<T?>(value: T) -> T
      if (operands.length != 1) {
        if (typeArguments) {
          if (typeArguments.length)
            compiler.currentType = typeArguments[0];
          if (typeArguments.length != 1)
            compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
        }
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "1", operands.length.toString(10));
        return module.createUnreachable();
      }
      if (typeArguments) {
        if (typeArguments.length != 1) {
          if (typeArguments.length)
            compiler.currentType = typeArguments[0];
          compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
          return module.createUnreachable();
        }
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
      } else
        arg0 = compiler.compileExpression(operands[0], Type.f64, ConversionKind.NONE);

      switch (compiler.currentType.kind) {

        // TODO: integer versions (that return f64 or convert)?

        case TypeKind.F32:
          ret = module.createUnary(UnaryOp.SqrtF32, arg0);
          break;

        case TypeKind.F64:
          ret = module.createUnary(UnaryOp.SqrtF64, arg0);
          break;

        default:
        // case TypeKind.VOID:
          compiler.error(DiagnosticCode.Operation_not_supported, reportNode.range);
          ret = module.createUnreachable();
          break;
      }
      return ret;

    case "trunc": // trunc<T?>(value: T) -> T
      if (operands.length != 1) {
        if (typeArguments) {
          if (typeArguments.length)
            compiler.currentType = typeArguments[0];
          if (typeArguments.length != 1)
            compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
        }
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "1", operands.length.toString(10));
        return module.createUnreachable();
      }
      if (typeArguments && typeArguments.length) {
        compiler.currentType = typeArguments[0];
        if (typeArguments.length != 1) {
          if (typeArguments.length)
            compiler.currentType = typeArguments[0];
          compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
          return module.createUnreachable();
        }
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
      } else
        arg0 = compiler.compileExpression(operands[0], Type.f64, ConversionKind.NONE);

      switch (compiler.currentType.kind) {

        case TypeKind.USIZE:
          if (compiler.currentType.isReference) {
            compiler.error(DiagnosticCode.Operation_not_supported, reportNode.range);
            ret = module.createUnreachable();
            break;
          }
          // fall-through
        default: // any integer
          ret = arg0;
          break;

        // TODO: truncate to contextual type directly (if not void etc.)?

        case TypeKind.F32:
          ret = module.createUnary(UnaryOp.TruncF32, arg0);
          break;

        case TypeKind.F64:
          ret = module.createUnary(UnaryOp.TruncF64, arg0);
          break;

        case TypeKind.VOID:
          compiler.error(DiagnosticCode.Operation_not_supported, reportNode.range);
          ret = module.createUnreachable();
          break;
      }
      return ret;

    // memory access

    case "load": // load<T!>(offset: usize) -> T
      if (operands.length != 1) {
        if (!(typeArguments && typeArguments.length == 1))
          compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments ? typeArguments.length.toString(10) : "0");
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "1", operands.length.toString(10));
        return module.createUnreachable();
      }
      if (!(typeArguments && typeArguments.length == 1)) {
        if (typeArguments && typeArguments.length)
          compiler.currentType = typeArguments[0];
        compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments ? typeArguments.length.toString(10) : "0");
        return module.createUnreachable();
      }
      arg0 = compiler.compileExpression(operands[0], usizeType);
      compiler.currentType = typeArguments[0];
      return module.createLoad(typeArguments[0].byteSize, typeArguments[0].is(TypeFlags.SIGNED | TypeFlags.INTEGER), arg0, typeArguments[0].toNativeType());

    case "store": // store<T?>(offset: usize, value: T) -> void
      compiler.currentType = Type.void;
      if (operands.length != 2) {
        if (typeArguments && typeArguments.length != 1)
          compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "2", operands.length.toString(10));
        return module.createUnreachable();
      }
      if (typeArguments) {
        if (typeArguments.length != 1) {
          compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
          return module.createUnreachable();
        }
        arg0 = compiler.compileExpression(operands[0], usizeType);
        arg1 = compiler.compileExpression(operands[1], typeArguments[0]);
      } else {
        arg0 = compiler.compileExpression(operands[0], usizeType);
        arg1 = compiler.compileExpression(operands[1], Type.i32, ConversionKind.NONE);
      }
      type = compiler.currentType;
      compiler.currentType = Type.void;
      return module.createStore(type.byteSize, arg0, arg1, type.toNativeType());

    case "sizeof": // sizeof<T!>() -> usize
      compiler.currentType = usizeType;
      if (operands.length != 0) {
        if (!(typeArguments && typeArguments.length == 1))
          compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments ? typeArguments.length.toString(10) : "0");
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "0", operands.length.toString(10));
        return module.createUnreachable();
      }
      if (typeArguments) {
        if (typeArguments.length != 1) {
          compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
          return module.createUnreachable();
        }
        ret = usizeType.size == 64 ? module.createI64(typeArguments[0].byteSize, 0) : module.createI32(typeArguments[0].byteSize);
      } else {
        compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", "0");
        return module.createUnreachable();
      }
      return ret;

    // control flow

    case "select": // select<T?>(ifTrue: T, ifFalse: T, condition: bool) -> T
      if (operands.length != 3) {
        if (typeArguments) {
          if (typeArguments.length)
            compiler.currentType = typeArguments[0];
          if (typeArguments.length != 1)
            compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
        }
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "3", operands.length.toString(10));
        return module.createUnreachable();
      }
      if (typeArguments) {
        if (typeArguments.length != 1) {
          if (typeArguments.length)
            compiler.currentType = typeArguments[0];
          compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
          return module.createUnreachable();
        }
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
      } else
        arg0 = compiler.compileExpression(operands[0], Type.i32, ConversionKind.NONE);
      arg1 = compiler.compileExpression(operands[1], type = compiler.currentType);
      arg2 = compiler.compileExpression(operands[2], Type.bool);
      compiler.currentType = type;

      switch (compiler.currentType.kind) {

        default: // any value type
          ret = module.createSelect(arg0, arg1, arg2);
          break;

        case TypeKind.VOID:
          compiler.error(DiagnosticCode.Operation_not_supported, reportNode.range);
          ret = module.createUnreachable();
          break;
      }
      return ret;

    case "unreachable": // unreachable() -> *
      if (operands.length != 0)
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "0", operands.length.toString(10));
      if (typeArguments)
        compiler.error(DiagnosticCode.Type_0_is_not_generic, reportNode.range, prototype.internalName);
      return module.createUnreachable();

    // host operations

    case "current_memory": // current_memory() -> i32
      compiler.currentType = Type.i32;
      if (operands.length != 0)
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "0", operands.length.toString(10));
      if (typeArguments)
        compiler.error(DiagnosticCode.Type_0_is_not_generic, reportNode.range, prototype.internalName);
      return module.createHost(HostOp.CurrentMemory);

    case "grow_memory": // grow_memory(pages: i32) -> i32
      compiler.currentType = Type.i32;
      if (operands.length != 1) {
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "0", operands.length.toString(10));
        arg0 = module.createUnreachable();
      } else
        arg0 = compiler.compileExpression(operands[0], Type.i32);
      if (typeArguments)
        compiler.error(DiagnosticCode.Type_0_is_not_generic, reportNode.range, prototype.internalName);
      return module.createHost(HostOp.GrowMemory, null, [ arg0 ]);

    // see: https://github.com/WebAssembly/bulk-memory-operations/blob/master/proposals/bulk-memory-operations/Overview.md
    case "move_memory": // move_memory(dest: usize, src: usize: n: usize) -> void
      if (typeArguments)
        compiler.error(DiagnosticCode.Type_0_is_not_generic, reportNode.range, prototype.internalName);
      if (operands.length != 3) {
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "3", operands.length.toString(10));
        compiler.currentType = Type.void;
        return module.createUnreachable();
      }
      arg0 = compiler.compileExpression(operands[0], usizeType);
      arg1 = compiler.compileExpression(operands[1], usizeType);
      arg2 = compiler.compileExpression(operands[2], usizeType);
      compiler.currentType = Type.void;
      throw new Error("not implemented");
      // return module.createHost(HostOp.MoveMemory, null, [ arg0, arg1, arg2 ]);

    case "set_memory": // set_memory(dest: usize, value: u32, n: usize) -> void
      if (typeArguments)
        compiler.error(DiagnosticCode.Type_0_is_not_generic, reportNode.range, prototype.internalName);
      if (operands.length != 3) {
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "3", operands.length.toString(10));
        compiler.currentType = Type.void;
        return module.createUnreachable();
      }
      arg0 = compiler.compileExpression(operands[0], usizeType);
      arg1 = compiler.compileExpression(operands[1], Type.u32);
      arg2 = compiler.compileExpression(operands[2], usizeType);
      compiler.currentType = Type.void;
      throw new Error("not implemented");
      // return module.createHost(HostOp.SetMemory, null, [ arg0, arg1, arg2 ]);

    // other

    case "changetype": // changetype<T!>(value: *) -> T
      if (!(typeArguments && typeArguments.length == 1)) {
        if (typeArguments && typeArguments.length)
          compiler.currentType = typeArguments[0];
        compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments ? typeArguments.length.toString(10) : "0");
        return module.createUnreachable();
      } else if (typeArguments[0].kind != TypeKind.USIZE) { // any usize
        compiler.error(DiagnosticCode.Operation_not_supported, reportNode.range);
        compiler.currentType = typeArguments[0];
        return module.createUnreachable();
      }
      if (operands.length != 1) {
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "1", operands.length.toString(10));
        compiler.currentType = typeArguments[0];
        return module.createUnreachable();
      }
      arg0 = compiler.compileExpression(operands[0], usizeType, ConversionKind.NONE);
      compiler.currentType = typeArguments[0];
      if (compiler.currentType.kind != TypeKind.USIZE) {
        compiler.error(DiagnosticCode.Operation_not_supported, reportNode.range);
        return module.createUnreachable();
      }
      return arg0; // any usize to any usize

    case "assert": // assert<T?>(isTrueish: T, message?: string) -> T with T != null (see also assembly.d.ts)
      if (operands.length < 1 || operands.length > 2) {
        if (typeArguments) {
          if (typeArguments.length)
            compiler.currentType = typeArguments[0].nonNullableType;
          if (typeArguments.length != 1)
            compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
        }
        if (operands.length < 1)
          compiler.error(DiagnosticCode.Expected_at_least_0_arguments_but_got_1, reportNode.range, "1", operands.length.toString(10));
        else if (operands.length > 2)
          compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "2", operands.length.toString(10));
        return module.createUnreachable();
      }
      if (typeArguments) {
        if (typeArguments.length)
          compiler.currentType = typeArguments[0].nonNullableType;
        if (typeArguments.length != 1) {
          compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "1", typeArguments.length.toString(10));
          return module.createUnreachable();
        }
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
      } else
        arg0 = compiler.compileExpression(operands[0], Type.i32, ConversionKind.NONE);

      // TODO: report message to embedder, requires strings
      type = compiler.currentType;
      // arg1 = operands.length == 2 ? compiler.compileExpression(operands[1], Type.string) : usizeType.toNativeZero(module);
      compiler.currentType = type.nonNullableType;

      // just return ifTrueish if assertions are disabled, or simplify if dropped anyway
      if (compiler.options.noAssert) {
        if (contextualType == Type.void) {
          compiler.currentType = Type.void;
          return module.createNop();
        }
        return arg0;
      }

      if (contextualType == Type.void) { // simplify if dropped anyway
        switch (compiler.currentType.kind) {

          default: // any integer up to 32-bits incl. bool
            ret = module.createIf(
              module.createUnary(UnaryOp.EqzI32,
                arg0
              ),
              module.createUnreachable()
            );
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            ret = module.createIf(
              module.createUnary(UnaryOp.EqzI64,
                arg0
              ),
              module.createUnreachable()
            );
            break;

          case TypeKind.ISIZE:
          case TypeKind.USIZE:
            ret = module.createIf(
              module.createUnary(compiler.options.target == Target.WASM64 ? UnaryOp.EqzI64 : UnaryOp.EqzI32,
                arg0
              ),
              module.createUnreachable()
            );
            break;

          // TODO: also check for NaN in float assertions, as in `Boolean(NaN) -> false`?

          case TypeKind.F32:
            ret = module.createIf(
              module.createBinary(BinaryOp.EqF32,
                arg0,
                module.createF32(0)
              ),
              module.createUnreachable()
            );
            break;

          case TypeKind.F64:
            ret = module.createIf(
              module.createBinary(BinaryOp.EqF64,
                arg0,
                module.createF64(0)
              ),
              module.createUnreachable()
            );
            break;

          case TypeKind.VOID:
            compiler.error(DiagnosticCode.Operation_not_supported, reportNode.range);
            ret = module.createUnreachable();
            break;
        }
        compiler.currentType = Type.void;
      } else {
        switch (compiler.currentType.kind) {

          default: // any integer up to 32-bits incl. bool
            tempLocal0 = compiler.currentFunction.getAndFreeTempLocal(Type.i32);
            ret = module.createIf(
              module.createUnary(UnaryOp.EqzI32,
                module.createTeeLocal(tempLocal0.index, arg0)
              ),
              module.createUnreachable(),
              module.createGetLocal(tempLocal0.index, NativeType.I32)
            );
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            tempLocal0 = compiler.currentFunction.getAndFreeTempLocal(Type.i64);
            ret = module.createIf(
              module.createUnary(UnaryOp.EqzI64,
                module.createTeeLocal(tempLocal0.index, arg0)
              ),
              module.createUnreachable(),
              module.createGetLocal(tempLocal0.index, NativeType.I64)
            );
            break;

          case TypeKind.ISIZE:
          case TypeKind.USIZE:
            tempLocal0 = compiler.currentFunction.getAndFreeTempLocal(usizeType);
            ret = module.createIf(
              module.createUnary(compiler.options.target == Target.WASM64 ? UnaryOp.EqzI64 : UnaryOp.EqzI32,
                module.createTeeLocal(tempLocal0.index, arg0)
              ),
              module.createUnreachable(),
              module.createGetLocal(tempLocal0.index, nativeUsizeType)
            );
            break;

          case TypeKind.F32:
            tempLocal0 = compiler.currentFunction.getAndFreeTempLocal(Type.f32);
            ret = module.createIf(
              module.createBinary(BinaryOp.EqF32,
                module.createTeeLocal(tempLocal0.index, arg0),
                module.createF32(0)
              ),
              module.createUnreachable(),
              module.createGetLocal(tempLocal0.index, NativeType.F32)
            );
            break;

          case TypeKind.F64:
            tempLocal0 = compiler.currentFunction.getAndFreeTempLocal(Type.f64);
            ret = module.createIf(
              module.createBinary(BinaryOp.EqF64,
                module.createTeeLocal(tempLocal0.index, arg0),
                module.createF64(0)
              ),
              module.createUnreachable(),
              module.createGetLocal(tempLocal0.index, NativeType.F64)
            );
            break;

          case TypeKind.VOID:
            compiler.error(DiagnosticCode.Operation_not_supported, reportNode.range);
            ret = module.createUnreachable();
            break;
        }
      }
      return ret;

    // conversions

    case "i8":
      if (typeArguments)
        compiler.error(DiagnosticCode.Type_0_is_not_generic, reportNode.range, prototype.internalName);
      if (operands.length != 1) {
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "1", operands.length.toString(10));
        compiler.currentType = Type.i8;
        return module.createUnreachable();
      }
      return compiler.compileExpression(operands[0], Type.i8, ConversionKind.EXPLICIT);

    case "i16":
      if (typeArguments)
        compiler.error(DiagnosticCode.Type_0_is_not_generic, reportNode.range, prototype.internalName);
      if (operands.length != 1) {
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "1", operands.length.toString(10));
        compiler.currentType = Type.i16;
        return module.createUnreachable();
      }
      return compiler.compileExpression(operands[0], Type.i16, ConversionKind.EXPLICIT);

    case "i32":
      if (typeArguments)
        compiler.error(DiagnosticCode.Type_0_is_not_generic, reportNode.range, prototype.internalName);
      if (operands.length != 1) {
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "1", operands.length.toString(10));
        compiler.currentType = Type.i32;
        return module.createUnreachable();
      }
      return compiler.compileExpression(operands[0], Type.i32, ConversionKind.EXPLICIT);

    case "i64":
      if (typeArguments)
        compiler.error(DiagnosticCode.Type_0_is_not_generic, reportNode.range, prototype.internalName);
      if (operands.length != 1) {
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "1", operands.length.toString(10));
        compiler.currentType = Type.i64;
        return module.createUnreachable();
      }
      return compiler.compileExpression(operands[0], Type.i64, ConversionKind.EXPLICIT);

    case "isize":
      if (typeArguments)
        compiler.error(DiagnosticCode.Type_0_is_not_generic, reportNode.range, prototype.internalName);
      if (operands.length != 1) {
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "1", operands.length.toString(10));
        compiler.currentType = compiler.options.target == Target.WASM64 ? Type.isize64 : Type.isize32;
        return module.createUnreachable();
      }
      return compiler.compileExpression(operands[0], compiler.options.target == Target.WASM64 ? Type.isize64 : Type.isize32, ConversionKind.EXPLICIT);

    case "u8":
      if (typeArguments)
        compiler.error(DiagnosticCode.Type_0_is_not_generic, reportNode.range, prototype.internalName);
      if (operands.length != 1) {
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "1", operands.length.toString(10));
        compiler.currentType = Type.u8;
        return module.createUnreachable();
      }
      return compiler.compileExpression(operands[0], Type.u8, ConversionKind.EXPLICIT);

    case "u16":
      if (typeArguments)
        compiler.error(DiagnosticCode.Type_0_is_not_generic, reportNode.range, prototype.internalName);
      if (operands.length != 1) {
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "1", operands.length.toString(10));
        compiler.currentType = Type.u16;
        return module.createUnreachable();
      }
      return compiler.compileExpression(operands[0], Type.u16, ConversionKind.EXPLICIT);

    case "u32":
      if (typeArguments)
        compiler.error(DiagnosticCode.Type_0_is_not_generic, reportNode.range, prototype.internalName);
      if (operands.length != 1) {
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "1", operands.length.toString(10));
        compiler.currentType = Type.u32;
        return module.createUnreachable();
      }
      return compiler.compileExpression(operands[0], Type.u32, ConversionKind.EXPLICIT);

    case "u64":
      if (typeArguments)
        compiler.error(DiagnosticCode.Type_0_is_not_generic, reportNode.range, prototype.internalName);
      if (operands.length != 1) {
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "1", operands.length.toString(10));
        compiler.currentType = Type.u64;
        return module.createUnreachable();
      }
      return compiler.compileExpression(operands[0], Type.u64, ConversionKind.EXPLICIT);

    case "usize":
      if (typeArguments)
        compiler.error(DiagnosticCode.Type_0_is_not_generic, reportNode.range, prototype.internalName);
      if (operands.length != 1) {
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "1", operands.length.toString(10));
        compiler.currentType = usizeType;
        return module.createUnreachable();
      }
      return compiler.compileExpression(operands[0], usizeType, ConversionKind.EXPLICIT);

    case "bool":
      if (typeArguments)
        compiler.error(DiagnosticCode.Type_0_is_not_generic, reportNode.range, prototype.internalName);
      if (operands.length != 1) {
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "1", operands.length.toString(10));
        compiler.currentType = Type.bool;
        return module.createUnreachable();
      }
      return compiler.compileExpression(operands[0], Type.bool, ConversionKind.EXPLICIT);

    case "f32":
      if (typeArguments)
        compiler.error(DiagnosticCode.Type_0_is_not_generic, reportNode.range, prototype.internalName);
      if (operands.length != 1) {
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "1", operands.length.toString(10));
        compiler.currentType = Type.f32;
        return module.createUnreachable();
      }
      return compiler.compileExpression(operands[0], Type.f32, ConversionKind.EXPLICIT);

    case "f64":
      if (typeArguments)
        compiler.error(DiagnosticCode.Type_0_is_not_generic, reportNode.range, prototype.internalName);
      if (operands.length != 1) {
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "1", operands.length.toString(10));
        compiler.currentType = Type.f64;
        return module.createUnreachable();
      }
      return compiler.compileExpression(operands[0], Type.f64, ConversionKind.EXPLICIT);
  }
  compiler.error(DiagnosticCode.Operation_not_supported, reportNode.range);
  return module.createUnreachable();
}
