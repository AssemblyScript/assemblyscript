import { AL_MASK, OBJECT, OBJECT_OVERHEAD, BLOCK_MAXSIZE, BLOCK_OVERHEAD, BLOCK, OBJECT_MAXSIZE } from "./common";
import { E_ALLOCATION_TOO_LARGE } from "../util/error";

// === A minimal runtime stub ===

// @ts-ignore: decorator
@lazy let startOffset: usize = ((__heap_base + BLOCK_OVERHEAD + AL_MASK) & ~AL_MASK) - BLOCK_OVERHEAD;
// @ts-ignore: decorator
@lazy let offset: usize = startOffset;

function maybeGrowMemory(newOffset: usize): void {
  // assumes newOffset is aligned
  let pagesBefore = memory.size();
  let maxOffset = ((<usize>pagesBefore << 16) + AL_MASK) & ~AL_MASK;
  if (newOffset > maxOffset) {
    let pagesNeeded = <i32>(((newOffset - maxOffset + 0xffff) & ~0xffff) >>> 16);
    let pagesWanted = max(pagesBefore, pagesNeeded); // double memory
    if (memory.grow(pagesWanted) < 0) {
      if (memory.grow(pagesNeeded) < 0) unreachable(); // out of memory
    }
  }
  offset = newOffset;
}

// @ts-ignore: decorator
@inline function computeSize(size: usize): usize {
  return ((size + BLOCK_OVERHEAD + AL_MASK) & ~AL_MASK) - BLOCK_OVERHEAD;
}

// @ts-ignore: decorator
@unsafe @global
export function __alloc(size: usize): usize {
  if (size > BLOCK_MAXSIZE) throw new Error(E_ALLOCATION_TOO_LARGE);
  let block = changetype<BLOCK>(offset);
  let ptr = offset + BLOCK_OVERHEAD;
  let payloadSize = computeSize(size);
  maybeGrowMemory(ptr + payloadSize);
  block.mmInfo = payloadSize;
  return ptr;
}

// @ts-ignore: decorator
@unsafe @global
export function __realloc(ptr: usize, size: usize): usize {
  assert(ptr != 0 && !(ptr & AL_MASK)); // must exist and be aligned
  let block = changetype<BLOCK>(ptr - BLOCK_OVERHEAD);
  let actualSize = block.mmInfo;
  let isLast = ptr + actualSize == offset;
  let payloadSize = computeSize(size);
  if (size > actualSize) {
    if (isLast) { // last block: grow
      if (size > BLOCK_MAXSIZE) throw new Error(E_ALLOCATION_TOO_LARGE);
      maybeGrowMemory(ptr + payloadSize);
      block.mmInfo = payloadSize;
    } else { // copy to new block at least double the size
      let newPtr = __alloc(max<usize>(payloadSize, actualSize << 1));
      memory.copy(newPtr, ptr, actualSize);
      block = changetype<BLOCK>((ptr = newPtr) - BLOCK_OVERHEAD);
    }
  } else if (isLast) { // last block: shrink
    offset = ptr + payloadSize;
    block.mmInfo = payloadSize;
  }
  return ptr;
}

// @ts-ignore: decorator
@unsafe @global
export function __free(ptr: usize): void {
  assert(ptr != 0 && !(ptr & AL_MASK)); // must exist and be aligned
  let block = changetype<BLOCK>(ptr - BLOCK_OVERHEAD);
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
@unsafe @global
export function __new(size: usize, id: u32): usize {
  if (size > OBJECT_MAXSIZE) throw new Error(E_ALLOCATION_TOO_LARGE);
  let ptr = __alloc(OBJECT_OVERHEAD + size);
  let object = changetype<OBJECT>(ptr - BLOCK_OVERHEAD);
  object.gcInfo = 0;
  object.gcInfo2 = 0;
  object.rtId = id;
  object.rtSize = <u32>size;
  return ptr + OBJECT_OVERHEAD;
}

// @ts-ignore: decorator
@unsafe @global
export function __renew(oldPtr: usize, size: usize): usize {
  if (size > OBJECT_MAXSIZE) throw new Error(E_ALLOCATION_TOO_LARGE);
  let newPtr = __realloc(oldPtr - OBJECT_OVERHEAD, OBJECT_OVERHEAD + size);
  changetype<OBJECT>(newPtr - BLOCK_OVERHEAD).rtSize = <u32>size;
  return newPtr + OBJECT_OVERHEAD;
}

// @ts-ignore: decorator
@global @unsafe
export function __link(parentPtr: usize, childPtr: usize, expectMultiple: bool): void {
  // nop
}

// @ts-ignore: decorator
@global @unsafe
export function __pin(ptr: usize): usize {
  return ptr;
}

// @ts-ignore: decorator
@global @unsafe
export function __unpin(ptr: usize): void {
  // nop
}

// @ts-ignore: decorator
@global @unsafe
function __visit(ptr: usize, cookie: u32): void { // eslint-disable-line @typescript-eslint/no-unused-vars
  // nop
}

// @ts-ignore: decorator
@global @unsafe
export function __collect(): void {
  // nop
}
