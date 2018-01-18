////////////// TLSF (Two-Level Segregate Fit) Memory Allocator ////////////////
//    based on https://github.com/mattconte/tlsf - BSD (see LICENSE file)    //
///////////////////////////////////////////////////////////////////////////////

// Configuration

const SL_INDEX_COUNT_LOG2: u32 = 5;

// Internal constants

const ALIGN_SIZE_LOG2: u32 = sizeof<usize>() == 8 ? 3 : 2;
const ALIGN_SIZE: u32 = 1 << ALIGN_SIZE_LOG2;
const FL_INDEX_MAX: u32 = sizeof<usize>() == 8 ? 32 : 30;
const SL_INDEX_COUNT: u32 = 1 << SL_INDEX_COUNT_LOG2;
const FL_INDEX_SHIFT: u32 = SL_INDEX_COUNT_LOG2 + ALIGN_SIZE_LOG2;
const FL_INDEX_COUNT: u32 = FL_INDEX_MAX - FL_INDEX_SHIFT + 1;
const SMALL_BLOCK_SIZE: u32 = 1 << FL_INDEX_SHIFT;

/** Block header structure. */
@explicit
class BlockHeader {

  /////////////////////////////// Constants ///////////////////////////////////

  // One block header is 16 bytes in WASM32 and 32 bytes in WASM64.
  static readonly SIZE: usize = 4 * sizeof<usize>();

  // Since block sizes are always at least a multiple of 4, the two least
  // significant bits of the size field are used to store the block status.
  static readonly FREE_BIT: usize = 1 << 0;
  static readonly PREV_FREE_BIT: usize = 1 << 1;

  // The size of the block header exposed to used blocks is the size field.
  // The prev_phys_block field is stored *inside* the previous free block.
  static readonly OVERHEAD: usize = sizeof<usize>();

  // User data starts directly after the size field in a used block.
  static readonly DATA_OFFSET: usize = sizeof<usize>() + sizeof<usize>();

  // A free block must be large enough to store its header minus the size of
  // the prev_phys_block field, and no larger than the number of addressable
  // bits for FL_INDEX.
  static readonly BLOCK_SIZE_MIN: usize = BlockHeader.SIZE - sizeof<usize>();
  static readonly BLOCK_SIZE_MAX: usize = <usize>1 << FL_INDEX_MAX;

  ///////////////////////////////// Fields ////////////////////////////////////

  /**
   * Points to the previous physical block. Only valid if the previous block is
   * free. Actually stored at the end of the previous block.
   */
  prev_phys_block: BlockHeader;

  /**
   * The size of this block, excluding the block header. The two least
   * significant bits are used to store the block status.
   */
  tagged_size: usize;

  /** Next free block. Only valid if the block is free. */
  next_free: BlockHeader;

  /** Previous free block. Only valid if the block is free. */
  prev_free: BlockHeader;

  ///////////////////////////////// Methods ///////////////////////////////////

  /** Gets the size of this block, excluding the block header. */
  get size(): usize {
    const tags = BlockHeader.FREE_BIT | BlockHeader.PREV_FREE_BIT;
    return this.tagged_size & ~tags;
  }

  /** Sets the size of this block, retaining tagged bits. */
  set size(size: usize) {
    const tags = BlockHeader.FREE_BIT | BlockHeader.PREV_FREE_BIT;
    this.tagged_size = size | (this.tagged_size & tags);
  }

  /** Tests if this is the last block. */
  get isLast(): bool {
    return this.size == 0;
  }

  /** Tests if this block's status is 'free'. */
  get isFree(): bool {
    return (this.tagged_size & BlockHeader.FREE_BIT) != 0;
  }

  /** Tags this block as 'free'. Careful: Does not update adjacent blocks. */
  tagAsFree(): void {
    this.tagged_size |= BlockHeader.FREE_BIT;
  }

  /** Tags this block as 'used'. Careful: Does not update adjacent blocks. */
  tagAsUsed(): void {
    this.tagged_size &= ~BlockHeader.FREE_BIT;
  }

  /** Tests if the previous block is free. */
  get isPrevFree(): bool {
    return (this.tagged_size & BlockHeader.PREV_FREE_BIT) != 0;
  }

  /** Tags this block as 'prev is free'. Does not update adjacent blocks. */
  tagAsPrevFree(): void {
    this.tagged_size |= BlockHeader.PREV_FREE_BIT;
  }

  /** Tags this block as 'prev is used'. Does not update adjacent blocks. */
  tagAsPrevUsed(): void {
    this.tagged_size &= ~BlockHeader.PREV_FREE_BIT;
  }

  /** Gets the block header matching the specified data pointer. */
  static fromDataPtr(ptr: usize): BlockHeader {
    return changetype<BlockHeader>(ptr - BlockHeader.DATA_OFFSET);
  }

  /** Returns the address of this block's data. */
  toDataPtr(): usize {
    return changetype<usize>(this) + BlockHeader.DATA_OFFSET;
  }

  /** Gets the next block after this one using the specified size. */
  static fromOffset(ptr: usize, size: usize): BlockHeader {
    return changetype<BlockHeader>(ptr + <usize>size);
  }

  /** Gets the previous block. */
  get prev(): BlockHeader {
    assert(this.isPrevFree,
      "previous block must be free"
    );
    return this.prev_phys_block;
  }

  /** Gets the next block. */
  get next(): BlockHeader {
    assert(!this.isLast,
      "last block has no next block"
    );
    return BlockHeader.fromOffset(
      this.toDataPtr(),
      this.size - BlockHeader.OVERHEAD
    );
  }

  /**
   * Links this block with its physical next block and returns the next block.
   */
  linkNext(): BlockHeader {
    var next = this.next;
    next.prev_phys_block = this;
    return next;
  }

  /** Marks this block as being 'free'. */
  markAsFree(): void {
    var next = this.linkNext(); // Link the block to the next block, first.
    next.tagAsPrevFree();
    this.tagAsFree();
  }

  /** Marks this block as being 'used'. */
  markAsUsed(): void {
    var next = this.next;
    next.tagAsPrevUsed();
    this.tagAsUsed();
  }

  /** Tests if this block can be splitted. */
  canSplit(size: usize): bool {
    return this.size >= BlockHeader.SIZE + size;
  }

  /** Splits a block into two, the second of which is free. */
  split(size: usize): BlockHeader {
    // Calculate the amount of space left in the remaining block.
    var remain = BlockHeader.fromOffset(
      this.toDataPtr(),
      size - BlockHeader.OVERHEAD
    );
    var remain_size = this.size - (size + BlockHeader.OVERHEAD);
    assert(remain.toDataPtr() == align_ptr(remain.toDataPtr(), ALIGN_SIZE),
      "remaining block not aligned properly"
    );
    remain.size = remain_size;
    assert(remain.size >= BlockHeader.BLOCK_SIZE_MIN,
      "block split with invalid size"
    );
    this.size = size;
    remain.markAsFree();
    return remain;
  }

  /** Absorb a free block's storage into this (adjacent previous) free block. */
  absorb(block: BlockHeader): void {
    assert(!this.isLast,
      "previous block can't be last"
    );
    // Leaves tags untouched
    this.tagged_size += block.size + BlockHeader.OVERHEAD;
    this.linkNext();
  }
}

/** The TLSF control structure. */
@explicit
class Control extends BlockHeader { // Empty lists point here, indicating free

  // The control structure uses 3188 bytes in WASM32.
  static readonly SIZE: usize = (
    BlockHeader.SIZE
    + (1 + FL_INDEX_COUNT) * sizeof<u32>()
    + FL_INDEX_COUNT * SL_INDEX_COUNT * sizeof<usize>()
  );

  ///////////////////////////////// Fields ////////////////////////////////////

  /** First level free list bitmap. */
  fl_bitmap: u32;

  /**
   * Gets the second level free list bitmap for the specified index.
   * Equivalent to `sl_bitmap[fl_index]`.
   */
  sl_bitmap(fl_index: u32): u32 {
    const offset = BlockHeader.SIZE + sizeof<u32>();
    return load<u32>(
      changetype<usize>(this)
      + offset
      + fl_index * sizeof<u32>()
    );
  }

  /**
   * Sets the second level free list bitmap for the specified index.
   * Equivalent to `sl_bitmap[fl_index] = sl_map`.
   */
  sl_bitmap_set(fl_index: u32, sl_map: u32): void {
    const offset = BlockHeader.SIZE + sizeof<u32>();
    return store<u32>(
      changetype<usize>(this)
      + offset
      + fl_index * sizeof<u32>(),
      sl_map
    );
  }

  /**
   * Gets the head of the free list for the specified indexes.
   * Equivalent to `blocks[fl_index][sl_index]`.
   */
  blocks(fli: u32, sli: u32): BlockHeader {
    const offset = BlockHeader.SIZE + (1 + FL_INDEX_COUNT) * sizeof<u32>();
    return load<BlockHeader>(
      changetype<usize>(this)
      + offset
      + (fli * SL_INDEX_COUNT + sli) * sizeof<usize>()
    );
  }

  /**
   * Sets the head of the free list for the specified indexes.
   * Equivalent to `blocks[fl_index][sl_index] = block`.
   */
  blocks_set(fl_index: u32, sl_index: u32, block: BlockHeader): void {
    const offset = BlockHeader.SIZE + (1 + FL_INDEX_COUNT) * sizeof<u32>();
    return store<BlockHeader>(
      changetype<usize>(this)
      + offset
      + (fl_index * SL_INDEX_COUNT + sl_index) * sizeof<usize>(),
      block
    );
  }

  ///////////////////////////////// Methods ///////////////////////////////////

  /** Removes a given block from the free list. */
  removeBlock(block: BlockHeader): void {
    mapping_insert(block.size);
    this.removeFreeBlock(block, fl_out, sl_out);
  }

  /** Inserts a given block into the free list. */
  insertBlock(block: BlockHeader): void {
    mapping_insert(block.size);
    this.insertFreeBlock(block, fl_out, sl_out);
  }

  /** Inserts a free block into the free block list. */
  insertFreeBlock(block: BlockHeader, fl: i32, sl: i32): void {
    var current = this.blocks(fl, sl);
    assert(current,
      "free list cannot have a null entry"
    );
    assert(block,
      "cannot insert a null entry into the free list"
    );
    block.next_free = current;
    block.prev_free = this;
    current.prev_free = block;
    assert(block.toDataPtr() == align_ptr(block.toDataPtr(), ALIGN_SIZE),
      "block not aligned properly"
    );
    // Insert the new block at the head of the list, and mark the first-
    // and second-level bitmaps appropriately.
    this.blocks_set(fl, sl, block);
    this.fl_bitmap |= (1 << fl);
    this.sl_bitmap_set(fl, this.sl_bitmap(fl) | (1 << sl))
  }

  /** Removes a free block from the free list.*/
  removeFreeBlock(block: BlockHeader, fl: i32, sl: i32): void {
    var prev = block.prev_free;
    var next = block.next_free;
    assert(prev,
      "prev_free field cannot be null"
    );
    assert(next,
      "next_free field cannot be null"
    );
    next.prev_free = prev;
    prev.next_free = next;
    if (this.blocks(fl, sl) == block) {
      this.blocks_set(fl, sl, next);
      if (next == this) {
        this.sl_bitmap_set(fl, this.sl_bitmap(fl) & ~(1 << sl));
        if (!this.sl_bitmap(fl)) {
          this.fl_bitmap &= ~(1 << fl);
        }
      }
    }
  }

  /** Merges a just-freed block with an adjacent previous free block. */
  mergePrevBlock(block: BlockHeader): BlockHeader {
    if (block.isPrevFree) {
      var prev = block.prev;
      assert(prev,
        "prev physical block can't be null"
      );
      assert(prev.isFree,
        "prev block is not free though marked as such"
      );
      this.removeBlock(prev);
      prev.absorb(block);
      block = prev;
    }
    return block;
  }

  /** Merges a just-freed block with an adjacent free block. */
  mergeNextBlock(block: BlockHeader): BlockHeader {
    var next = block.next;
    assert(next,
      "next physical block can't be null"
    );
    if (next.isFree) {
      assert(!block.isLast,
        "previous block can't be last"
      );
      this.removeBlock(next);
      block.absorb(next);
    }
    return block;
  }

  /**
   * Trims any trailing block space off the end of a block and returns it to
   * the pool. */
  trimFreeBlock(block: BlockHeader, size: usize): void {
    assert(block.isFree,
      "block must be free"
    );
    if (block.canSplit(size)) {
      var remaining_block = block.split(size);
      block.linkNext();
      remaining_block.tagAsPrevFree();
      this.insertBlock(remaining_block);
    }
  }

  /**
   * Trims any trailing block space off the end of a used block and returns it
   * to the pool.
   */
  trimUsedBlock(block: BlockHeader, size: usize): void {
    assert(!block.isFree,
      "block must be used"
    );
    if (block.canSplit(size)) {
      // If the next block is free, we must coalesce.
      var remaining_block = block.split(size);
      remaining_block.tagAsPrevUsed();
      remaining_block = this.mergeNextBlock(remaining_block);
      this.insertBlock(remaining_block);
    }
  }

  trimFreeBlockLeading(block: BlockHeader, size: usize): BlockHeader {
    var remaining_block = block;
    if (block.canSplit(size)) {
      remaining_block = block.split(size - BlockHeader.OVERHEAD);
      remaining_block.tagAsPrevFree();
      block.linkNext();
      this.insertBlock(block);
    }
    return remaining_block;
  }

  locateFreeBlock(size: usize): BlockHeader {
    var block = changetype<BlockHeader>(0);
    if (size) {
      mapping_search(size);
      if (fl_out < FL_INDEX_MAX) {
        block = find_suitable_block(this, fl_out, sl_out);
      }
    }
    if (block) {
      assert(block.size >= size);
      this.removeFreeBlock(block, fl_out, sl_out);
    }
    return block;
  }

  prepareUsedBlock(block: BlockHeader, size: usize): usize {
    var ptr: usize = 0;
    if (block) {
      assert(size,
        "size must be non-zero"
      );
      this.trimFreeBlock(block, size);
      block.markAsUsed();
      ptr = block.toDataPtr();
    }
    return ptr;
  }

  /**
   * Creates a TLSF control structure at the specified memory address,
   * providing the specified number of bytes.
   */
  static create(mem: usize, bytes: usize): Control {
    if ((mem % ALIGN_SIZE) != 0)
      throw new RangeError("Memory must be aligned");

    // Clear structure and point all empty lists at the null block.
    var control = changetype<Control>(mem);
    control.next_free = control;
    control.prev_free = control;
    control.fl_bitmap = 0;
    for (var i = 0; i < FL_INDEX_COUNT; ++i) {
      control.sl_bitmap_set(i, 0);
      for (var j = 0; j < SL_INDEX_COUNT; ++j) {
        control.blocks_set(i, j, control);
      }
    }

    // Add the initial memory pool
    control.addPool(mem + Control.SIZE, bytes - Control.SIZE);
    return control;
  }

  /** Adds a pool of free memory. */
  addPool(mem: usize, bytes: usize): void {
    // Overhead of the TLSF structures in a given memory block, equal
    // to the overhead of the free block and the sentinel block.
    const pool_overhead = BlockHeader.OVERHEAD * 2;

    var pool_bytes = align_down(bytes - pool_overhead, ALIGN_SIZE);
    if ((mem % ALIGN_SIZE) != 0)
      throw new RangeError("Memory must be aligned");
    if (pool_bytes < BlockHeader.BLOCK_SIZE_MIN ||
        pool_bytes > BlockHeader.BLOCK_SIZE_MAX)
      throw new RangeError("Memory size must be between min and max");

    // Create the main free block. Offset the start of the block slightly
    // so that the prev_phys_block field falls outside of the pool -
    // it will never be used.
    var block = BlockHeader.fromOffset(mem, -BlockHeader.OVERHEAD);
    block.size = pool_bytes;
    block.tagAsFree();
    block.tagAsPrevUsed();
    this.insertBlock(block);

    // Split the block to create a zero-size sentinel block.
    var next = block.linkNext();
    next.size = 0;
    next.tagAsUsed();
    next.tagAsPrevFree();
  }
}

// Alignment helpers

function align_up(x: usize, align: usize): usize {
  assert(!(align & (align - 1)),
    "must align to a power of two"
  );
  return (x + (align - 1)) & ~(align - 1);
}

function align_down(x: usize, align: usize): usize {
  assert(!(align & (align - 1)),
    "must align to a power of two"
  );
  return x - (x & (align - 1));
}

function align_ptr(ptr: usize, align: usize): usize {
  var aligned = (ptr + (align - 1)) & ~(align - 1);
  assert(!(align & (align - 1)),
    "must align to a power of two"
  );
  return aligned;
}

/**
 * Adjusts an allocation size to be aligned to word size, and no smaller than
 * the internal minimum.
 */
function adjust_request_size(size: usize, align: usize): usize {
  var adjust: usize = 0;
  if (size && size < BlockHeader.BLOCK_SIZE_MAX) {
    var aligned = align_up(size, align);
    adjust = max(aligned, BlockHeader.BLOCK_SIZE_MIN);
  }
  return adjust;
}

// TLSF utility functions. In most cases, these are direct translations of the
// documentation found in the white paper.

function ffs<T>(word: i32): i32 {
  return word ? <i32>ctz(word) : -1;
}

function fls<T>(word: T): i32 {
  return (<i32>sizeof<T>() << 3) - 1 - <i32>clz(word);
}

let fl_out: i32, sl_out: i32;

function mapping_insert(size: usize): void {
  var fl: i32, sl: i32;
  if (size < SMALL_BLOCK_SIZE) { // Store small blocks in first list.
    fl = 0;
    sl = <i32>size / (SMALL_BLOCK_SIZE / SL_INDEX_COUNT);
  } else {
    fl = fls<usize>(size);
    sl = (<i32>size >> (fl - SL_INDEX_COUNT_LOG2)) ^ 1 << SL_INDEX_COUNT_LOG2;
    fl -= FL_INDEX_SHIFT - 1;
  }
  fl_out = fl;
  sl_out = sl;
}

function mapping_search(size: usize): void {
  if (size >= SMALL_BLOCK_SIZE)
    size += (1 << (fls<usize>(size) - SL_INDEX_COUNT_LOG2)) - 1;
  mapping_insert(size);
}

function find_suitable_block(control: Control, fl: i32, sl: i32): BlockHeader {
  // Search for a block in the list associated with the given fl/sl index
  var sl_map = control.sl_bitmap(fl) & (<u32>~0 << sl);
  if (!sl_map) {
    // If no block exists, search in the next largest first-level list
    var fl_map = control.fl_bitmap & (<u32>~0 << (fl + 1));
    if (!fl_map)
      return changetype<BlockHeader>(0); // Memory pool has been exhausted
    fl = ctz<u32>(fl_map); // ^= ffs<u32>(fl_map) with fl_map != 0
    fl_out = fl;
    sl_map = control.sl_bitmap(fl);
  }
  assert(sl_map,
    "second level bitmap is null"
  );
  sl = ctz<u32>(sl_map); // ^= ffs<u32>(sl_map) with sl_map != 0
  sl_out = sl;
  return control.blocks(fl, sl); // First block in the free list
}

// Exported interface

let TLSF: Control;

/** Requests more memory from the host environment. */
function request_memory(size: usize): void {
  if (size & 0xffff) // Round size up to a full page
    size = (size | 0xffff) + 1;
  // At least double the memory for efficiency
  var prev_pages = grow_memory(max<u32>(current_memory(), <u32>size >> 16));
  if (prev_pages < 0)
    unreachable(); // Out of host memory. This is bad.
  var next_pages = current_memory();
  TLSF.addPool(<usize>prev_pages << 16, <usize>(next_pages - prev_pages) << 16);
}

/** Allocates a chunk of memory of the given size and returns its address. */
export function allocate_memory(size: usize): usize {
  if (!TLSF) // Initialize when actually used so it DCEs just fine otherwise
    TLSF = Control.create(HEAP_BASE, (current_memory() << 16) - HEAP_BASE);
  var control = changetype<Control>(TLSF);
  var adjust = adjust_request_size(size, ALIGN_SIZE);
  var block = control.locateFreeBlock(adjust);
  if (!block && size > 0) {
    request_memory(adjust);
    block = control.locateFreeBlock(adjust);
  }
  return control.prepareUsedBlock(block, adjust);
}

/** Disposes a chunk of memory by its pointer. */
export function free_memory(ptr: usize): void {
  if (TLSF && ptr) {
    var control = changetype<Control>(TLSF);
    var block = BlockHeader.fromDataPtr(ptr);
    assert(!block.isFree,
      "block already marked as free"
    );
    block.markAsFree();
    block = control.mergePrevBlock(block);
    block = control.mergeNextBlock(block);
    control.insertBlock(block);
  }
}

// Extra debugging

assert(sizeof<u32>() << 3 >= SL_INDEX_COUNT,
  "SL_INDEX_COUNT must be <= number of bits in sl_bitmap's storage type"
);
assert(ALIGN_SIZE == SMALL_BLOCK_SIZE / SL_INDEX_COUNT,
  "invalid alignment"
);
assert(test_ffs_fls() == 0,
  "ffs/fls are not working properly"
);

function test_ffs_fls(): i32 {
  var rv = 0;
  rv += (ffs<u32>(0) == -1) ? 0 : 0x1;
  rv += (fls<u32>(0) == -1) ? 0 : 0x2;
  rv += (ffs<u32>(1) == 0) ? 0 : 0x4;
  rv += (fls<u32>(1) == 0) ? 0 : 0x8;
  rv += (ffs<u32>(0x80000000) == 31) ? 0 : 0x10;
  rv += (ffs<u32>(0x80008000) == 15) ? 0 : 0x20;
  rv += (fls<u32>(0x80000008) == 31) ? 0 : 0x40;
  rv += (fls<u32>(0x7FFFFFFF) == 30) ? 0 : 0x80;
  rv += (fls<u64>(0x80000000) == 31) ? 0 : 0x100;
  rv += (fls<u64>(0x100000000) == 32) ? 0 : 0x200;
  rv += (fls<u64>(0xffffffffffffffff) == 63) ? 0 : 0x400;
  return rv;
}

function check(): i32 {
  if (!TLSF)
    TLSF = Control.create(HEAP_BASE, (current_memory() << 16) - HEAP_BASE);
  var control = changetype<Control>(TLSF);
  var status = 0;
  for (var i = 0; i < FL_INDEX_COUNT; ++i) {
    for (var j = 0; j < SL_INDEX_COUNT; ++j) {
      var fl_map = control.fl_bitmap & (1 << i);
      var sl_list = control.sl_bitmap(i);
      var sl_map = sl_list & (1 << j);
      var block = control.blocks(i, j);
      if (!fl_map) {
        if (!assert(!sl_map,
          "second-level map must be null")
        ) --status;
      }
      if (!sl_map) {
        if (!assert(block == control,
          "block list must be null")
        ) --status;
      } else {
        if (!assert(sl_list,
          "no free blocks in second-level map")
        ) --status;
        if (!assert(block != control,
          "block should not be null")
        ) --status;
        while (block != control) {
          if (!assert(block.isFree,
            "block should be free")
          ) --status;
          if (!assert(!block.isPrevFree,
            "blocks should have coalesced")
          ) --status;
          if (!assert(!block.next.isFree,
            "blocks should have coalesced")
          ) --status;
          if (!assert(block.next.isPrevFree,
            "block should be free")
          ) --status;
          if (!assert(block.size >= BlockHeader.BLOCK_SIZE_MIN,
            "block < minimum size")
          ) --status;
          mapping_insert(block.size);
          if (!assert(fl_out == i && sl_out == j,
            "block size indexed in wrong list")
          ) --status;
          block = block.next_free;
        }
      }
    }
  }
  return status;
}

let integrity_prev_status: i32,
    integrity_status: i32;

function integrity_walker(ptr: usize, size: usize, used: bool): void {
  var block = BlockHeader.fromDataPtr(ptr);
  var this_prev_status = block.isPrevFree;
  var this_status = block.isFree;
  var this_block_size = block.size;

  var status = 0;
  if (!assert(integrity_prev_status == this_prev_status,
    "prev status incorrect")
  ) --status;
  if (!assert(size == this_block_size,
    "block size incorrect")
  ) --status;
  integrity_prev_status = this_status;
  integrity_status += status;
}

function check_pool(pool: usize): i32 {
  if (pool < 0x10000) { // first pool
    pool = changetype<usize>(TLSF) + Control.SIZE;
  }
  // inlined walk_bool with static integrity_walker
  integrity_prev_status = integrity_status = 0;
  var block = BlockHeader.fromOffset(pool, -BlockHeader.OVERHEAD);
  while (block && !block.isLast) {
    integrity_walker(
      block.toDataPtr(),
      block.size,
      !block.isFree
    );
    block = block.next;
  }
  return integrity_status;
}

// export { check, check_pool }; // Uncomment to enable in tests/index.js
