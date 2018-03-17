/**
 * @file Definitions for linking Binaryen with AssemblyScript.
 */

declare function allocate_memory(size: usize): usize;
declare function free_memory(ptr: usize): void;
