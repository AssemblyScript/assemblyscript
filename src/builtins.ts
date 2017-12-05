import { Compiler, Target, typeToNativeType, typeToNativeOne } from "./compiler";
import { DiagnosticCode } from "./diagnostics";
import { Node, Expression } from "./ast";
import { Type } from "./types";
import { ExpressionRef, UnaryOp, BinaryOp, HostOp, NativeType } from "./module";
import { Program, FunctionPrototype, Local } from "./program";

/** Initializes the specified program with built-in functions. */
export function initialize(program: Program): void {
  addFunction(program, "clz", true);
  addFunction(program, "ctz", true);
  addFunction(program, "popcnt", true);
  addFunction(program, "rotl", true);
  addFunction(program, "rotr", true);
  addFunction(program, "abs", true);
  addFunction(program, "ceil", true);
  addFunction(program, "copysign", true);
  addFunction(program, "floor", true);
  addFunction(program, "max", true);
  addFunction(program, "min", true);
  addFunction(program, "nearest", true);
  addFunction(program, "sqrt", true);
  addFunction(program, "trunc", true);
  addFunction(program, "current_memory");
  addFunction(program, "grow_memory");
  addFunction(program, "unreachable");
  addFunction(program, "load", true);
  addFunction(program, "store", true);
  addFunction(program, "reinterpret", true);
  addFunction(program, "select", true);
  addFunction(program, "sizeof", true);
  addFunction(program, "isNaN", true);
  addFunction(program, "isFinite", true);
  addFunction(program, "assert");
  // addFunction(program, "fmod", false, true);
  // addFunction(program, "pow", true, true);
}

/** Adds a built-in function to the specified program. */
function addFunction(program: Program, name: string, isGeneric: bool = false, isImport: bool = false): void {
  let prototype: FunctionPrototype = new FunctionPrototype(program, name, null, null);
  prototype.isBuiltIn = true;
  prototype.isGeneric = isGeneric;
  prototype.isImport = isImport;
  program.elements.set(name, prototype);
}

/** Compiles a call to a built-in function. */
export function compileCall(compiler: Compiler, internalName: string, typeArguments: Type[], operands: Expression[], reportNode: Node): ExpressionRef {
  const usizeType: Type = select<Type>(Type.usize64, Type.usize32, compiler.options.target == Target.WASM64);

  let arg0: ExpressionRef,
      arg1: ExpressionRef,
      arg2: ExpressionRef;

  let tempLocal: Local;

  switch (internalName) {

    case "clz": // clz<T>(value: T) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 1, reportNode))
        return compiler.module.createUnreachable();
      if ((compiler.currentType = typeArguments[0]).isAnyInteger) {
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
        return (compiler.currentType = typeArguments[0]).isLongInteger // sic
          ? compiler.module.createUnary(UnaryOp.ClzI64, arg0)
          : typeArguments[0].isSmallInteger
          ? compiler.module.createBinary(BinaryOp.AndI32,
              compiler.module.createUnary(UnaryOp.ClzI32, arg0),
              compiler.module.createI32(typeArguments[0].smallIntegerMask)
            )
          : compiler.module.createUnary(UnaryOp.ClzI32, arg0);
      }
      break;

    case "ctz": // ctz<T>(value: T) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 1, reportNode))
        return compiler.module.createUnreachable();
      if ((compiler.currentType = typeArguments[0]).isAnyInteger) {
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
        return (compiler.currentType = typeArguments[0]).isLongInteger // sic
          ? compiler.module.createUnary(UnaryOp.CtzI64, arg0)
          : typeArguments[0].isSmallInteger
          ? compiler.module.createBinary(BinaryOp.AndI32,
              compiler.module.createUnary(UnaryOp.CtzI32, arg0),
              compiler.module.createI32(typeArguments[0].smallIntegerMask)
            )
          : compiler.module.createUnary(UnaryOp.CtzI32, arg0);
      }
      break;

    case "popcnt": // popcnt<T>(value: T) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 1, reportNode))
        return compiler.module.createUnreachable();
      if ((compiler.currentType = typeArguments[0]).isAnyInteger) {
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
        return (compiler.currentType = typeArguments[0]).isLongInteger // sic
          ? compiler.module.createUnary(UnaryOp.PopcntI64, arg0)
          : typeArguments[0].isSmallInteger
          ? compiler.module.createBinary(BinaryOp.AndI32,
              compiler.module.createUnary(UnaryOp.PopcntI32, arg0),
              compiler.module.createI32(typeArguments[0].smallIntegerMask)
            )
          : compiler.module.createUnary(UnaryOp.PopcntI32, arg0);
      }
      break;

    case "rotl": // rotl<T>(value: T, shift: T) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 2, reportNode))
        return compiler.module.createUnreachable();
      if ((compiler.currentType = typeArguments[0]).isAnyInteger) {
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
        arg1 = compiler.compileExpression(operands[1], typeArguments[0]);
        return (compiler.currentType = typeArguments[0]).isLongInteger // sic
          ? compiler.module.createBinary(BinaryOp.RotlI64, arg0, arg1)
          : typeArguments[0].isSmallInteger
          ? compiler.module.createBinary(BinaryOp.AndI32,
              compiler.module.createBinary(BinaryOp.RotlI32, arg0, arg1),
              compiler.module.createI32(typeArguments[0].smallIntegerMask)
            )
          : compiler.module.createBinary(BinaryOp.RotlI32, arg0, arg1);
      }
      break;

    case "rotr": // rotr<T>(value: T, shift: T) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 2, reportNode))
        return compiler.module.createUnreachable();
      if ((compiler.currentType = typeArguments[0]).isAnyInteger) {
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
        arg1 = compiler.compileExpression(operands[1], typeArguments[0]);
        return (compiler.currentType = typeArguments[0]).isLongInteger // sic
          ? compiler.module.createBinary(BinaryOp.RotrI64, arg0, arg1)
          : typeArguments[0].isSmallInteger
          ? compiler.module.createBinary(BinaryOp.AndI32,
              compiler.module.createBinary(BinaryOp.RotrI32, arg0, arg1),
              compiler.module.createI32(typeArguments[0].smallIntegerMask)
            )
          : compiler.module.createBinary(BinaryOp.RotrI32, arg0, arg1);
      }
      break;

    case "abs": // abs<T>(value: T) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 1, reportNode))
        return compiler.module.createUnreachable();
      if ((compiler.currentType = typeArguments[0]) != Type.void) {
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
        if ((compiler.currentType = typeArguments[0]).isAnyFloat) // sic
          return typeArguments[0] == Type.f32
            ? compiler.module.createUnary(UnaryOp.AbsF32, arg0)
            : compiler.module.createUnary(UnaryOp.AbsF64, arg0);
        if (typeArguments[0].isAnyInteger) {
          // TODO: ternaries for integers
        }
      }
      break;

    case "max": // max<T>(left: T, right: T) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 2, reportNode))
        return compiler.module.createUnreachable();
      if ((compiler.currentType = typeArguments[0]) != Type.void) {
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
        arg1 = compiler.compileExpression(operands[1], typeArguments[0]);
        if ((compiler.currentType = typeArguments[0]).isAnyFloat) // sic
          return typeArguments[0] == Type.f32
            ? compiler.module.createBinary(BinaryOp.MaxF32, arg0, arg1)
            : compiler.module.createBinary(BinaryOp.MaxF64, arg0, arg1);
        if (typeArguments[0].isAnyInteger) {
          // TODO: ternaries for integers
        }
      }
      break;

    case "min": // min<T>(left: T, right: T) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 2, reportNode))
        return compiler.module.createUnreachable();
      if ((compiler.currentType = typeArguments[0]) != Type.void) {
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
        arg1 = compiler.compileExpression(operands[1], typeArguments[0]);
        if ((compiler.currentType = typeArguments[0]).isAnyFloat) // sic
          return typeArguments[0] == Type.f32
            ? compiler.module.createBinary(BinaryOp.MinF32, arg0, arg1)
            : compiler.module.createBinary(BinaryOp.MinF64, arg0, arg1);
        if (typeArguments[0].isAnyInteger) {
          // TODO: ternaries for integers
        }
      }
      break;

    case "ceil": // ceil<T>(value: T) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 1, reportNode))
        return compiler.module.createUnreachable();
      if ((compiler.currentType = typeArguments[0]).isAnyFloat) {
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
        return (compiler.currentType = typeArguments[0]) == Type.f32 // sic
          ? compiler.module.createUnary(UnaryOp.CeilF32, arg0)
          : compiler.module.createUnary(UnaryOp.CeilF64, arg0);
      }
      break;

    case "floor": // floor<T>(value: T) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 1, reportNode))
        return compiler.module.createUnreachable();
      if ((compiler.currentType = typeArguments[0]).isAnyFloat) {
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
        return (compiler.currentType = typeArguments[0]) == Type.f32 // sic
          ? compiler.module.createUnary(UnaryOp.FloorF32, arg0)
          : compiler.module.createUnary(UnaryOp.FloorF64, arg0);
      }
      break;

    case "copysign": // copysign<T>(left: T, right: T) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 2, reportNode))
        return compiler.module.createUnreachable();
      if ((compiler.currentType = typeArguments[0]).isAnyFloat) {
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
        arg1 = compiler.compileExpression(operands[1], typeArguments[0]);
        return (compiler.currentType = typeArguments[0]) == Type.f32 // sic
          ? compiler.module.createBinary(BinaryOp.CopysignF32, arg0, arg1)
          : compiler.module.createBinary(BinaryOp.CopysignF64, arg0, arg1);
      }
      break;

    case "nearest":
      if (!validateCall(compiler, typeArguments, 1, operands, 1, reportNode))
        return compiler.module.createUnreachable();
      if ((compiler.currentType = typeArguments[0]).isAnyFloat) {
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
        return (compiler.currentType = typeArguments[0]) == Type.f32 // sic
          ? compiler.module.createUnary(UnaryOp.NearestF32, arg0)
          : compiler.module.createUnary(UnaryOp.NearestF64, arg0);
      }
      break;

    case "sqrt":
      if (!validateCall(compiler, typeArguments, 1, operands, 1, reportNode))
        return compiler.module.createUnreachable();
      if ((compiler.currentType = typeArguments[0]).isAnyFloat) {
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
        return (compiler.currentType = typeArguments[0]) == Type.f32 // sic
          ? compiler.module.createUnary(UnaryOp.SqrtF32, arg0)
          : compiler.module.createUnary(UnaryOp.SqrtF64, arg0);
      }
      break;

    case "trunc":
      if (!validateCall(compiler, typeArguments, 1, operands, 1, reportNode))
        return compiler.module.createUnreachable();
      if ((compiler.currentType = typeArguments[0]).isAnyFloat) {
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
        return (compiler.currentType = typeArguments[0]) == Type.f32 // sic
          ? compiler.module.createUnary(UnaryOp.TruncF32, arg0)
          : compiler.module.createUnary(UnaryOp.TruncF64, arg0);
      }
      break;

    case "sizeof": // sizeof<T>() -> usize
      compiler.currentType = usizeType;
      if (!validateCall(compiler, typeArguments, 1, operands, 0, reportNode))
        return compiler.module.createUnreachable();
      return usizeType.isLongInteger
        ? compiler.module.createI64(typeArguments[0].byteSize, 0)
        : compiler.module.createI32(typeArguments[0].byteSize);

    case "load": // load<T>(offset: usize) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 1, reportNode))
        return compiler.module.createUnreachable();
      arg0 = compiler.compileExpression(operands[0], usizeType); // reports
      if ((compiler.currentType = typeArguments[0]) != Type.void)
        return compiler.module.createLoad(typeArguments[0].byteSize, typeArguments[0].isSignedInteger, arg0, typeToNativeType(typeArguments[0]));
      break;

    case "store": // store<T>(offset: usize, value: T) -> void
      compiler.currentType = Type.void;
      if (!validateCall(compiler, typeArguments, 1, operands, 2, reportNode))
        return compiler.module.createUnreachable();
      arg0 = compiler.compileExpression(operands[0], usizeType); // reports
      arg1 = compiler.compileExpression(operands[1], typeArguments[0]); // reports
      compiler.currentType = Type.void;
      if (typeArguments[0] != Type.void)
        return compiler.module.createStore(typeArguments[0].byteSize, arg0, arg1, typeToNativeType(typeArguments[0]));
      break;

    case "reinterpret": // reinterpret<T1,T2>(value: T1) -> T2
      if (!validateCall(compiler, typeArguments, 2, operands, 1, reportNode))
        return compiler.module.createUnreachable();
      compiler.currentType = typeArguments[1];
      if (typeArguments[0].isLongInteger && typeArguments[1] == Type.f64) {
        arg0 = compiler.compileExpression(operands[0], Type.i64); // reports
        compiler.currentType = Type.f64;
        return compiler.module.createUnary(UnaryOp.ReinterpretI64, arg0);
      }
      if (typeArguments[0].isAnyInteger && typeArguments[0].byteSize == 4 && typeArguments[1] == Type.f32) {
        arg0 = compiler.compileExpression(operands[0], Type.i32); // reports
        compiler.currentType = Type.f32;
        return compiler.module.createUnary(UnaryOp.ReinterpretI32, arg0);
      }
      if (typeArguments[0] == Type.f64 && typeArguments[1].isLongInteger) {
        arg0 = compiler.compileExpression(operands[0], Type.f64); // reports
        compiler.currentType = typeArguments[1];
        return compiler.module.createUnary(UnaryOp.ReinterpretF64, arg0);
      }
      if (typeArguments[0] == Type.f32 && typeArguments[1].isAnyInteger && typeArguments[1].byteSize == 4) {
        arg0 = compiler.compileExpression(operands[0], Type.f32); // reports
        compiler.currentType = typeArguments[1];
        return compiler.module.createUnary(UnaryOp.ReinterpretF32, arg0);
      }
      break;

    case "select": // select<T>(ifTrue: T, ifFalse: T, condition: bool) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 3, reportNode))
        return compiler.module.createUnreachable();
      if (typeArguments[0] != Type.void) {
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]); // reports
        arg1 = compiler.compileExpression(operands[1], typeArguments[0]); // reports
        arg2 = compiler.compileExpression(operands[2], Type.i32); // reports
        compiler.currentType = typeArguments[0];
        return compiler.module.createSelect(arg0, arg1, arg2);
      }
      break;

    case "current_memory": // current_memory() -> i32
      compiler.currentType = Type.i32;
      if (!validateCall(compiler, typeArguments, 0, operands, 0, reportNode))
        return compiler.module.createUnreachable();
      return compiler.module.createHost(HostOp.CurrentMemory);

    case "grow_memory": // grow_memory(pages: i32) -> i32
      compiler.currentType = Type.i32;
      if (!validateCall(compiler, typeArguments, 0, operands, 1, reportNode))
        return compiler.module.createUnreachable();
      arg0 = compiler.compileExpression(operands[0], Type.i32);
      return compiler.module.createHost(HostOp.GrowMemory, null, [ arg0 ]);

    case "unreachable": // unreachable() -> *
      // does not modify currentType
      validateCall(compiler, typeArguments, 0, operands, 0, reportNode);
      return compiler.module.createUnreachable();

    case "isNaN":
      compiler.currentType = Type.bool;
      if (!validateCall(compiler, typeArguments, 1, operands, 1, reportNode))
        return compiler.module.createUnreachable();
      if (typeArguments[0].isAnyInteger)
        return compiler.module.createI32(0);
      if (typeArguments[0].isAnyFloat) {
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]); // reports
        compiler.currentType = Type.bool;
        if (typeArguments[0] == Type.f32) {
          tempLocal = compiler.currentFunction.addLocal(Type.f32);
          return compiler.module.createBinary(BinaryOp.NeF32,
            compiler.module.createTeeLocal(tempLocal.index, arg0),
            compiler.module.createGetLocal(tempLocal.index, NativeType.F32)
          );
        } else {
          tempLocal = compiler.currentFunction.addLocal(Type.f64);
          return compiler.module.createBinary(BinaryOp.NeF64,
            compiler.module.createTeeLocal(tempLocal.index, arg0),
            compiler.module.createGetLocal(tempLocal.index, NativeType.F64)
          );
        }
      }
      break;

    case "isFinite":
      compiler.currentType = Type.bool;
      if (!validateCall(compiler, typeArguments, 1, operands, 1, reportNode))
        return compiler.module.createUnreachable();
      if (typeArguments[0].isAnyInteger)
        return compiler.module.createI32(1);
      if (typeArguments[0].isAnyFloat) {
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]); // reports
        compiler.currentType = Type.bool;
        if (typeArguments[0] == Type.f32) {
          tempLocal = compiler.currentFunction.addLocal(Type.f32);
          return compiler.module.createSelect(
            compiler.module.createBinary(BinaryOp.NeF32,
              compiler.module.createUnary(UnaryOp.AbsF32,
                compiler.module.createTeeLocal(tempLocal.index, arg0)
              ),
              compiler.module.createF32(Infinity)
            ),
            compiler.module.createI32(0),
            compiler.module.createBinary(BinaryOp.EqF32,
              compiler.module.createGetLocal(tempLocal.index, NativeType.F32),
              compiler.module.createGetLocal(tempLocal.index, NativeType.F32)
            )
          );
        } else {
          tempLocal = compiler.currentFunction.addLocal(Type.f64);
          return compiler.module.createSelect(
            compiler.module.createBinary(BinaryOp.NeF64,
              compiler.module.createUnary(UnaryOp.AbsF64,
                compiler.module.createTeeLocal(tempLocal.index, arg0)
              ),
              compiler.module.createF64(Infinity)
            ),
            compiler.module.createI32(0),
            compiler.module.createBinary(BinaryOp.EqF64,
              compiler.module.createGetLocal(tempLocal.index, NativeType.F64),
              compiler.module.createGetLocal(tempLocal.index, NativeType.F64)
            )
          );
        }
      }
      break;

    case "assert":
      compiler.currentType = Type.void;
      if (!validateCall(compiler, typeArguments, 0, operands, 1, reportNode))
        return compiler.module.createUnreachable();
      arg0 = compiler.compileExpression(operands[0], Type.i32); // reports
      compiler.currentType = Type.void;
      return compiler.options.noDebug
        ? compiler.module.createNop()
        : compiler.module.createIf(
            compiler.module.createUnary(UnaryOp.EqzI32, arg0),
            compiler.module.createUnreachable()
          );

    // case "fmod":
    // case "pow":
  }
  return 0;
}

/** Validates a call to a built-in function. */
function validateCall(compiler: Compiler, typeArguments: Type[], expectedTypeArguments: i32, operands: Expression[], expectedOperands: i32, reportNode: Node): bool {
  if (typeArguments.length != expectedTypeArguments) {
    compiler.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, reportNode.range, expectedTypeArguments.toString(10), typeArguments.length.toString(10));
    return false;
  }
  if (operands.length != expectedOperands) {
    compiler.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range, expectedOperands.toString(10), operands.length.toString(10));
    return false;
  }
  return true;
}
