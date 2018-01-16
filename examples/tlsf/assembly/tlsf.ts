// based on https://github.com/mattconte/tlsf (BSD)

type size_t = u32;

// TLSF achieves O(1) cost for malloc and free operations by limiting
// the search for a free block to a free list of guaranteed size
// adequate to fulfill the request, combined with efficient free list
// queries using bitmasks and architecture-specific bit-manipulation
// routines.
//
// NOTE: TLSF spec relies on ffs/fls returning values 0..31 with -1
// indicating that no bits are set. In WebAssembly, ctz and clz return
// 32/64 if no bits are set.

function ffs<T>(word: i32): i32 {
  return word ? <i32>ctz(word) : -1;
}

function fls<T>(word: T): i32 {
  return (<i32>sizeof<T>() << 3) - <i32>clz(word) - 1;
}

const SL_INDEX_COUNT_LOG2: u32 = 5;

const ALIGN_SIZE_LOG2: u32 = sizeof<size_t>() == 8 ? 3 : 2;
const ALIGN_SIZE: u32 = (1 << ALIGN_SIZE_LOG2);
const FL_INDEX_MAX: u32 = sizeof<size_t>() == 8 ? 32 : 30;
const SL_INDEX_COUNT: u32 = (1 << SL_INDEX_COUNT_LOG2);
const FL_INDEX_SHIFT: u32 = SL_INDEX_COUNT_LOG2 + ALIGN_SIZE_LOG2;
const FL_INDEX_COUNT: u32 = FL_INDEX_MAX - FL_INDEX_SHIFT + 1;
const SMALL_BLOCK_SIZE: u32 = 1 << FL_INDEX_SHIFT;

assert(sizeof<u32>() * 8 >= SL_INDEX_COUNT);
assert(ALIGN_SIZE == SMALL_BLOCK_SIZE / SL_INDEX_COUNT);

/**
 * Block header structure.
 *
 * There are several implementation subtleties involved:
 * - The prev_phys_block field is only valid if the previous block is free.
 * - The prev_phys_block field is actually stored at the end of the
 *   previous block. It appears at the beginning of this structure only to
 *   simplify the implementation.
 * - The next_free / prev_free fields are only valid if the block is free.
 */
@explicit
class block_header_t {

  /* Points to the previous physical block. */
  prev_phys_block: block_header_t;
  /* The size of this block, excluding the block header. */
  size: size_t;
  /* Next free block. */
  next_free: block_header_t;
  /* Previous free block. */
  prev_free: block_header_t;
}
const sizeof_block_header_t: usize = 3 * sizeof<usize>() * sizeof<size_t>();

// Since block sizes are always at least a multiple of 4, the two least
// significant bits of the size field are used to store the block status:
// - bit 0: whether block is busy or free
// - bit 1: whether previous block is busy or free
const block_header_free_bit: size_t = 1 << 0;
const block_header_prev_free_bit: size_t = 1 << 1;

// The size of the block header exposed to used blocks is the size field.
// The prev_phys_block field is stored *inside* the previous free block.
const block_header_overhead: size_t = sizeof<size_t>();

// User data starts directly after the size field in a used block.
const block_start_offset: size_t = sizeof<usize>() + sizeof<size_t>();

// A free block must be large enough to store its header minus the size of
// the prev_phys_block field, and no larger than the number of addressable
// bits for FL_INDEX.
const block_size_min: size_t = sizeof_block_header_t - sizeof<usize>();
const block_size_max: size_t = 1 << FL_INDEX_MAX;

/* The TLSF control structure. */
@explicit
class control_t extends block_header_t { // Empty lists point at this block to indicate they are free.

  /* First level free list bitmap. */
  fl_bitmap: u32;
  /** Second level free list bitmaps. */
  sl_bitmap(fl_index: u32): u32 {
    const offset: usize = sizeof_block_header_t + sizeof<u32>();
    return load<u32>(changetype<usize>(this) + offset + fl_index * sizeof<u32>());
  }
  sl_bitmap_set(fl_index: u32, sl_map: u32): void {
    const offset: usize = sizeof_block_header_t + sizeof<u32>();
    return store<u32>(changetype<usize>(this) + offset + fl_index * sizeof<u32>(), sl_map);
  }
  /** Head of free lists. */
  blocks(fl_index: u32, sl_index: u32): block_header_t {
    const offset: usize = sizeof_block_header_t + sizeof<u32>() * FL_INDEX_COUNT * sizeof<u32>();
    return load<block_header_t>(changetype<usize>(this) + offset + (fl_index * SL_INDEX_COUNT + sl_index) * sizeof<usize>());
  }
  blocks_set(fl_index: u32, sl_index: u32, block: block_header_t): void {
    const offset: usize = sizeof_block_header_t + sizeof<u32>() * FL_INDEX_COUNT * sizeof<u32>();
    return store<block_header_t>(changetype<usize>(this) + offset + (fl_index * SL_INDEX_COUNT + sl_index) * sizeof<usize>(), block);
  }
}
const sizeof_control_t: usize = sizeof_block_header_t + (1 + FL_INDEX_COUNT) * sizeof<u32>() + FL_INDEX_COUNT * SL_INDEX_COUNT * sizeof<usize>();

// block_header_t member functions.

function block_size(block: block_header_t): size_t {
  return block.size & ~(block_header_free_bit | block_header_prev_free_bit);
}

function block_set_size(block: block_header_t, size: size_t): void {
  var oldsize = block.size;
  block.size = size | (oldsize & (block_header_free_bit | block_header_prev_free_bit));
}

function block_is_last(block: block_header_t): bool {
  return block_size(block) == 0;
}

function block_is_free(block: block_header_t): bool {
  return (block.size & block_header_free_bit) == block_header_free_bit;
}

function block_set_free(block: block_header_t): void {
  block.size |= block_header_free_bit;
}

function block_set_used(block: block_header_t): void {
  block.size &= ~block_header_free_bit;
}

function block_is_prev_free(block: block_header_t): bool {
  return (block.size & block_header_prev_free_bit) == block_header_prev_free_bit;
}

function block_set_prev_free(block: block_header_t): void {
  block.size |= block_header_prev_free_bit;
}

function block_set_prev_used(block: block_header_t): void {
  block.size &= ~block_header_prev_free_bit;
}

function block_from_ptr(ptr: usize): block_header_t {
  return changetype<block_header_t>(ptr - block_start_offset);
}

function block_to_ptr(block: block_header_t): usize {
  return changetype<usize>(block) + block_start_offset;
}

/* Return location of next block after block of given size. */
function offset_to_block(ptr: usize, size: size_t): block_header_t {
  return changetype<block_header_t>(ptr + size);
}

/* Return location of previous block. */
function block_prev(block: block_header_t): block_header_t {
  assert(block_is_prev_free(block), "previous block must be free");
  return block.prev_phys_block;
}

/* Return location of next existing block. */
function block_next(block: block_header_t): block_header_t {
  var next = offset_to_block(block_to_ptr(block), block_size(block) - block_header_overhead);
  assert(!block_is_last(block));
  return next;
}

/* Link a new block with its physical neighbor, return the neighbor. */
function block_link_next(block: block_header_t): block_header_t {
  var next = block_next(block);
  next.prev_phys_block = block;
  return next;
}

function block_mark_as_free(block: block_header_t): void {
  // Link the block to the next block, first.
  var next = block_link_next(block);
  block_set_prev_free(next);
  block_set_free(block);
}

function block_mark_as_used(block: block_header_t): void {
  var next = block_next(block);
  block_set_prev_used(next);
  block_set_used(block);
}

function align_up(x: size_t, align: size_t): size_t {
  assert(0 == (align & (align - 1)), "must align to a power of two");
  return (x + (align - 1)) & ~(align - 1);
}

function align_down(x: size_t, align: size_t): size_t {
  assert(0 == (align & (align - 1)), "must align to a power of two");
  return x - (x & (align - 1));
}

function align_ptr(ptr: usize, align: size_t): usize {
  var aligned = (ptr + (align - 1)) & ~(align - 1);
  assert(0 == (align & (align - 1)), "must align to a power of two");
  return aligned;
}

/**
 * Adjust an allocation size to be aligned to word size, and no smaller
 * than internal minimum.
 */
function adjust_request_size(size: size_t, align: size_t): size_t {
  var adjust: size_t = 0;
  if (size) {
    var aligned = align_up(size, align);
    // aligned sized must not exceed block_size_max or we'll go out of bounds on sl_bitmap
    if (aligned < block_size_max) {
      adjust = max(aligned, block_size_min);
    }
  }
  return adjust;
}

// TLSF utility functions. In most cases, these are direct translations of
// the documentation found in the white paper.

var fl_out: i32, sl_out: i32;

function mapping_insert(size: size_t): void {
  var fl: i32, sl: i32;
  if (size < SMALL_BLOCK_SIZE) {
    // Store small blocks in first list.
    fl = 0;
    sl = <i32>size / (SMALL_BLOCK_SIZE / SL_INDEX_COUNT);
  } else {
    fl = fls<size_t>(size);
    sl = (<i32>size >> (fl - SL_INDEX_COUNT_LOG2)) ^ (1 << SL_INDEX_COUNT_LOG2);
    fl -= (FL_INDEX_SHIFT - 1);
  }
  fl_out = fl;
  sl_out = sl;
}

function mapping_search(size: size_t): void {
  if (size >= SMALL_BLOCK_SIZE) {
    var round: size_t = (1 << (fls<size_t>(size) - SL_INDEX_COUNT_LOG2)) - 1;
    size += round;
  }
  mapping_insert(size);
}

function search_suitable_block(control: control_t, fl: i32, sl: i32): block_header_t {
  var sl_map = control.sl_bitmap(fl) & (<u32>~0 << sl);
  if (!sl_map) {
    // No block exists. Search in the next largest first-level list.
    var fl_map = control.fl_bitmap & (<u32>~0 << (fl + 1));
    if (!fl_map) {
      // No free blocks available, memory has been exhausted.
      return changetype<block_header_t>(0);
    }
    fl = ffs<u32>(fl_map);
    fl_out = fl;
    sl_map = control.sl_bitmap(fl);
  }
  assert(sl_map, "internal error - second level bitmap is null");

  sl = ffs<u32>(sl_map);
  sl_out = sl;
  return control.blocks(fl, sl);
}

function remove_free_block(control: control_t, block: block_header_t, fl: i32, sl: i32): void {
  var prev = block.prev_free;
  var next = block.next_free;
  assert(prev, "prev_free field can not be null");
  assert(next, "next_free field can not be null");
  next.prev_free = prev;
  prev.next_free = next;

  if (control.blocks(fl, sl) == block) {
    control.blocks_set(fl, sl, next);
    if (next == control) {
      control.sl_bitmap_set(fl, control.sl_bitmap(fl) & ~(1 << sl));
      if (!control.sl_bitmap(fl)) {
        control.fl_bitmap &= ~(1 << fl);
      }
    }
  }
}

function insert_free_block(control: control_t, block: block_header_t, fl: i32, sl: i32): void {
  var current = control.blocks(fl, sl);

  assert(current, "free list cannot have a null entry");
  assert(block, "cannot insert a null entry into the free list");

  block.next_free = current;
  block.prev_free = control;
  current.prev_free = block;

  assert(block_to_ptr(block) == align_ptr(block_to_ptr(block), ALIGN_SIZE), "block not aligned properly");

  control.blocks_set(fl, sl, block);
  control.fl_bitmap |= (1 << fl);
  control.sl_bitmap_set(fl, control.sl_bitmap(fl) | (1 << sl))
}


function block_remove(control: control_t, block: block_header_t): void {
  mapping_insert(block_size(block));
  remove_free_block(control, block, fl_out, sl_out);
}

function block_insert(control: control_t, block: block_header_t): void {
  mapping_insert(block_size(block));
  insert_free_block(control, block, fl_out, sl_out);
}

function block_can_split(block: block_header_t, size: size_t): bool {
  return block_size(block) >= sizeof_block_header_t + size;
}

function block_split(block: block_header_t, size: size_t): block_header_t {
  var remaining = offset_to_block(block_to_ptr(block), size - block_header_overhead);
  var remain_size = block_size(block) - (size + block_header_overhead);

  assert(block_to_ptr(remaining) == align_ptr(block_to_ptr(remaining), ALIGN_SIZE), "remaining block not aligned properly");
  assert(block_size(block) == remain_size + size + block_header_overhead);

  block_set_size(remaining, remain_size);

  assert(block_size(remaining) >= block_size_min, "block split with invalid size");

  block_set_size(block, size);
  block_mark_as_free(remaining);
  return remaining;
}

function block_absorb(prev: block_header_t, block: block_header_t): block_header_t {
  assert(!block_is_last(prev), "previous block can't be last");
  prev.size += block_size(block) + block_header_overhead;
  block_link_next(prev);
  return prev;
}

/* Merge a just-freed block with an adjacent previous free block. */
function block_merge_prev(control: control_t, block: block_header_t): block_header_t {
  if (block_is_prev_free(block)) {
    var prev = block_prev(block);
    assert(prev, "prev physical block can't be null");
    assert(block_is_free(prev), "prev block is not free though marked as such");
    block_remove(control, prev);
    block = block_absorb(prev, block);
  }
  return block;
}

/* Merge a just-freed block with an adjacent free block. */
function block_merge_next(control: control_t, block: block_header_t): block_header_t {
  var next: block_header_t = block_next(block);
  assert(next, "next physical block can't be null");
  if (block_is_free(next)) {
    assert(!block_is_last(block), "previous block can't be last");
    block_remove(control, next);
    block = block_absorb(block, next);
  }
  return block;
}

/* Trim any trailing block space off the end of a block, return to pool. */
function block_trim_free(control: control_t, block: block_header_t, size: size_t): void {
  assert(block_is_free(block), "block must be free");
  if (block_can_split(block, size)) {
    var remaining_block = block_split(block, size);
    block_link_next(block);
    block_set_prev_free(remaining_block);
    block_insert(control, remaining_block);
  }
}

/* Trim any trailing block space off the end of a used block, return to pool. */
function block_trim_used(control: control_t, block: block_header_t, size: size_t): void {
  assert(!block_is_free(block), "block must be used");
  if (block_can_split(block, size)) {
    // If the next block is free, we must coalesce
    var remaining_block = block_split(block, size);
    block_set_prev_used(remaining_block);
    remaining_block = block_merge_next(control, remaining_block);
    block_insert(control, remaining_block);
  }
}

function block_trim_free_leading(control: control_t, block: block_header_t, size: size_t): block_header_t {
  var remaining_block = block;
  if (block_can_split(block, size)) {
    remaining_block = block_split(block, size - block_header_overhead);
    block_set_prev_free(remaining_block);
    block_link_next(block);
    block_insert(control, block);
  }
  return remaining_block;
}

function block_locate_free(control: control_t, size: size_t): block_header_t {
  var index: u64 = 0;
  var block: block_header_t = changetype<block_header_t>(0);
  if (size) {
    mapping_search(size);
    if (fl_out < FL_INDEX_MAX) {
      block = search_suitable_block(control, fl_out, sl_out);
    }
  }
  if (block) {
    assert(block_size(block) >= size);
    remove_free_block(control, block, fl_out, sl_out);
  }
  return block;
}

function block_prepare_used(control: control_t, block: block_header_t, size: size_t): usize {
  var p: usize = 0;
  if (block) {
    assert(size, "size must be non-zero");
    block_trim_free(control, block, size);
    block_mark_as_used(block);
    p = block_to_ptr(block);
  }
  return p;
}

/* Clear structure and point all empty lists at the null block. */
function control_construct(control: control_t): void {
  control.next_free = control;
  control.prev_free = control;
  control.fl_bitmap = 0;
  for (var i = 0; i < FL_INDEX_COUNT; ++i) {
    control.sl_bitmap_set(i, 0);
    for (var j = 0; j < SL_INDEX_COUNT; ++j) {
      control.blocks_set(i, j, control);
    }
  }
}

type tlsf_t = usize;
type pool_t = usize;

var TLSF: tlsf_t = 0;

function create(mem: usize): tlsf_t {
  if ((mem % ALIGN_SIZE) != 0)
    throw new Error("Memory must be aligned");
  control_construct(changetype<control_t>(mem));
  return mem;
}

function create_with_pool(mem: usize, bytes: size_t): tlsf_t {
  var tlsf = create(mem);
  add_pool(tlsf, mem + sizeof_control_t, bytes - sizeof_control_t);
  return tlsf;
}

function add_pool(tlsf: tlsf_t, mem: usize, bytes: size_t): pool_t {
  var block: block_header_t;
  var next: block_header_t;

  const pool_overhead: size_t = 2 * block_header_overhead;
  var pool_bytes = align_down(bytes - pool_overhead, ALIGN_SIZE);
  if ((mem % ALIGN_SIZE) != 0)
    throw new Error("Memory must be aligned");
  if (pool_bytes < block_size_min || pool_bytes > block_size_max)
    throw new Error("Memory size must be between min and max");

  // Create the main free block. Offset the start of the block slightly
  // so that the prev_phys_block field falls outside of the pool -
  // it will never be used.
  block = offset_to_block(mem, -block_header_overhead);
  block_set_size(block, pool_bytes);
  block_set_free(block);
  block_set_prev_used(block);
  block_insert(changetype<control_t>(tlsf), block);

  // Split the block to create a zero-size sentinel block.
  next = block_link_next(block);
  block_set_size(next, 0);
  block_set_used(next);
  block_set_prev_free(next);

  return mem;
}

export function allocate_memory(size: size_t): usize {
  if (!TLSF)
    TLSF = create_with_pool(HEAP_BASE, (current_memory() << 16) - HEAP_BASE);
  var control = changetype<control_t>(TLSF);
  var adjust = adjust_request_size(size, ALIGN_SIZE);
  var block = block_locate_free(control, adjust);
  if (!block && size > 0) {
    if (size & 0xffff)
      size = (size | 0xffff) + 1;
    var oldsize = grow_memory(<u32>size >>> 16);
    if (oldsize >= 0) {
      add_pool(TLSF, <usize>oldsize << 16, size);
    } else {
      throw new Error("Out of memory");
    }
    block = block_locate_free(control, adjust);
  }
  return block_prepare_used(control, block, adjust);
}

export function free_memory(ptr: usize): void {
  if (TLSF && ptr) {
    var control = changetype<control_t>(TLSF);
    var block = block_from_ptr(ptr);
    assert(!block_is_free(block), "block already marked as free");
    block_mark_as_free(block);
    block = block_merge_prev(control, block);
    block = block_merge_next(control, block);
    block_insert(control, block);
  }
}

function test_ffs_fls(): i32 {
  // Verify ffs/fls work properly.
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

assert(!test_ffs_fls());
