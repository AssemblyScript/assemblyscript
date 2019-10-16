export declare function alloc(mbase: usize, size: usize, id: u32): usize;
export declare function realloc(mbase: usize, size: usize, id: u32): usize;
export declare function free(mbase: usize, ptr: usize): usize;
export declare function retain(mbase: usize, ptr: usize): usize;
export declare function release(mbase: usize, ptr: usize, local_visit_members: u32): usize;
export declare function visit(mbase: usize, ptr: usize, cookie: u32, local_visit_members: u32): void;
export declare function collect(mbase: usize, local_visit_members: u32): void;

export declare function __alloc(size: usize, id: u32): usize;
export declare function __realloc(ref: usize, size: u32): usize;
export declare function __free( ptr: usize): usize;
export declare function __retain( ptr: usize): usize;
export declare function __release( ptr: usize): usize;
export declare function __visit(ptr: usize, cookie: u32): void;
export declare function __collect(): void;