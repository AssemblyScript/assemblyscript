import {
  Module,
  NativeType,
  ExpressionId,
  UnaryOp,
  BinaryOp,
  HostOp,
  FunctionTypeRef,
  FunctionRef,
  ExpressionRef,

  getFunctionBody,
  getExpressionId,
  getExpressionType,
  getUnaryOp,
  getUnaryValue,
  getBinaryOp,
  getBinaryLeft,
  getBinaryRight,
  getSelectIfTrue,
  getSelectIfFalse,
  getSelectCondition,
  getHostOp,
  getHostNameOperand,
  getHostOperands,
  getConstValueI32,
  getConstValueI64Low,
  getConstValueI64High,
  getConstValueF32,
  getConstValueF64,
  getReturnValue,
  getDropValue
} from "./module";
import { I64 } from "./util";

// TODO :-)

class Decompiler {

  name: string;
  text: string[] = [];

  private tempI64: I64 = new I64();

  // Decide whether to decompile to an AST or to text directly.
  // AST is a bit more useful, text a lot more efficient.

  constructor(name: string = "module.ts") {
    this.name = name;
  }

  /** Decompiles a module to an AST that can then be serialized. */
  decompile(module: Module) {
    throw new Error("not implemented");
  }

  decompileFunction(func: FunctionRef): void {
    const body: ExpressionRef = getFunctionBody(func);
    throw new Error("not implemented");
  }

  decompileExpression(expr: ExpressionRef): void {
    const id: ExpressionId = getExpressionId(expr);
    const type: NativeType = getExpressionType(expr);

    switch (id) {
      case ExpressionId.Block:
      case ExpressionId.If:
      case ExpressionId.Loop:
      case ExpressionId.Break:
      case ExpressionId.Switch:
      case ExpressionId.Call:
      case ExpressionId.CallImport:
      case ExpressionId.CallIndirect:
      case ExpressionId.GetLocal:
      case ExpressionId.SetLocal:
      case ExpressionId.GetGlobal:
      case ExpressionId.SetGlobal:
      case ExpressionId.Load:
      case ExpressionId.Store:
      case ExpressionId.Const:
        switch (type) {
          case NativeType.I32:
            this.text.push(getConstValueI32(expr).toString(10));
            return;
          case NativeType.I64:
            this.tempI64.lo = getConstValueI64Low(expr);
            this.tempI64.hi = getConstValueI64High(expr);
            this.text.push(this.tempI64.toString());
            return;
          case NativeType.F32:
            this.text.push(getConstValueF32(expr).toString(10));
            return;
          case NativeType.F64:
            this.text.push(getConstValueF64(expr).toString(10));
            return;
          default:
            throw new Error("unexpected const type");
        }
      case ExpressionId.Unary:
        switch (getUnaryOp(expr)) {
          // TODO
        }
        this.decompileExpression(getUnaryValue(expr));
        return;
      case ExpressionId.Binary:
        this.decompileExpression(getBinaryLeft(expr));
        switch (getBinaryOp(expr)) {
          // TODO
        }
        this.decompileExpression(getBinaryRight(expr));
        return;
      case ExpressionId.Select:
        this.text.push("select<");
        this.text.push(nativeTypeToType(type));
        this.text.push(">(");
        this.decompileExpression(getSelectIfTrue(expr));
        this.text.push(", ");
        this.decompileExpression(getSelectIfFalse(expr));
        this.text.push(", ");
        this.decompileExpression(getSelectCondition(expr));
        this.text.push(");");
        return;
      case ExpressionId.Drop:
        this.decompileExpression(getDropValue(expr));
        this.text.push(";");
        return;
      case ExpressionId.Return:
        if (type == NativeType.None) {
          this.text.push("return;");
        } else {
          this.text.push("return ");
          this.decompileExpression(getReturnValue(expr));
          this.text.push(";");
        }
        return;
      case ExpressionId.Host:
        switch (getHostOp(expr)) {
          case HostOp.CurrentMemory:
          case HostOp.GrowMemory:
        }
        break;
      case ExpressionId.Nop:
        this.text.push(";");
        return;
      case ExpressionId.Unreachable:
        this.text.push("unreachable()");
        return;
      case ExpressionId.AtomicCmpxchg:
      case ExpressionId.AtomicRMW:
      case ExpressionId.AtomicWait:
      case ExpressionId.AtomicWake:
    }
    throw new Error("not implemented")
  }
}

function nativeTypeToType(type: NativeType): string {
  switch (type) {
    case NativeType.None: return "void";
    case NativeType.I32: return "i32";
    case NativeType.I64: return "i64";
    case NativeType.F32: return "f32";
    case NativeType.F64: return "f64";
    default: throw new Error("unexpected type");
  }
}
