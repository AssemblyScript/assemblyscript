// Memory manager
declare function __alloc(size: usize): usize;
declare function __realloc(ptr: usize, size: usize): usize;
declare function __free(ptr: usize): void;
declare function __reset(): void;

// Garbage collector
declare function __new(size: usize, id: u32): usize;
declare function __renew(ptr: usize, size: usize): usize;
declare function __link(parentPtr: usize, childPtr: usize, expectMultiple: bool): void;
declare function __collect(): void;

// Runtime type info
declare function __typeinfo(id: u32): u32;
declare function __instanceof(ptr: usize, superId: u32): bool;

// Visitors
declare function __visit(ptr: usize, cookie: i32): void;
declare function __visit_globals(cookie: u32): void;
declare function __visit_members(ptr: usize, cookie: u32): void;

// Allocation helpers
declare function __newBuffer(size: usize, id: u32, data?: usize): usize;
declare function __newArray(length: i32, alignLog2: usize, id: u32, data?: usize): usize;

// Finalization
declare function __finalize(ptr: usize): void;

// Debugging
declare const ASC_RTRACE: bool;
declare const ASC_PROFILE: bool;

// Incremental GC constants
declare const ASC_GC_GRANULARITY: i32;
declare const ASC_GC_SWEEPFACTOR: i32;
declare const ASC_GC_IDLEFACTOR: i32;
declare const ASC_GC_MARKCOST: i32;
declare const ASC_GC_SWEEPCOST: i32;
