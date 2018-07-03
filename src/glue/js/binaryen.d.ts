/** @module glue/js *//***/

/// <reference path="../binaryen.d.ts" />

declare function allocate_memory(size: usize): usize;
declare function free_memory(ptr: usize): void;
