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
  if (size > actualSize) {
    if (ptr + actualSize == offset) { // last block: grow
      if (size > BLOCK_MAXSIZE) unreachable();
      actualSize = (size + AL_MASK) & ~AL_MASK;
      maybeGrowMemory(ptr + actualSize);
      block.mmInfo = actualSize;
    } else { // copy to new block at least double the size
      actualSize = max<usize>((size + AL_MASK) & ~AL_MASK, actualSize << 1);
      let newPtr = __alloc(actualSize, block.rtId);
      memory.copy(newPtr, ptr, block.rtSize);
      block = changetype<BLOCK>((ptr = newPtr) - BLOCK_OVERHEAD);
    }
  } else if (ptr + actualSize == offset) { // last block: shrink
    actualSize = (size + AL_MASK) & ~AL_MASK;
    offset = ptr + actualSize;
    block.mmInfo = actualSize;
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
