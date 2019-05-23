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
  getBlockName,
  getBlockChildCount,
  getBlockChild,
  getIfCondition,
  getIfTrue,
  getIfFalse,
  getLoopName,
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
  getHostOperand
} from "./module";

// TODO :-)

export class Decompiler {

  static decompile(module: Module): string {
    var decompiler = new Decompiler();
    decompiler.decompile(module);
    return decompiler.finish();
  }

  text: string[] = [];
  functionId: i32 = 0;

  constructor() { }

  /** Decompiles a module to an AST that can then be serialized. */
  decompile(module: Module): void {
    throw new Error("not implemented");
  }

  decompileFunction(func: FunctionRef): void {
    var name = getFunctionName(func) || "$" + this.functionId.toString(10);
    var body = getFunctionBody(func);
    this.push("function ");
    this.push(name);
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
    this.push(" ");
    if (getExpressionId(body) != ExpressionId.Block) {
      this.push("{\n");
    }
    this.decompileExpression(body);
    if (getExpressionId(body) != ExpressionId.Block) {
      this.push("\n}\n");
    }
    ++this.functionId;
  }

  decompileExpression(expr: ExpressionRef): void {
    var id = getExpressionId(expr);
    var type = getExpressionType(expr);

    var nested: ExpressionRef;
    var string: string | null;
    var i: Index, k: Index;

    switch (id) {
      case ExpressionId.Block: { // TODO: magic
        if ((string = getBlockName(expr)) != null) {
          this.push(string);
          this.push(": ");
        }
        this.push("{\n");
        k = getBlockChildCount(expr);
        for (i = 0; i < k; ++i) {
          this.decompileExpression(getBlockChild(expr, i));
        }
        this.push("}\n");
        return;
      }
      case ExpressionId.If: {
        if (type == NativeType.None) {
          this.push("if (");
          this.decompileExpression(getIfCondition(expr));
          this.push(") ");
          this.decompileExpression(getIfTrue(expr));
          if (nested = getIfFalse(expr)) {
            this.push(" else ");
            this.decompileExpression(nested);
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
        if ((string = getLoopName(expr)) != null) {
          this.push(string);
          this.push(": ");
        }
        this.push("do ");
        this.decompileExpression(getLoopBody(expr));
        this.push("while (0);\n");
      }
      case ExpressionId.Break: {
        if (nested = getBreakCondition(expr)) {
          this.push("if (");
          this.decompileExpression(nested);
          this.push(") ");
        }
        if ((string = getBreakName(expr)) != null) {
          this.push("break ");
          this.push(string);
          this.push(";\n");
        } else {
          this.push("break;\n");
        }
        return;
      }
      case ExpressionId.Switch:
      case ExpressionId.Call:
      case ExpressionId.CallIndirect: {
        throw new Error("not implemented");
      }
      case ExpressionId.GetLocal: {
        this.push("$");
        this.push(getGetLocalIndex(expr).toString(10));
        return;
      }
      case ExpressionId.SetLocal: {
        this.push("$");
        this.push(getSetLocalIndex(expr).toString(10));
        this.push(" = ");
        this.decompileExpression(getSetLocalValue(expr));
        return;
      }
      case ExpressionId.GetGlobal:
      case ExpressionId.SetGlobal: {
        throw new Error("not implemented");
      }
      case ExpressionId.Load: {
        this.push("load<");
        this.push(nativeTypeToType(type));
        this.push(">(");
        this.push(getLoadOffset(expr).toString(10));
        this.push(" + ");
        this.decompileExpression(getLoadPtr(expr));
        this.push(")");
        return;
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
        return;
      }
      case ExpressionId.Const: {
        switch (type) {
          case NativeType.I32: {
            this.push(getConstValueI32(expr).toString(10));
            return;
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
            return;
          }
          case NativeType.F32: {
            this.push(getConstValueF32(expr).toString(10));
            return;
          }
          case NativeType.F64: {
            this.push(getConstValueF64(expr).toString(10));
            return;
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
            return;
          }
          case UnaryOp.CtzI32: {
            this.push("ctz<i32>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            return;
          }
          case UnaryOp.PopcntI32: {
            this.push("popcnt<i32>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            return;
          }
          case UnaryOp.NegF32:
          case UnaryOp.NegF64: {
            this.push("-");
            this.decompileExpression(getUnaryValue(expr));
            return;
          }
          case UnaryOp.AbsF32: {
            this.push("abs<f32>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            return;
          }
          case UnaryOp.CeilF32: {
            this.push("ceil<f32>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            return;
          }
          case UnaryOp.FloorF32: {
            this.push("floor<f32>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            return;
          }
          case UnaryOp.TruncF32: {
            this.push("trunc<f32>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            return;
          }
          case UnaryOp.NearestF32: {
            this.push("nearest<i32>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            return;
          }
          case UnaryOp.SqrtF32: {
            this.push("sqrt<f32>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            return;
          }
          case UnaryOp.EqzI32:
          case UnaryOp.EqzI64: {
            this.push("!");
            this.decompileExpression(getUnaryValue(expr));
            return;
          }
          case UnaryOp.ClzI64: {
            this.push("clz<i64>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            return;
          }
          case UnaryOp.CtzI64: {
            this.push("ctz<i64>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            return;
          }
          case UnaryOp.PopcntI64: {
            this.push("popcnt<i64>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            return;
          }
          case UnaryOp.AbsF64: {
            this.push("abs<f64>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            return;
          }
          case UnaryOp.CeilF64: {
            this.push("ceil<f64>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            return;
          }
          case UnaryOp.FloorF64: {
            this.push("floor<f64>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            return;
          }
          case UnaryOp.TruncF64: {
            this.push("trunc<f64>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            return;
          }
          case UnaryOp.NearestF64: {
            this.push("nearest<f64>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            return;
          }
          case UnaryOp.SqrtF64: {
            this.push("sqrt<f64>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            return;
          }
          case UnaryOp.ExtendI32: {
            this.push("<i64>");
            this.decompileExpression(getUnaryValue(expr));
            return;
          }
          case UnaryOp.ExtendU32: {
            this.push("<i64><u64>");
            this.decompileExpression(getUnaryValue(expr));
            return;
          }
          case UnaryOp.WrapI64: {
            this.push("<i32>");
            this.decompileExpression(getUnaryValue(expr));
            return;
          }
          case UnaryOp.TruncF32ToI32: {
            this.push("<i32>");
            this.decompileExpression(getUnaryValue(expr));
            return;
          }
          case UnaryOp.TruncF32ToI64: {
            this.push("<i64>");
            this.decompileExpression(getUnaryValue(expr));
            return;
          }
          case UnaryOp.TruncF32ToU32: {
            this.push("<i32><u32>");
            this.decompileExpression(getUnaryValue(expr));
            return;
          }
          case UnaryOp.TruncF32ToU64: {
            this.push("<i64><u64>");
            this.decompileExpression(getUnaryValue(expr));
            return;
          }
          case UnaryOp.TruncF64ToI32: {
            this.push("<i32>");
            this.decompileExpression(getUnaryValue(expr));
            return;
          }
          case UnaryOp.TruncF64ToI64: {
            this.push("<i64>");
            this.decompileExpression(getUnaryValue(expr));
            return;
          }
          case UnaryOp.TruncF64ToU32: {
            this.push("<i32><u32>");
            this.decompileExpression(getUnaryValue(expr));
            return;
          }
          case UnaryOp.TruncF64ToU64: {
            this.push("<i64><u64>");
            this.decompileExpression(getUnaryValue(expr));
            return;
          }
          case UnaryOp.ReinterpretF32: {
            this.push("reinterpret<f32,i32>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            return;
          }
          case UnaryOp.ReinterpretF64: {
            this.push("reinterpret<f64,i64>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            return;
          }
          case UnaryOp.ConvertI32ToF32: {
            this.push("<f32>");
            this.decompileExpression(getUnaryValue(expr));
            return;
          }
          case UnaryOp.ConvertI32ToF64: {
            this.push("<f64>");
            this.decompileExpression(getUnaryValue(expr));
            return;
          }
          case UnaryOp.ConvertU32ToF32: {
            this.push("<f32><u32>");
            this.decompileExpression(getUnaryValue(expr));
            return;
          }
          case UnaryOp.ConvertU32ToF64: {
            this.push("<f64><u32>");
            this.decompileExpression(getUnaryValue(expr));
            return;
          }
          case UnaryOp.ConvertI64ToF32: {
            this.push("<f32>");
            this.decompileExpression(getUnaryValue(expr));
            return;
          }
          case UnaryOp.ConvertI64ToF64: {
            this.push("<f64>");
            this.decompileExpression(getUnaryValue(expr));
            return;
          }
          case UnaryOp.ConvertU64ToF32: {
            this.push("<f32><u64>");
            this.decompileExpression(getUnaryValue(expr));
            return;
          }
          case UnaryOp.ConvertU64ToF64: {
            this.push("<f64><u64>");
            this.decompileExpression(getUnaryValue(expr));
            return;
          }
          case UnaryOp.PromoteF32: {
            this.push("<f64>");
            this.decompileExpression(getUnaryValue(expr));
            return;
          }
          case UnaryOp.DemoteF64: {
            this.push("<f32>");
            this.decompileExpression(getUnaryValue(expr));
            return;
          }
          case UnaryOp.ReinterpretI32: {
            this.push("reinterpret<i32,f32>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            return;
          }
          case UnaryOp.ReinterpretI64: {
            this.push("reinterpret<i64,f64>(");
            this.decompileExpression(getUnaryValue(expr));
            this.push(")");
            return;
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
            return;
          }
          case BinaryOp.SubI32:
          case BinaryOp.SubI64:
          case BinaryOp.SubF32:
          case BinaryOp.SubF64: {
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" - ");
            this.decompileExpression(getBinaryRight(expr));
            return;
          }
          case BinaryOp.MulI32:
          case BinaryOp.MulI64:
          case BinaryOp.MulF32:
          case BinaryOp.MulF64: {
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" * ");
            this.decompileExpression(getBinaryRight(expr));
            return;
          }
          case BinaryOp.DivI32:
          case BinaryOp.DivI64:
          case BinaryOp.DivF32:
          case BinaryOp.DivF64: {
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" / ");
            this.decompileExpression(getBinaryRight(expr));
            return;
          }
          case BinaryOp.DivU32: {
            this.push("<i32>(<u32>");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" / <u32>");
            this.decompileExpression(getBinaryRight(expr));
            this.push(")");
            return;
          }
          case BinaryOp.RemI32:
          case BinaryOp.RemI64: {
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" % ");
            this.decompileExpression(getBinaryRight(expr));
            return;
          }
          case BinaryOp.RemU32: {
            this.push("<i32>(<u32>");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" / <u32>");
            this.decompileExpression(getBinaryRight(expr));
            this.push(")");
            return;
          }
          case BinaryOp.AndI32:
          case BinaryOp.AndI64: {
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" & ");
            this.decompileExpression(getBinaryRight(expr));
            return;
          }
          case BinaryOp.OrI32:
          case BinaryOp.OrI64: {
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" | ");
            this.decompileExpression(getBinaryRight(expr));
            return;
          }
          case BinaryOp.XorI32:
          case BinaryOp.XorI64: {
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" ^ ");
            this.decompileExpression(getBinaryRight(expr));
            return;
          }
          case BinaryOp.ShlI32:
          case BinaryOp.ShlI64: {
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" << ");
            this.decompileExpression(getBinaryRight(expr));
            return;
          }
          case BinaryOp.ShrU32:
          case BinaryOp.ShrU64: {
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" >>> ");
            this.decompileExpression(getBinaryRight(expr));
            return;
          }
          case BinaryOp.ShrI32:
          case BinaryOp.ShrI64: {
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" >> ");
            this.decompileExpression(getBinaryRight(expr));
            return;
          }
          case BinaryOp.RotlI32: {
            this.push("rotl<i32>(");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(", ");
            this.decompileExpression(getBinaryRight(expr));
            this.push(")");
            return;
          }
          case BinaryOp.RotrI32: {
            this.push("rotr<i32>(");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(", ");
            this.decompileExpression(getBinaryRight(expr));
            this.push(")");
            return;
          }
          case BinaryOp.EqI32:
          case BinaryOp.EqI64:
          case BinaryOp.EqF32:
          case BinaryOp.EqF64: {
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" == ");
            this.decompileExpression(getBinaryRight(expr));
            return;
          }
          case BinaryOp.NeI32:
          case BinaryOp.NeI64:
          case BinaryOp.NeF32:
          case BinaryOp.NeF64: {
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" != ");
            this.decompileExpression(getBinaryRight(expr));
            return;
          }
          case BinaryOp.LtI32:
          case BinaryOp.LtI64:
          case BinaryOp.LtF32:
          case BinaryOp.LtF64: {
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" < ");
            this.decompileExpression(getBinaryRight(expr));
            return;
          }
          case BinaryOp.LtU32: {
            this.push("<u32>");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" < <u32>");
            this.decompileExpression(getBinaryRight(expr));
            return;
          }
          case BinaryOp.LeI32:
          case BinaryOp.LeI64:
          case BinaryOp.LeF32:
          case BinaryOp.LeF64: {
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" <= ");
            this.decompileExpression(getBinaryRight(expr));
            return;
          }
          case BinaryOp.LeU32: {
            this.push("<u32>");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" <= <u32>");
            this.decompileExpression(getBinaryRight(expr));
            return;
          }
          case BinaryOp.GtI32:
          case BinaryOp.GtI64:
          case BinaryOp.GtF32:
          case BinaryOp.GtF64: {
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" > ");
            this.decompileExpression(getBinaryRight(expr));
            return;
          }
          case BinaryOp.GtU32: {
            this.push("<u32>");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" > <u32>");
            this.decompileExpression(getBinaryRight(expr));
            return;
          }
          case BinaryOp.GeI32:
          case BinaryOp.GeI64:
          case BinaryOp.GeF32:
          case BinaryOp.GeF64: {
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" >= ");
            this.decompileExpression(getBinaryRight(expr));
            return;
          }
          case BinaryOp.GeU32: {
            this.push("<u32>");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" >= <u32>");
            this.decompileExpression(getBinaryRight(expr));
            return;
          }
          case BinaryOp.DivU64: {
            this.push("<u64>");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" / <u64>");
            this.decompileExpression(getBinaryRight(expr));
            return;
          }
          case BinaryOp.RemU64: {
            this.push("<u64>");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" % <u64>");
            this.decompileExpression(getBinaryRight(expr));
            return;
          }
          case BinaryOp.RotlI64: {
            this.push("rotl<i64>(");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(", ");
            this.decompileExpression(getBinaryRight(expr));
            this.push(")");
            return;
          }
          case BinaryOp.RotrI64: {
            this.push("rotr<i64>(");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(", ");
            this.decompileExpression(getBinaryRight(expr));
            this.push(")");
            return;
          }
          case BinaryOp.LtU64: {
            this.push("<u64>");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" < <u64>");
            this.decompileExpression(getBinaryRight(expr));
            return;
          }
          case BinaryOp.LeU64: {
            this.push("<u64>");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" <= <u64>");
            this.decompileExpression(getBinaryRight(expr));
            return;
          }
          case BinaryOp.GtU64: {
            this.push("<u64>");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" > <u64>");
            this.decompileExpression(getBinaryRight(expr));
            return;
          }
          case BinaryOp.GeU64: {
            this.push("<u64>");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(" >= <u64>");
            this.decompileExpression(getBinaryRight(expr));
            return;
          }
          case BinaryOp.CopysignF32: {
            this.push("copysign<f32>(");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(", ");
            this.decompileExpression(getBinaryRight(expr));
            this.push(")");
            return;
          }
          case BinaryOp.MinF32: {
            this.push("min<f32>(");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(", ");
            this.decompileExpression(getBinaryRight(expr));
            this.push(")");
            return;
          }
          case BinaryOp.MaxF32: {
            this.push("max<f32>(");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(", ");
            this.decompileExpression(getBinaryRight(expr));
            this.push(")");
            return;
          }
          case BinaryOp.CopysignF64: {
            this.push("copysign<f64>(");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(", ");
            this.decompileExpression(getBinaryRight(expr));
            this.push(")");
            return;
          }
          case BinaryOp.MinF64: {
            this.push("min<f64>(");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(", ");
            this.decompileExpression(getBinaryRight(expr));
            this.push(")");
            return;
          }
          case BinaryOp.MaxF64: {
            this.push("max<f64>(");
            this.decompileExpression(getBinaryLeft(expr));
            this.push(", ");
            this.decompileExpression(getBinaryRight(expr));
            this.push(")");
            return;
          }
        }
        return;
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
        return;
      }
      case ExpressionId.Drop: {
        this.decompileExpression(getDropValue(expr));
        this.push(";\n");
        return;
      }
      case ExpressionId.Return: {
        if (nested = getReturnValue(expr)) {
          this.push("return ");
          this.decompileExpression(nested);
          this.push(";\n");
        } else {
          this.push("return;\n");
        }
        return;
      }
      case ExpressionId.Host: {
        switch (getHostOp(expr)) {
          case HostOp.CurrentMemory: {
            this.push("memory.size()");
            return;
          }
          case HostOp.GrowMemory: {
            this.push("memory.grow(");
            this.decompileExpression(getHostOperand(expr, 0));
            this.push(")");
            return;
          }
        }
        break;
      }
      case ExpressionId.Nop: {
        this.push(";\n");
        return;
      }
      case ExpressionId.Unreachable: {
        this.push("unreachable()");
        return;
      }
      case ExpressionId.AtomicCmpxchg:
      case ExpressionId.AtomicRMW:
      case ExpressionId.AtomicWait:
      case ExpressionId.AtomicNotify:
    }
    throw new Error("not implemented");
  }

  private push(text: string): void {
    // mostly here so we can add debugging if necessary
    this.text.push(text);
  }

  finish(): string {
    var ret = this.text.join("");
    this.text = [];
    return ret;
  }
}

function nativeTypeToType(type: NativeType): string {
  switch (type) {
    case NativeType.None: return "void";
    case NativeType.I32: return "i32";
    case NativeType.I64: return "i64";
    case NativeType.F32: return "f32";
    case NativeType.F64: return "f64";
    case NativeType.V128: return "v128";
    case NativeType.Unreachable: throw new Error("unreachable type");
    case NativeType.Auto: throw new Error("auto type");
    default: throw new Error("unexpected type");
  }
}
