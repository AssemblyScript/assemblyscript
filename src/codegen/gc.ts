import { Compiler } from "../compiler";
import { ExpressionRef, NativeType, BinaryOp } from "../module";
import { Local, Function, Class } from "../program";
import { Type } from "../types";

/** Prepares the insertion of a reference into an _uninitialized_ parent using the GC interface. */
export function makeInsertRef(
  compiler: Compiler,
  valueExpr: ExpressionRef,
  tempParent: Local,
  nullable: bool
): ExpressionRef {
  var module = compiler.module;
  var program = compiler.program;
  var usizeType = compiler.options.usizeType;
  var nativeSizeType = compiler.options.nativeSizeType;
  var flow = compiler.currentFlow;
  var tempValue = flow.getTempLocal(usizeType, false);
  var handle: ExpressionRef;
  var fn: Function | null;
  if (fn = program.linkRef) { // tracing
    handle = module.createCall(fn.internalName, [
      module.createGetLocal(tempValue.index, nativeSizeType),
      module.createGetLocal(tempParent.index, nativeSizeType)
    ], NativeType.None);
  } else if (fn = program.retainRef) { // arc
    handle = module.createCall(fn.internalName, [
      module.createGetLocal(tempValue.index, nativeSizeType)
    ], NativeType.None);
  } else {
    assert(false);
    return module.createUnreachable();
  }
  flow.freeTempLocal(tempValue);
  if (!compiler.compileFunction(fn)) return module.createUnreachable();
  // {
  //   [if (value !== null)] link/retain(value[, parent])
  // } -> value
  return module.createBlock(null, [
    module.createSetLocal(tempValue.index, valueExpr),
    nullable
      ? module.createIf(
          module.createGetLocal(tempValue.index, nativeSizeType),
          handle
        )
      : handle,
    module.createGetLocal(tempValue.index, nativeSizeType)
  ], nativeSizeType);
}

/** Prepares the replaces a reference hold by an _initialized_ parent using the GC interface. */
export function makeReplaceRef(
  compiler: Compiler,
  valueExpr: ExpressionRef,
  oldValueExpr: ExpressionRef,
  tempParent: Local,
  nullable: bool
): ExpressionRef {
  var module = compiler.module;
  var program = compiler.program;
  var usizeType = compiler.options.usizeType;
  var nativeSizeType = compiler.options.nativeSizeType;
  var flow = compiler.currentFlow;
  var tempValue = flow.getTempLocal(usizeType, false);
  var tempOldValue = flow.getTempLocal(usizeType, false);
  var handleOld: ExpressionRef;
  var handleNew: ExpressionRef;
  var fn1: Function | null, fn2: Function | null;
  if (fn1 = program.linkRef) { // tracing
    fn2 = assert(program.unlinkRef);
    handleOld = module.createCall(fn2.internalName, [
      module.createGetLocal(tempOldValue.index, nativeSizeType),
      module.createGetLocal(tempParent.index, nativeSizeType)
    ], NativeType.None);
    handleNew = module.createCall(fn1.internalName, [
      module.createGetLocal(tempValue.index, nativeSizeType),
      module.createGetLocal(tempParent.index, nativeSizeType)
    ], NativeType.None);
  } else if (fn1 = program.retainRef) { // arc
    fn2 = assert(program.releaseRef);
    handleOld = module.createCall(fn2.internalName, [
      module.createGetLocal(tempOldValue.index, nativeSizeType)
    ], NativeType.None);
    handleNew = module.createCall(fn1.internalName, [
      module.createGetLocal(tempValue.index, nativeSizeType)
    ], NativeType.None);
  } else {
    assert(false);
    return module.createUnreachable();
  }
  flow.freeTempLocal(tempValue);
  flow.freeTempLocal(tempOldValue);
  if (!compiler.compileFunction(fn1) || !compiler.compileFunction(fn2)) return module.createUnreachable();
  // if (value != oldValue) {
  //   if (oldValue !== null) unlink/release(oldValue[, parent])
  //   [if (value !== null)] link/retain(value[, parent])
  // } -> value
  return module.createIf(
    module.createBinary(nativeSizeType == NativeType.I32 ? BinaryOp.NeI32 : BinaryOp.NeI64,
      module.createTeeLocal(tempValue.index, valueExpr),
      module.createTeeLocal(tempOldValue.index, oldValueExpr)
    ),
    module.createBlock(null, [
      module.createIf(
        module.createGetLocal(tempOldValue.index, nativeSizeType),
        handleOld
      ),
      nullable
        ? module.createIf(
            module.createGetLocal(tempValue.index, nativeSizeType),
            handleNew
          )
        : handleNew,
      module.createGetLocal(tempValue.index, nativeSizeType)
    ], nativeSizeType),
    module.createGetLocal(tempValue.index, nativeSizeType)
  );
}

export function makeInstanceOfClass(
  compiler: Compiler,
  expr: ExpressionRef,
  classInstance: Class
): ExpressionRef {
  var module = compiler.module;
  var flow = compiler.currentFlow;
  var idTemp = flow.getTempLocal(Type.i32, false);
  var idExpr = module.createLoad(4, false,
    module.createBinary(BinaryOp.SubI32,
      expr,
      module.createI32(compiler.program.runtimeHeaderSize)
    ),
    NativeType.I32
  );
  var label = "instanceof_" + classInstance.name + "|" + flow.pushBreakLabel();
  var conditions: ExpressionRef[] = [];
  conditions.push(
    module.createDrop( // br_if returns the value too
      module.createBreak(label,
        module.createBinary(BinaryOp.EqI32, // classId == class.id
          module.createTeeLocal(idTemp.index, idExpr),
          module.createI32(classInstance.id)
        ),
        module.createI32(1) // ? true
      )
    )
  );
  // TODO: insert conditions for all possible subclasses (i.e. cat is also animal)
  // TODO: simplify if there are none
  conditions.push(
    module.createI32(0) // : false
  );
  flow.freeTempLocal(idTemp);
  flow.popBreakLabel();
  return module.createBlock(label, conditions, NativeType.I32);
}
