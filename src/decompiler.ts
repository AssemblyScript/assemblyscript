/**
 * A decompiler that generates low-level AssemblyScript from WebAssembly binaries.
 * @module decompiler
 *//***/

import {
  Module,
  NativeType,
  ExpressionId,
  UnaryOp,
  BinaryOp,
  HostOp,
  FunctionRef,
  ExpressionRef,
  Index,
  getFunctionName,
  getFunctionBody,
  getFunctionParamCount,
  getFunctionParamType,
  getFunctionResultType,
  getExpressionId,
  getExpressionType,
  // getBlockName,
  getBlockChildCount,
  getBlockChild,
  getIfCondition,
  getIfTrue,
  getIfFalse,
  // getLoopName,
  getLoopBody,
  getBreakName,
  getBreakCondition,
  getGetLocalIndex,
  getSetLocalIndex,
  getSetLocalValue,
  getLoadOffset,
  getLoadPtr,
  getStoreOffset,
  getStorePtr,
  getStoreValue,
  getConstValueI32,
  getConstValueI64Low,
  getConstValueI64High,
  getConstValueF32,
  getConstValueF64,
  getUnaryOp,
  getUnaryValue,
  getBinaryOp,
  getBinaryLeft,
  getBinaryRight,
  getSelectThen,
  getSelectElse,
  getSelectCondition,
  getDropValue,
  getReturnValue,
  getHostOp,
  getHostOperand,
  getCallTarget,
  getSetGlobalValue,
  readString,
  getGlobalGetName,
} from "./module";

// TODO :-)

export class Decompiler {

  static decompile(module: Module): string {
    var decompiler = new Decompiler();
    decompiler.decompile(module);
    return decompiler.finish();
  }

  static fromBuffer(buffer: Uint8Array): Module {
    return Module.createFrom(buffer);
  }

  text: string[] = [];
  functionId: i32 = 0;
  depth: i32 = 0;
  currentfunction: string = "";

  constructor() { }

  /** Decompiles a module to an AST that can then be serialized. */
  decompile(_module: Module): void {
    throw new Error("not implemented");
  }

  decompileFunction(func: FunctionRef): void {
    var name = getFunctionName(func) || "$" + this.functionId.toString(10);
    var body = getFunctionBody(func);
    this.push("function ");
    this.push(name);
    this.currentfunction = name;
    this.push("(");
     for (let i: Index = 0, k: Index = getFunctionParamCount(func); i < k; ++i) {
      if (i > 0) this.push(", ");
      this.push("$");
      this.push(i.toString(10));
      this.push(": ");
      this.push(nativeTypeToType(getFunctionParamType(func, i)));
    }
    this.push("): ");
    this.push(nativeTypeToType(getFunctionResultType(func)));
    this.push(" {");
    this.depth = 1;
    this.startLine();
    this.addReturn(body);
    log(`${this.currentfunction}--${getExpressionId(body)}`);
    this.decompileExpression(body, true);
    // this.addSemicolon(body);
    this.push("\n}\n");
    ++this.functionId;
  }

  decompileExpression(expr: ExpressionRef, first: boolean = false): void {
    if (!expr) { return; } //The function is an import, etc.
    var id = getExpressionId(expr);
    var type = getExpressionType(expr);
    var nested: ExpressionRef;
    var string: string | null;
    var i: Index, k: Index;
    switch (id) {
      case ExpressionId.Block: { // TODO: magic
        log(`${this.currentfunction} Block`);
        // if ((string = getBlockName(expr)) != null) {
        //   this.push(string);
        //   this.push(": ");
        // }
        k = getBlockChildCount(expr);
        if (k == 0) {
          if (first) {
            this.push("return; ");
          }
          return;
        }
        for (i = 0; i < k; ++i) {
          let childExpr = getBlockChild(expr, i);
          if (i != 0) {
            this.startLine();
          }
          if (this.depth == 1 && i == k - 1) {
            this.push("return ");
          }
          this.decompileExpression(childExpr);
          if (i < k - 1) {
            this.addSemicolon(childExpr);
          }
        }
        break;
      }
      case ExpressionId.If: {
        log(`${this.currentfunction} If`);
        if (type == NativeType.None) {
          this.push("if (");
          this.decompileExpression(getIfCondition(expr));
          this.push(") ");
          this.decompileNestedExpression(getIfTrue(expr));
          if (nested = getIfFalse(expr)) {
            this.push(" else ");
            this.decompileNestedExpression(nested);
          }
        } else {
          this.decompileExpression(getIfCondition(expr));
          this.push(" ? ");
          this.decompileExpression(getIfTrue(expr));
          this.push(" : ");
          this.decompileExpression(getIfFalse(expr));
        }
        return;
      }
      case ExpressionId.Loop: {
        log(`${this.currentfunction} Loop`);
        this.push("do ");
        this.decompileNestedExpression(getLoopBody(expr));
        this.push(" while (1)");
        break;
      }
      case ExpressionId.Break: {
        log(`${this.currentfunction} Break`);

        if (nested = getBreakCondition(expr)) {
          this.push("if (");
          this.decompileExpression(nested);
          this.push(") ");
        }
        if ((string = getBreakName(expr)) != null) {
          this.push("break;");
          // this.push(string);
          // this.push(";\n");
        } else {
          this.push("break;");
        }
        return;
      }
      case ExpressionId.Switch: {
        throw new Error("not implemented switch");
      }
      case ExpressionId.Call: {
        log(`${this.currentfunction} Call`);

        let funcName = (getCallTarget(expr) || "");
        funcName = funcName.endsWith(";") ? funcName.substring(0,funcName.length - 1 ) : funcName;
        this.push(funcName);
        this.push("(");
        let argc = _BinaryenCallGetNumOperands(expr);
        for (let i: isize = 0; i < argc; i++) {
          this.decompileExpression(_BinaryenCallGetOperand(expr,i));
          if (i < argc - 1) {
            this.push(", ");
          }
        }
        this.push(")");
        break;
      }
      case ExpressionId.CallIndirect: {
        throw new Error("CallIndirect Not implmented.");
      }
      case ExpressionId.GetLocal: {
        log(`${this.currentfunction} getLocal`);
        this.push("$");
        this.push(getGetLocalIndex(expr).toString(10));
        break;
      }
      case ExpressionId.SetLocal: {
        log(`${this.currentfunction} setLocall`);
        this.push("$");
        this.push(getSetLocalIndex(expr).toString(10));
        this.push(" = ");
        this.decompileExpression(getSetLocalValue(expr));
        break;
      }
      case ExpressionId.GetGlobal: {
        log(`${this.currentfunction} getGlobal`);
          this.push(getGlobalGetName(expr) || "_global_undefined");
        break;

      }
      case ExpressionId.SetGlobal: {
        log(`${this.currentfunction} setGlobal`);
        this.push(readString(_BinaryenSetGlobalGetName(expr)) || "<lhs of undefined global>");
        this.push(" = ");
        let RHS = getSetGlobalValue(expr);
        this.decompileExpression(RHS);
        break;
      }
      case ExpressionId.Load: {
        log(`${this.currentfunction} load`);
        this.push("load<");
        this.push(nativeTypeToType(type));
        this.push(">(");
        this.push(getLoadOffset(expr).toString(10));
        this.push(" + ");
        this.decompileExpression(getLoadPtr(expr));
        this.push(")");
        break;
      }
      case ExpressionId.Store: {
        this.push("store<");
        this.push(nativeTypeToType(type));
        this.push(">(");
        this.push(getStoreOffset(expr).toString(10));
        this.push(" + ");
        this.decompileExpression(getStorePtr(expr));
        this.push(", ");
        this.decompileExpression(getStoreValue(expr));
        this.push(")");
        break;
      }
      case ExpressionId.Const: {
        switch (type) {
          case NativeType.I32: {
            this.push(getConstValueI32(expr).toString(10));
            break;
          }
          case NativeType.I64: {
            this.push(
              i64_to_string(
                i64_new(
                  getConstValueI64Low(expr),
                  getConstValueI64High(expr)
                )
              )
            );
            break;
          }
          case NativeType.F32: {
            this.push(getConstValueF32(expr).toString(10));
            break;
          }
          case NativeType.F64: {
            this.push(getConstValueF64(expr).toString(10));
            break;
          }
        }
        break;
      }
      case ExpressionId.Unary: {
        switch (getUnaryOp(expr)) {
          case UnaryOp.ClzI32: {
            this.push("clz<i32>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            break;
          }
          case UnaryOp.CtzI32: {
            this.push("ctz<i32>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            break;
          }
          case UnaryOp.PopcntI32: {
            this.push("popcnt<i32>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            break;
          }
          case UnaryOp.NegF32:
          case UnaryOp.NegF64: {
            this.push("-");
            this.decompileExpression(getUnaryValue(expr));
            break;
          }
          case UnaryOp.AbsF32: {
            this.push("abs<f32>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            break;
          }
          case UnaryOp.CeilF32: {
            this.push("ceil<f32>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            break;
          }
          case UnaryOp.FloorF32: {
            this.push("floor<f32>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            break;
          }
          case UnaryOp.TruncF32: {
            this.push("trunc<f32>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            break;
          }
          case UnaryOp.NearestF32: {
            this.push("nearest<i32>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            break;
          }
          case UnaryOp.SqrtF32: {
            this.push("sqrt<f32>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            break;
          }
          case UnaryOp.EqzI32:
          case UnaryOp.EqzI64: {
            this.push("!");
            this.decompileExpression(getUnaryValue(expr));
            break;
          }
          case UnaryOp.ClzI64: {
            this.push("clz<i64>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            break;
          }
          case UnaryOp.CtzI64: {
            this.push("ctz<i64>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            break;
          }
          case UnaryOp.PopcntI64: {
            this.push("popcnt<i64>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            break;
          }
          case UnaryOp.AbsF64: {
            this.push("abs<f64>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            break;
          }
          case UnaryOp.CeilF64: {
            this.push("ceil<f64>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            break;
          }
          case UnaryOp.FloorF64: {
            this.push("floor<f64>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            break;
          }
          case UnaryOp.TruncF64: {
            this.push("trunc<f64>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            break;
          }
          case UnaryOp.NearestF64: {
            this.push("nearest<f64>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            break;
          }
          case UnaryOp.SqrtF64: {
            this.push("sqrt<f64>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            break;
          }
          case UnaryOp.ExtendI32: {
            this.push("<i64>");
            this.decompileExpression(getUnaryValue(expr));
            break;
          }
          case UnaryOp.ExtendU32: {
            this.push("<i64><u64>");
            this.decompileExpression(getUnaryValue(expr));
            break;
          }
          case UnaryOp.WrapI64: {
            this.push("<i32>");
            this.decompileExpression(getUnaryValue(expr));
            break;
          }
          case UnaryOp.TruncF32ToI32: {
            this.push("<i32>");
            this.decompileExpression(getUnaryValue(expr));
            break;
          }
          case UnaryOp.TruncF32ToI64: {
            this.push("<i64>");
            this.decompileExpression(getUnaryValue(expr));
            break;
          }
          case UnaryOp.TruncF32ToU32: {
            this.push("<i32><u32>");
            this.decompileExpression(getUnaryValue(expr));
            break;
          }
          case UnaryOp.TruncF32ToU64: {
            this.push("<i64><u64>");
            this.decompileExpression(getUnaryValue(expr));
            break;
          }
          case UnaryOp.TruncF64ToI32: {
            this.push("<i32>");
            this.decompileExpression(getUnaryValue(expr));
            break;
          }
          case UnaryOp.TruncF64ToI64: {
            this.push("<i64>");
            this.decompileExpression(getUnaryValue(expr));
            break;
          }
          case UnaryOp.TruncF64ToU32: {
            this.push("<i32><u32>");
            this.decompileExpression(getUnaryValue(expr));
            break;
          }
          case UnaryOp.TruncF64ToU64: {
            this.push("<i64><u64>");
            this.decompileExpression(getUnaryValue(expr));
            break;
          }
          case UnaryOp.ReinterpretF32: {
            this.push("reinterpret<f32,i32>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            break;
          }
          case UnaryOp.ReinterpretF64: {
            this.push("reinterpret<f64,i64>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            break;
          }
          case UnaryOp.ConvertI32ToF32: {
            this.push("<f32>");
            this.decompileExpression(getUnaryValue(expr));
            break;
          }
          case UnaryOp.ConvertI32ToF64: {
            this.push("<f64>");
            this.decompileExpression(getUnaryValue(expr));
            break;
          }
          case UnaryOp.ConvertU32ToF32: {
            this.push("<f32><u32>");
            this.decompileExpression(getUnaryValue(expr));
            break;
          }
          case UnaryOp.ConvertU32ToF64: {
            this.push("<f64><u32>");
            this.decompileExpression(getUnaryValue(expr));
            break;
          }
          case UnaryOp.ConvertI64ToF32: {
            this.push("<f32>");
            this.decompileExpression(getUnaryValue(expr));
            break;
          }
          case UnaryOp.ConvertI64ToF64: {
            this.push("<f64>");
            this.decompileExpression(getUnaryValue(expr));
            break;
          }
          case UnaryOp.ConvertU64ToF32: {
            this.push("<f32><u64>");
            this.decompileExpression(getUnaryValue(expr));
            break;
          }
          case UnaryOp.ConvertU64ToF64: {
            this.push("<f64><u64>");
            this.decompileExpression(getUnaryValue(expr));
            break;
          }
          case UnaryOp.PromoteF32: {
            this.push("<f64>");
            this.decompileExpression(getUnaryValue(expr));
            break;
          }
          case UnaryOp.DemoteF64: {
            this.push("<f32>");
            this.decompileExpression(getUnaryValue(expr));
            break;
          }
          case UnaryOp.ReinterpretI32: {
            this.push("reinterpret<i32,f32>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            break;
          }
          case UnaryOp.ReinterpretI64: {
            this.push("reinterpret<i64,f64>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            break;
          }
        }
        break;
      }
      case ExpressionId.Binary: { // TODO: precedence
        switch (getBinaryOp(expr)) {
          case BinaryOp.AddI32:
          case BinaryOp.AddI64:
          case BinaryOp.AddF32:
          case BinaryOp.AddF64: {
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" + ");
            this.decompileExpression(getBinaryRight(expr));
            break;
          }
          case BinaryOp.SubI32:
          case BinaryOp.SubI64:
          case BinaryOp.SubF32:
          case BinaryOp.SubF64: {
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" - ");
            this.decompileExpression(getBinaryRight(expr));
            break;
          }
          case BinaryOp.MulI32:
          case BinaryOp.MulI64:
          case BinaryOp.MulF32:
          case BinaryOp.MulF64: {
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" * ");
            this.decompileExpression(getBinaryRight(expr));
            break;
          }
          case BinaryOp.DivI32:
          case BinaryOp.DivI64:
          case BinaryOp.DivF32:
          case BinaryOp.DivF64: {
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" / ");
            this.decompileExpression(getBinaryRight(expr));
            break;
          }
          case BinaryOp.DivU32: {
            this.push("<i32>(<u32>");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" / <u32>");
            this.decompileExpression(getBinaryRight(expr));
            this.push(")");
            break;
          }
          case BinaryOp.RemI32:
          case BinaryOp.RemI64: {
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" % ");
            this.decompileExpression(getBinaryRight(expr));
            break;
          }
          case BinaryOp.RemU32: {
            this.push("<i32>(<u32>");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" / <u32>");
            this.decompileExpression(getBinaryRight(expr));
            this.push(")");
            break;
          }
          case BinaryOp.AndI32:
          case BinaryOp.AndI64: {
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" & ");
            this.decompileExpression(getBinaryRight(expr));
            break;
          }
          case BinaryOp.OrI32:
          case BinaryOp.OrI64: {
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" | ");
            this.decompileExpression(getBinaryRight(expr));
            break;
          }
          case BinaryOp.XorI32:
          case BinaryOp.XorI64: {
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" ^ ");
            this.decompileExpression(getBinaryRight(expr));
            break;
          }
          case BinaryOp.ShlI32:
          case BinaryOp.ShlI64: {
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" << ");
            this.decompileExpression(getBinaryRight(expr));
            break;
          }
          case BinaryOp.ShrU32:
          case BinaryOp.ShrU64: {
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" >>> ");
            this.decompileExpression(getBinaryRight(expr));
            break;
          }
          case BinaryOp.ShrI32:
          case BinaryOp.ShrI64: {
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" >> ");
            this.decompileExpression(getBinaryRight(expr));
            break;
          }
          case BinaryOp.RotlI32: {
            this.push("rotl<i32>(");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(", ");
            this.decompileExpression(getBinaryRight(expr));
            this.push(")");
            break;
          }
          case BinaryOp.RotrI32: {
            this.push("rotr<i32>(");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(", ");
            this.decompileExpression(getBinaryRight(expr));
            this.push(")");
            break;
          }
          case BinaryOp.EqI32:
          case BinaryOp.EqI64:
          case BinaryOp.EqF32:
          case BinaryOp.EqF64: {
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" == ");
            this.decompileExpression(getBinaryRight(expr));
            break;
          }
          case BinaryOp.NeI32:
          case BinaryOp.NeI64:
          case BinaryOp.NeF32:
          case BinaryOp.NeF64: {
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" != ");
            this.decompileExpression(getBinaryRight(expr));
            break;
          }
          case BinaryOp.LtI32:
          case BinaryOp.LtI64:
          case BinaryOp.LtF32:
          case BinaryOp.LtF64: {
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" < ");
            this.decompileExpression(getBinaryRight(expr));
            break;
          }
          case BinaryOp.LtU32: {
            this.push("<u32>");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" < <u32>");
            this.decompileExpression(getBinaryRight(expr));
            break;
          }
          case BinaryOp.LeI32:
          case BinaryOp.LeI64:
          case BinaryOp.LeF32:
          case BinaryOp.LeF64: {
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" <= ");
            this.decompileExpression(getBinaryRight(expr));
            break;
          }
          case BinaryOp.LeU32: {
            this.push("<u32>");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" <= <u32>");
            this.decompileExpression(getBinaryRight(expr));
            break;
          }
          case BinaryOp.GtI32:
          case BinaryOp.GtI64:
          case BinaryOp.GtF32:
          case BinaryOp.GtF64: {
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" > ");
            this.decompileExpression(getBinaryRight(expr));
            break;
          }
          case BinaryOp.GtU32: {
            this.push("<u32>");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" > <u32>");
            this.decompileExpression(getBinaryRight(expr));
            break;
          }
          case BinaryOp.GeI32:
          case BinaryOp.GeI64:
          case BinaryOp.GeF32:
          case BinaryOp.GeF64: {
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" >= ");
            this.decompileExpression(getBinaryRight(expr));
            break;
          }
          case BinaryOp.GeU32: {
            this.push("<u32>");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" >= <u32>");
            this.decompileExpression(getBinaryRight(expr));
            break;
          }
          case BinaryOp.DivU64: {
            this.push("<u64>");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" / <u64>");
            this.decompileExpression(getBinaryRight(expr));
            break;
          }
          case BinaryOp.RemU64: {
            this.push("<u64>");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" % <u64>");
            this.decompileExpression(getBinaryRight(expr));
            break;
          }
          case BinaryOp.RotlI64: {
            this.push("rotl<i64>(");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(", ");
            this.decompileExpression(getBinaryRight(expr));
            this.push(")");
            break;
          }
          case BinaryOp.RotrI64: {
            this.push("rotr<i64>(");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(", ");
            this.decompileExpression(getBinaryRight(expr));
            this.push(")");
            break;
          }
          case BinaryOp.LtU64: {
            this.push("<u64>");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" < <u64>");
            this.decompileExpression(getBinaryRight(expr));
            break;
          }
          case BinaryOp.LeU64: {
            this.push("<u64>");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" <= <u64>");
            this.decompileExpression(getBinaryRight(expr));
            break;
          }
          case BinaryOp.GtU64: {
            this.push("<u64>");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" > <u64>");
            this.decompileExpression(getBinaryRight(expr));
            break;
          }
          case BinaryOp.GeU64: {
            this.push("<u64>");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" >= <u64>");
            this.decompileExpression(getBinaryRight(expr));
            break;
          }
          case BinaryOp.CopysignF32: {
            this.push("copysign<f32>(");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(", ");
            this.decompileExpression(getBinaryRight(expr));
            this.push(")");
            break;
          }
          case BinaryOp.MinF32: {
            this.push("min<f32>(");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(", ");
            this.decompileExpression(getBinaryRight(expr));
            this.push(")");
            break;
          }
          case BinaryOp.MaxF32: {
            this.push("max<f32>(");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(", ");
            this.decompileExpression(getBinaryRight(expr));
            this.push(")");
            break;
          }
          case BinaryOp.CopysignF64: {
            this.push("copysign<f64>(");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(", ");
            this.decompileExpression(getBinaryRight(expr));
            this.push(")");
            break;
          }
          case BinaryOp.MinF64: {
            this.push("min<f64>(");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(", ");
            this.decompileExpression(getBinaryRight(expr));
            this.push(")");
            break;
          }
          case BinaryOp.MaxF64: {
            this.push("max<f64>(");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(", ");
            this.decompileExpression(getBinaryRight(expr));
            this.push(")");
            break;
          }
        }
        break;
      }
      case ExpressionId.Select: {
        this.push("select<");
        this.push(nativeTypeToType(type));
        this.push(">(");
        this.decompileExpression(getSelectThen(expr));
        this.push(", ");
        this.decompileExpression(getSelectElse(expr));
        this.push(", ");
        this.decompileExpression(getSelectCondition(expr));
        this.push(")");
        break;
      }
      case ExpressionId.Drop: {
        log(`${this.currentfunction} drop`);
        this.decompileExpression(getDropValue(expr));
        break;
      }
      case ExpressionId.Return: {
        if (nested = getReturnValue(expr)) {
          this.push("return ");
          this.decompileExpression(nested);
          // this.push(";\n");
        } else {
          this.push("break");
        }
        break;
      }
      case ExpressionId.Host: {
        switch (getHostOp(expr)) {
          case HostOp.CurrentMemory: {
            this.push("memory.size()");
            break;
          }
          case HostOp.GrowMemory: {
            this.push("memory.grow(");
            this.decompileExpression(getHostOperand(expr, 0));
            this.push(")");
            break;
          }
        }
        break;
      }
      case ExpressionId.Nop: {
        log(`${this.currentfunction} nop`);
        this.push(";\n");
        break;
      }
      case ExpressionId.Unreachable: {
        this.push("unreachable()");
        break;
      }
      case ExpressionId.AtomicCmpxchg:
      case ExpressionId.AtomicRMW:
      case ExpressionId.AtomicWait:
      case ExpressionId.AtomicWake:
      default: {
        throw new Error("not implemented");
      }
    }
    if (first) {
      this.push(";");
    }
  }

  /**
  *  A common pattern is a nestedExpression that requires braces. e.g.
    if (b) {
        Expr
    }
    This provides a way to increase the depth of indentation of new lines.
  */
  private decompileNestedExpression(expr: ExpressionId): void {
    this.push("{");
    this.depth++;
    this.startLine();
    this.decompileExpression(expr);
    this.addSemicolon(expr);
    this.depth--;
    this.startLine();
    this.push("}");
  }

  private addReturn(expr: ExpressionRef): void {
    switch (getExpressionId(expr)){
      case ExpressionId.If:
      case ExpressionId.Break:
      case ExpressionId.SetLocal:
      case ExpressionId.SetGlobal:
      case ExpressionId.Loop:
      case ExpressionId.Block: {
        return;
      }
      default:
    }
    this.push("return ");
  }

  private addSemicolon(expr: ExpressionRef): void {
    switch (getExpressionId(expr)){
      case ExpressionId.If:
      case ExpressionId.Break:
      case ExpressionId.Block: {
        return ;
      }
      default:
    }
    this.push(";");
  }

  private push(text: string): void {
    // mostly here so we can add debugging if necessary
    this.text.push(text);
  }
  private startLine(): void {
    this.text.push("\n" + "    ".repeat(this.depth));
  }

  finish(): string {
    var ret = this.text.join("");
    this.text = [];
    return ret;
  }
}

function log(s: string): void {
  // console.log(s);
}

function nativeTypeToType(type: NativeType): string {
  switch (type) {
    case NativeType.None: return "void";
    case NativeType.I32: return "i32";
    case NativeType.I64: return "i64";
    case NativeType.F32: return "f32";
    case NativeType.F64: return "f64";
    case NativeType.Unreachable: throw new Error("unreachable type");
    case NativeType.Auto: throw new Error("auto type");
    default: throw new Error("unexpected type");
  }
}
