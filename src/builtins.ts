import { Compiler, Target, typeToNativeType, typeToNativeOne } from "./compiler";
import { DiagnosticCode } from "./diagnostics";
import { Node, Expression } from "./ast";
import { Type } from "./types";
import { Module, ExpressionRef, UnaryOp, BinaryOp, HostOp, NativeType, FunctionTypeRef } from "./module";
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
  addFunction(program, "changetype", true);
  addFunction(program, "isNaN", true);
  addFunction(program, "isFinite", true);
  addFunction(program, "assert");
  addFunction(program, "parseInt");
  addFunction(program, "parseFloat");
}

/** Adds a built-in function to the specified program. */
function addFunction(program: Program, name: string, isGeneric: bool = false): void {
  let prototype: FunctionPrototype = new FunctionPrototype(program, name, null, null);
  prototype.isBuiltIn = true;
  prototype.isGeneric = isGeneric;
  program.elements.set(name, prototype);
}

/** Compiles a call to a built-in function. */
export function compileCall(compiler: Compiler, prototype: FunctionPrototype, typeArguments: Type[], operands: Expression[], reportNode: Node): ExpressionRef {
  const module: Module = compiler.module;
  const usizeType: Type = select<Type>(Type.usize64, Type.usize32, compiler.options.target == Target.WASM64);
  const nativeUsizeType: NativeType = select<NativeType>(NativeType.I64, NativeType.I32, compiler.options.target == Target.WASM64);

  let arg0: ExpressionRef,
      arg1: ExpressionRef,
      arg2: ExpressionRef;

  let tempLocal0: Local;
  let tempLocal1: Local;

  let type: Type;
  var ftype: FunctionTypeRef;

  switch (prototype.internalName) {

    case "clz": // clz<T>(value: T) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 1, reportNode))
        return module.createUnreachable();
      if ((compiler.currentType = typeArguments[0]).isAnyInteger) {
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
        return (compiler.currentType = typeArguments[0]).isLongInteger // sic
          ? module.createUnary(UnaryOp.ClzI64, arg0)
          : typeArguments[0].isSmallInteger
          ? module.createBinary(BinaryOp.AndI32,
              module.createUnary(UnaryOp.ClzI32, arg0),
              module.createI32(typeArguments[0].smallIntegerMask)
            )
          : module.createUnary(UnaryOp.ClzI32, arg0);
      }
      break;

    case "ctz": // ctz<T>(value: T) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 1, reportNode))
        return module.createUnreachable();
      if ((compiler.currentType = typeArguments[0]).isAnyInteger) {
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
        return (compiler.currentType = typeArguments[0]).isLongInteger // sic
          ? module.createUnary(UnaryOp.CtzI64, arg0)
          : typeArguments[0].isSmallInteger
          ? module.createBinary(BinaryOp.AndI32,
              module.createUnary(UnaryOp.CtzI32, arg0),
              module.createI32(typeArguments[0].smallIntegerMask)
            )
          : module.createUnary(UnaryOp.CtzI32, arg0);
      }
      break;

    case "popcnt": // popcnt<T>(value: T) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 1, reportNode))
        return module.createUnreachable();
      if ((compiler.currentType = typeArguments[0]).isAnyInteger) {
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
        return (compiler.currentType = typeArguments[0]).isLongInteger // sic
          ? module.createUnary(UnaryOp.PopcntI64, arg0)
          : typeArguments[0].isSmallInteger
          ? module.createBinary(BinaryOp.AndI32,
              module.createUnary(UnaryOp.PopcntI32, arg0),
              module.createI32(typeArguments[0].smallIntegerMask)
            )
          : module.createUnary(UnaryOp.PopcntI32, arg0);
      }
      break;

    case "rotl": // rotl<T>(value: T, shift: T) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 2, reportNode))
        return module.createUnreachable();
      if ((compiler.currentType = typeArguments[0]).isAnyInteger) {
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
        arg1 = compiler.compileExpression(operands[1], typeArguments[0]);
        return (compiler.currentType = typeArguments[0]).isLongInteger // sic
          ? module.createBinary(BinaryOp.RotlI64, arg0, arg1)
          : typeArguments[0].isSmallInteger
          ? module.createBinary(BinaryOp.AndI32,
              module.createBinary(BinaryOp.RotlI32, arg0, arg1),
              module.createI32(typeArguments[0].smallIntegerMask)
            )
          : module.createBinary(BinaryOp.RotlI32, arg0, arg1);
      }
      break;

    case "rotr": // rotr<T>(value: T, shift: T) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 2, reportNode))
        return module.createUnreachable();
      if ((compiler.currentType = typeArguments[0]).isAnyInteger) {
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
        arg1 = compiler.compileExpression(operands[1], typeArguments[0]);
        return (compiler.currentType = typeArguments[0]).isLongInteger // sic
          ? module.createBinary(BinaryOp.RotrI64, arg0, arg1)
          : typeArguments[0].isSmallInteger
          ? module.createBinary(BinaryOp.AndI32,
              module.createBinary(BinaryOp.RotrI32, arg0, arg1),
              module.createI32(typeArguments[0].smallIntegerMask)
            )
          : module.createBinary(BinaryOp.RotrI32, arg0, arg1);
      }
      break;

    case "abs": // abs<T>(value: T) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 1, reportNode))
        return module.createUnreachable();
      if ((compiler.currentType = typeArguments[0]) != Type.void) {
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
        if ((compiler.currentType = typeArguments[0]).isAnyFloat) // sic
          return typeArguments[0] == Type.f32
            ? module.createUnary(UnaryOp.AbsF32, arg0)
            : module.createUnary(UnaryOp.AbsF64, arg0);
        if (typeArguments[0].isAnyInteger) {
          if (typeArguments[0].isSignedInteger) {
            tempLocal0 = compiler.currentFunction.addLocal(typeArguments[0]);
            if (typeArguments[0].isLongInteger)
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
      if ((compiler.currentType = typeArguments[0]) != Type.void) {
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
        arg1 = compiler.compileExpression(operands[1], typeArguments[0]);
        if ((compiler.currentType = typeArguments[0]).isAnyFloat) // sic
          return typeArguments[0] == Type.f32
            ? module.createBinary(BinaryOp.MaxF32, arg0, arg1)
            : module.createBinary(BinaryOp.MaxF64, arg0, arg1);
        if (typeArguments[0].isAnyInteger) {
          tempLocal0 = compiler.currentFunction.addLocal(typeArguments[0]);
          tempLocal1 = compiler.currentFunction.addLocal(typeArguments[0]);
          if (typeArguments[0].isLongInteger)
            return module.createSelect(
              module.createTeeLocal(tempLocal0.index, arg0),
              module.createTeeLocal(tempLocal1.index, arg1),
              module.createBinary(typeArguments[0].isSignedInteger ? BinaryOp.GtI64 : BinaryOp.GtU64,
                module.createGetLocal(tempLocal0.index, NativeType.I64),
                module.createGetLocal(tempLocal1.index, NativeType.I64)
              )
            );
          else
            return module.createSelect(
              module.createTeeLocal(tempLocal0.index, arg0),
              module.createTeeLocal(tempLocal1.index, arg1),
              module.createBinary(typeArguments[0].isSignedInteger ? BinaryOp.GtI32 : BinaryOp.GtU32,
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
      if ((compiler.currentType = typeArguments[0]) != Type.void) {
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
        arg1 = compiler.compileExpression(operands[1], typeArguments[0]);
        if ((compiler.currentType = typeArguments[0]).isAnyFloat) // sic
          return typeArguments[0] == Type.f32
            ? module.createBinary(BinaryOp.MinF32, arg0, arg1)
            : module.createBinary(BinaryOp.MinF64, arg0, arg1);
        if (typeArguments[0].isAnyInteger) {
          tempLocal0 = compiler.currentFunction.addLocal(typeArguments[0]);
          tempLocal1 = compiler.currentFunction.addLocal(typeArguments[0]);
          if (typeArguments[0].isLongInteger)
            return module.createSelect(
              module.createTeeLocal(tempLocal0.index, arg0),
              module.createTeeLocal(tempLocal1.index, arg1),
              module.createBinary(typeArguments[0].isSignedInteger ? BinaryOp.LtI64 : BinaryOp.LtU64,
                module.createGetLocal(tempLocal0.index, NativeType.I64),
                module.createGetLocal(tempLocal1.index, NativeType.I64)
              )
            );
          else
            return module.createSelect(
              module.createTeeLocal(tempLocal0.index, arg0),
              module.createTeeLocal(tempLocal1.index, arg1),
              module.createBinary(typeArguments[0].isSignedInteger ? BinaryOp.LtI32 : BinaryOp.LtU32,
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
      if ((compiler.currentType = typeArguments[0]).isAnyFloat) {
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
        return (compiler.currentType = typeArguments[0]) == Type.f32 // sic
          ? module.createUnary(UnaryOp.CeilF32, arg0)
          : module.createUnary(UnaryOp.CeilF64, arg0);
      }
      break;

    case "floor": // floor<T>(value: T) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 1, reportNode))
        return module.createUnreachable();
      if ((compiler.currentType = typeArguments[0]).isAnyFloat) {
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
        return (compiler.currentType = typeArguments[0]) == Type.f32 // sic
          ? module.createUnary(UnaryOp.FloorF32, arg0)
          : module.createUnary(UnaryOp.FloorF64, arg0);
      }
      break;

    case "copysign": // copysign<T>(left: T, right: T) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 2, reportNode))
        return module.createUnreachable();
      if ((compiler.currentType = typeArguments[0]).isAnyFloat) {
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
        arg1 = compiler.compileExpression(operands[1], typeArguments[0]);
        return (compiler.currentType = typeArguments[0]) == Type.f32 // sic
          ? module.createBinary(BinaryOp.CopysignF32, arg0, arg1)
          : module.createBinary(BinaryOp.CopysignF64, arg0, arg1);
      }
      break;

    case "nearest": // nearest<T>(value: T) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 1, reportNode))
        return module.createUnreachable();
      if ((compiler.currentType = typeArguments[0]).isAnyFloat) {
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
        return (compiler.currentType = typeArguments[0]) == Type.f32 // sic
          ? module.createUnary(UnaryOp.NearestF32, arg0)
          : module.createUnary(UnaryOp.NearestF64, arg0);
      }
      break;

    case "sqrt": // sqrt<T>(value: T) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 1, reportNode))
        return module.createUnreachable();
      if ((compiler.currentType = typeArguments[0]).isAnyFloat) {
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
        return (compiler.currentType = typeArguments[0]) == Type.f32 // sic
          ? module.createUnary(UnaryOp.SqrtF32, arg0)
          : module.createUnary(UnaryOp.SqrtF64, arg0);
      }
      break;

    case "trunc": // trunc<T>(value: T) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 1, reportNode))
        return module.createUnreachable();
      if ((compiler.currentType = typeArguments[0]).isAnyFloat) {
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
        return (compiler.currentType = typeArguments[0]) == Type.f32 // sic
          ? module.createUnary(UnaryOp.TruncF32, arg0)
          : module.createUnary(UnaryOp.TruncF64, arg0);
      }
      break;

    case "load": // load<T>(offset: usize) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 1, reportNode))
        return module.createUnreachable();
      arg0 = compiler.compileExpression(operands[0], usizeType); // reports
      if ((compiler.currentType = typeArguments[0]) != Type.void)
        return module.createLoad(typeArguments[0].byteSize, typeArguments[0].isSignedInteger, arg0, typeToNativeType(typeArguments[0]));
      break;

    case "store": // store<T>(offset: usize, value: T) -> void
      compiler.currentType = Type.void;
      if (!validateCall(compiler, typeArguments, 1, operands, 2, reportNode))
        return module.createUnreachable();
      arg0 = compiler.compileExpression(operands[0], usizeType); // reports
      arg1 = compiler.compileExpression(operands[1], typeArguments[0]); // reports
      compiler.currentType = Type.void;
      if (typeArguments[0] != Type.void)
        return module.createStore(typeArguments[0].byteSize, arg0, arg1, typeToNativeType(typeArguments[0]));
      break;

    case "reinterpret": // reinterpret<T1,T2>(value: T1) -> T2
      if (!validateCall(compiler, typeArguments, 2, operands, 1, reportNode))
        return module.createUnreachable();
      compiler.currentType = typeArguments[1];
      if (typeArguments[0].isLongInteger && typeArguments[1] == Type.f64) {
        arg0 = compiler.compileExpression(operands[0], Type.i64); // reports
        compiler.currentType = Type.f64;
        return module.createUnary(UnaryOp.ReinterpretI64, arg0);
      }
      if (typeArguments[0].isAnyInteger && typeArguments[0].byteSize == 4 && typeArguments[1] == Type.f32) {
        arg0 = compiler.compileExpression(operands[0], Type.i32); // reports
        compiler.currentType = Type.f32;
        return module.createUnary(UnaryOp.ReinterpretI32, arg0);
      }
      if (typeArguments[0] == Type.f64 && typeArguments[1].isLongInteger) {
        arg0 = compiler.compileExpression(operands[0], Type.f64); // reports
        compiler.currentType = typeArguments[1];
        return module.createUnary(UnaryOp.ReinterpretF64, arg0);
      }
      if (typeArguments[0] == Type.f32 && typeArguments[1].isAnyInteger && typeArguments[1].byteSize == 4) {
        arg0 = compiler.compileExpression(operands[0], Type.f32); // reports
        compiler.currentType = typeArguments[1];
        return module.createUnary(UnaryOp.ReinterpretF32, arg0);
      }
      break;

    case "select": // select<T>(ifTrue: T, ifFalse: T, condition: bool) -> T
      if (!validateCall(compiler, typeArguments, 1, operands, 3, reportNode))
        return module.createUnreachable();
      if (typeArguments[0] != Type.void) {
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]); // reports
        arg1 = compiler.compileExpression(operands[1], typeArguments[0]); // reports
        arg2 = compiler.compileExpression(operands[2], Type.i32); // reports
        compiler.currentType = typeArguments[0];
        return module.createSelect(arg0, arg1, arg2);
      }
      break;

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

    case "unreachable": // unreachable() -> *
      // does not modify currentType
      validateCall(compiler, typeArguments, 0, operands, 0, reportNode);
      return module.createUnreachable();

    case "sizeof": // sizeof<T>() -> usize
      compiler.currentType = usizeType;
      if (!validateCall(compiler, typeArguments, 1, operands, 0, reportNode))
        return module.createUnreachable();
      return usizeType.isLongInteger
        ? module.createI64(typeArguments[0].byteSize, 0)
        : module.createI32(typeArguments[0].byteSize);

    case "changetype": // changetype<T1,T2>(value: T1) -> T2
      if (!validateCall(compiler, typeArguments, 2, operands, 1, reportNode))
        return module.createUnreachable();
      if ((typeArguments[0] == usizeType && typeArguments[1].classType) || (typeArguments[0].classType && typeArguments[1] == usizeType)) {
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]);
        compiler.currentType = typeArguments[1];
        return arg0;
      }
      compiler.error(DiagnosticCode.Type_0_cannot_be_changed_to_type_1, reportNode.range, typeArguments[0].toString(), typeArguments[1].toString());
      return module.createUnreachable();

    case "isNaN": // isNaN<T>(value: T) -> bool
      compiler.currentType = Type.bool;
      if (!validateCall(compiler, typeArguments, 1, operands, 1, reportNode))
        return module.createUnreachable();
      if (typeArguments[0].isAnyInteger)
        return module.createI32(0);
      if (typeArguments[0].isAnyFloat) {
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]); // reports
        compiler.currentType = Type.bool;
        if (typeArguments[0] == Type.f32) {
          tempLocal0 = compiler.currentFunction.addLocal(Type.f32);
          return module.createBinary(BinaryOp.NeF32,
            module.createTeeLocal(tempLocal0.index, arg0),
            module.createGetLocal(tempLocal0.index, NativeType.F32)
          );
        } else {
          tempLocal0 = compiler.currentFunction.addLocal(Type.f64);
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
      if (typeArguments[0].isAnyInteger)
        return module.createI32(1);
      if (typeArguments[0].isAnyFloat) {
        arg0 = compiler.compileExpression(operands[0], typeArguments[0]); // reports
        compiler.currentType = Type.bool;
        if (typeArguments[0] == Type.f32) {
          tempLocal0 = compiler.currentFunction.addLocal(Type.f32);
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
          tempLocal0 = compiler.currentFunction.addLocal(Type.f64);
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

    case "assert": // assert(isTrue: bool) -> void
      compiler.currentType = Type.void;
      if (!validateCall(compiler, typeArguments, 0, operands, 1, reportNode))
        return module.createUnreachable();
      arg0 = compiler.compileExpression(operands[0], Type.i32); // reports
      compiler.currentType = Type.void;
      return compiler.options.noDebug
        ? module.createNop()
        : module.createIf(
            module.createUnary(UnaryOp.EqzI32, arg0),
            module.createUnreachable()
          );

    case "parseInt": // takes a pointer to the string
      compiler.currentType = Type.f64;
      if (typeArguments.length != 0) {
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
