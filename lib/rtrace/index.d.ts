/** Block information. */
export declare interface BlockInfo {
  /** Pointer to the block. */
  ptr: number,
  /** Block size. */
  size: number,
  /** Runtime header. */
  header: {
    /** Memory manager info bits. */
    mmInfo: number,
    /** Garbage collector info bits. */
    gcInfo: number,
    /** Runtime id. */
    rtId: number,
    /** Runtime size. */
    rtSize: number
  },
  toString(): string
}

export declare interface RtraceOptions {
  /** Function being called when a problem is detected. */
  onerror?: (error: Error, info: BlockInfo) => void,
  /** Function being called with information messages. */
  oninfo?: (msg: string) => void,
  /** Obtains the module's memory instance. */
  getMemory(): WebAssembly.Memory;
}

/** Overhead between a pointer to a block and its unmanaged data. */
export declare const BLOCK_OVERHEAD;
/** Overhead between a pointer to a block's unmanaged data to its managed data. */
export declare const OBJECT_OVERHEAD;
/** Overhead between a pointer to a block and its managed data. */
export declare const TOTAL_OVERHEAD;

export declare class Rtrace {
  [key: string]: unknown; // can be used as a Wasm import

  /** Creates a new `Rtrace` instance. */
  constructor(options: RtraceOptions);

  /** Checks if rtrace is active, i.e. at least one event has occurred. */
  readonly active: boolean;

  /** Checks if there are any leaks and emits them via `oninfo`. Returns the number of live blocks. */
  check(): number;

  /** A function that is called when an allocation occurs. */
  onalloc(ptr: number): void;

  /** A function that is called when a heap allocation resize occurs. */
  onresize(ptr: number, oldSize: number): void;

  /** A function that is called when an object is moved on the heap. */
  onmove(oldPtr: number, newPtr: number): void;

  /** A function that is called when a heap allocation is freed. */
  onfree(ptr: number): void;

  /** A function that is called when a reference counting increment occurs. */
  onincrement(ptr: number): void;

  /** A function that is called when a reference counting decrement occurs. */
  ondecrement(ptr: number): void;

  /** Obtains information about a block. */
  getBlockInfo(ptr: number): BlockInfo;
}
