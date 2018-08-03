/**
 * Two-Level Segregate Fit Memory Allocator.
 *
 * A general purpose dynamic memory allocator specifically designed to meet real-time requirements.
 * Always aligns to 8 bytes.
 *
 * @module std/assembly/allocator/tlsf
 *//***/

// ╒══════════════ Block size interpretation (32-bit) ═════════════╕
//    3                   2                   1
//  1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0  bits
// ├─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┼─┴─┴─┴─┴─╫─┴─┴─┤
// │ |                    FL                       │ SB = SL + AL  │ ◄─ usize
// └───────────────────────────────────────────────┴─────────╨─────┘
// FL: first level, SL: second level, AL: alignment, SB: small block

import {
  AL_BITS,
  AL_SIZE,
  AL_MASK
} from "../internal/allocator";

const SL_BITS: u32 = 5;
const SL_SIZE: usize = 1 << <usize>SL_BITS;

const SB_BITS: usize = <usize>(SL_BITS + AL_BITS);
const SB_SIZE: usize = 1 << <usize>SB_BITS;

const FL_BITS: u32 = (sizeof<usize>() == sizeof<u32>()
  ? 30 // ^= up to 1GB per block
  : 32 // ^= up to 4GB per block
) - SB_BITS;

// ╒════════════════ Block structure layout (32-bit) ══════════════╕
//    3                   2                   1
//  1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0  bits
// ├─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┼─┼─┤
// │                          size                             │L│F│ ◄─┐ info
// ╞═══════════════════════════════════════════════════════════╧═╧═╡   │      ┐
// │                        if free: ◄ prev                        │ ◄─┤ usize
// ├───────────────────────────────────────────────────────────────┤   │
// │                        if free: next ►                        │ ◄─┤
// ├───────────────────────────────────────────────────────────────┤   │
// │                ... unused free space >= 0 ...                 │   │    = 0
// ├ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ┤   │
// │                        if free: jump ▲                        │ ◄─┘
// └───────────────────────────────────────────────────────────────┘ MIN SIZE ┘
// F: FREE, L: LEFT_FREE

/** Tag indicating that this block is free. */
const FREE: usize = 1 << 0;
/** Tag indicating that this block's left block is free. */
const LEFT_FREE: usize = 1 << 1;
/** Mask to obtain all tags. */
const TAGS: usize = FREE | LEFT_FREE;

/** Block structure. */
@unmanaged
class Block {

  /** Info field holding this block's size and tags. */
  info: usize;

  /** End offset of the {@link Block#info} field. User data starts here. */
  static readonly INFO: usize = (sizeof<usize>() + AL_MASK) & ~AL_MASK;

  /** Previous free block, if any. Only valid if free. */
  prev: Block | null;
  /** Next free block, if any. Only valid if free. */
  next: Block | null;

  /** Minimum size of a block, excluding {@link Block#info}. */
  static readonly MIN_SIZE: usize = (3 * sizeof<usize>() + AL_MASK) & ~AL_MASK;// prev + next + jump

  /** Maximum size of a used block, excluding {@link Block#info}. */
  static readonly MAX_SIZE: usize = 1 << (FL_BITS + SB_BITS);

  /** Gets this block's left (free) block in memory. */
  get left(): Block {
    assert(this.info & LEFT_FREE); // must be free to contain a jump
    return assert(
      load<Block>(changetype<usize>(this) - sizeof<usize>())
    ); // can't be null
  }

  /** Gets this block's right block in memory. */
  get right(): Block {
    assert(this.info & ~TAGS); // can't skip beyond the tail block
    return assert(
      changetype<Block>(
        changetype<usize>(this) + Block.INFO + (this.info & ~TAGS)
      )
    ); // can't be null
  }
}

// ╒════════════════ Root structure layout (32-bit) ═══════════════╕
//    3                   2                   1
//  1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0  bits
// ├─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┤          ┐
// │        0        |           flMap                            S│ ◄────┐
// ╞═══════════════════════════════════════════════════════════════╡      │
// │                           slMap[0] S                          │ ◄─┐  │
// ├───────────────────────────────────────────────────────────────┤   │  │
// │                           slMap[1]                            │ ◄─┤  │
// ├───────────────────────────────────────────────────────────────┤  u32 │
// │                              ...                              │ ◄─┤  │
// ├───────────────────────────────────────────────────────────────┤   │  │
// │                           slMap[22] P                         │ ◄─┘  │
// ╞═══════════════════════════════════════════════════════════════╡    usize
// │                            head[0]                            │ ◄────┤
// ├───────────────────────────────────────────────────────────────┤      │
// │                              ...                              │ ◄────┤
// ├───────────────────────────────────────────────────────────────┤      │
// │                           head[736]                           │ ◄────┤
// ╞═══════════════════════════════════════════════════════════════╡      │
// │                            tailRef                            │ ◄────┘
// └───────────────────────────────────────────────────────────────┘   SIZE   ┘
// S: Small blocks map, P: Possibly padded if 64-bit

assert((1 << SL_BITS) <= 32); // second level must fit into 32 bits

/** Root structure. */
@unmanaged
class Root {

  /** First level bitmap. */
  flMap: usize = 0;

  /** Start offset of second level maps. */
  private static readonly SL_START: usize = sizeof<usize>();

  // Using *one* SL map per *FL bit*

  /** Gets the second level map for the specified first level. */
  getSLMap(fl: usize): u32 {
    assert(fl < FL_BITS); // fl out of range
    return load<u32>(changetype<usize>(this) + fl * 4, Root.SL_START);
  }

  /** Sets the second level map for the specified first level. */
  setSLMap(fl: usize, value: u32): void {
    assert(fl < FL_BITS); // fl out of range
    store<u32>(changetype<usize>(this) + fl * 4, value, Root.SL_START);
  }

  /** End offset of second level maps. */
  private static readonly SL_END: usize = Root.SL_START + FL_BITS * 4;

  // Using *number bits per SL* heads per *FL bit*

  /** Start offset of FL/SL heads. */
  private static readonly HL_START: usize = (Root.SL_END + AL_MASK) & ~AL_MASK;

  /** Gets the head of the specified first and second level index. */
  getHead(fl: usize, sl: u32): Block | null {
    assert(fl < FL_BITS); // fl out of range
    assert(sl < SL_SIZE); // sl out of range
    return changetype<Block>(load<usize>(
      changetype<usize>(this) + (fl * SL_SIZE + <usize>sl) * sizeof<usize>()
    , Root.HL_START));
  }

  /** Sets the head of the specified first and second level index. */
  setHead(fl: usize, sl: u32, value: Block | null): void {
    assert(fl < FL_BITS); // fl out of range
    assert(sl < SL_SIZE); // sl out of range
    store<usize>(
      changetype<usize>(this) + (fl * SL_SIZE + <usize>sl) * sizeof<usize>()
    , changetype<usize>(value)
    , Root.HL_START);
  }

  /** End offset of FL/SL heads. */
  private static readonly HL_END: usize = (
    Root.HL_START + FL_BITS * SL_SIZE * sizeof<usize>()
  );

  get tailRef(): usize { return load<usize>(0, Root.HL_END); }
  set tailRef(value: usize) { store<usize>(0, value, Root.HL_END); }

  /** Total size of the {@link Root} structure. */
  static readonly SIZE: usize = Root.HL_END + sizeof<usize>();

  /** Inserts a previously used block back into the free list. */
  insert(block: Block): void {
    // check as much as possible here to prevent invalid free blocks
    assert(block); // cannot be null
    var blockInfo = block.info;
    assert(blockInfo & FREE); // must be free
    var size: usize;
    assert(
      (size = block.info & ~TAGS) >= Block.MIN_SIZE && size < Block.MAX_SIZE
    ); // must be valid, not necessary to compute yet if noAssert=true

    var right: Block = assert(block.right); // can't be null
    var rightInfo = right.info;

    // merge with right block if also free
    if (rightInfo & FREE) {
      this.remove(right);
      block.info = (blockInfo += Block.INFO + (rightInfo & ~TAGS));
      right = block.right;
      rightInfo = right.info;
      // jump is set below
    }

    // merge with left block if also free
    if (blockInfo & LEFT_FREE) {
      let left: Block = assert(block.left); // can't be null
      let leftInfo = left.info;
      assert(leftInfo & FREE); // must be free according to tags
      this.remove(left);
      left.info = (leftInfo += Block.INFO + (blockInfo & ~TAGS));
      block = left;
      blockInfo = leftInfo;
      // jump is set below
    }

    right.info = rightInfo | LEFT_FREE;
    this.setJump(block, right);
    // right is no longer used now, hence rightInfo is not synced

    size = blockInfo & ~TAGS;
    assert(size >= Block.MIN_SIZE && size < Block.MAX_SIZE); // must be valid

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
    var head = this.getHead(fl, sl);
    block.prev = null;
    block.next = head;
    if (head) head.prev = block;
    this.setHead(fl, sl, block);

    // update first and second level maps
    this.flMap |= (1 << fl);
    this.setSLMap(fl, this.getSLMap(fl) | (1 << sl));
  }

  /**
   * Removes a free block from FL/SL maps. Does not alter left/jump because it
   * is likely that splitting is performed afterwards, invalidating any changes
   * again.
   */
  private remove(block: Block): void {
    var blockInfo = block.info;
    assert(blockInfo & FREE); // must be free
    var size = blockInfo & ~TAGS;
    assert(size >= Block.MIN_SIZE && size < Block.MAX_SIZE); // must be valid

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
    if (block == this.getHead(fl, sl)) {
      this.setHead(fl, sl, next);

      // clear second level map if head is empty now
      if (!next) {
        let slMap = this.getSLMap(fl);
        this.setSLMap(fl, slMap &= ~(1 << sl));

        // clear first level map if second level is empty now
        if (!slMap) this.flMap &= ~(1 << fl);
      }
    }
  }

  /** Searches for a free block of at least the specified size. */
  search(size: usize): Block | null {
    assert(size >= Block.MIN_SIZE && size < Block.MAX_SIZE);

    // mapping_search
    var fl: usize, sl: u32;
    if (size < SB_SIZE) {
      fl = 0;
      sl = <u32>(size / AL_SIZE);
    } else {
      // (*) size += (1 << (fls<usize>(size) - SL_BITS)) - 1;
      fl = fls<usize>(size);
      sl = <u32>((size >> (fl - SL_BITS)) ^ (1 << SL_BITS));
      fl -= SB_BITS - 1;
      // (*) instead of rounding up, use next second level list for better fit
      if (sl < SL_SIZE - 1) ++sl;
      else ++fl, sl = 0;
    }

    // search second level
    var slMap = this.getSLMap(fl) & (~0 << sl);
    var head: Block | null;
    if (!slMap) {
      // search next larger first level
      let flMap = this.flMap & (~0 << (fl + 1));
      if (!flMap) {
        head = null;
      } else {
        fl = ffs<usize>(flMap);
        slMap = assert(this.getSLMap(fl)); // can't be zero if fl points here
        head = this.getHead(fl, ffs<u32>(slMap));
      }
    } else {
      head = this.getHead(fl, ffs<u32>(slMap));
    }
    return head;
  }

  /** Links a free left with its right block in memory. */
  private setJump(left: Block, right: Block): void {
    assert(left.info & FREE);       // must be free
    assert(left.right == right);    // right block must match
    assert(right.info & LEFT_FREE); // right block must be tagged as LEFT_FREE
    store<Block>(
      changetype<usize>(right) - sizeof<usize>()
    , left); // last word in left block's (free) data region
  }

  /**
   * Uses the specified free block, removing it from internal maps and
   * splitting it if possible, and returns its data pointer.
   */
  use(block: Block, size: usize): usize {
    var blockInfo = block.info;
    assert(blockInfo & FREE); // must be free so we can use it
    assert(size >= Block.MIN_SIZE && size < Block.MAX_SIZE); // must be valid
    assert(!(size & AL_MASK)); // size must be aligned so the new block is

    this.remove(block);

    // split if the block can hold another MIN_SIZE block
    var remaining = (blockInfo & ~TAGS) - size;
    if (remaining >= Block.INFO + Block.MIN_SIZE) {
      block.info = size | (blockInfo & LEFT_FREE); // also discards FREE

      let spare = changetype<Block>(
        changetype<usize>(block) + Block.INFO + size
      );
      spare.info = (remaining - Block.INFO) | FREE; // not LEFT_FREE
      this.insert(spare); // also sets jump

    // otherwise tag block as no longer FREE and right as no longer LEFT_FREE
    } else {
      block.info = blockInfo & ~FREE;
      let right: Block = assert(block.right); // can't be null (tail)
      right.info &= ~LEFT_FREE;
    }

    return changetype<usize>(block) + Block.INFO;
  }

  /** Adds more memory to the pool. */
  addMemory(start: usize, end: usize): bool {
    assert(start <= end);
    assert(!(start & AL_MASK)); // must be aligned
    assert(!(end & AL_MASK)); // must be aligned

    var tailRef = this.tailRef;
    var tailInfo: usize = 0;
    if (tailRef) {
      assert(start >= tailRef + sizeof<usize>()); // starts after tail

      // merge with current tail if adjacent
      if (start - Block.INFO == tailRef) {
        start -= Block.INFO;
        tailInfo = changetype<Block>(tailRef).info;
      }

    } else {
      assert(start >= changetype<usize>(this) + Root.SIZE); // starts after root
    }

    // check if size is large enough for a free block and the tail block
    var size = end - start;
    if (size < Block.INFO + Block.MIN_SIZE + Block.INFO) {
      return false;
    }

    // left size is total minus its own and the zero-length tail's header
    var leftSize = size - 2 * Block.INFO;
    var left = changetype<Block>(start);
    left.info = leftSize | FREE | (tailInfo & LEFT_FREE);
    left.prev = null;
    left.next = null;

    // tail is a zero-length used block
    var tail = changetype<Block>(start + size - Block.INFO);
    tail.info = 0 | LEFT_FREE;
    this.tailRef = changetype<usize>(tail);

    this.insert(left); // also merges with free left before tail / sets jump

    return true;
  }
}

/** Determines the first (LSB to MSB) set bit's index of a word. */
function ffs<T>(word: T): T {
  assert(word != 0); // word cannot be 0
  return ctz<T>(word);  // differs from ffs only for 0
}

/** Determines the last (LSB to MSB) set bit's index of a word. */
function fls<T>(word: T): T {
  assert(word != 0); // word cannot be 0
  const inv: T = (sizeof<T>() << 3) - 1;
  return inv - clz<T>(word);
}

/** Reference to the initialized {@link Root} structure, once initialized. */
var ROOT: Root = changetype<Root>(0);

// Memory allocator interface

/** Allocates a chunk of memory. */
@global export function __memory_allocate(size: usize): usize {

  // initialize if necessary
  var root = ROOT;
  if (!root) {
    let rootOffset = (HEAP_BASE + AL_MASK) & ~AL_MASK;
    let pagesBefore = memory.size();
    let pagesNeeded = <i32>((((rootOffset + Root.SIZE) + 0xffff) & ~0xffff) >>> 16);
    if (pagesNeeded > pagesBefore && memory.grow(pagesNeeded - pagesBefore) < 0) unreachable();
    ROOT = root = changetype<Root>(rootOffset);
    root.tailRef = 0;
    root.flMap = 0;
    for (let fl: usize = 0; fl < FL_BITS; ++fl) {
      root.setSLMap(fl, 0);
      for (let sl: u32 = 0; sl < SL_SIZE; ++sl) {
        root.setHead(fl, sl, null);
      }
    }
    root.addMemory((rootOffset + Root.SIZE + AL_MASK) & ~AL_MASK, memory.size() << 16);
  }

  // search for a suitable block
  if (size > Block.MAX_SIZE) unreachable();

  // 32-bit MAX_SIZE is 1 << 30 and itself aligned, hence the following can't overflow MAX_SIZE
  size = max<usize>((size + AL_MASK) & ~AL_MASK, Block.MIN_SIZE);

  var block = root.search(size);
  if (!block) {

    // request more memory
    let pagesBefore = memory.size();
    let pagesNeeded = <i32>(((size + 0xffff) & ~0xffff) >>> 16);
    let pagesWanted = max(pagesBefore, pagesNeeded); // double memory
    if (memory.grow(pagesWanted) < 0) {
      if (memory.grow(pagesNeeded) < 0) {
        unreachable(); // out of memory
      }
    }
    let pagesAfter = memory.size();
    root.addMemory(<usize>pagesBefore << 16, <usize>pagesAfter << 16);
    block = assert(root.search(size)); // must be found now
  }

  assert((block.info & ~TAGS) >= size);
  return root.use(<Block>block, size);
}

/** Frees the chunk of memory at the specified address. */
@global export function __memory_free(data: usize): void {
  if (data) {
    let root = ROOT;
    if (root) {
      let block = changetype<Block>(data - Block.INFO);
      let blockInfo = block.info;
      assert(!(blockInfo & FREE)); // must be used
      block.info = blockInfo | FREE;
      root.insert(changetype<Block>(data - Block.INFO));
    }
  }
}

@global export function __memory_reset(): void {
  unreachable();
}
