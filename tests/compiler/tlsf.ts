// An unfinished implementation of tlsf in low-level AssemblyScript.
// Useful as a compiler test in this state, but nothing more.
// based upon: https://github.com/mattconte/tlsf/blob/master/tlsf.c (BSD)

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
//   size_t tagged_size;
//   struct block_header_t* next_free;
//   struct block_header_t* prev_free;
// }

const BLOCK$PREV_PHYS_BLOCK_OFFSET: usize = 0;
const BLOCK$TAGGED_SIZE_OFFSET: usize = BLOCK$PREV_PHYS_BLOCK_OFFSET + sizeof<usize>();
const BLOCK$NEXT_FREE_OFFSET: usize = BLOCK$TAGGED_SIZE_OFFSET + sizeof<usize>();
const BLOCK$PREV_FREE_OFFSET: usize = BLOCK$NEXT_FREE_OFFSET + sizeof<usize>();
const BLOCK$SIZE: usize = BLOCK$PREV_FREE_OFFSET + sizeof<usize>();

const BLOCK_HEADER_FREE_BIT: u32 = 1 << 0;
const BLOCK_HEADER_PREV_FREE_BIT: u32 = 1 << 1;
const BLOCK_OVERHEAD: usize = sizeof<usize>();
const BLOCK_START_OFFSET: usize = BLOCK$TAGGED_SIZE_OFFSET + sizeof<usize>();
const BLOCK_SIZE_MIN: usize = BLOCK$SIZE - BLOCK_OVERHEAD;
const BLOCK_SIZE_MAX: usize = 1 << (<usize>FL_INDEX_MAX);

function block$get_prev_phys_block(block: usize): usize {
  return load<usize>(block + BLOCK$PREV_PHYS_BLOCK_OFFSET);
}

function block$set_prev_phys_block(block: usize, value: usize): void {
  store<usize>(block + BLOCK$PREV_PHYS_BLOCK_OFFSET, value);
}

function block$get_tagged_size(block: usize): usize {
  return load<usize>(block + BLOCK$TAGGED_SIZE_OFFSET);
}

function block$set_tagged_size(block: usize, value: usize): void {
  store<usize>(block + BLOCK$TAGGED_SIZE_OFFSET, value);
}

function block_size(block: usize): usize {
  return block$get_tagged_size(block) & ~(BLOCK_HEADER_FREE_BIT | BLOCK_HEADER_PREV_FREE_BIT);
}

function block_set_size(block: usize, value: usize): void {
  store<usize>(block + BLOCK$TAGGED_SIZE_OFFSET, value | (block$get_tagged_size(block) & (BLOCK_HEADER_FREE_BIT | BLOCK_HEADER_PREV_FREE_BIT)));
}

function block$get_next_free(block: usize): usize {
  return load<usize>(block + BLOCK$NEXT_FREE_OFFSET);
}

function block$set_next_free(block: usize, value: usize): void {
  store<usize>(block + BLOCK$NEXT_FREE_OFFSET, value);
}

function block$get_prev_free(block: usize): usize {
  return load<usize>(block + BLOCK$PREV_FREE_OFFSET);
}

function block$set_prev_free(block: usize, value: usize): void {
  store<usize>(block + BLOCK$PREV_FREE_OFFSET, value);
}

function block_is_last(block: usize): bool {
  return block_size(block) == 0;
}

function block_is_free(block: usize): bool {
  return (block$get_tagged_size(block) & BLOCK_HEADER_FREE_BIT) != 0;
}

function block_set_free(block: usize): void {
  store<usize>(block + BLOCK$TAGGED_SIZE_OFFSET, block$get_tagged_size(block) | BLOCK_HEADER_FREE_BIT);
}

function block_set_used(block: usize): void {
  store<usize>(block + BLOCK$TAGGED_SIZE_OFFSET, block$get_tagged_size(block) & ~BLOCK_HEADER_FREE_BIT);
}

function block_is_prev_free(block: usize): bool {
  return (block$get_tagged_size(block) & BLOCK_HEADER_PREV_FREE_BIT) != 0;
}

function block_set_prev_free(block: usize): void {
  store<usize>(block + BLOCK$TAGGED_SIZE_OFFSET, block$get_tagged_size(block) | BLOCK_HEADER_PREV_FREE_BIT);
}

function block_set_prev_used(block: usize): void {
  store<usize>(block + BLOCK$TAGGED_SIZE_OFFSET, block$get_tagged_size(block) & ~BLOCK_HEADER_PREV_FREE_BIT);
}

function block_from_ptr(ptr: usize): usize {
  return ptr - BLOCK_START_OFFSET;
}

function block_to_ptr(block: usize): usize {
  return block + BLOCK_START_OFFSET;
}

// struct control_t {
//   block_header_t block_null;
//   unsigned int fl_bitmap;
//   unsigned int sl_bitmap[FL_INDEX_COUNT];
//   block_header_t* blocks[FL_INDEX_COUNT][SL_INDEX_COUNT];
// }

const CONTROL$FL_BITMAP_OFFSET: usize = BLOCK$SIZE;
const CONTROL$SL_BITMAP_OFFSET: usize = CONTROL$FL_BITMAP_OFFSET + sizeof<u32>();
const CONTROL$BLOCKS_OFFSET: usize = CONTROL$SL_BITMAP_OFFSET + FL_INDEX_COUNT * sizeof<u32>();
const CONTROL$SIZE: usize = CONTROL$BLOCKS_OFFSET + FL_INDEX_COUNT * SL_INDEX_COUNT * sizeof<u32>();

function control$get_fl_bitmap(ptr: usize): u32 {
  return load<u32>(ptr + CONTROL$FL_BITMAP_OFFSET);
}

function control$set_fl_bitmap(ptr: usize, value: u32): void {
  store<u32>(ptr + CONTROL$FL_BITMAP_OFFSET, value);
}

function control$get_sl_bitmap(ptr: usize, flIndex: usize): u32 {
  assert(flIndex < FL_INDEX_COUNT);
  return load<u32>(ptr + CONTROL$SL_BITMAP_OFFSET + flIndex * sizeof<u32>());
}

function control$set_sl_bitmap(ptr: usize, flIndex: usize, value: u32): void {
  assert(flIndex < FL_INDEX_COUNT);
  store<u32>(ptr + CONTROL$SL_BITMAP_OFFSET + flIndex * sizeof<u32>(), value);
}

function control$get_block(ptr: usize, flIndex: usize, slIndex: usize): usize {
  assert(flIndex < FL_INDEX_COUNT);
  assert(slIndex < SL_INDEX_COUNT);
  return load<usize>(ptr + CONTROL$BLOCKS_OFFSET + (flIndex * SL_INDEX_COUNT + slIndex) * sizeof<usize>());
}

function control$set_block(ptr: usize, flIndex: usize, slIndex: usize, value: usize): void {
  assert(flIndex < FL_INDEX_COUNT);
  assert(slIndex < SL_INDEX_COUNT);
  store<usize>(ptr + CONTROL$BLOCKS_OFFSET + (flIndex * SL_INDEX_COUNT + slIndex) * sizeof<usize>(), value);
}

/* Clear structure and point all empty lists at the null block. */
export function control$construct(ptr: usize): void {
  block$set_next_free(ptr, ptr);
  block$set_prev_free(ptr, ptr);
  control$set_fl_bitmap(ptr, 0);
  for (let flIndex: usize = 0; flIndex < FL_INDEX_COUNT; ++flIndex) {
    control$set_sl_bitmap(ptr, flIndex, 0);
    for (let slIndex: usize = 0; slIndex < SL_INDEX_COUNT; ++slIndex)
      control$set_block(ptr, flIndex, slIndex, ptr);
  }
}

control$construct(load<usize>(sizeof<usize>())); // get HEAP_OFFSET and initialize there
