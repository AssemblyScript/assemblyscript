import { AL_MASK, BLOCK, BLOCK_OVERHEAD, BLOCK_MAXSIZE } from "rt/common";

// @ts-ignore: decorator
@lazy
var startOffset: usize = (__heap_base + AL_MASK) & ~AL_MASK;

// @ts-ignore: decorator
@lazy
var offset: usize = startOffset;

function maybeGrowMemory(newOffset: usize): void {
  newOffset = (newOffset + AL_MASK) & ~AL_MASK;
  var pagesBefore = memory.size();
  var maxOffset = <usize>pagesBefore << 16;
  if (newOffset > maxOffset) {
    let pagesNeeded = ((newOffset - maxOffset + 0xffff) & ~0xffff) >>> 16;
    let pagesWanted = max(pagesBefore, pagesNeeded); // double memory
    if (memory.grow(pagesWanted) < 0) {
      if (memory.grow(pagesNeeded) < 0) unreachable(); // out of memory
    }
  }
  offset = newOffset;
}

// @ts-ignore: decorator
@unsafe @global
export function __alloc(size: usize, id: u32): usize {
  if (size > BLOCK_MAXSIZE) unreachable();
  var ptr = offset + BLOCK_OVERHEAD;
  maybeGrowMemory(ptr + max<usize>(size, 1));
  var block = changetype<BLOCK>(ptr - BLOCK_OVERHEAD);
  block.rtId = id;
  block.rtSize = size;
  return ptr;
}

// @ts-ignore: decorator
@unsafe @global
export function __realloc(ptr: usize, size: usize): usize {
  assert(ptr != 0 && !(ptr & AL_MASK)); // must exist and be aligned
  var block = changetype<BLOCK>(ptr - BLOCK_OVERHEAD);
  var actualSize = (<usize>block.rtSize + AL_MASK) & ~AL_MASK;
  var isLast = ptr + actualSize == offset;
  if (size > actualSize) {
    if (isLast) { // maybe grow
      if (size > BLOCK_MAXSIZE) unreachable();
      maybeGrowMemory(ptr + size);
    } else { // copy to new block at least double the size
      let newPtr = __alloc(max<usize>(size, actualSize << 1), block.rtId);
      memory.copy(newPtr, ptr, actualSize);
      block = changetype<BLOCK>((ptr = newPtr) - BLOCK_OVERHEAD);
    }
  } else if (isLast) { // shrink
    offset = (ptr + size + AL_MASK) & ~AL_MASK;
  }
  block.rtSize = size;
  return ptr;
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
