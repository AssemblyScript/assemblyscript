import {
  hash
} from "internal/hash";

// A deterministic hash set based on CloseTable from https://github.com/jorendorff/dht

const INITIAL_CAPACITY = 4;
const FILL_FACTOR: f64 = 8 / 3;
const FREE_FACTOR: f64 = 3 / 4;

/** Structure of a set entry. */
@unmanaged
class SetEntry<K> {
  key: K;
  taggedNext: usize; // LSB=1 indicates EMPTY
}

/** Empty bit. */
const EMPTY: usize = 1 << 0;

/** Size of a bucket. */
const BUCKET_SIZE = sizeof<usize>();

/** Computes the alignment of an entry. */
@inline function ENTRY_ALIGN<K>(): usize {
  // can align to 4 instead of 8 if 32-bit and K is <= 32-bits
  const align = (sizeof<K>() > sizeof<usize>() ? sizeof<K>() : sizeof<usize>()) - 1;
  return align;
}

/** Computes the aligned size of an entry. */
@inline function ENTRY_SIZE<K>(): usize {
  const align = ENTRY_ALIGN<K>();
  const size = (offsetof<SetEntry<K>>() + align) & ~align;
  return size;
}

class Set<K> {

  // buckets holding references to the respective first entry within
  private buckets: ArrayBuffer; // usize[bucketsMask + 1]
  private bucketsMask: u32;

  // entries in insertion order
  private entries: ArrayBuffer; // SetEntry<K>[entriesCapacity]
  private entriesCapacity: i32;
  private entriesOffset: i32;
  private entriesCount: i32;

  get size(): i32 { return this.entriesCount; }

  constructor() { this.clear(); }

  clear(): void {
    const bucketsSize = INITIAL_CAPACITY * <i32>BUCKET_SIZE;
    this.buckets = new ArrayBuffer(bucketsSize);
    this.bucketsMask = INITIAL_CAPACITY - 1;
    const entriesSize = INITIAL_CAPACITY * <i32>ENTRY_SIZE<K>();
    this.entries = new ArrayBuffer(entriesSize, true);
    this.entriesCapacity = INITIAL_CAPACITY;
    this.entriesOffset = 0;
    this.entriesCount = 0;
  }

  private find(key: K, hashCode: u32): SetEntry<K> | null {
    var entry = this.buckets.load<SetEntry<K>>(hashCode & this.bucketsMask);
    var i = 0;
    while (entry) {
      if (!(entry.taggedNext & EMPTY) && entry.key == key) return entry;
      entry = changetype<SetEntry<K>>(entry.taggedNext & ~EMPTY);
    }
    return null;
  }

  has(key: K): bool {
    return this.find(key, hash(key)) !== null;
  }

  add(key: K): void {
    var hashCode = hash(key);
    var entry = this.find(key, hashCode);
    if (!entry) {
      // check if rehashing is necessary
      if (this.entriesOffset == this.entriesCapacity) {
        this.rehash(
          this.entriesCount < <i32>(this.entriesCapacity * FREE_FACTOR)
            ?  this.bucketsMask           // just rehash if 1/4+ entries are empty
            : (this.bucketsMask << 1) | 1 // grow capacity to next 2^N
        );
      }
      // append new entry
      let entries = this.entries;
      entry = changetype<SetEntry<K>>(
        changetype<usize>(entries) + ArrayBuffer.HEADER_SIZE + this.entriesOffset++ * ENTRY_SIZE<K>()
      );
      entry.key = key;
      ++this.entriesCount;
      // link with previous entry in bucket
      let bucketIndex = hashCode & this.bucketsMask;
      entry.taggedNext = this.buckets.load<usize>(bucketIndex);
      this.buckets.store<usize>(bucketIndex, changetype<usize>(entry));
    }
  }

  delete(key: K): bool {
    var entry = this.find(key, hash<K>(key));
    if (!entry) return false;
    entry.taggedNext |= EMPTY;
    --this.entriesCount;
    // check if rehashing is appropriate
    var halfBucketsMask = this.bucketsMask >> 1;
    if (
      halfBucketsMask + 1 >= max<u32>(INITIAL_CAPACITY, this.entriesCount) &&
      this.entriesCount < <i32>(this.entriesCapacity * FREE_FACTOR)
    ) this.rehash(halfBucketsMask);
    return true;
  }

  private rehash(newBucketsMask: u32): void {
    var newBucketsCapacity = <i32>(newBucketsMask + 1);
    var newBuckets = new ArrayBuffer(newBucketsCapacity * <i32>BUCKET_SIZE);
    var newEntriesCapacity = <i32>(newBucketsCapacity * FILL_FACTOR);
    var newEntries = new ArrayBuffer(newEntriesCapacity * <i32>ENTRY_SIZE<K>(), true);

    // copy old entries to new entries
    var oldPtr = changetype<usize>(this.entries) + ArrayBuffer.HEADER_SIZE;
    var oldEnd = oldPtr + <usize>this.entriesOffset * ENTRY_SIZE<K>();
    var newPtr = changetype<usize>(newEntries) + ArrayBuffer.HEADER_SIZE;
    while (oldPtr != oldEnd) {
      let oldEntry = changetype<SetEntry<K>>(oldPtr);
      if (!(oldEntry.taggedNext & EMPTY)) {
        let newEntry = changetype<SetEntry<K>>(newPtr);
        newEntry.key = oldEntry.key;
        let newBucketIndex = hash<K>(oldEntry.key) & newBucketsMask;
        let newBucketPtr = changetype<usize>(newBuckets) + <usize>newBucketIndex * BUCKET_SIZE;
        newEntry.taggedNext = load<usize>(newBucketPtr, ArrayBuffer.HEADER_SIZE);
        store<usize>(newBucketPtr, newPtr, ArrayBuffer.HEADER_SIZE);
        newPtr += ENTRY_SIZE<K>();
      }
      oldPtr += ENTRY_SIZE<K>();
    }

    this.buckets = newBuckets;
    this.bucketsMask = newBucketsMask;
    this.entries = newEntries;
    this.entriesCapacity = newEntriesCapacity;
    this.entriesOffset = this.entriesCount;
  }
}

import "allocator/arena";

function test<K>(): void {
  var set = new Set<K>();

  // insert new
  for (let k: K = 0; k < 100; ++k) {
    assert(!set.has(k));
    set.add(k);
    assert(set.has(k));
  }
  assert(set.size == 100);

  // insert duplicate
  for (let k: K = 50; k < 100; ++k) {
    assert(set.has(k));
    set.add(k);
    assert(set.has(k));
  }
  assert(set.size == 100);

  // delete
  for (let k: K = 0; k < 50; ++k) {
    assert(set.has(k));
    set.delete(k);
    assert(!set.has(k));
  }
  assert(set.size == 50);

  // insert + delete
  for (let k: K = 0; k < 50; ++k) {
    assert(!set.has(k));
    set.add(k);
    assert(set.has(k));
    set.delete(k);
    assert(!set.has(k));
  }
  assert(set.size == 50);

  // clear
  set.clear();
  assert(set.size == 0);
}

test<i8>();
test<u8>();
test<i16>();
test<u16>();
test<i32>();
test<u32>();
test<i64>();
test<u64>();
test<f32>();
test<f64>();
