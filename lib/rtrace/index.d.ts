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
  getMemory()
}

export declare class Rtrace {
  [key: string]: unknown; // can be used as a Wasm import

  /** Creates a new `Rtrace` instance. */
  constructor(options: RtraceOptions);

  /** Checks if rtrace is active, i.e. at least one event has occurred. */
  readonly active: boolean;

  /** Checks if there are any leaks and emits them via `oninfo`. Returns the number of live blocks. */
  check(): number;
}
