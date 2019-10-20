import { AL_MASK, BLOCK, BLOCK_OVERHEAD, BLOCK_MAXSIZE, AL_SIZE, DEBUG } from "rt/common";

// @ts-ignore: decorator
@lazy
var startOffset: usize = (__heap_base + AL_MASK) & ~AL_MASK;

// @ts-ignore: decorator
@lazy
var offset: usize = startOffset;

function maybeGrowMemory(newOffset: usize): void {
  // assumes newOffset is aligned
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
  var actualSize = max<usize>((size + AL_MASK) & ~AL_MASK, AL_SIZE);
  maybeGrowMemory(ptr + actualSize);
  var block = changetype<BLOCK>(ptr - BLOCK_OVERHEAD);
  block.mmInfo = actualSize;
  if (DEBUG) block.gcInfo = -1;
  block.rtId = id;
  block.rtSize = size;
  return ptr;
}

// @ts-ignore: decorator
@unsafe @global
export function __realloc(ptr: usize, size: usize): usize {
  assert(ptr != 0 && !(ptr & AL_MASK)); // must exist and be aligned
  var block = changetype<BLOCK>(ptr - BLOCK_OVERHEAD);
  var actualSize = block.mmInfo;
  if (DEBUG) assert(block.gcInfo == -1);
  var isLast = ptr + actualSize == offset;
  var alignedSize = (size + AL_MASK) & ~AL_MASK;
  if (size > actualSize) {
    if (isLast) { // last block: grow
      if (size > BLOCK_MAXSIZE) unreachable();
      maybeGrowMemory(ptr + alignedSize);
      block.mmInfo = alignedSize;
    } else { // copy to new block at least double the size
      let newPtr = __alloc(max<usize>(alignedSize, actualSize << 1), block.rtId);
      memory.copy(newPtr, ptr, block.rtSize);
      block = changetype<BLOCK>((ptr = newPtr) - BLOCK_OVERHEAD);
    }
  } else if (isLast) { // last block: shrink
    offset = ptr + alignedSize;
    block.mmInfo = alignedSize;
  }
  block.rtSize = size;
  return ptr;
}

// @ts-ignore: decorator
@unsafe @global
export function __free(ptr: usize): void {
  assert(ptr != 0 && !(ptr & AL_MASK)); // must exist and be aligned
  var block = changetype<BLOCK>(ptr - BLOCK_OVERHEAD);
  if (DEBUG) assert(block.gcInfo == -1);
  if (ptr + block.mmInfo == offset) { // last block: discard
    offset = changetype<usize>(block);
  }
}

// @ts-ignore: decorator
@unsafe @global
export function __reset(): void { // special
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
function __visit(ref: usize, cookie: u32): void {
}

// @ts-ignore: decorator
@global @unsafe
export function __collect(): void {
}
