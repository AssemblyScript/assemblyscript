import { AL_MASK, DEBUG } from "./common";

//////////////////////////////////// Memory manager interface /////////////////////////////////////

import { ROOT, Block, BLOCK_OVERHEAD, initializeRoot, allocateBlock, reallocateBlock, freeBlock } from "./tlsf";

// @ts-ignore: decorator
@global @unsafe
function __rt_allocate(size: usize, id: u32): usize {
  var root = ROOT;
  if (!root) {
    initializeRoot();
    root = ROOT;
  }
  var block = allocateBlock(root, size);
  block.rtId = id;
  return changetype<usize>(block) + BLOCK_OVERHEAD;
}

// @ts-ignore: decorator
@global @unsafe
function __rt_reallocate(ref: usize, size: usize): usize {
  if (DEBUG) assert(ROOT); // must be initialized
  assert(ref != 0 && !(ref & AL_MASK)); // must exist and be aligned
  return changetype<usize>(reallocateBlock(ROOT, changetype<Block>(ref - BLOCK_OVERHEAD), size)) + BLOCK_OVERHEAD;
}

// @ts-ignore: decorator
@global @unsafe
function __rt_free(ref: usize): void {
  if (DEBUG) assert(ROOT); // must be initialized
  assert(ref != 0 && !(ref & AL_MASK)); // must exist and be aligned
  freeBlock(ROOT, changetype<Block>(ref - BLOCK_OVERHEAD));
}

/////////////////////////////////// Garbage collector interface ///////////////////////////////////

import { increment, decrement, collectCycles } from "./pure";

// @ts-ignore: decorator
@global @unsafe
function __rt_retain(ref: usize): void {
  if (ref) increment(changetype<Block>(ref - BLOCK_OVERHEAD));
}

// @ts-ignore: decorator
@global @unsafe
function __rt_release(ref: usize): void {
  if (ref) decrement(changetype<Block>(ref - BLOCK_OVERHEAD));
}

// @ts-ignore: decorator
@global @unsafe
function __rt_collect(): void {
  collectCycles();
}
