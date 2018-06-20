import {
  allocUnsafe,
  HEADER_SIZE,
  MAX_BLENGTH
} from "internal/arraybuffer";

import {
  hash
} from "internal/hash";

// A deterministic hash table based on CloseTable from https://github.com/jorendorff/dht

const INITIAL_CAPACITY = 4;
const FILL_FACTOR: f64 = 8 / 3;
const FREE_FACTOR: f64 = 3 / 4;

/** Structure of a map entry. */
@unmanaged
class MapEntry<K,V> {
  key: K;
  value: V;
  taggedNext: usize; // LSB=1 indicates EMPTY
}

/** Empty bit. */
const EMPTY: usize = 1 << 0;

class Map<K,V> {

  /** A buffer storing `indexMask + 1` indices followed by `capacity` entries. */
  private buffer: ArrayBuffer;
  /** The current index mask for distributing hash codes among indixes. */
  private indexMask: u32;
  /** Maximum number of entries this map can hold before rehashing. */
  private capacity: i32;
  /** Entry insertion offset. */
  private offset: i32;
  /** Number of entries excl. explicitly marked empty ones. */
  private count: i32;

  /** Size of a single index. */
  private static readonly INDEX_SIZE: usize = sizeof<usize>();
  /** Size of a single entry. */
  private static readonly ENTRY_SIZE: usize = (offsetof<MapEntry<K,V>>() + 7) & ~7;
  /** Initial size of empty map. */
  private static readonly INITIAL_SIZE: i32 = INITIAL_CAPACITY * <i32>(Map.INDEX_SIZE + Map.ENTRY_SIZE);

  get size(): i32 { return this.count; }

  constructor() { this.clear(); }

  clear(): void {
    var buffer = allocUnsafe(Map.INITIAL_SIZE);
    set_memory(changetype<usize>(buffer) + HEADER_SIZE, 0, INITIAL_CAPACITY * Map.INDEX_SIZE);
    this.buffer = buffer;
    this.indexMask = INITIAL_CAPACITY - 1;
    this.capacity = INITIAL_CAPACITY;
    this.offset = 0;
    this.count = 0;
  }

  private find(key: K, hashCode: u32): MapEntry<K,V> | null {
    var entry = load<MapEntry<K,V>>(
      changetype<usize>(this.buffer) + (hashCode & this.indexMask) * Map.INDEX_SIZE,
      HEADER_SIZE
    );
    while (entry) {
      if (!(entry.taggedNext & EMPTY) && entry.key == key) return entry;
      entry = changetype<MapEntry<K,V>>(entry.taggedNext & ~EMPTY);
    }
    return null;
  }

  has(key: K): bool {
    return this.find(key, hash(key)) !== null;
  }

  get(key: K): V {
    var entry = this.find(key, hash(key));
    return entry ? entry.value : <V>unreachable();
  }

  set(key: K, value: V): void {
    var hashCode = hash(key);
    var entry = this.find(key, hashCode);
    if (entry) {
      entry.value = value;
    } else { // check if rehashing is necessary
      let capacity = this.capacity;
      if (this.offset == capacity) {
        this.rehash(
          this.count >= <i32>(capacity * FREE_FACTOR)
            ? (this.indexMask << 1) | 1 // grow to next power of two
            : this.indexMask            // just rehash if 1/4+ entries are empty
        );
        capacity = this.capacity;
      }

      // append new entry
      let buffer = this.buffer;
      entry = changetype<MapEntry<K,V>>(
        changetype<usize>(buffer) + HEADER_SIZE
        + (this.indexMask + 1) * Map.INDEX_SIZE
        + this.offset++ * Map.ENTRY_SIZE
      );
      entry.key = key;
      entry.value = value;

      // link with previous colliding entry, if any
      let tableIndex = hashCode & this.indexMask;
      let entryOffset = changetype<usize>(buffer) + HEADER_SIZE + (hashCode & this.indexMask) * Map.INDEX_SIZE;
      entry.taggedNext = load<usize>(entryOffset);
      store<usize>(entryOffset, changetype<usize>(entry));
      ++this.count;
    }
  }

  delete(key: K): bool {
    var entry = this.find(key, hash(key));
    if (!entry) return false;
    --this.count;
    entry.taggedNext |= EMPTY;
    if (this.indexMask > <u32>INITIAL_CAPACITY && this.count < <i32>(this.offset * FREE_FACTOR)) {
      this.rehash(this.indexMask >> 1);
    }
    return true;
  }

  private rehash(newMask: i32): void {
    // TODO: check capacity
    var newIndices = newMask + 1;
    var newCapacity = <i32>(newIndices * FILL_FACTOR);
    var newBufferSize = newIndices * Map.INDEX_SIZE + newCapacity * Map.ENTRY_SIZE;
    var newBuffer = allocUnsafe(newBufferSize);
    set_memory(changetype<usize>(newBuffer) + HEADER_SIZE, 0, newIndices * Map.INDEX_SIZE);
    var src = changetype<MapEntry<K,V>>(
      changetype<usize>(this.buffer) + HEADER_SIZE + (this.indexMask + 1) * Map.INDEX_SIZE
    );
    var dst = changetype<MapEntry<K,V>>(
      changetype<usize>(newBuffer) + HEADER_SIZE + newIndices * Map.INDEX_SIZE
    );
    var end = changetype<usize>(src) + this.offset * Map.ENTRY_SIZE;
    while (changetype<usize>(src) != end) {
      if (!(src.taggedNext & EMPTY)) {
        dst.key = src.key;
        dst.value = src.value;
        let oldOffset = (
          changetype<usize>(newBuffer) /* + HEADER_SIZE -> constantOffset */
          + (hash(src.key) & newMask) * Map.INDEX_SIZE
        );
        dst.taggedNext = load<usize>(
          oldOffset,
          HEADER_SIZE
        );
        store<MapEntry<K,V>>(
          oldOffset,
          dst,
          HEADER_SIZE
        );
        dst = changetype<MapEntry<K,V>>(changetype<usize>(dst) + Map.ENTRY_SIZE);
      }
      src = changetype<MapEntry<K,V>>(changetype<usize>(src) + Map.ENTRY_SIZE);
    }
    this.buffer = newBuffer;
    this.indexMask = newMask;
    this.capacity = <i32>newCapacity;
    this.offset = this.count;
  }
}

import "allocator/arena";

var map = new Map<i32,i32>();

// insert new
for (let i = 1; i <= 200; ++i) {
  map.set(i, 100 + i);
  assert(map.has(i));
  assert(!map.has(i + 1));
  assert(map.get(i) == 100 + i);
}
assert(map.size == 200);

// insert duplicate
for (let i = 50; i <= 100; ++i) {
  assert(map.has(i));
  assert(map.get(i) == 100 + i);
  map.set(i, 100 + i);
  assert(map.has(i));
  assert(map.get(i) == 100 + i);
}
assert(map.size == 200);

// delete
for (let i = 1; i <= 100; ++i) {
  assert(map.has(i));
  assert(map.get(i) == 100 + i);
  map.delete(i);
  assert(!map.has(i));
  assert(map.has(i + 1));
}
assert(map.size == 100);

// clear
map.clear();
assert(map.size == 0);
