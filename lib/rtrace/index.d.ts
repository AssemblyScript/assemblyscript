/** Block information. */
export declare interface BlockInfo {
  /** Pointer to the block. */
  ptr: number,
  /** Block size including overhead. */
  size: number,
  /** Memory manager info. */
  mmInfo: {
    tags: string,
    size: number
  },
  /** Garbage collector info. */
  gcInfo: {
    color: string,
    next: number,
    prev: number
  },
  /** Runtime id. */
  rtId: number,
  /** Runtime size. */
  rtSize: number
}

type ErrorCallback = (error: Error, info: BlockInfo) => void;
type InfoCallback = (msg: string) => void;

export declare interface RtraceOptions {
  /** Function being called when a problem is detected. */
  onerror?: ErrorCallback,
  /** Function being called with information messages. */
  oninfo?: InfoCallback,
  /** Obtains the module's memory instance. */
  getMemory(): WebAssembly.Memory;
}

/** Overhead between a pointer to a block and its unmanaged data. */
export declare const BLOCK_OVERHEAD;
/** Overhead between a pointer to a block's unmanaged data to its managed data. */
export declare const OBJECT_OVERHEAD;
/** Overhead between a pointer to a block and its managed data. */
export declare const TOTAL_OVERHEAD;

export declare class Rtrace  {
  /** Creates a new `Rtrace` instance. */
  constructor(options: RtraceOptions);

  /** Checks if rtrace is active, i.e. at least one event has occurred. */
  readonly active: boolean;
  /** Number of seen allocation events. */
  readonly allocCount: number;
  /** Number of seen resize events during realloc. */
  readonly resizeCount: number;
  /** Number of seens move events during realloc. */
  readonly moveCount: number;
  /** Number of seen free events. */
  readonly freeCount: number;
  /** Heap base offset reported by the module. */
  readonly heapBase: number;

  /** Installs Rtrace on the specified imports object. */
  install(imports: Record<string,Record<string,unknown>>): Record<string,Record<string,unknown>>;

  /** Checks if there are any leaks and emits them via `oninfo`. Returns the number of live blocks. */
  check(): number;

  /** Obtains information about a block. */
  getBlockInfo(ptr: number): BlockInfo;

  // Instrumentation

  /** Called upon runtime initialization. */
  oninit(heapBase: number): void;

  /** Called when a new block is allocated. */
  onalloc(ptr: number): void;

  /** Called when an existing block is resized. */
  onresize(ptr: number, oldSize: number): void;

  /** Called when an existing block is moved to a new allocation. */
  onmove(oldPtr: number, newPtr: number): void;

  /** Called when an object is visited by the GC. Returns `true` unless there is an error and the block should be skipped. */
  onvisit(ptr: number): boolean;

  /** Called when an existing block is freed.*/
  onfree(ptr: number): void;

  /** Called when a collection phase concludes. */
  oncollect(total: number): void;

  /** Called when a collection phase interrupts the program. */
  oninterrupt(total: number): void;

  /** Called when a collection phase yields from an interrupt. */
  onyield(total: number): void;

  /** Called when a value is stored to memory. */
  onstore(ptr: number, offset: number, bytes: number, isRT: boolean): void;

  /** Called when a value is loaded from memory. */
  onload(ptr: number, offset: number, bytes: number, isRT: boolean): void;

  // Reporting

  /** Error message callback. */
  onerror: ErrorCallback;

  /** Info message callback. */
  oninfo: InfoCallback;
}
