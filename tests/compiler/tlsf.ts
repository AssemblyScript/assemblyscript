// An unfinished implementation of tlsf in low-level AssemblyScript.
// Useful as a compiler test in this state, but nothing more.
// based upon: https://github.com/mattconte/tlsf/blob/master/tlsf.c (BSD)

/// <reference path="../../assembly.d.ts" />

/** Finds the index of the least bit set. */
function fls(word: u32): i32 {
  return !word ? -1: 31 - clz<i32>(word);
}

assert(fls(0) == -1);
assert(fls(1) == 0);
assert(fls(0x80000008) == 31);
assert(fls(0x7FFFFFFF) == 30);

/** Finds the index of the first bit set. */
function ffs(word: u32): i32 {
  return !word ? -1 : ctz<i32>(word);
}

assert(ffs(0) == -1);
assert(ffs(1) == 0);
assert(ffs(0x80000000) == 31);

// Align allocated blocks to 8 bytes so that any native type is aligned

const ALIGN_SIZE_LOG2: i32 = 3;
const ALIGN_SIZE: i32 = 1 << ALIGN_SIZE_LOG2;

assert(ALIGN_SIZE == 8);

// Define bitmap constants

const SL_INDEX_COUNT_LOG2: i32 = 5;
const FL_INDEX_MAX: i32 = 30;
const SL_INDEX_COUNT: i32 = 1 << SL_INDEX_COUNT_LOG2;
const FL_INDEX_SHIFT: i32 = SL_INDEX_COUNT_LOG2 + ALIGN_SIZE_LOG2;
const FL_INDEX_COUNT: i32 = FL_INDEX_MAX - FL_INDEX_SHIFT + 1;
const SMALL_BLOCK_SIZE: i32 = 1 << FL_INDEX_SHIFT;

// struct block_header_t {
//   struct block_header_t* prev_phys_block;
//   size_t size;
//   struct block_header_t* next_free;
//   struct block_header_t* prev_free;
// }

const BLOCK_PREV_PHYS_OFFSET: usize = 0;
const BLOCK_SIZE_OFFSET: usize = BLOCK_PREV_PHYS_OFFSET + sizeof<usize>();
const BLOCK_NEXT_FREE_OFFSET: usize = BLOCK_SIZE_OFFSET + sizeof<usize>();
const BLOCK_PREV_FREE_OFFSET: usize = BLOCK_NEXT_FREE_OFFSET + sizeof<usize>();

function block_get_prev_phys_block(ptr: usize): usize {
  return load<usize>(ptr + BLOCK_PREV_PHYS_OFFSET);
}

function block_set_prev_phys_block(ptr: usize, value: usize): void {
  store<usize>(ptr + BLOCK_PREV_PHYS_OFFSET, value);
}

function block_get_size(ptr: usize): usize {
  return load<usize>(ptr + BLOCK_SIZE_OFFSET);
}

function block_set_size(ptr: usize, value: usize): void {
  store<usize>(ptr + BLOCK_SIZE_OFFSET, value);
}

function block_get_next_free(ptr: usize): usize {
  return load<usize>(ptr + BLOCK_NEXT_FREE_OFFSET);
}

function block_set_next_free(ptr: usize, value: usize): void {
  store<usize>(ptr + BLOCK_NEXT_FREE_OFFSET, value);
}

function block_get_prev_free(ptr: usize): usize {
  return load<usize>(ptr + BLOCK_PREV_FREE_OFFSET);
}

function block_set_prev_free(ptr: usize, value: usize): void {
  store<usize>(ptr + BLOCK_PREV_FREE_OFFSET, value);
}

// struct control_t {
//   block_header_t block_null;
//   unsigned int fl_bitmap;
//   unsigned int sl_bitmap[FL_INDEX_COUNT];
//   block_header_t* blocks[FL_INDEX_COUNT][SL_INDEX_COUNT];
// }

const CONTROL_FL_BITMAP_OFFSET: usize = BLOCK_PREV_FREE_OFFSET + sizeof<usize>();
const CONTROL_SL_BITMAP_OFFSET: usize = CONTROL_FL_BITMAP_OFFSET + sizeof<u32>();
const CONTROL_BLOCKS_OFFSET: usize = CONTROL_SL_BITMAP_OFFSET + FL_INDEX_COUNT * sizeof<u32>();

function control_get_fl(ptr: usize): u32 {
  return load<u32>(ptr + CONTROL_FL_BITMAP_OFFSET);
}

function control_set_fl(ptr: usize, value: u32): void {
  store<u32>(ptr + CONTROL_FL_BITMAP_OFFSET, value);
}

function control_get_sl(ptr: usize, flIndex: usize): u32 {
  assert(flIndex < FL_INDEX_COUNT);
  return load<u32>(ptr + flIndex * sizeof<u32>());
}

function control_set_sl(ptr: usize, flIndex: usize, value: u32): void {
  assert(flIndex < FL_INDEX_COUNT);
  store<u32>(ptr + flIndex * sizeof<u32>(), value);
}

function control_get_block(ptr: usize, flIndex: usize, slIndex: usize): usize {
  assert(flIndex < FL_INDEX_COUNT);
  assert(slIndex < SL_INDEX_COUNT);
  return load<usize>(ptr + (flIndex * SL_INDEX_COUNT + slIndex) * sizeof<usize>());
}

function control_set_block(ptr: usize, flIndex: usize, slIndex: usize, value: usize): void {
  assert(flIndex < FL_INDEX_COUNT);
  assert(slIndex < SL_INDEX_COUNT);
  store<usize>(ptr + (flIndex * SL_INDEX_COUNT + slIndex) * sizeof<usize>(), value);
}

/* Clear structure and point all empty lists at the null block. */
export function control_construct(ptr: usize): void {
  block_set_next_free(ptr, ptr);
  block_set_prev_free(ptr, ptr);
  control_set_fl(ptr, 0);
  for (let flIndex: usize = 0; flIndex < FL_INDEX_COUNT; ++flIndex) {
    control_set_sl(ptr, flIndex, 0);
    for (let slIndex: usize = 0; slIndex < SL_INDEX_COUNT; ++slIndex)
      control_set_block(ptr, flIndex, slIndex, ptr);
  }
}

control_construct(load<usize>(8));
