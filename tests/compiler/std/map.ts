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

/** Computes the alignment of an entry. */
@inline function ENTRY_ALIGN<K,V>(): usize {
  // can align to 4 instead of 8 if 32-bit and K/V is <= 32-bits
  const maxkv = sizeof<K>() > sizeof<V>() ? sizeof<K>() : sizeof<V>();
  const align = (maxkv > sizeof<usize>() ? maxkv : sizeof<usize>()) - 1;
  return align;
}

/** Computes the aligned size of an entry. */
@inline function ENTRY_SIZE<K,V>(): usize {
  const align = ENTRY_ALIGN<K,V>();
  const size = (offsetof<MapEntry<K,V>>() + align) & ~align;
  return size;
}

class Map<K,V> {

  // buckets holding references to the respective first entry within
  private buckets: ArrayBuffer; // usize[bucketsMask + 1]
  private bucketsMask: u32;

  // entries in insertion order
  private entries: ArrayBuffer; // MapEntry<K,V>[entriesCapacity]
  private entriesCapacity: i32;
  private entriesOffset: i32;
  private entriesCount: i32;

  get size(): i32 { return this.entriesCount; }

  constructor() { this.clear(); }

  clear(): void {
    const bucketsSize = INITIAL_CAPACITY * <i32>sizeof<usize>();
    this.buckets = new ArrayBuffer(bucketsSize);
    this.bucketsMask = INITIAL_CAPACITY - 1;
    const entriesSize = INITIAL_CAPACITY * <i32>ENTRY_SIZE<K,V>();
    this.entries = new ArrayBuffer(entriesSize, true);
    this.entriesCapacity = INITIAL_CAPACITY;
    this.entriesOffset = 0;
    this.entriesCount = 0;
  }

  private find(key: K, hashCode: u32): MapEntry<K,V> | null {
    var entry = this.buckets.load<MapEntry<K,V>>(hashCode & this.bucketsMask);
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
    } else {
      // check if rehashing is necessary
      let capacity = this.entriesCapacity;
      if (this.entriesOffset == capacity) {
        this.rehash(
          this.entriesCount >= <i32>(capacity * FREE_FACTOR)
            ? (this.bucketsMask << 1) | 1 // grow capacity to next 2^N
            :  this.bucketsMask           // just rehash if 1/4+ entries are empty
        );
        capacity = this.entriesCapacity;
      }
      // append new entry
      let entries = this.entries;
      entry = changetype<MapEntry<K,V>>(
        changetype<usize>(entries) + ArrayBuffer.HEADER_SIZE + this.entriesOffset++ * ENTRY_SIZE<K,V>()
      );
      entry.key = key;
      entry.value = value;
      // link with previous entry in bucket
      let bucketIndex = hashCode & this.bucketsMask;
      entry.taggedNext = this.buckets.load<usize>(bucketIndex);
      this.buckets.store<usize>(bucketIndex, changetype<usize>(entry));
      ++this.entriesCount;
    }
  }

  delete(key: K): bool {
    var entry = this.find(key, hash(key));
    if (!entry) return false;
    entry.taggedNext |= EMPTY;
    --this.entriesCount;
    if (
      this.bucketsMask  > <u32>INITIAL_CAPACITY &&
      this.entriesCount < <i32>(this.entriesOffset * FREE_FACTOR)
    ) this.rehash(this.bucketsMask >> 1);
    return true;
  }

  private rehash(newBucketsMask: i32): void {
    var newBucketsCapacity = newBucketsMask + 1;
    var newBuckets = new ArrayBuffer(newBucketsCapacity * sizeof<usize>());
    var newEntriesCapacity = <i32>(newBucketsCapacity * FILL_FACTOR);
    var newEntries = new ArrayBuffer(newEntriesCapacity * ENTRY_SIZE<K,V>(), true);

    // copy old entries to new entries
    var p = changetype<usize>(this.entries) + ArrayBuffer.HEADER_SIZE;
    var q = changetype<usize>(newEntries) + ArrayBuffer.HEADER_SIZE;
    var k = p + this.entriesOffset * ENTRY_SIZE<K,V>();
    while (p != k) {
      let pEntry = changetype<MapEntry<K,V>>(p);
      let qEntry = changetype<MapEntry<K,V>>(q);
      if (!(pEntry.taggedNext & EMPTY)) {
        qEntry.key = pEntry.key;
        qEntry.value = pEntry.value;
        let bucketIndex = hash(pEntry.key) & newBucketsMask;
        qEntry.taggedNext = newBuckets.load<usize>(bucketIndex);
        newBuckets.store<MapEntry<K,V>>(bucketIndex, qEntry);
        q += ENTRY_SIZE<K,V>();
      }
      p += ENTRY_SIZE<K,V>();
    }

    this.buckets = newBuckets;
    this.bucketsMask = newBucketsMask;
    this.entries = newEntries;
    this.entriesCapacity = newEntriesCapacity;
    this.entriesOffset = this.entriesCount;
  }
}

import "allocator/arena";

function test<K,V>(): void {
  var map = new Map<K,V>();

  // insert new
  for (let k: K = 1; k <= 200; ++k) {
    map.set(k, 100 + <V>k);
    assert(map.has(k));
    assert(!map.has(k + 1));
    assert(map.get(k) == 100 + k);
  }
  assert(map.size == 200);

  // insert duplicate
  for (let k: K = 50; k <= 100; ++k) {
    assert(map.has(k));
    assert(map.get(k) == 100 + <V>k);
    map.set(k, 100 + <V>k);
    assert(map.has(k));
    assert(map.get(k) == 100 + <V>k);
  }
  assert(map.size == 200);

  // delete
  for (let k: K = 1; k <= 100; ++k) {
    assert(map.has(k));
    assert(map.get(k) == 100 + <V>k);
    map.delete(k);
    assert(!map.has(k));
    assert(map.has(k + 1));
  }
  assert(map.size == 100);

  // insert + delete
  for (let k: K = 1; k <= 50; ++k) {
    assert(!map.has(k));
    map.set(k, 100 + <V>k);
    assert(map.has(k));
    map.delete(k);
    assert(!map.has(k));
  }
  assert(map.size == 100);

  // clear
  map.clear();
  assert(map.size == 0);
}

test<i32,i32>();
test<i64,i32>();
test<i64,i64>();
test<i32,i64>();
test<i16,i32>();
test<i16,i64>();
test<i32,i16>();
test<i64,i16>();
