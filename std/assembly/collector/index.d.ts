// common
declare function __ref_collect(): void;
declare function __ref_register(ref: usize): void;

// tracing
declare function __ref_link(ref: usize, parentRef: usize): void;
declare function __ref_unlink(ref: usize, parentRef: usize): void;
declare function __ref_mark(ref: usize): void;

// reference counting
declare function __ref_retain(ref: usize): void;
declare function __ref_release(ref: usize): void;

// debugging
declare const GC_TRACE: bool;
