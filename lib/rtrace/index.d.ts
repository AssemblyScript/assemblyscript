/**
 * This method returns an `RTrace` object used for reference count tracing.
 *
 * @param {TraceEventCallback?} onerror - A method that is called when a trace error event occurs.
 * @param {TraceEventCallback?} oninfo - A method that is called when a trace info event occurs.
 */
declare function rtrace(onerror?: rtrace.TraceEventCallback, oninfo?: rtrace.TraceEventCallback): rtrace.RTrace;

declare namespace rtrace {
  /**
   * The RTrace interface represents a collection of properties that help develoeprs describe the
   * reference counts and state of the Web Assembly module.
   */
  export interface RTrace {

    /**
     * The current allocation count.
     */
    allocCount: number;

    /**
     * The current free count.
     */
    freeCount: number;

    /**
     * The current increment count.
     */
    incrementCount: number;

    /**
     * The current decrement count.
     */
    decrementCount: number;

    /**
     * This method is called when an allocation occurs.
     *
     * @param {number} block - The `ptr - 16` value indicating the start of the block.
     */
    onalloc(block: number): void;

    /**
     * This method is called when a block is freed.
     *
     * @param {number} block - The `ptr - 16` value indicating the start of the block.
     */
    onfree(block: number): void;

    /**
     * This method is called when a reference count is incrememnted
     *
     * @param {number} block - The `ptr - 16` value indicating the start of the block.
     */
    onincrement(block: number): void;

    /**
     * This method is called when a reference count is decremented.
     *
     * @param {number} block - The `ptr - 16` value indicating the start of the block.
     */
    ondecrement(block: number): void;

    /**
     * This property indicates if rtrace is active.
     */
    readonly active: boolean;

    /**
     * This method returns the current number of allocated blocks.
     */
    check(): number;

  }

  /**
   * This is a trace event callback. It accepts a string containing a message about the event.
   */
  export type TraceEventCallback = (info: string) => void;
}

export = rtrace;
