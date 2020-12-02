/**
 * @fileoverview Stackify
 *
 * WebAssembly does not support random access to the execution stack, so a GC
 * cannot trivially evaluate which in-flight objects are currently being kept
 * alive by the stack as roots.
 * 
 * Stackify works around this limitation by maintaining a shadow stack of
 * managed values only. It requires some cooperation by the code generator, that
 * is inserting `__stackify` calls when assigning to a managed local, to enable
 * the following mechanism:
 * 
 * - Traverse a given function and find the pattern `$local = __stackify(...)`
 * - While on it, also record all `return`s encountered
 * - Iff there is at least one stackify pattern, amend the function as follows:
 *   - Create a mapping of stackified local indexes to emulated stack slots
 *   - Compute FRAME_SIZE = numSlots * sizeof<usize>()
 *   - Prepend `$sp = __stack_prepare(FRAME_SIZE)` to the body
 *   - Amend stackify patterns to also do a store to the local's stack address
 *   - Append `__stack_restore($sp)` at each return site
 * 
 * In this particular implementation, `__stackify`, `__stack_prepare` and
 * `__stack_restore` are actual functions, even though most of the logic can be
 * trivially inlined. Other passes will inline these, though, and emitting
 * recognizable code in debug builds is otherwise good to do.
 * 
 * * __stackify: Stores the value at the specified memory address, returning it.
 * * __stack_prepare: Zeroes the new stack frame, updates the stack pointer and
 *                    returns the base offset of the current stack frame.
 * * __stack_restore: Resets the stack pointer to the previous stack frame.
 *
 * @license Apache-2.0
 */

import {
  NativeType,
  ExpressionId,
  ExpressionRef,
  FunctionRef,
  traverse,
  readString,
  allocPtrArray,
  BinaryOp,
  Index
} from "../module";

import {
  Function
} from "../program";

import {
  Compiler,
  RuntimeFeatures
} from "../compiler";

import {
  _BinaryenExpressionGetId,
  _BinaryenExpressionGetType,
  _BinaryenFunctionGetName,
  _BinaryenFunctionGetParams,
  _BinaryenFunctionGetResults,
  _BinaryenFunctionGetNumLocals,
  _BinaryenFunctionGetNumVars,
  _BinaryenFunctionGetVar,
  _BinaryenFunctionGetBody,
  _BinaryenLocalSetGetIndex,
  _BinaryenLocalSetGetValue,
  _BinaryenCallGetTarget,
  _BinaryenCallSetOperandAt,
  _BinaryenReturnGetValue,
  _BinaryenReturnSetValue,
  _BinaryenBlockGetNumChildren,
  _BinaryenBlockGetChildAt,
  _BinaryenRemoveFunction,
  _BinaryenAddFunction,
  _free
} from "../glue/binaryen";

var stackifies = new Array<ExpressionRef>();
var returns = new Array<ExpressionRef>();

export function stackify(compiler: Compiler, funcRef: FunctionRef): FunctionRef {
  var program = compiler.program;
  var usizeType = compiler.options.usizeType;
  var nativeSizeType = usizeType.toNativeType();
  var returnType = _BinaryenFunctionGetResults(funcRef);
  var stackifyInstance = program.stackifyInstance;

  // Find stackify patterns and returns
  stackifies.length = 0;
  returns.length = 0;
  var body = _BinaryenFunctionGetBody(funcRef);
  if (body) visit(body, stackifyInstance);

  // Nothing to do if there are none
  if (!stackifies.length) return funcRef;

  // Prepare the stack pointer local
  var numLocals = _BinaryenFunctionGetNumLocals(funcRef);
  var numVars = _BinaryenFunctionGetNumVars(funcRef);
  var vars = new Array<NativeType>(numVars);
  for (let i: Index = 0; i < numVars; ++i) {
    vars[i] = _BinaryenFunctionGetVar(funcRef, i);
  }
  var stackPtrLocal = numLocals++;
  vars.push(nativeSizeType);

  // Amend stackifiy patterns
  var module = compiler.module;
  var slots = new Map<i32, i32>();
  for (let i = 0, k = stackifies.length; i < k; ++i) {
    let set = stackifies[i];
    assert(_BinaryenExpressionGetId(set) == ExpressionId.LocalSet);
    let setIndex = _BinaryenLocalSetGetIndex(set);
    let call = _BinaryenLocalSetGetValue(set);
    assert(_BinaryenExpressionGetId(call) == ExpressionId.Call);
    let slot: i32;
    if (slots.has(setIndex)) {
      // @ts-ignore
      slot = slots.get(setIndex);
    } else {
      slot = slots.size;
      slots.set(setIndex, slot);
    }
    _BinaryenCallSetOperandAt(call, 1,
      nativeSizeType == NativeType.I64
        ? module.binary(BinaryOp.AddI64,
            module.local_get(stackPtrLocal, nativeSizeType),
            module.i64(slot * usizeType.byteSize)
          )
        : module.binary(BinaryOp.AddI32,
            module.local_get(stackPtrLocal, nativeSizeType),
            module.i32(slot * usizeType.byteSize)
          )
    );
  }
  var frameSize = slots.size * usizeType.byteSize;

  // Amend return sites to call __stackrestore
  var stackRestore = program.stackRestoreInstance;
  var tempReturnLocal = -1;
  for (let i = 0, k = returns.length; i < k; ++i) {
    let returnExpr = returns[i];
    let valueExpr = _BinaryenReturnGetValue(returnExpr);
    if (valueExpr) {
      // return (t = value, __stackrestore, t)
      if (tempReturnLocal < 0) {
        tempReturnLocal = numLocals++;
        vars.push(returnType);
      }
      _BinaryenReturnSetValue(returnExpr,
        module.block(null, [
          module.local_set(tempReturnLocal, valueExpr),
          module.call(stackRestore.internalName, [
            module.local_get(stackPtrLocal, nativeSizeType)
          ], NativeType.None),
          module.local_get(tempReturnLocal, returnType)
        ], returnType)
      );
    } else {
      // return (__stackrestore, return) // ¯\_(ツ)_/¯
      // FIXME: This is a hack because we cannot easily replace an expression
      // in-place with just the C-API, and if we'd just return __stackrestore,
      // returning void, 'flatten' complains. So: return a block that returns.
      _BinaryenReturnSetValue(returnExpr,
        module.block(null, [
          module.call(stackRestore.internalName, [
            module.local_get(stackPtrLocal, nativeSizeType)
          ], NativeType.None),
          module.return()
        ], NativeType.None)
      );
    }
  }

  // Make sure we can easily prepend/append to the body
  var newBody: ExpressionRef[];
  if (_BinaryenExpressionGetId(body) == ExpressionId.Block) {
    let k = _BinaryenBlockGetNumChildren(body);
    newBody = new Array<ExpressionRef>(k);
    for (let i: Index = 0; i < k; ++i) {
      newBody[i] = _BinaryenBlockGetChildAt(body, i);
    }
  } else {
    newBody = [ body ];
  }

  // Handle implicit return site if body falls through
  if (_BinaryenExpressionGetType(body) != NativeType.Unreachable) {
    if (returnType == NativeType.None) {
      // Append __stackrestore
      newBody.push(
        module.call(stackRestore.internalName, [
          module.local_get(stackPtrLocal, nativeSizeType)
        ], NativeType.None)
      );
    } else {
      // Wrap (t = body, __stackrestore, t)
      if (tempReturnLocal < 0) {
        tempReturnLocal = numLocals++;
        vars.push(returnType);
      }
      newBody[newBody.length - 1] = module.block(null, [
        module.local_set(tempReturnLocal, newBody[newBody.length - 1]),
        module.call(stackRestore.internalName, [
          module.local_get(stackPtrLocal, nativeSizeType)
        ], NativeType.None),
        module.local_get(tempReturnLocal, returnType)
      ], returnType);
    }
  }

  // Prepend $sp = __stackprepare(FRAME_SIZE)
  var stackPrepare = program.stackPrepareInstance;
  newBody.unshift(
    module.local_set(stackPtrLocal,
      module.call(stackPrepare.internalName, [
        nativeSizeType == NativeType.I64
          ? module.i64(frameSize)
          : module.i32(frameSize)
      ], nativeSizeType)
    )
  );

  // Update the function
  var name = _BinaryenFunctionGetName(funcRef);
  var params = _BinaryenFunctionGetParams(funcRef);
  var results = _BinaryenFunctionGetResults(funcRef);
  _BinaryenRemoveFunction(module.ref, name);
  var cArr = allocPtrArray(vars);
  funcRef = _BinaryenAddFunction(module.ref, name, params, results, cArr, vars.length,
    module.flatten(newBody, returnType)
  );
  _free(cArr);

  // Make sure dependencies exist
  compiler.compileFunction(stackPrepare);
  compiler.compileFunction(stackRestore);
  compiler.runtimeFeatures |= RuntimeFeatures.STACK;

  return funcRef;
}

function visit(expr: ExpressionRef, stackifyInstance: Function): void {
  switch (_BinaryenExpressionGetId(expr)) {
    case ExpressionId.LocalSet: {
      let value = _BinaryenLocalSetGetValue(expr);
      if (
        _BinaryenExpressionGetId(value) == ExpressionId.Call &&
        readString(_BinaryenCallGetTarget(value)) == stackifyInstance.internalName
      ) {
        stackifies.push(expr);
      }
      break;
    }
    case ExpressionId.Return: {
      returns.push(expr);
      break;
    }
  }
  traverse(expr, stackifyInstance, visit);
}
