import { AL_MASK, BLOCK, BLOCK_OVERHEAD, BLOCK_MAXSIZE } from "rt/common";

// @ts-ignore: decorator
@lazy
var startOffset: usize = (__heap_base + AL_MASK) & ~AL_MASK;

// @ts-ignore: decorator
@lazy
var offset: usize = startOffset;

// @ts-ignore: decorator
@unsafe @global
export function __alloc(size: usize, id: u32): usize {
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
  var block = changetype<BLOCK>(ptr - BLOCK_OVERHEAD);
  block.rtId = id;
  block.rtSize = size;
  return ptr;
}

// @ts-ignore: decorator
@unsafe @global
export function __realloc(ref: usize, size: usize): usize {
  var block = changetype<BLOCK>(ref - BLOCK_OVERHEAD);
  var oldSize = <usize>block.rtSize;
  if (size > oldSize) {
    let newRef = __alloc(size, block.rtId);
    memory.copy(newRef, ref, oldSize);
    ref = newRef;
  } else {
    block.rtSize = size;
  }
  return ref;
}

// @ts-ignore: decorator
@unsafe @global
export function __free(ref: usize): void {
}

// @ts-ignore: decorator
@unsafe @global
function __reset(): void { // special
  offset = startOffset;
}

// @ts-ignore: decorator
@global @unsafe
export function __retain(ref: usize): usize {
  return ref;
}

// @ts-ignore: decorator
@global @unsafe
export function __release(ref: usize): void {
}

// @ts-ignore: decorator
@global @unsafe
export function __visit(ref: usize, cookie: u32): void {
}

// @ts-ignore: decorator
@global @unsafe
export function __collect(): void {
}
