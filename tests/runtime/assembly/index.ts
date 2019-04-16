// An experimental standalone AssemblyScript runtime based on TLSF and PureRC.

// @ts-ignore: decorator
@inline const DEBUG = true;

// Alignment guarantees

// @ts-ignore: decorator
@inline const AL_BITS: u32 = 4; // 16 bytes to fit up to v128
// @ts-ignore: decorator
@inline const AL_SIZE: usize = 1 << <usize>AL_BITS;
// @ts-ignore: decorator
@inline const AL_MASK: usize = AL_SIZE - 1;

/////////////////////// The TLSF (Two-Level Segregate Fit) memory allocator ///////////////////////
//                             see: http://www.gii.upv.es/tlsf/

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
@inline const SL_SIZE: usize = 1 << <usize>SL_BITS;

// @ts-ignore: decorator
@inline const SB_BITS: usize = <usize>(SL_BITS + AL_BITS);
// @ts-ignore: decorator
@inline const SB_SIZE: usize = 1 << <usize>SB_BITS;

// @ts-ignore: decorator
@inline
const FL_BITS: u32 = 31 - SB_BITS;

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
// ├─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┼─┼─┼─┤ overhead   ┐
// │                          size                           │0│L│F│ ◄─┐ info
// ├─────────────────────────────────────────────────────────┴─┴─┴─┤   │
// │                                                               │   │
// │               ... additional runtime overhead ...             │   │
// │                                                               │   │
// ╞═══════════════════════════════════════════════════════════════╡   │      ┐ ┘
// │                        if free: ◄ prev                        │ ◄─┤ usize
// ├───────────────────────────────────────────────────────────────┤   │
// │                        if free: next ►                        │ ◄─┤
// ├───────────────────────────────────────────────────────────────┤   │
// │                             ...                               │   │    = 0
// ├───────────────────────────────────────────────────────────────┤   │
// │                        if free: back ▲                        │ ◄─┘
// └───────────────────────────────────────────────────────────────┘ payload  ┘ >= MIN SIZE
// F: FREE, L: LEFT_FREE
@unmanaged class Block {

  /** Memory manager info. */
  mmInfo: usize; // WASM64 might need adaption
  /** Garbage collector info. */
  gcInfo: u32;
  /** Runtime class id. */
  rtId: u32;
  /** Runtime object size. */
  rtSize: u32;

  /** Previous free block, if any. Only valid if free, otherwise part of payload. */
  prev: Block | null;
  /** Next free block, if any. Only valid if free, otherwise part of payload. */
  next: Block | null;

  // If the block is free, there is a backreference at its end pointing at its start.
}

// Block constants. Overhead is always present, no matter if free or used. Also, a block must have
// a minimum size of three pointers so it can hold `prev`, `next` and `back` if free.

// @ts-ignore: decorator
@inline const BLOCK_OVERHEAD: usize = (offsetof<Block>("prev") + AL_MASK) & ~AL_MASK;
// @ts-ignore: decorator
@inline const BLOCK_MINSIZE: usize = (3 * sizeof<usize>() + AL_MASK) & ~AL_MASK;// prev + next + back
// @ts-ignore: decorator
@inline const BLOCK_MAXSIZE: usize = 1 << (FL_BITS + SB_BITS - 1); // exclusive

/** Gets the left block of a block. Only valid if the left block is free. */
function getLeft(block: Block): Block {
  if (DEBUG) assert(block.mmInfo & LEFTFREE); // left must be free or it doesn't contain 'back'
  var left = load<Block>(changetype<usize>(block) - sizeof<usize>());
  if (DEBUG) assert(left);
  return left;
}

/** Gets the right block of of a block by advancing to the right by its size. */
function getRight(block: Block): Block {
  var mmInfo = block.mmInfo;
  if (DEBUG) assert(mmInfo & ~TAGS_MASK); // can't skip beyond the tail block (the only valid empty block)
  var right = changetype<Block>(changetype<usize>(block) + BLOCK_OVERHEAD + (mmInfo & ~TAGS_MASK));
  if (DEBUG) assert(right);
  return right;
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
// │                           slMap[21]                           │ ◄─┘  │
// ╞═══════════════════════════════════════════════════════════════╡    usize
// │                            head[0]                            │ ◄────┤
// ├───────────────────────────────────────────────────────────────┤      │
// │                              ...                              │ ◄────┤
// ├───────────────────────────────────────────────────────────────┤      │
// │                           head[351]                           │ ◄────┤
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
@inline const SL_START = sizeof<usize>();
// @ts-ignore: decorator
@inline const SL_END = SL_START + (FL_BITS << alignof<u32>());
// @ts-ignore: decorator
@inline const HL_START = (SL_END + AL_MASK) & ~AL_MASK;
// @ts-ignore: decorator
@inline const HL_END = HL_START + FL_BITS * SL_SIZE * sizeof<usize>();
// @ts-ignore: decorator
@inline const ROOT_SIZE = HL_END + sizeof<usize>();

var ROOT: Root;

function getSLMap(root: Root, fl: usize): u32 {
  if (DEBUG) assert(fl < FL_BITS); // fl out of range
  return load<u32>(changetype<usize>(root) + (fl << alignof<u32>()), SL_START);
}

function setSLMap(root: Root, fl: usize, value: u32): void {
  if (DEBUG) assert(fl < FL_BITS); // fl out of range
  store<u32>(changetype<usize>(root) + (fl << alignof<u32>()), value, SL_START);
}

function getHead(root: Root, fl: usize, sl: u32): Block | null {
  if (DEBUG) assert(fl < FL_BITS && sl < SL_SIZE); // fl/sl out of range
  return changetype<Block>(
    load<usize>(
      changetype<usize>(root) + (fl * SL_SIZE + <usize>sl) * sizeof<usize>(),
    HL_START)
  );
}

function setHead(root: Root, fl: usize, sl: u32, value: Block | null): void {
  if (DEBUG) assert(fl < FL_BITS && sl < SL_SIZE); // fl/sl out of range
  store<usize>(
    changetype<usize>(root) + (fl * SL_SIZE + <usize>sl) * sizeof<usize>() , changetype<usize>(value),
  HL_START);
}

function getTail(root: Root): Block {
  return load<Block>(changetype<usize>(root), HL_END);
}

function setTail(root: Root, tail: Block): void {
  store<Block>(changetype<usize>(root), tail, HL_END);
}

/** Inserts a previously used block back into the free list. */
function insertBlock(root: Root, block: Block): void {
  if (DEBUG) assert(block); // cannot be null
  var blockInfo = block.mmInfo;
  if (DEBUG) assert(blockInfo & FREE); // must be free

  var right = getRight(block);
  var rightInfo = right.mmInfo;

  // merge with right block if also free
  if (rightInfo & FREE) {
    let newSize = (blockInfo & ~TAGS_MASK) + BLOCK_OVERHEAD + (rightInfo & ~TAGS_MASK);
    if (newSize < BLOCK_MAXSIZE) {
      removeBlock(root, right);
      block.mmInfo = blockInfo = (blockInfo & TAGS_MASK) | newSize;
      right = getRight(block);
      rightInfo = right.mmInfo;
      // 'back' is set below
    }
  }

  // merge with left block if also free
  if (blockInfo & LEFTFREE) {
    let left = getLeft(block);
    let leftInfo = left.mmInfo;
    if (DEBUG) assert(leftInfo & FREE); // must be free according to right tags
    let newSize = (leftInfo & ~TAGS_MASK) + BLOCK_OVERHEAD + (blockInfo & ~TAGS_MASK);
    if (newSize < BLOCK_MAXSIZE) {
      removeBlock(root, left);
      left.mmInfo = blockInfo = (leftInfo & TAGS_MASK) | newSize;
      block = left;
      // 'back' is set below
    }
  }

  right.mmInfo = rightInfo | LEFTFREE;
  // right is no longer used now, hence rightInfo is not synced

  // we now know the size of the block
  var size = blockInfo & ~TAGS_MASK;
  if (DEBUG) assert(size >= BLOCK_MINSIZE && size < BLOCK_MAXSIZE); // must be a valid size
  if (DEBUG) assert(changetype<usize>(block) + BLOCK_OVERHEAD + size == changetype<usize>(right)); // must match

  // set 'back' to itself at the end of block
  store<Block>(changetype<usize>(right) - sizeof<usize>(), block);

  // mapping_insert
  var fl: usize, sl: u32;
  if (size < SB_SIZE) {
    fl = 0;
    sl = <u32>(size / AL_SIZE);
  } else {
    fl = fls<usize>(size);
    sl = <u32>((size >> (fl - SL_BITS)) ^ (1 << SL_BITS));
    fl -= SB_BITS - 1;
  }

  // perform insertion
  var head = getHead(root, fl, sl);
  block.prev = null;
  block.next = head;
  if (head) head.prev = block;
  setHead(root, fl, sl, block);

  // update first and second level maps
  root.flMap |= (1 << fl);
  setSLMap(root, fl, getSLMap(root, fl) | (1 << sl));
}

/** Removes a free block from internal lists. */
function removeBlock(root: Root, block: Block): void {
  var blockInfo = block.mmInfo;
  if (DEBUG) assert(blockInfo & FREE); // must be free
  var size = blockInfo & ~TAGS_MASK;
  if (DEBUG) assert(size >= BLOCK_MINSIZE && size < BLOCK_MAXSIZE); // must be valid

  // mapping_insert
  var fl: usize, sl: u32;
  if (size < SB_SIZE) {
    fl = 0;
    sl = <u32>(size / AL_SIZE);
  } else {
    fl = fls<usize>(size);
    sl = <u32>((size >> (fl - SL_BITS)) ^ (1 << SL_BITS));
    fl -= SB_BITS - 1;
  }

  // link previous and next free block
  var prev = block.prev;
  var next = block.next;
  if (prev) prev.next = next;
  if (next) next.prev = prev;

  // update head if we are removing it
  if (block == getHead(root, fl, sl)) {
    setHead(root, fl, sl, next);

    // clear second level map if head is empty now
    if (!next) {
      let slMap = getSLMap(root, fl);
      setSLMap(root, fl, slMap &= ~(1 << sl));

      // clear first level map if second level is empty now
      if (!slMap) root.flMap &= ~(1 << fl);
    }
  }
  // note: does not alter left/back because it is likely that splitting
  // is performed afterwards, invalidating those changes. so, the caller
  // must perform those updates.
}

/** Searches for a free block of at least the specified size. */
function searchBlock(root: Root, size: usize): Block | null {
  // size was already asserted by caller

  // mapping_search
  var fl: usize, sl: u32;
  if (size < SB_SIZE) {
    fl = 0;
    sl = <u32>(size / AL_SIZE);
  } else {
    const halfMaxSize = BLOCK_MAXSIZE >> 1; // don't round last fl
    let requestSize = size < halfMaxSize
      ? size + (1 << fls<usize>(size) - SL_BITS) - 1
      : size;
    fl = fls<usize>(requestSize);
    sl = <u32>((requestSize >> (fl - SL_BITS)) ^ (1 << SL_BITS));
    fl -= SB_BITS - 1;
  }

  // search second level
  var slMap = getSLMap(root, fl) & (~0 << sl);
  var head: Block | null;
  if (!slMap) {
    // search next larger first level
    let flMap = root.flMap & (~0 << (fl + 1));
    if (!flMap) {
      head = null;
    } else {
      fl = ffs<usize>(flMap);
      slMap = getSLMap(root, fl);
      if (DEBUG) assert(slMap);  // can't be zero if fl points here
      head = getHead(root, fl, ffs<u32>(slMap));
    }
  } else {
    head = getHead(root, fl, ffs<u32>(slMap));
  }
  return head;
}

/** Prepares the specified free block for use, possibly splitting it. */
function prepareBlock(root: Root, block: Block, size: usize): usize {
  // size was already asserted by caller

  var blockInfo = block.mmInfo;
  if (DEBUG) {
    assert(
      (blockInfo & FREE) != 0 && // must be free
      !(size & AL_MASK)          // size must be aligned so the new block is
    );
  }
  removeBlock(root, block);

  // split if the block can hold another MINSIZE block incl. overhead
  var remaining = (blockInfo & ~TAGS_MASK) - size;
  if (remaining >= BLOCK_OVERHEAD + BLOCK_MINSIZE) {
    block.mmInfo = size | (blockInfo & LEFTFREE); // also discards FREE

    let spare = changetype<Block>(changetype<usize>(block) + BLOCK_OVERHEAD + size);
    spare.mmInfo = (remaining - BLOCK_OVERHEAD) | FREE; // not LEFT_FREE
    insertBlock(root, spare); // also sets 'back'

  // otherwise tag block as no longer FREE and right as no longer LEFT_FREE
  } else {
    block.mmInfo = blockInfo & ~FREE;
    getRight(block).mmInfo &= ~LEFTFREE;
  }

  return changetype<usize>(block) + BLOCK_OVERHEAD;
}

/** Adds more memory to the pool. */
function addMemory(root: Root, start: usize, end: usize): bool {
  if (DEBUG) {
    assert(
      start <= end &&       // must be valid
      !(start & AL_MASK) && // must be aligned
      !(end & AL_MASK)      // must be aligned
    );
  }

  var tail = getTail(root);
  var tailInfo: usize = 0;
  if (tail) { // more memory
    if (DEBUG) assert(start >= changetype<usize>(tail) + BLOCK_OVERHEAD);

    // merge with current tail if adjacent
    if (start - BLOCK_OVERHEAD == changetype<usize>(tail)) {
      start -= BLOCK_OVERHEAD;
      tailInfo = tail.mmInfo;
    } else {
      // We don't do this, but a user might `memory.grow` manually
      // leading to non-adjacent pages managed by TLSF.
    }

  } else if (DEBUG) { // first memory
    assert(start >= changetype<usize>(root) + ROOT_SIZE); // starts after root
  }

  // check if size is large enough for a free block and the tail block
  var size = end - start;
  if (size < BLOCK_OVERHEAD + BLOCK_MINSIZE + BLOCK_OVERHEAD) {
    return false;
  }

  // left size is total minus its own and the zero-length tail's header
  var leftSize = size - 2 * BLOCK_OVERHEAD;
  var left = changetype<Block>(start);
  left.mmInfo = leftSize | FREE | (tailInfo & LEFTFREE);
  left.prev = null;
  left.next = null;

  // tail is a zero-length used block
  tail = changetype<Block>(start + size - BLOCK_OVERHEAD);
  tail.mmInfo = 0 | LEFTFREE;
  setTail(root, tail);

  insertBlock(root, left); // also merges with free left before tail / sets 'back'

  return true;
}

/** Grows memory to fit at least another block of the specified size. */
function growMemory(root: Root, size: usize): void {
  var pagesBefore = memory.size();
  var pagesNeeded = <i32>(((size + 0xffff) & ~0xffff) >>> 16);
  var pagesWanted = max(pagesBefore, pagesNeeded); // double memory
  if (memory.grow(pagesWanted) < 0) {
    if (memory.grow(pagesNeeded) < 0) unreachable();
  }
  var pagesAfter = memory.size();
  addMemory(root, <usize>pagesBefore << 16, <usize>pagesAfter << 16);
}

/** Initilizes the root structure. */
function initialize(): Root {
  var rootOffset = (HEAP_BASE + AL_MASK) & ~AL_MASK;
  var pagesBefore = memory.size();
  var pagesNeeded = <i32>((((rootOffset + ROOT_SIZE) + 0xffff) & ~0xffff) >>> 16);
  if (pagesNeeded > pagesBefore && memory.grow(pagesNeeded - pagesBefore) < 0) unreachable();
  var root = changetype<Root>(rootOffset);
  root.flMap = 0;
  setTail(root, changetype<Block>(0));
  for (let fl: usize = 0; fl < FL_BITS; ++fl) {
    setSLMap(root, fl, 0);
    for (let sl: u32 = 0; sl < SL_SIZE; ++sl) {
      setHead(root, fl, sl, null);
    }
  }
  addMemory(root, (rootOffset + ROOT_SIZE + AL_MASK) & ~AL_MASK, memory.size() << 16);
  return root;
}

function freeBlock(root: Root, block: Block): void {
  var blockInfo = block.mmInfo;
  assert(!(blockInfo & FREE)); // must be used (user might call through to this)
  block.mmInfo = blockInfo | FREE;
  insertBlock(root, block);
}

/** Determines the first (LSB to MSB) set bit's index of a word. */
function ffs<T extends number>(word: T): T {
  if (DEBUG) assert(word != 0);   // word cannot be 0
  return ctz<T>(word); // differs from ffs only for 0
}

/** Determines the last (LSB to MSB) set bit's index of a word. */
function fls<T extends number>(word: T): T {
  if (DEBUG) assert(word != 0); // word cannot be 0
  // @ts-ignore: type
  const inv: T = (sizeof<T>() << 3) - 1;
  // @ts-ignore: type
  return inv - clz<T>(word);
}

// Memory manager interface.

// @ts-ignore: decorator
@global @unsafe
function __mm_allocate(size: usize): usize {
  // initialize if necessary
  var root = ROOT;
  if (!root) ROOT = root = initialize();

  // search for a suitable block
  if (size >= BLOCK_MAXSIZE) throw new Error("allocation too large");
  size = max<usize>((size + AL_MASK) & ~AL_MASK, BLOCK_MINSIZE); // align and ensure min size
  var block = searchBlock(root, size);
  if (!block) {
    growMemory(root, size);
    block = <Block>searchBlock(root, size);
    if (DEBUG) assert(block); // must be found now
  }
  if (DEBUG) assert((block.mmInfo & ~TAGS_MASK) >= size); // must fit
  block.gcInfo = 0;
  block.rtId = 0; // not determined yet
  block.rtSize = size;
  return prepareBlock(root, <Block>block, size); // FIXME: why's <Block> still necessary?
}

// @ts-ignore: decorator
@global @unsafe
function __mm_free(data: usize): void {
  if (data) {
    assert(!(data & AL_MASK)); // must be aligned (user might call through to this)
    let root = ROOT;
    if (root) freeBlock(root, changetype<Block>(data - BLOCK_OVERHEAD));
  }
}

/////////////////////////// A Pure Reference Counting Garbage Collector ///////////////////////////
// see:     https://researcher.watson.ibm.com/researcher/files/us-bacon/Bacon03Pure.pdf

// TODO: make visitors eat cookies so we can compile direct calls into a switch
function __rt_visit_members(s: Block, cookie: i32): void { unreachable(); }
function __rt_flags(classId: u32): u32 { return unreachable(); }
const ACYCLIC_FLAG: u32 = 0;

// ╒══════════════════════ GC Info structure ══════════════════════╕
// │  3                   2                   1                    │
// │1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0│
// ├─┼─┴─┴─┼─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┤
// │B│color│                     refCount                          │
// └─┴─────┴───────────────────────────────────────────────────────┘
// B: buffered

// @ts-ignore: decorator
@inline const BUFFERED_MASK: u32 = 1 << (sizeof<u32>() * 8 - 1);
// @ts-ignore: decorator
@inline const COLOR_BITS = 3;
// @ts-ignore: decorator
@inline const COLOR_SHIFT: u32 = ctz(BUFFERED_MASK) - COLOR_BITS;
// @ts-ignore: decorator
@inline const COLOR_MASK: u32 = ((1 << COLOR_BITS) - 1) << COLOR_SHIFT;
// @ts-ignore: decorator
@inline const REFCOUNT_MASK: u32 = (1 << COLOR_SHIFT) - 1;

// ╒════════╤═══════════════════ Colors ═══════════════════════════╕
// │ Color  │ Meaning                                              │
// ├────────┼──────────────────────────────────────────────────────┤
// │ BLACK  │ In use or free                                       │
// │ GRAY   │ Possible member of cycle                             │
// │ WHITE  │ Member of garbage cycle                              │
// │ PURPLE │ Possible root of cycle                               │
// │ RED    │ Candidate cycle undergoing Σ-computation *concurrent │
// │ ORANGE │ Candidate cycle awaiting epoch boundary  *concurrent │
// └────────┴──────────────────────────────────────────────────────┘
// Acyclic detection has been decoupled, hence no GREEN.

// @ts-ignore: decorator
@inline const COLOR_BLACK: u32 = 0 << COLOR_SHIFT;
// @ts-ignore: decorator
@inline const COLOR_GRAY: u32 = 1 << COLOR_SHIFT;
// @ts-ignore: decorator
@inline const COLOR_WHITE: u32 = 2 << COLOR_SHIFT;
// @ts-ignore: decorator
@inline const COLOR_PURPLE: u32 = 3 << COLOR_SHIFT;
// @ts-ignore: decorator
@inline const COLOR_RED: u32 = 4 << COLOR_SHIFT;
// @ts-ignore: decorator
@inline const COLOR_ORANGE: u32 = 5 << COLOR_SHIFT;

// @ts-ignore: decorator
@inline const VISIT_DECREMENT = 1; // guard 0
// @ts-ignore: decorator
@inline const VISIT_MARKGRAY = 2;
// @ts-ignore: decorator
@inline const VISIT_SCAN = 3;
// @ts-ignore: decorator
@inline const VISIT_SCANBLACK = 4;
// @ts-ignore: decorator
@inline const VISIT_COLLECTWHITE = 5;

// @ts-ignore: decorator
@global
function __rt_visit(s: Block, cookie: i32): void {
  switch (cookie) {
    case VISIT_DECREMENT: {
      decrement(s);
      break;
    }
    case VISIT_MARKGRAY: {
      if (DEBUG) assert((s.gcInfo & REFCOUNT_MASK) > 0);
      s.gcInfo = s.gcInfo - 1;
      markGray(s);
      break;
    }
    case VISIT_SCAN: {
      scan(s);
      break;
    }
    case VISIT_SCANBLACK: {
      let info = s.gcInfo;
      assert((info & ~REFCOUNT_MASK) == ((info + 1) & ~REFCOUNT_MASK)); // overflow
      s.gcInfo = info + 1;
      if ((info & COLOR_MASK) != COLOR_BLACK) {
        scanBlack(s);
      }
      break;
    }
    case VISIT_COLLECTWHITE: {
      collectWhite(s);
      break;
    }
    default: if (DEBUG) assert(false);
  }
}

/** Increments the reference count of the specified block by one.*/
function increment(s: Block): void {
  var info = s.gcInfo;
  assert((info & ~REFCOUNT_MASK) == ((info + 1) & ~REFCOUNT_MASK)); // overflow
  s.gcInfo = info + 1;
}

/** Decrements the reference count of the specified block by one, possibly freeing it. */
function decrement(s: Block): void {
  var info = s.gcInfo;
  var rc = info & REFCOUNT_MASK;
  if (rc == 1) {
    __rt_visit_members(s, VISIT_DECREMENT);
    if (!(info & BUFFERED_MASK)) {
      freeBlock(ROOT, s);
    } else {
      s.gcInfo = BUFFERED_MASK | COLOR_BLACK | 0;
    }
  } else {
    if (DEBUG) assert(rc > 0);
    if (!(__rt_flags(s.rtId) & ACYCLIC_FLAG)) {
      s.gcInfo = BUFFERED_MASK | COLOR_PURPLE | (rc - 1);
      if (!(info & BUFFERED_MASK)) {
        appendRoot(s);
      }
    } else {
      s.gcInfo = (info & ~REFCOUNT_MASK) | (rc - 1);
    }
  }
}

/** Buffer of possible roots. */
// @ts-ignore: decorator
@lazy var ROOTS: usize;
/** Current absolute offset into the `ROOTS` buffer. */
// @ts-ignore: decorator
@lazy var CUR: usize = 0;
/** Current absolute end offset into the `ROOTS` buffer. */
// @ts-ignore: decorator
@lazy var END: usize = 0;

/** Appends a block to possible roots. */
function appendRoot(s: Block): void {
  var cur = CUR;
  if (cur >= END) {
    growRoots(); // TBD: either that or pick a default and force collection on overflow
    cur = CUR;
  }
  store<Block>(cur, s);
  CUR = cur + 1;
}

/** Grows the roots buffer if it ran full. */
function growRoots(): void {
  var oldRoots = ROOTS;
  var oldSize = CUR - oldRoots;
  var newSize = max(oldSize * 2, 64 << alignof<usize>());
  var newRoots = memory.allocate(newSize);
  memory.copy(newRoots, oldRoots, oldSize);
  ROOTS = newRoots;
  CUR = newRoots + oldSize;
  END = newRoots + newSize;
}

/** Collects cyclic garbage. */
function collectCycles(): void {

  // markRoots
  var roots = ROOTS;
  var cur = roots;
  for (let pos = cur, end = CUR; pos < end; pos += sizeof<usize>()) {
    let s = load<Block>(pos);
    let info = s.gcInfo;
    if ((info & COLOR_MASK) == COLOR_PURPLE && (info & REFCOUNT_MASK) > 0) {
      markGray(s);
      store<Block>(cur, s);
      cur += sizeof<usize>();
    } else {
      if ((info & COLOR_MASK) == COLOR_BLACK && !(info & REFCOUNT_MASK)) {
        freeBlock(ROOT, s);
      } else {
        s.gcInfo = info & ~BUFFERED_MASK;
      }
    }
  }
  CUR = cur;

  // scanRoots
  for (let pos = roots; pos < cur; pos += sizeof<usize>()) {
    scan(load<Block>(pos));
  }

  // collectRoots
  for (let pos = roots; pos < cur; pos += sizeof<usize>()) {
    let s = load<Block>(pos);
    s.gcInfo = s.gcInfo & ~BUFFERED_MASK;
    collectWhite(s);
  }
  CUR = roots;
}

/** Marks a block as gray (possible member of cycle) during the collection phase. */
function markGray(s: Block): void {
  var info = s.gcInfo;
  if ((info & COLOR_MASK) != COLOR_GRAY) {
    s.gcInfo = (info & ~COLOR_MASK) | COLOR_GRAY;
    __rt_visit_members(s, VISIT_MARKGRAY);
  }
}

/** Scans a block during the collection phase, determining whether it is garbage or not. */
function scan(s: Block): void {
  var info = s.gcInfo;
  if ((info & COLOR_MASK) == COLOR_GRAY) {
    if ((info & REFCOUNT_MASK) > 0) {
      scanBlack(s);
    } else {
      s.gcInfo = (info & ~COLOR_MASK) | COLOR_WHITE;
      __rt_visit_members(s, VISIT_SCAN);
    }
  }
}

/** Marks a block as black (in use) if it was found to be reachable during the collection phase. */
function scanBlack(s: Block): void {
  s.gcInfo = (s.gcInfo & ~COLOR_MASK) | COLOR_BLACK;
  __rt_visit_members(s, VISIT_SCANBLACK);
}

/** Collects all white (member of a garbage cycle) nodes when completing the collection phase.  */
function collectWhite(s: Block): void {
  var info = s.gcInfo;
  if ((info & COLOR_MASK) == COLOR_WHITE && !(info & BUFFERED_MASK)) {
    // s.gcInfo = (info & ~COLOR_MASK) | COLOR_BLACK;
    __rt_visit_members(s, VISIT_COLLECTWHITE);
  }
  freeBlock(ROOT, s);
}

// Garbage collector interface

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

// keep alive, everything else is reached from here
export {
  __mm_allocate,
  __mm_free,
  __rt_visit,
  __gc_retain,
  __gc_release,
  collectCycles as __gc_collect
};
