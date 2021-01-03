/**
 * @fileoverview A minimalistic shadow stack.
 * 
 * Instruments a module's exports to track when the execution stack is fully
 * unwound, and injects a call to `__autocollect` to be invoked when it is.
 * Accounts for the currently in-flight managed return value from Wasm to the
 * host by pushing it to a mini stack, essentially a stack of only one value,
 * while `__autocollect` is executing.
 * 
 * Pros:
 * - Does not need a full-blown and potentially costly shadow stack.
 * - Does not require tracking emulated stack slots during compilation.
 * - Means: Still yields relatively lean & mean binaries.
 * 
 * Cons:
 * - Only steps the GC at the boundary, buffering garbage in between.
 * - Unlike a manually invoked GC, GC may step at any time (at the boundary),
 *   so external objects must be properly pinned not only when `__collect` is
 *   being invoked, but also whenever an export is being invoked.
 * 
 * @license Apache-2.0
 */

import {
  Pass
} from "./pass";

import {
  BinaryOp,
  CString,
  expandType,
  ExpressionRef,
  ExternalKind,
  FunctionRef,
  Index,
  Module,
  NativeType,
  UnaryOp
} from "../module";

import {
  _BinaryenAddFunctionExport,
  _BinaryenExportGetKind,
  _BinaryenExportGetName,
  _BinaryenExportGetValue,
  _BinaryenFunctionGetName,
  _BinaryenFunctionGetNumLocals,
  _BinaryenFunctionGetParams,
  _BinaryenFunctionGetResults,
  _BinaryenGetExportByIndex,
  _BinaryenGetFunction,
  _BinaryenGetNumExports,
  _BinaryenRemoveExport
} from "../glue/binaryen";

import {
  Program
} from "../program";

const STACK_DEPTH = "~stack_depth";

/** Instruments a module with a minimalistic shadow stack for precise GC. */
export class MiniStack extends Pass {
  /** Compiler reference. */
  program: Program;
  /** Exported functions returning managed values. */
  managedReturns: Set<string> = new Set();

  constructor(module: Module, program: Program) {
    super(module);
    this.program = program;
  }

  /** Notes the presence of an exported function with a managed return value. */
  noteManagedReturn(exportName: string): void {
    this.managedReturns.add(exportName);
  }

  /** Instruments a function export to also maintain stack depth. */
  instrumentFunctionExport(func: FunctionRef, exportNamePtr: CString): void {
    var module = this.module;
    var namePtr = _BinaryenFunctionGetName(func);
    var name = module.readStringCached(namePtr)!;

    var wrapperName = "export:" + name;
    if (!module.hasFunction(wrapperName)) {
      var params = _BinaryenFunctionGetParams(func);
      var results = _BinaryenFunctionGetResults(func);
      let numLocals = _BinaryenFunctionGetNumLocals(func);
      var vars = new Array<NativeType>();

      // Prepare a call to the original function
      var paramTypes = expandType(params);
      var numParams = paramTypes.length;
      var operands = new Array<ExpressionRef>(numParams);
      for (let i = 0; i < numParams; ++i) {
        operands[i] = module.local_get(i, paramTypes[i]);
      }
      var call = module.call(name, operands, results);

      // Create a wrapper function also maintaining stack depth
      var stmts = new Array<ExpressionRef>();
      if (numLocals) {
        stmts.push(
          module.global_set(STACK_DEPTH,
            module.binary(BinaryOp.AddI32,
              module.global_get(STACK_DEPTH, NativeType.I32),
              module.i32(1) // only need to know > 0
            )
          )
        );
      }
      if (results == NativeType.None) {
        stmts.push(
          call
        );
      } else {
        vars.push(results);
        stmts.push(
          module.local_set(numParams,
            call
          )
        );
      }
      if (numLocals) {
        stmts.push(
          module.global_set(STACK_DEPTH,
            module.binary(BinaryOp.SubI32,
              module.global_get(STACK_DEPTH, NativeType.I32),
              module.i32(1) // only need to know > 0
            )
          )
        );
      }
      let ministackGlobal = this.program.ministackGlobal;
      let exportName = module.readStringCached(exportNamePtr)!;
      stmts.push(
        module.global_set(ministackGlobal.internalName,
          this.managedReturns.has(exportName)
            ? module.local_get(numParams, results)
            : module.i32(0)
        )
      );
      let autocollectInstance = this.program.autocollectInstance;
      stmts.push(
        module.if(
          module.unary(UnaryOp.EqzI32,
            module.global_get(STACK_DEPTH, NativeType.I32)
          ),
          module.call(autocollectInstance.internalName, null, NativeType.None)
        )
      );
      if (results != NativeType.None) {
        stmts.push(
          module.local_get(numParams, results)
        );
      }
      module.addFunction(wrapperName, params, results, vars,
        module.block(null, stmts, results)
      );
    }

    // Replace the original export with the wrapped one
    _BinaryenRemoveExport(module.ref, exportNamePtr);
    _BinaryenAddFunctionExport(module.ref, module.allocStringCached(wrapperName), exportNamePtr);
  }

  /** Runs the pass. Returns `true` if the mini stack has been added. */
  run(): bool {
    var module = this.module;
    var moduleRef = module.ref;
    var numExports = _BinaryenGetNumExports(moduleRef);
    if (numExports) {
      let functions = new Array<FunctionRef>();
      let externalNames = new Array<CString>();
      for (let i: Index = 0; i < numExports; ++i) {
        let exportRef = _BinaryenGetExportByIndex(moduleRef, i);
        if (_BinaryenExportGetKind(exportRef) == ExternalKind.Function) {
          let internalName = _BinaryenExportGetValue(exportRef);
          let externalName = _BinaryenExportGetName(exportRef);
          functions.push(_BinaryenGetFunction(moduleRef, internalName));
          externalNames.push(externalName);
        }
      }
      for (let i = 0, k = functions.length; i < k; ++i) {
        this.instrumentFunctionExport(functions[i], externalNames[i]);
      }
      module.addGlobal(STACK_DEPTH, NativeType.I32, true, module.i32(0));
      return true;
    }
    return false;
  }
}
