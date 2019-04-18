import { AL_MASK, DEBUG } from "./common";
import { ROOT, Block, BLOCK_OVERHEAD, initializeRoot, allocateBlock, reallocateBlock, freeBlock } from "./tlsf";
import { increment, decrement, collectCycles } from "./pure";

//////////////////////////////////// Memory manager interface /////////////////////////////////////

// @ts-ignore: decorator
@global @unsafe
function __mm_allocate(size: usize): usize {
  var root = ROOT;
  if (!root) {
    initializeRoot();
    root = ROOT;
  }
  return changetype<usize>(allocateBlock(root, size)) + BLOCK_OVERHEAD;
}

// @ts-ignore: decorator
@global @unsafe
function __mm_reallocate(data: usize, size: usize): usize {
  if (DEBUG) assert(ROOT); // must be initialized
  assert(data != 0 && !(data & AL_MASK)); // must exist and be aligned
  return changetype<usize>(reallocateBlock(ROOT, changetype<Block>(data - BLOCK_OVERHEAD), size)) + BLOCK_OVERHEAD;
}

// @ts-ignore: decorator
@global @unsafe
function __mm_free(data: usize): void {
  if (DEBUG) assert(ROOT); // must be initialized
  assert(data != 0 && !(data & AL_MASK)); // must exist and be aligned
  freeBlock(ROOT, changetype<Block>(data - BLOCK_OVERHEAD));
}

/////////////////////////////////// Garbage collector interface ///////////////////////////////////

// @ts-ignore: decorator
@global @unsafe
function __gc_retain(ref: usize): void {
  if (ref) increment(changetype<Block>(ref - BLOCK_OVERHEAD));
}

// @ts-ignore: decorator
@global @unsafe
function __gc_release(ref: usize): void {
  if (ref) decrement(changetype<Block>(ref - BLOCK_OVERHEAD));
}

// @ts-ignore: decorator
@global @unsafe
function __gc_collect(): void {
  collectCycles();
}
