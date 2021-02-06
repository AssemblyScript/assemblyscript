/**
 * @fileoverview A lightweight store instrumentation pass.
 * 
 * Can be used to find rogue stores to protected memory addresses like object
 * headers or similar, without going overboard with instrumentation. Also
 * passes a flag whether a store originates within the runtime or other code.
 * 
 * @license Apache-2.0
 */

import {
  Pass
} from "./pass";

import {
  Compiler
} from "../compiler";

import {
  createType,
  ExpressionRef,
  NativeType
} from "../module";

import {
  _BinaryenFunctionGetName,
  _BinaryenStoreGetBytes,
  _BinaryenStoreGetOffset,
  _BinaryenStoreGetPtr,
  _BinaryenStoreSetPtr
} from "../glue/binaryen";

/** Instruments stores to also call an import. */
export class RtraceMemory extends Pass {
  /** Whether we've seen any stores. */
  seenStores: bool = false;
  /** Target pointer type. */
  ptrType: NativeType;

  constructor(compiler: Compiler) {
    super(compiler.module);
    this.ptrType = compiler.options.nativeSizeType;
  }

  checkRT(): bool {
    var functionName = this.module.readStringCached(_BinaryenFunctionGetName(this.currentFunction))!;
    return functionName.startsWith("~lib/rt/");
  }

  /** @override */
  visitStore(store: ExpressionRef): void {
    var module = this.module;
    var ptr = _BinaryenStoreGetPtr(store);
    var offset = _BinaryenStoreGetOffset(store);
    var bytes = _BinaryenStoreGetBytes(store);
    // onstore(ptr: usize, offset: i32, bytes: i32, isRT: bool) -> ptr
    _BinaryenStoreSetPtr(store,
      module.call("~onstore", [
        ptr,
        module.i32(offset),
        module.i32(bytes),
        module.i32(i32(this.checkRT()))
      ], this.ptrType)
    );
    this.seenStores = true;
  }

  // TODO: MemoryFill, Atomics

  /** @override */
  walkModule(): void {
    super.walkModule();
    if (this.seenStores) {
      this.module.addFunctionImport("~onstore", "rtrace", "onstore",
        createType([ this.ptrType, NativeType.I32, NativeType.I32, NativeType.I32 ]),
        this.ptrType
      );
    }
  }
}
