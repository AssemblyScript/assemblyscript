/** Creates a new `RTrace` instance, tracking allocations, frees and reference counts. */
declare function rtrace(
  /** Function being called when a problem is detected. */
  onerror?: (error: Error) => void,
  /** Function being called with information messages. */
  oninfo?: (info: string) => void
): rtrace.RTrace;

declare namespace rtrace {
  /** The rtrace instance used as the `rtrace` import to the Wasm module. */
  export interface RTrace {
    /** Number of allocations so far. */
    allocCount: number;
    /** Number of reallocations so far. */
    reallocCount: number;
    /** Number of frees so far. */
    freeCount: number;
    /** Number of RC increments (retains) so far. */
    incrementCount: number;
    /** Number of RC decrements (releases) so far. */
    decrementCount: number;

    /** Called when a new block is allocated. */
    onalloc(
      /** New block being allocated. */
      block: number
    ): void;

    /** Called when a block is reallocated and must be moved. */
    onrealloc(
      /** Block being moved. */
      oldBlock: number,
      /** New block used from now on. */
      newBlock: number
    ): void;

    /** Called when a block is freed, implicitly or explicitly. */
    onfree(
      /** Block being freed. */
      block: number
    ): void;

    /** Called when a reference to a block is retained (RC incremented by one). */
    onincrement(
      /** Block a reference to is being retained. */
      block: number
    ): void;

    /** Called when a reference to a block is released (RC decremented by one). */
    ondecrement(
      /** Block a reference to is being released. */
      block: number
    ): void;

    /** Checks if rtrace is active, i.e. at least one event has occurred. */
    readonly active: boolean;

    /** Checks if there are any leaks and emits them via `oninfo`. Returns the number of live blocks. */
    check(): number;
  }
}

export = rtrace;
