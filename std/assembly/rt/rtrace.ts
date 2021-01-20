import { BLOCK } from "./common";

export declare function oninit(heapBase: usize): void;

// Memory Allocator
export declare function onalloc(block: BLOCK): void;
export declare function onresize(block: BLOCK, oldSizeInclOverhead: usize): void;
export declare function onmove(oldBlock: BLOCK, newBlock: BLOCK): void;
export declare function onfree(block: BLOCK): void;

// Garbage collector
export declare function onvisit(block: BLOCK): bool;
export declare function oncollect(total: usize): void;
export declare function oninterrupt(total: usize): void;
export declare function onyield(total: usize): void;
