import { AL_BITS, AL_SIZE, AL_MASK, DEBUG, BLOCK, BLOCK_OVERHEAD, BLOCK_MAXSIZE } from "./common";
import { oninit, onalloc, onresize, onmove, onfree } from "./rtrace";
import { E_ALLOCATION_TOO_LARGE } from "../util/error";

// === The TLSF (Two-Level Segregate Fit) memory allocator ===
// see: http://www.gii.upv.es/tlsf/

// - `ffs(x)` is equivalent to `ctz(x)` with x != 0
// - `fls(x)` is equivalent to `sizeof(x) * 8 - clz(x) - 1`

// ╒══════════════ Block size interpretation (32-bit) ═════════════╕
//    3                   2                   1
//  1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0  bits
// ├─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┼─┴─┴─┴─╫─┴─┴─┴─┤
// │ |                    FL                       │ SB = SL + AL  │ ◄─ usize
// └───────────────────────────────────────────────┴───────╨───────┘
// FL: first level, SL: second level, AL: alignment, SB: small block

// @ts-ignore: decorator
@inline const SL_BITS: u32 = 4;
// @ts-ignore: decorator
@inline const SL_SIZE: u32 = 1 << SL_BITS;

// @ts-ignore: decorator
@inline const SB_BITS: u32 = SL_BITS + AL_BITS;
// @ts-ignore: decorator
@inline const SB_SIZE: u32 = 1 << SB_BITS;

// @ts-ignore: decorator
@inline const FL_BITS: u32 = 31 - SB_BITS;

// [00]: < 256B (SB)  [12]: < 1M
// [01]: < 512B       [13]: < 2M
// [02]: < 1K         [14]: < 4M
// [03]: < 2K         [15]: < 8M
// [04]: < 4K         [16]: < 16M
// [05]: < 8K         [17]: < 32M
// [06]: < 16K        [18]: < 64M
// [07]: < 32K        [19]: < 128M
// [08]: < 64K        [20]: < 256M
// [09]: < 128K       [21]: < 512M
// [10]: < 256K       [22]: <= 1G - OVERHEAD
// [11]: < 512K
// VMs limit to 2GB total (currently), making one 1G block max (or three 512M etc.) due to block overhead

// Tags stored in otherwise unused alignment bits

// @ts-ignore: decorator
@inline const FREE: usize = 1 << 0;
// @ts-ignore: decorator
@inline const LEFTFREE: usize = 1 << 1;
// @ts-ignore: decorator
@inline const TAGS_MASK: usize = FREE | LEFTFREE; // <= AL_MASK

// ╒════════════════════ Block layout (32-bit) ════════════════════╕
//    3                   2                   1
//  1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0  bits
// ├─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┼─┼─┤            ┐
// │                          size                             │L│F│ ◄─┐ info   overhead
// ╞>ptr═══════════════════════════════════════════════════════╧═╧═╡   │        ┘
// │                        if free: ◄ prev                        │ ◄─┤ usize
// ├───────────────────────────────────────────────────────────────┤   │
// │                        if free: next ►                        │ ◄─┤
// ├───────────────────────────────────────────────────────────────┤   │
// │                             ...                               │   │ >= 0
// ├───────────────────────────────────────────────────────────────┤   │
// │                        if free: back ▲                        │ ◄─┘
// └───────────────────────────────────────────────────────────────┘ >= MIN SIZE
// F: FREE, L: LEFTFREE
@unmanaged export class Block extends BLOCK {

  /** Previous free block, if any. Only valid if free, otherwise part of payload. */
  prev: Block | null;
  /** Next free block, if any. Only valid if free, otherwise part of payload. */
  next: Block | null;

  // If the block is free, there is a 'back'reference at its end pointing at its start.
}

// Block constants. A block must have a minimum size of three pointers so it can hold `prev`,
// `next` and `back` if free.

// @ts-ignore: decorator
@inline const BLOCK_MINSIZE: usize = ((3 * sizeof<usize>() + BLOCK_OVERHEAD + AL_MASK) & ~AL_MASK) - BLOCK_OVERHEAD; // prev + next + back
// @ts-ignore: decorator
// @inline const BLOCK_MAXSIZE: usize = 1 << (FL_BITS + SB_BITS - 1); // exclusive, lives in common.ts

/** Gets the left block of a block. Only valid if the left block is free. */
// @ts-ignore: decorator
@inline function GETFREELEFT(block: Block): Block {
  return load<Block>(changetype<usize>(block) - sizeof<usize>());
}

/** Gets the right block of a block by advancing to the right by its size. */
// @ts-ignore: decorator
@inline function GETRIGHT(block: Block): Block {
  return changetype<Block>(changetype<usize>(block) + BLOCK_OVERHEAD + (block.mmInfo & ~TAGS_MASK));
}

// ╒═════════════════════ Root layout (32-bit) ════════════════════╕
//    3                   2                   1
//  1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0  bits
// ├─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┤          ┐
// │        0        |           flMap                            S│ ◄────┐
// ╞═══════════════════════════════════════════════════════════════╡      │
// │                           slMap[0] S                          │ ◄─┐  │
// ├───────────────────────────────────────────────────────────────┤   │  │
// │                           slMap[1]                            │ ◄─┤  │
// ├───────────────────────────────────────────────────────────────┤  u32 │
// │                           slMap[22]                           │ ◄─┘  │
// ╞═══════════════════════════════════════════════════════════════╡    usize
// │                            head[0]                            │ ◄────┤
// ├───────────────────────────────────────────────────────────────┤      │
// │                              ...                              │ ◄────┤
// ├───────────────────────────────────────────────────────────────┤      │
// │                           head[367]                           │ ◄────┤
// ╞═══════════════════════════════════════════════════════════════╡      │
// │                             tail                              │ ◄────┘
// └───────────────────────────────────────────────────────────────┘   SIZE   ┘
// S: Small blocks map
@unmanaged class Root {
  /** First level bitmap. */
  flMap: usize;
}

// Root constants. Where stuff is stored inside of the root structure.

// @ts-ignore: decorator
@inline const SL_START: usize = sizeof<usize>();
// @ts-ignore: decorator
@inline const SL_END: usize = SL_START + (FL_BITS << alignof<u32>());
// @ts-ignore: decorator
@inline const HL_START: usize = (SL_END + AL_MASK) & ~AL_MASK;
// @ts-ignore: decorator
@inline const HL_END: usize = HL_START + FL_BITS * SL_SIZE * sizeof<usize>();
// @ts-ignore: decorator
@inline const ROOT_SIZE: usize = HL_END + sizeof<usize>();

// @ts-ignore: decorator
@lazy export let ROOT: Root = changetype<Root>(0); // unsafe initializion below

/** Gets the second level map of the specified first level. */
// @ts-ignore: decorator
@inline function GETSL(root: Root, fl: usize): u32 {
  return load<u32>(
    changetype<usize>(root) + (fl << alignof<u32>()),
    SL_START
  );
}

/** Sets the second level map of the specified first level. */
// @ts-ignore: decorator
@inline function SETSL(root: Root, fl: usize, slMap: u32): void {
  store<u32>(
    changetype<usize>(root) + (fl << alignof<u32>()),
    slMap,
    SL_START
  );
}

/** Gets the head of the free list for the specified combination of first and second level. */
// @ts-ignore: decorator
@inline function GETHEAD(root: Root, fl: usize, sl: u32): Block | null {
  return load<Block>(
    changetype<usize>(root) + (((fl << SL_BITS) + <usize>sl) << alignof<usize>()),
    HL_START
  );
}

/** Sets the head of the free list for the specified combination of first and second level. */
// @ts-ignore: decorator
@inline function SETHEAD(root: Root, fl: usize, sl: u32, head: Block | null): void {
  store<Block | null>(
    changetype<usize>(root) + (((fl << SL_BITS) + <usize>sl) << alignof<usize>()),
    head,
    HL_START
  );
}

/** Gets the tail block.. */
// @ts-ignore: decorator
@inline function GETTAIL(root: Root): Block {
  return load<Block>(
    changetype<usize>(root),
    HL_END
  );
}

/** Sets the tail block. */
// @ts-ignore: decorator
@inline function SETTAIL(root: Root, tail: Block): void {
  store<Block>(
    changetype<usize>(root),
    tail,
    HL_END
  );
}

/** Inserts a previously used block back into the free list. */
function insertBlock(root: Root, block: Block): void {
  if (DEBUG) assert(block); // cannot be null
  let blockInfo = block.mmInfo;
  if (DEBUG) assert(blockInfo & FREE); // must be free

  let right = GETRIGHT(block);
  let rightInfo = right.mmInfo;

  // merge with right block if also free
  if (rightInfo & FREE) {
    removeBlock(root, right);
    block.mmInfo = blockInfo = blockInfo + BLOCK_OVERHEAD + (rightInfo & ~TAGS_MASK); // keep block tags
    right = GETRIGHT(block);
    rightInfo = right.mmInfo;
    // 'back' is set below
  }

  // merge with left block if also free
  if (blockInfo & LEFTFREE) {
    let left = GETFREELEFT(block);
    let leftInfo = left.mmInfo;
    if (DEBUG) assert(leftInfo & FREE); // must be free according to right tags
    removeBlock(root, left);
    block = left;
    block.mmInfo = blockInfo = leftInfo + BLOCK_OVERHEAD + (blockInfo & ~TAGS_MASK); // keep left tags
    // 'back' is set below
  }

  right.mmInfo = rightInfo | LEFTFREE;
  // reference to right is no longer used now, hence rightInfo is not synced

  // we now know the size of the block
  let size = blockInfo & ~TAGS_MASK;
  if (DEBUG) assert(size >= BLOCK_MINSIZE); // must be a valid size
  if (DEBUG) assert(changetype<usize>(block) + BLOCK_OVERHEAD + size == changetype<usize>(right)); // must match

  // set 'back' to itself at the end of block
  store<Block>(changetype<usize>(right) - sizeof<usize>(), block);

  // mapping_insert
  let fl: usize, sl: u32;
  if (size < SB_SIZE) {
    fl = 0;
    sl = <u32>(size >> AL_BITS);
  } else {
    const inv: usize = sizeof<usize>() * 8 - 1;
    let boundedSize = min(size, BLOCK_MAXSIZE);
    fl = inv - clz<usize>(boundedSize);
    sl = <u32>((boundedSize >> (fl - SL_BITS)) ^ (1 << SL_BITS));
    fl -= SB_BITS - 1;
  }
  if (DEBUG) assert(fl < FL_BITS && sl < SL_SIZE); // fl/sl out of range

  // perform insertion
  let head = GETHEAD(root, fl, sl);
  block.prev = null;
  block.next = head;
  if (head) head.prev = block;
  SETHEAD(root, fl, sl, block);

  // update first and second level maps
  root.flMap |= (1 << fl);
  SETSL(root, fl, GETSL(root, fl) | (1 << sl));
}

/** Removes a free block from internal lists. */
function removeBlock(root: Root, block: Block): void {
  let blockInfo = block.mmInfo;
  if (DEBUG) assert(blockInfo & FREE); // must be free
  let size = blockInfo & ~TAGS_MASK;
  if (DEBUG) assert(size >= BLOCK_MINSIZE); // must be valid

  // mapping_insert
  let fl: usize, sl: u32;
  if (size < SB_SIZE) {
    fl = 0;
    sl = <u32>(size >> AL_BITS);
  } else {
    const inv: usize = sizeof<usize>() * 8 - 1;
    let boundedSize = min(size, BLOCK_MAXSIZE);
    fl = inv - clz<usize>(boundedSize);
    sl = <u32>((boundedSize >> (fl - SL_BITS)) ^ (1 << SL_BITS));
    fl -= SB_BITS - 1;
  }
  if (DEBUG) assert(fl < FL_BITS && sl < SL_SIZE); // fl/sl out of range

  // link previous and next free block
  let prev = block.prev;
  let next = block.next;
  if (prev) prev.next = next;
  if (next) next.prev = prev;

  // update head if we are removing it
  if (block == GETHEAD(root, fl, sl)) {
    SETHEAD(root, fl, sl, next);

    // clear second level map if head is empty now
    if (!next) {
      let slMap = GETSL(root, fl);
      SETSL(root, fl, slMap &= ~(1 << sl));

      // clear first level map if second level is empty now
      if (!slMap) root.flMap &= ~(1 << fl);
    }
  }
  // note: does not alter left/back because it is likely that splitting
  // is performed afterwards, invalidating those changes. so, the caller
  // must perform those updates.
}

function roundSize(size: usize): usize {
  const halfMaxSize = BLOCK_MAXSIZE >> 1; // don't round last fl
  const inv: usize = sizeof<usize>() * 8 - 1;
  const invRound = inv - SL_BITS;
  return size < halfMaxSize
    ? size + (1 << (invRound - clz<usize>(size))) - 1
    : size;
}

/** Searches for a free block of at least the specified size. */
function searchBlock(root: Root, size: usize): Block | null {
  // size was already asserted by caller

  // mapping_search
  let fl: usize, sl: u32;
  if (size < SB_SIZE) {
    fl = 0;
    sl = <u32>(size >> AL_BITS);
  } else {
    const requestSize = roundSize(size);
    fl = sizeof<usize>() * 8 - 1 - clz<usize>(requestSize);
    sl = <u32>((requestSize >> (fl - SL_BITS)) ^ (1 << SL_BITS));
    fl -= SB_BITS - 1;
  }
  if (DEBUG) assert(fl < FL_BITS && sl < SL_SIZE); // fl/sl out of range

  // search second level
  let slMap = GETSL(root, fl) & (~0 << sl);
  let head: Block | null = null;
  if (!slMap) {
    // search next larger first level
    let flMap = root.flMap & (~0 << (fl + 1));
    if (!flMap) {
      head = null;
    } else {
      fl = ctz<usize>(flMap);
      slMap = GETSL(root, fl);
      if (DEBUG) assert(slMap);  // can't be zero if fl points here
      head = GETHEAD(root, fl, ctz<u32>(slMap));
    }
  } else {
    head = GETHEAD(root, fl, ctz<u32>(slMap));
  }
  return head;
}

/** Prepares the specified block before (re-)use, possibly splitting it. */
function prepareBlock(root: Root, block: Block, size: usize): void {
  // size was already asserted by caller

  let blockInfo = block.mmInfo;
  if (DEBUG) assert(!((size + BLOCK_OVERHEAD) & AL_MASK)); // size must be aligned so the new block is

  // split if the block can hold another MINSIZE block incl. overhead
  let remaining = (blockInfo & ~TAGS_MASK) - size;
  if (remaining >= BLOCK_OVERHEAD + BLOCK_MINSIZE) {
    block.mmInfo = size | (blockInfo & LEFTFREE); // also discards FREE

    let spare = changetype<Block>(changetype<usize>(block) + BLOCK_OVERHEAD + size);
    spare.mmInfo = (remaining - BLOCK_OVERHEAD) | FREE; // not LEFTFREE
    insertBlock(root, spare); // also sets 'back'

  // otherwise tag block as no longer FREE and right as no longer LEFTFREE
  } else {
    block.mmInfo = blockInfo & ~FREE;
    GETRIGHT(block).mmInfo &= ~LEFTFREE;
  }
}

/** Adds more memory to the pool. */
function addMemory(root: Root, start: usize, endU64: u64): bool {
  let end = <usize>endU64;
  if (DEBUG) assert(<u64>start <= endU64); // must be valid
  start = ((start + BLOCK_OVERHEAD + AL_MASK) & ~AL_MASK) - BLOCK_OVERHEAD;
  end &= ~AL_MASK;

  let tail = GETTAIL(root);
  let tailInfo: usize = 0;
  if (tail) { // more memory
    if (DEBUG) assert(start >= changetype<usize>(tail) + BLOCK_OVERHEAD);

    // merge with current tail if adjacent
    const offsetToTail = AL_SIZE;
    if (start - offsetToTail == changetype<usize>(tail)) {
      start -= offsetToTail;
      tailInfo = tail.mmInfo;
    } else {
      // We don't do this, but a user might `memory.grow` manually
      // leading to non-adjacent pages managed by TLSF.
    }

  } else if (DEBUG) { // first memory
    assert(start >= changetype<usize>(root) + ROOT_SIZE); // starts after root
  }

  // check if size is large enough for a free block and the tail block
  let size = end - start;
  if (size < BLOCK_OVERHEAD + BLOCK_MINSIZE + BLOCK_OVERHEAD) {
    return false;
  }

  // left size is total minus its own and the zero-length tail's header
  let leftSize = size - 2 * BLOCK_OVERHEAD;
  let left = changetype<Block>(start);
  left.mmInfo = leftSize | FREE | (tailInfo & LEFTFREE);
  left.prev = null;
  left.next = null;

  // tail is a zero-length used block
  tail = changetype<Block>(start + BLOCK_OVERHEAD + leftSize);
  tail.mmInfo = 0 | LEFTFREE;
  SETTAIL(root, tail);

  insertBlock(root, left); // also merges with free left before tail / sets 'back'

  return true;
}

/** Grows memory to fit at least another block of the specified size. */
function growMemory(root: Root, size: usize): void {
  if (ASC_LOW_MEMORY_LIMIT) {
    unreachable();
    return;
  }
  // Here, both rounding performed in searchBlock ...
  if (size >= SB_SIZE) {
    size = roundSize(size);
  }
  // and additional BLOCK_OVERHEAD must be taken into account. If we are going
  // to merge with the tail block, that's one time, otherwise it's two times.
  let pagesBefore = memory.size();
  size += BLOCK_OVERHEAD << usize((<usize>pagesBefore << 16) - BLOCK_OVERHEAD != changetype<usize>(GETTAIL(root)));
  let pagesNeeded = <i32>(((size + 0xffff) & ~0xffff) >>> 16);
  let pagesWanted = max(pagesBefore, pagesNeeded); // double memory
  if (memory.grow(pagesWanted) < 0) {
    if (memory.grow(pagesNeeded) < 0) unreachable();
  }
  let pagesAfter = memory.size();
  addMemory(root, <usize>pagesBefore << 16, <u64>pagesAfter << 16);
}

/** Computes the size (excl. header) of a block. */
function computeSize(size: usize): usize {
  // Size must be large enough and aligned minus preceeding overhead
  return size <= BLOCK_MINSIZE
    ? BLOCK_MINSIZE
    : ((size + BLOCK_OVERHEAD + AL_MASK) & ~AL_MASK) - BLOCK_OVERHEAD;
}

/** Prepares and checks an allocation size. */
function prepareSize(size: usize): usize {
  if (size > BLOCK_MAXSIZE) throw new Error(E_ALLOCATION_TOO_LARGE);
  return computeSize(size);
}

/** Initializes the root structure. */
function initialize(): void {
  if (isDefined(ASC_RTRACE)) oninit(__heap_base);
  let rootOffset = (__heap_base + AL_MASK) & ~AL_MASK;
  let pagesBefore = memory.size();
  let pagesNeeded = <i32>((((rootOffset + ROOT_SIZE) + 0xffff) & ~0xffff) >>> 16);
  if (pagesNeeded > pagesBefore && memory.grow(pagesNeeded - pagesBefore) < 0) unreachable();
  let root = changetype<Root>(rootOffset);
  root.flMap = 0;
  SETTAIL(root, changetype<Block>(0));
  for (let fl: usize = 0; fl < FL_BITS; ++fl) {
    SETSL(root, fl, 0);
    for (let sl: u32 = 0; sl < SL_SIZE; ++sl) {
      SETHEAD(root, fl, sl, null);
    }
  }
  let memStart = rootOffset + ROOT_SIZE;
  if (ASC_LOW_MEMORY_LIMIT) {
    const memEnd = <u64>ASC_LOW_MEMORY_LIMIT & ~AL_MASK;
    if (memStart <= memEnd) addMemory(root, memStart, memEnd);
    else unreachable(); // low memory limit already exceeded
  } else {
    addMemory(root, memStart, <u64>memory.size() << 16);
  }
  ROOT = root;
}

/** Allocates a block of the specified size. */
export function allocateBlock(root: Root, size: usize): Block {
  let payloadSize = prepareSize(size);
  let block = searchBlock(root, payloadSize);
  if (!block) {
    growMemory(root, payloadSize);
    block = changetype<Block>(searchBlock(root, payloadSize));
    if (DEBUG) assert(block); // must be found now
  }
  if (DEBUG) assert((block.mmInfo & ~TAGS_MASK) >= payloadSize); // must fit
  removeBlock(root, block);
  prepareBlock(root, block, payloadSize);
  if (isDefined(ASC_RTRACE)) onalloc(block);
  return block;
}

/** Reallocates a block to the specified size. */
export function reallocateBlock(root: Root, block: Block, size: usize): Block {
  let payloadSize = prepareSize(size);
  let blockInfo = block.mmInfo;
  let blockSize = blockInfo & ~TAGS_MASK;

  // possibly split and update runtime size if it still fits
  if (payloadSize <= blockSize) {
    prepareBlock(root, block, payloadSize);
    if (isDefined(ASC_RTRACE)) {
      if (payloadSize != blockSize) onresize(block, BLOCK_OVERHEAD + blockSize);
    }
    return block;
  }

  // merge with right free block if merger is large enough
  let right = GETRIGHT(block);
  let rightInfo = right.mmInfo;
  if (rightInfo & FREE) {
    let mergeSize = blockSize + BLOCK_OVERHEAD + (rightInfo & ~TAGS_MASK);
    if (mergeSize >= payloadSize) {
      removeBlock(root, right);
      block.mmInfo = (blockInfo & TAGS_MASK) | mergeSize;
      prepareBlock(root, block, payloadSize);
      if (isDefined(ASC_RTRACE)) onresize(block, BLOCK_OVERHEAD + blockSize);
      return block;
    }
  }

  // otherwise move the block
  return moveBlock(root, block, size);
}

/** Moves a block to a new one of the specified size. */
function moveBlock(root: Root, block: Block, newSize: usize): Block {
  let newBlock = allocateBlock(root, newSize);
  memory.copy(changetype<usize>(newBlock) + BLOCK_OVERHEAD, changetype<usize>(block) + BLOCK_OVERHEAD, block.mmInfo & ~TAGS_MASK);
  if (changetype<usize>(block) >= __heap_base) {
    if (isDefined(ASC_RTRACE)) onmove(block, newBlock);
    freeBlock(root, block);
  }
  return newBlock;
}

/** Frees a block. */
export function freeBlock(root: Root, block: Block): void {
  if (isDefined(ASC_RTRACE)) onfree(block);
  block.mmInfo = block.mmInfo | FREE;
  insertBlock(root, block);
}

/** Checks that a used block is valid to be freed or reallocated. */
function checkUsedBlock(ptr: usize): Block {
  let block = changetype<Block>(ptr - BLOCK_OVERHEAD);
  assert(
    ptr != 0 && !(ptr & AL_MASK) &&  // must exist and be aligned
    !(block.mmInfo & FREE)           // must be used
  );
  return block;
}

// @ts-ignore: decorator
@global @unsafe
export function __alloc(size: usize): usize {
  if (!ROOT) initialize();
  return changetype<usize>(allocateBlock(ROOT, size)) + BLOCK_OVERHEAD;
}

// @ts-ignore: decorator
@global @unsafe
export function __realloc(ptr: usize, size: usize): usize {
  if (!ROOT) initialize();
  return (ptr < __heap_base
    ? changetype<usize>(moveBlock(ROOT, checkUsedBlock(ptr), size))
    : changetype<usize>(reallocateBlock(ROOT, checkUsedBlock(ptr), size))
  ) + BLOCK_OVERHEAD;
}

// @ts-ignore: decorator
@global @unsafe
export function __free(ptr: usize): void {
  if (ptr < __heap_base) return;
  if (!ROOT) initialize();
  freeBlock(ROOT, checkUsedBlock(ptr));
}
