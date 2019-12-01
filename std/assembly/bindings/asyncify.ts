@unmanaged
export class StackDescriptor {
  /** The index in linear memory of the start of the “asyncify stack”. */
  stackStart: usize;
  /** The index of the end of that stack region, which implies how big it is. */
  stackEnd: usize;
}

/** Starts to unwind the call stack. */
export declare function start_unwind(data: StackDescriptor): void;
/** Stops unwinding the call stack. */
export declare function stop_unwind(): void;
/** Starts to rewind the call stack. */
export declare function start_rewind(data: StackDescriptor): void;
/** Stops rewinding the call stack. */
export declare function stop_rewind(): void;
