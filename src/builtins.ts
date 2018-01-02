import {
  Compiler,
  Target,
  ConversionKind
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
  Type
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
  Local
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

  // imported
  addFunction(program, "parseInt");
  addFunction(program, "parseFloat");

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
  var global = new Global(program, name, name, null);
  global.isBuiltIn = true;
  global.isConstant = true;
  global.type = type;
  program.elements.set(name, global);
  return global;
}

/** Adds a built-in function to the specified program. */
function addFunction(program: Program, name: string, isGeneric: bool = false): FunctionPrototype {
  var prototype = new FunctionPrototype(program, name, name, null, null);
  prototype.isBuiltIn = true;
  if (isGeneric)
    prototype.isGeneric = true;
  program.elements.set(name, prototype);
  return prototype;
}

/** Compiles a get of a built-in global. */
export function compileGetConstant(compiler: Compiler, global: Global): ExpressionRef {
  switch (global.internalName) {

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

    default:
      throw new Error("not implemented: " + global.internalName);
  }
}

/** Compiles a call to a built-in function. */
export function compileCall(compiler: Compiler, prototype: FunctionPrototype, typeArguments: Type[] | null, operands: Expression[], reportNode: Node): ExpressionRef {
  var module = compiler.module;
  var usizeType = select<Type>(Type.usize64, Type.usize32, compiler.options.target == Target.WASM64);
  var nativeUsizeType = select<NativeType>(NativeType.I64, NativeType.I32, compiler.options.target == Target.WASM64);

  var arg0: ExpressionRef,
      arg1: ExpressionRef,
      arg2: ExpressionRef;

  var tempLocal0: Local,
      tempLocal1: Local;

  var ftype: FunctionTypeRef;

  switch (prototype.internalName) {

    // math

    case "isNaN": // isNaN<T>(value: T) -> bool
      compiler.currentType = Type.bool;
      if (!validateCall(compiler, typeArguments, 1, operands, 1, reportNode))
        return module.createUnreachable();
      if ((<Type[]>typeArguments)[0].isAnyInteger)
        return module.createI32(0);
      if ((<Type[]>typeArguments)[0].isAnyFloat) {
        arg0 = compiler.compileExpression(operands[0], (<Type[]>typeArguments)[0]); // reports
        compiler.currentType = Type.bool;
        if ((<Type[]>typeArguments)[0] == Type.f32) {
          tempLocal0 = compiler.currentFunction.getAndFreeTempLocal(Type.f32);
          return module.createBinary(BinaryOp.NeF32,
            module.createTeeLocal(tempLocal0.index, arg0),
            module.createGetLocal(tempLocal0.index, NativeType.F32)
          );
        } else {
          tempLocal0 = compiler.currentFunction.getAndFreeTempLocal(Type.f64);
          return module.createBinary(BinaryOp.NeF64,
            module.createTeeLocal(tempLocal0.index, arg0),
            module.createGetLocal(tempLocal0.index, NativeType.F64)
          );
        }
      }
      break;

    case "isFinite": // isFinite<T>(value: T) -> bool
      compiler.currentType = Type.bool;
      if (!validateCall(compiler, typeArguments, 1, operands, 1, reportNode))
        return module.createUnreachable();
      if ((<Type[]>typeArguments)[0].isAnyInteger)
        return module.createI32(1);
      if ((<Type[]>typeArguments)[0].isAnyFloat) {
        arg0 = compiler.compileExpression(operands[0], (<Type[]>typeArguments)[0]); // reports
        compiler.currentType = Type.bool;
        if ((<Type[]>typeArguments)[0] == Type.f32) {
          tempLocal0 = compiler.currentFunction.getAndFreeTempLocal(Type.f32);
          return module.createSelect(
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
        } else {
          tempLocal0 = compiler.currentFunction.getAndFreeTempLocal(Type.f64);
          return module.createSelect(
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
        }
      }
      break;

    case "clz": // clz<T>(value: T) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 1, reportNode))
        return module.createUnreachable();
      if ((compiler.currentType = (<Type[]>typeArguments)[0]).isAnyInteger) {
        arg0 = compiler.compileExpression(operands[0], (<Type[]>typeArguments)[0]);
        return (compiler.currentType = (<Type[]>typeArguments)[0]).isLongInteger // sic
          ? module.createUnary(UnaryOp.ClzI64, arg0)
          : (<Type[]>typeArguments)[0].isSmallInteger
          ? module.createBinary(BinaryOp.AndI32,
              module.createUnary(UnaryOp.ClzI32, arg0),
              module.createI32((<Type[]>typeArguments)[0].smallIntegerMask)
            )
          : module.createUnary(UnaryOp.ClzI32, arg0);
      }
      break;

    case "ctz": // ctz<T>(value: T) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 1, reportNode))
        return module.createUnreachable();
      if ((compiler.currentType = (<Type[]>typeArguments)[0]).isAnyInteger) {
        arg0 = compiler.compileExpression(operands[0], (<Type[]>typeArguments)[0]);
        return (compiler.currentType = (<Type[]>typeArguments)[0]).isLongInteger // sic
          ? module.createUnary(UnaryOp.CtzI64, arg0)
          : (<Type[]>typeArguments)[0].isSmallInteger
          ? module.createBinary(BinaryOp.AndI32,
              module.createUnary(UnaryOp.CtzI32, arg0),
              module.createI32((<Type[]>typeArguments)[0].smallIntegerMask)
            )
          : module.createUnary(UnaryOp.CtzI32, arg0);
      }
      break;

    case "popcnt": // popcnt<T>(value: T) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 1, reportNode))
        return module.createUnreachable();
      if ((compiler.currentType = (<Type[]>typeArguments)[0]).isAnyInteger) {
        arg0 = compiler.compileExpression(operands[0], (<Type[]>typeArguments)[0]);
        return (compiler.currentType = (<Type[]>typeArguments)[0]).isLongInteger // sic
          ? module.createUnary(UnaryOp.PopcntI64, arg0)
          : (<Type[]>typeArguments)[0].isSmallInteger
          ? module.createBinary(BinaryOp.AndI32,
              module.createUnary(UnaryOp.PopcntI32, arg0),
              module.createI32((<Type[]>typeArguments)[0].smallIntegerMask)
            )
          : module.createUnary(UnaryOp.PopcntI32, arg0);
      }
      break;

    case "rotl": // rotl<T>(value: T, shift: T) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 2, reportNode))
        return module.createUnreachable();
      if ((compiler.currentType = (<Type[]>typeArguments)[0]).isAnyInteger) {
        arg0 = compiler.compileExpression(operands[0], (<Type[]>typeArguments)[0]);
        arg1 = compiler.compileExpression(operands[1], (<Type[]>typeArguments)[0]);
        return (compiler.currentType = (<Type[]>typeArguments)[0]).isLongInteger // sic
          ? module.createBinary(BinaryOp.RotlI64, arg0, arg1)
          : (<Type[]>typeArguments)[0].isSmallInteger
          ? module.createBinary(BinaryOp.AndI32,
              module.createBinary(BinaryOp.RotlI32, arg0, arg1),
              module.createI32((<Type[]>typeArguments)[0].smallIntegerMask)
            )
          : module.createBinary(BinaryOp.RotlI32, arg0, arg1);
      }
      break;

    case "rotr": // rotr<T>(value: T, shift: T) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 2, reportNode))
        return module.createUnreachable();
      if ((compiler.currentType = (<Type[]>typeArguments)[0]).isAnyInteger) {
        arg0 = compiler.compileExpression(operands[0], (<Type[]>typeArguments)[0]);
        arg1 = compiler.compileExpression(operands[1], (<Type[]>typeArguments)[0]);
        return (compiler.currentType = (<Type[]>typeArguments)[0]).isLongInteger // sic
          ? module.createBinary(BinaryOp.RotrI64, arg0, arg1)
          : (<Type[]>typeArguments)[0].isSmallInteger
          ? module.createBinary(BinaryOp.AndI32,
              module.createBinary(BinaryOp.RotrI32, arg0, arg1),
              module.createI32((<Type[]>typeArguments)[0].smallIntegerMask)
            )
          : module.createBinary(BinaryOp.RotrI32, arg0, arg1);
      }
      break;

    case "abs": // abs<T>(value: T) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 1, reportNode))
        return module.createUnreachable();
      if ((compiler.currentType = (<Type[]>typeArguments)[0]) != Type.void) {
        arg0 = compiler.compileExpression(operands[0], (<Type[]>typeArguments)[0]);
        if ((compiler.currentType = (<Type[]>typeArguments)[0]).isAnyFloat) // sic
          return (<Type[]>typeArguments)[0] == Type.f32
            ? module.createUnary(UnaryOp.AbsF32, arg0)
            : module.createUnary(UnaryOp.AbsF64, arg0);
        if ((<Type[]>typeArguments)[0].isAnyInteger) {
          if ((<Type[]>typeArguments)[0].isSignedInteger) {
            tempLocal0 = compiler.currentFunction.getAndFreeTempLocal((<Type[]>typeArguments)[0]);
            if ((<Type[]>typeArguments)[0].isLongInteger)
              return module.createSelect(
                module.createBinary(BinaryOp.SubI64,
                  module.createI64(0, 0),
                  module.createTeeLocal(tempLocal0.index, arg0)
                ),
                module.createGetLocal(tempLocal0.index, NativeType.I64),
                module.createBinary(BinaryOp.LtI64,
                  module.createGetLocal(tempLocal0.index, NativeType.I64),
                  module.createI64(0, 0)
                )
              );
            else
              return module.createSelect(
                module.createBinary(BinaryOp.SubI32,
                  module.createI32(0),
                  module.createTeeLocal(tempLocal0.index, arg0)
                ),
                module.createGetLocal(tempLocal0.index, NativeType.I32),
                module.createBinary(BinaryOp.LtI32,
                  module.createGetLocal(tempLocal0.index, NativeType.I32),
                  module.createI32(0)
                )
              );
          } else
            return arg0;
        }
      }
      break;

    case "max": // max<T>(left: T, right: T) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 2, reportNode))
        return module.createUnreachable();
      if ((compiler.currentType = (<Type[]>typeArguments)[0]) != Type.void) {
        arg0 = compiler.compileExpression(operands[0], (<Type[]>typeArguments)[0]);
        arg1 = compiler.compileExpression(operands[1], (<Type[]>typeArguments)[0]);
        if ((compiler.currentType = (<Type[]>typeArguments)[0]).isAnyFloat) // sic
          return (<Type[]>typeArguments)[0] == Type.f32
            ? module.createBinary(BinaryOp.MaxF32, arg0, arg1)
            : module.createBinary(BinaryOp.MaxF64, arg0, arg1);
        if ((<Type[]>typeArguments)[0].isAnyInteger) {
          tempLocal0 = compiler.currentFunction.getTempLocal((<Type[]>typeArguments)[0]);
          tempLocal1 = compiler.currentFunction.getAndFreeTempLocal((<Type[]>typeArguments)[0]);
          compiler.currentFunction.freeTempLocal(tempLocal0);
          if ((<Type[]>typeArguments)[0].isLongInteger)
            return module.createSelect(
              module.createTeeLocal(tempLocal0.index, arg0),
              module.createTeeLocal(tempLocal1.index, arg1),
              module.createBinary((<Type[]>typeArguments)[0].isSignedInteger ? BinaryOp.GtI64 : BinaryOp.GtU64,
                module.createGetLocal(tempLocal0.index, NativeType.I64),
                module.createGetLocal(tempLocal1.index, NativeType.I64)
              )
            );
          else
            return module.createSelect(
              module.createTeeLocal(tempLocal0.index, arg0),
              module.createTeeLocal(tempLocal1.index, arg1),
              module.createBinary((<Type[]>typeArguments)[0].isSignedInteger ? BinaryOp.GtI32 : BinaryOp.GtU32,
                module.createGetLocal(tempLocal0.index, NativeType.I32),
                module.createGetLocal(tempLocal1.index, NativeType.I32)
              )
            );
        }
      }
      break;

    case "min": // min<T>(left: T, right: T) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 2, reportNode))
        return module.createUnreachable();
      if ((compiler.currentType = (<Type[]>typeArguments)[0]) != Type.void) {
        arg0 = compiler.compileExpression(operands[0], (<Type[]>typeArguments)[0]);
        arg1 = compiler.compileExpression(operands[1], (<Type[]>typeArguments)[0]);
        if ((compiler.currentType = (<Type[]>typeArguments)[0]).isAnyFloat) // sic
          return (<Type[]>typeArguments)[0] == Type.f32
            ? module.createBinary(BinaryOp.MinF32, arg0, arg1)
            : module.createBinary(BinaryOp.MinF64, arg0, arg1);
        if ((<Type[]>typeArguments)[0].isAnyInteger) {
          tempLocal0 = compiler.currentFunction.getTempLocal((<Type[]>typeArguments)[0]);
          tempLocal1 = compiler.currentFunction.getAndFreeTempLocal((<Type[]>typeArguments)[0]);
          compiler.currentFunction.freeTempLocal(tempLocal0);
          if ((<Type[]>typeArguments)[0].isLongInteger)
            return module.createSelect(
              module.createTeeLocal(tempLocal0.index, arg0),
              module.createTeeLocal(tempLocal1.index, arg1),
              module.createBinary((<Type[]>typeArguments)[0].isSignedInteger ? BinaryOp.LtI64 : BinaryOp.LtU64,
                module.createGetLocal(tempLocal0.index, NativeType.I64),
                module.createGetLocal(tempLocal1.index, NativeType.I64)
              )
            );
          else
            return module.createSelect(
              module.createTeeLocal(tempLocal0.index, arg0),
              module.createTeeLocal(tempLocal1.index, arg1),
              module.createBinary((<Type[]>typeArguments)[0].isSignedInteger ? BinaryOp.LtI32 : BinaryOp.LtU32,
                module.createGetLocal(tempLocal0.index, NativeType.I32),
                module.createGetLocal(tempLocal1.index, NativeType.I32)
              )
            );
        }
      }
      break;

    case "ceil": // ceil<T>(value: T) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 1, reportNode))
        return module.createUnreachable();
      if ((compiler.currentType = (<Type[]>typeArguments)[0]).isAnyFloat) {
        arg0 = compiler.compileExpression(operands[0], (<Type[]>typeArguments)[0]);
        return (compiler.currentType = (<Type[]>typeArguments)[0]) == Type.f32 // sic
          ? module.createUnary(UnaryOp.CeilF32, arg0)
          : module.createUnary(UnaryOp.CeilF64, arg0);
      }
      break;

    case "floor": // floor<T>(value: T) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 1, reportNode))
        return module.createUnreachable();
      if ((compiler.currentType = (<Type[]>typeArguments)[0]).isAnyFloat) {
        arg0 = compiler.compileExpression(operands[0], (<Type[]>typeArguments)[0]);
        return (compiler.currentType = (<Type[]>typeArguments)[0]) == Type.f32 // sic
          ? module.createUnary(UnaryOp.FloorF32, arg0)
          : module.createUnary(UnaryOp.FloorF64, arg0);
      }
      break;

    case "copysign": // copysign<T>(left: T, right: T) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 2, reportNode))
        return module.createUnreachable();
      if ((compiler.currentType = (<Type[]>typeArguments)[0]).isAnyFloat) {
        arg0 = compiler.compileExpression(operands[0], (<Type[]>typeArguments)[0]);
        arg1 = compiler.compileExpression(operands[1], (<Type[]>typeArguments)[0]);
        return (compiler.currentType = (<Type[]>typeArguments)[0]) == Type.f32 // sic
          ? module.createBinary(BinaryOp.CopysignF32, arg0, arg1)
          : module.createBinary(BinaryOp.CopysignF64, arg0, arg1);
      }
      break;

    case "nearest": // nearest<T>(value: T) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 1, reportNode))
        return module.createUnreachable();
      if ((compiler.currentType = (<Type[]>typeArguments)[0]).isAnyFloat) {
        arg0 = compiler.compileExpression(operands[0], (<Type[]>typeArguments)[0]);
        return (compiler.currentType = (<Type[]>typeArguments)[0]) == Type.f32 // sic
          ? module.createUnary(UnaryOp.NearestF32, arg0)
          : module.createUnary(UnaryOp.NearestF64, arg0);
      }
      break;

    case "reinterpret": // reinterpret<T1,T2>(value: T1) -> T2
      if (!validateCall(compiler, typeArguments, 2, operands, 1, reportNode))
        return module.createUnreachable();
      compiler.currentType = (<Type[]>typeArguments)[1];
      if ((<Type[]>typeArguments)[0].isLongInteger && (<Type[]>typeArguments)[1] == Type.f64) {
        arg0 = compiler.compileExpression(operands[0], Type.i64); // reports
        compiler.currentType = Type.f64;
        return module.createUnary(UnaryOp.ReinterpretI64, arg0);
      }
      if ((<Type[]>typeArguments)[0].isAnyInteger && (<Type[]>typeArguments)[0].byteSize == 4 && (<Type[]>typeArguments)[1] == Type.f32) {
        arg0 = compiler.compileExpression(operands[0], Type.i32); // reports
        compiler.currentType = Type.f32;
        return module.createUnary(UnaryOp.ReinterpretI32, arg0);
      }
      if ((<Type[]>typeArguments)[0] == Type.f64 && (<Type[]>typeArguments)[1].isLongInteger) {
        arg0 = compiler.compileExpression(operands[0], Type.f64); // reports
        compiler.currentType = (<Type[]>typeArguments)[1];
        return module.createUnary(UnaryOp.ReinterpretF64, arg0);
      }
      if ((<Type[]>typeArguments)[0] == Type.f32 && (<Type[]>typeArguments)[1].isAnyInteger && (<Type[]>typeArguments)[1].byteSize == 4) {
        arg0 = compiler.compileExpression(operands[0], Type.f32); // reports
        compiler.currentType = (<Type[]>typeArguments)[1];
        return module.createUnary(UnaryOp.ReinterpretF32, arg0);
      }
      break;

    case "sqrt": // sqrt<T>(value: T) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 1, reportNode))
        return module.createUnreachable();
      if ((compiler.currentType = (<Type[]>typeArguments)[0]).isAnyFloat) {
        arg0 = compiler.compileExpression(operands[0], (<Type[]>typeArguments)[0]);
        return (compiler.currentType = (<Type[]>typeArguments)[0]) == Type.f32 // sic
          ? module.createUnary(UnaryOp.SqrtF32, arg0)
          : module.createUnary(UnaryOp.SqrtF64, arg0);
      }
      break;

    case "trunc": // trunc<T>(value: T) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 1, reportNode))
        return module.createUnreachable();
      if ((compiler.currentType = (<Type[]>typeArguments)[0]).isAnyFloat) {
        arg0 = compiler.compileExpression(operands[0], (<Type[]>typeArguments)[0]);
        return (compiler.currentType = (<Type[]>typeArguments)[0]) == Type.f32 // sic
          ? module.createUnary(UnaryOp.TruncF32, arg0)
          : module.createUnary(UnaryOp.TruncF64, arg0);
      }
      break;

    // memory access

    case "load": // load<T>(offset: usize) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 1, reportNode))
        return module.createUnreachable();
      arg0 = compiler.compileExpression(operands[0], usizeType); // reports
      if ((compiler.currentType = (<Type[]>typeArguments)[0]) != Type.void)
        return module.createLoad((<Type[]>typeArguments)[0].byteSize, (<Type[]>typeArguments)[0].isSignedInteger, arg0, (<Type[]>typeArguments)[0].toNativeType());
      break;

    case "store": // store<T>(offset: usize, value: T) -> void
      compiler.currentType = Type.void;
      if (!validateCall(compiler, typeArguments, 1, operands, 2, reportNode))
        return module.createUnreachable();
      arg0 = compiler.compileExpression(operands[0], usizeType); // reports
      arg1 = compiler.compileExpression(operands[1], (<Type[]>typeArguments)[0]); // reports
      compiler.currentType = Type.void;
      if ((<Type[]>typeArguments)[0] != Type.void)
        return module.createStore((<Type[]>typeArguments)[0].byteSize, arg0, arg1, (<Type[]>typeArguments)[0].toNativeType());
      break;

    case "sizeof": // sizeof<T>() -> usize
      compiler.currentType = usizeType;
      if (!validateCall(compiler, typeArguments, 1, operands, 0, reportNode))
        return module.createUnreachable();
      return usizeType.isLongInteger
        ? module.createI64((<Type[]>typeArguments)[0].byteSize, 0)
        : module.createI32((<Type[]>typeArguments)[0].byteSize);

    // control flow

    case "select": // select<T>(ifTrue: T, ifFalse: T, condition: bool) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 3, reportNode))
        return module.createUnreachable();
      if ((<Type[]>typeArguments)[0] != Type.void) {
        arg0 = compiler.compileExpression(operands[0], (<Type[]>typeArguments)[0]); // reports
        arg1 = compiler.compileExpression(operands[1], (<Type[]>typeArguments)[0]); // reports
        arg2 = compiler.compileExpression(operands[2], Type.i32); // reports
        compiler.currentType = (<Type[]>typeArguments)[0];
        return module.createSelect(arg0, arg1, arg2);
      }
      break;

    case "unreachable": // unreachable() -> *
      // does not modify currentType
      validateCall(compiler, typeArguments, 0, operands, 0, reportNode);
      return module.createUnreachable();

    // host operations

    case "current_memory": // current_memory() -> i32
      compiler.currentType = Type.i32;
      if (!validateCall(compiler, typeArguments, 0, operands, 0, reportNode))
        return module.createUnreachable();
      return module.createHost(HostOp.CurrentMemory);

    case "grow_memory": // grow_memory(pages: i32) -> i32
      compiler.currentType = Type.i32;
      if (!validateCall(compiler, typeArguments, 0, operands, 1, reportNode))
        return module.createUnreachable();
      arg0 = compiler.compileExpression(operands[0], Type.i32);
      return module.createHost(HostOp.GrowMemory, null, [ arg0 ]);

    // see: https://github.com/WebAssembly/bulk-memory-operations/blob/master/proposals/bulk-memory-operations/Overview.md
    /*
    case "move_memory": // move_memory(dest: usize, src: usize: n: usize) -> void
      compiler.currentType = Type.void;
      if (!validateCall(compiler, typeArguments, 0, operands, 3, reportNode))
        return module.createUnreachable();
      arg0 = compiler.compileExpression(operands[0], usizeType);
      arg1 = compiler.compileExpression(operands[1], usizeType);
      arg2 = compiler.compileExpression(operands[2], usizeType);
      compiler.currentType = Type.void;
      return module.createHost(HostOp.MoveMemory, null, [ arg0, arg1, arg2 ]);

    case "set_memory": // set_memory(dest: usize, value: u32, n: usize) -> void
      compiler.currentType = Type.void;
      if (!validateCall(compiler, typeArguments, 0, operands, 3, reportNode))
        return module.createUnreachable();
      arg0 = compiler.compileExpression(operands[0], usizeType);
      arg1 = compiler.compileExpression(operands[1], Type.u32);
      arg2 = compiler.compileExpression(operands[2], usizeType);
      compiler.currentType = Type.void;
      return module.createHost(HostOp.SetMemory, null, [ arg0, arg1, arg2 ]);
    */

    // imported

    case "parseInt": // takes a pointer to the string
      compiler.currentType = Type.f64;
      if (typeArguments && typeArguments.length) {
        compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "0", typeArguments.length.toString(10));
        return module.createUnreachable();
      }
      if (operands.length < 1) {
        compiler.error(DiagnosticCode.Expected_at_least_0_arguments_but_got_1, reportNode.range, "1", operands.length.toString(10));
        return module.createUnreachable();
      }
      if (operands.length > 2) {
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "2", operands.length.toString(10));
        return module.createUnreachable();
      }
      if (!prototype.isCompiled) {
        if (!(ftype = module.getFunctionTypeBySignature(NativeType.F64, [ nativeUsizeType, NativeType.I32 ])))
              ftype = module.addFunctionType(nativeUsizeType == NativeType.I64 ? "FIi" : "Fii", NativeType.F64, [ nativeUsizeType, NativeType.I32 ]);
        module.addFunctionImport("parseInt", "env", "parseInt", ftype); // FIXME: can't call with i64 pointers (WASM64)
        prototype.isCompiled = true;
      }
      arg0 = compiler.compileExpression(operands[0], usizeType); // reports
      arg1 = operands.length == 2 ? compiler.compileExpression(operands[1], Type.i32) : module.createI32(-1); // -1 marks omitted
      return module.createCallImport("parseInt", [ arg0, arg1 ], NativeType.F64);

    case "parseFloat": // takes a pointer to the string
      compiler.currentType = Type.f64;
      if (!validateCall(compiler, typeArguments, 0, operands, 1, reportNode))
        return module.createUnreachable();
      if (!prototype.isCompiled) {
        if (!(ftype = module.getFunctionTypeBySignature(NativeType.F64, [ nativeUsizeType ])))
              ftype = module.addFunctionType(nativeUsizeType == NativeType.I64 ? "FI" : "Fi", NativeType.F64, [ nativeUsizeType ]);
        module.addFunctionImport("parseFloat", "env", "parseFloat", ftype); // FIXME: can't call with i64 pointers (WASM64)
        prototype.isCompiled = true;
      }
      arg0 = compiler.compileExpression(operands[0], usizeType); // reports
      return module.createCallImport("parseFloat", [ arg0 ], NativeType.F64);

    // other

    case "changetype": // changetype<T>(value: *) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 1, reportNode))
        return module.createUnreachable();
      arg0 = compiler.compileExpression(operands[0], Type.void, ConversionKind.NONE);
      if (compiler.currentType != Type.void && compiler.currentType.kind == (<Type[]>typeArguments)[0].kind) {
        compiler.currentType = (<Type[]>typeArguments)[0];
        return arg0;
      }
      compiler.error(DiagnosticCode.Type_0_cannot_be_changed_to_type_1, reportNode.range, compiler.currentType.toString(), (<Type[]>typeArguments)[0].toString());
      return module.createUnreachable();

    case "assert": // assert(isTrue: bool) -> void
      compiler.currentType = Type.void;
      if (typeArguments && typeArguments.length) {
        compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, "0", typeArguments.length.toString(10));
        return module.createUnreachable();
      }
      if (operands.length < 1) {
        compiler.error(DiagnosticCode.Expected_at_least_0_arguments_but_got_1, reportNode.range, "1", operands.length.toString(10));
        return module.createUnreachable();
      }
      if (operands.length > 2) {
        compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, "2", operands.length.toString(10));
        return module.createUnreachable();
      }
      arg0 = compiler.compileExpression(operands[0], Type.i32); // reports
      arg1 = operands.length > 1 ? compiler.compileExpression(operands[1], usizeType) : usizeType.toNativeZero(module); // TODO: string type
      compiler.currentType = Type.void;
      return compiler.options.noAssert
        ? module.createNop()
        : module.createIf(
            module.createUnary(UnaryOp.EqzI32, arg0),
            module.createUnreachable() // TODO: report message to embedder
          );

    // conversions

    case "i8":
      if (!validateCall(compiler, typeArguments, 0, operands, 1, reportNode))
        return module.createUnreachable();
      return compiler.compileExpression(operands[0], Type.i8, ConversionKind.EXPLICIT);

    case "i16":
      if (!validateCall(compiler, typeArguments, 0, operands, 1, reportNode))
        return module.createUnreachable();
      return compiler.compileExpression(operands[0], Type.i16, ConversionKind.EXPLICIT);

    case "i32":
      if (!validateCall(compiler, typeArguments, 0, operands, 1, reportNode))
        return module.createUnreachable();
      return compiler.compileExpression(operands[0], Type.i32, ConversionKind.EXPLICIT);

    case "i64":
      if (!validateCall(compiler, typeArguments, 0, operands, 1, reportNode))
        return module.createUnreachable();
      return compiler.compileExpression(operands[0], Type.i64, ConversionKind.EXPLICIT);

    case "isize":
      if (!validateCall(compiler, typeArguments, 0, operands, 1, reportNode))
        return module.createUnreachable();
      return compiler.compileExpression(operands[0], select<Type>(Type.isize64, Type.isize32, compiler.options.target == Target.WASM64), ConversionKind.EXPLICIT);

    case "u8":
      if (!validateCall(compiler, typeArguments, 0, operands, 1, reportNode))
        return module.createUnreachable();
      return compiler.compileExpression(operands[0], Type.u8, ConversionKind.EXPLICIT);

    case "u16":
      if (!validateCall(compiler, typeArguments, 0, operands, 1, reportNode))
        return module.createUnreachable();
      return compiler.compileExpression(operands[0], Type.u16, ConversionKind.EXPLICIT);

    case "u32":
      if (!validateCall(compiler, typeArguments, 0, operands, 1, reportNode))
        return module.createUnreachable();
      return compiler.compileExpression(operands[0], Type.u32, ConversionKind.EXPLICIT);

    case "u64":
      if (!validateCall(compiler, typeArguments, 0, operands, 1, reportNode))
        return module.createUnreachable();
      return compiler.compileExpression(operands[0], Type.u64, ConversionKind.EXPLICIT);

    case "usize":
      if (!validateCall(compiler, typeArguments, 0, operands, 1, reportNode))
        return module.createUnreachable();
      return compiler.compileExpression(operands[0], usizeType, ConversionKind.EXPLICIT);

    case "bool":
      if (!validateCall(compiler, typeArguments, 0, operands, 1, reportNode))
        return module.createUnreachable();
      return compiler.compileExpression(operands[0], Type.bool, ConversionKind.EXPLICIT);

    case "f32":
      if (!validateCall(compiler, typeArguments, 0, operands, 1, reportNode))
        return module.createUnreachable();
      return compiler.compileExpression(operands[0], Type.f32, ConversionKind.EXPLICIT);

    case "f64":
      if (!validateCall(compiler, typeArguments, 0, operands, 1, reportNode))
        return module.createUnreachable();
      return compiler.compileExpression(operands[0], Type.f64, ConversionKind.EXPLICIT);
  }
  return 0;
}

/** Pre-validates a call to a built-in function. */
function validateCall(compiler: Compiler, typeArguments: Type[] | null, expectedTypeArguments: i32, operands: Expression[], expectedOperands: i32, reportNode: Node): bool {
  var numTypeArguments = typeArguments && typeArguments.length || 0;
  if (numTypeArguments != expectedTypeArguments) {
    compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, expectedTypeArguments.toString(10), numTypeArguments.toString(10));
    return false;
  }
  if (operands.length != expectedOperands) {
    compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, expectedOperands.toString(10), operands.length.toString(10));
    return false;
  }
  return true;
}
