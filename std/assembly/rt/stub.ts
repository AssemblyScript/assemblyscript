import { AL_MASK, CommonBlock } from "./common";

// @ts-ignore: decorator
@inline
const BLOCK_OVERHEAD = (offsetof<CommonBlock>() + AL_MASK) & ~AL_MASK;

// @ts-ignore: decorator
@inline
const BLOCK_MAXSIZE: usize = (1 << 30) - BLOCK_OVERHEAD; // match TLSF

// @ts-ignore: decorator
@lazy
var startOffset: usize = (HEAP_BASE + AL_MASK) & ~AL_MASK;

// @ts-ignore: decorator
@lazy
var offset: usize = startOffset;

//////////////////////////////////// Memory manager interface /////////////////////////////////////

// @ts-ignore: decorator
@unsafe @global
function __rt_allocate(size: usize, id: u32): usize {
  if (size > BLOCK_MAXSIZE) unreachable();
  var ptr = offset + BLOCK_OVERHEAD;
  var newPtr = (ptr + max<usize>(size, 1) + AL_MASK) & ~AL_MASK;
  var pagesBefore = memory.size();
  if (newPtr > <usize>pagesBefore << 16) {
    let pagesNeeded = ((newPtr - ptr + 0xffff) & ~0xffff) >>> 16;
    let pagesWanted = max(pagesBefore, pagesNeeded); // double memory
    if (memory.grow(pagesWanted) < 0) {
      if (memory.grow(pagesNeeded) < 0) unreachable(); // out of memory
    }
  }
  offset = newPtr;
  var block = changetype<CommonBlock>(ptr - BLOCK_OVERHEAD);
  block.rtId = id;
  block.rtSize = size;
  return ptr;
}

// @ts-ignore: decorator
@unsafe @global
function __rt_reallocate(ref: usize, size: usize): usize {
  var block = changetype<CommonBlock>(ref - BLOCK_OVERHEAD);
  var oldSize = <usize>block.rtSize;
  if (size > oldSize) {
    let newRef = __rt_allocate(size, block.rtId);
    memory.copy(newRef, ref, oldSize);
    ref = newRef;
  } else {
    block.rtSize = size;
  }
  return ref;
}

// @ts-ignore: decorator
@unsafe @global
function __rt_free(ref: usize): void {
}

// @ts-ignore: decorator
@unsafe @global
function __rt_reset(): void { // special
  offset = startOffset;
}

/////////////////////////////////// Garbage collector interface ///////////////////////////////////

// @ts-ignore: decorator
@global @unsafe
function __rt_retain(ref: usize): void {
}

// @ts-ignore: decorator
@global @unsafe
function __rt_release(ref: usize): void {
}

// @ts-ignore: decorator
@global @unsafe
function __rt_collect(): void {
}
