import {
  HEADER_SIZE as HEADER_SIZE_AB
} from "./internal/arraybuffer";

import {
  HASH
} from "./internal/hash";

// A deterministic hash set based on CloseTable from https://github.com/jorendorff/dht

@inline const INITIAL_CAPACITY = 4;
@inline const FILL_FACTOR: f64 = 8 / 3;
@inline const FREE_FACTOR: f64 = 3 / 4;

/** Structure of a set entry. */
@unmanaged class SetEntry<K> {
  key: K;
  taggedNext: usize; // LSB=1 indicates EMPTY
}

/** Empty bit. */
@inline const EMPTY: usize = 1 << 0;

/** Size of a bucket. */
@inline const BUCKET_SIZE = sizeof<usize>();

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

export class Set<K> {

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
    var entry = load<SetEntry<K>>(
      changetype<usize>(this.buckets) + <usize>(hashCode & this.bucketsMask) * BUCKET_SIZE,
      HEADER_SIZE_AB
    );
    while (entry) {
      if (!(entry.taggedNext & EMPTY) && entry.key == key) return entry;
      entry = changetype<SetEntry<K>>(entry.taggedNext & ~EMPTY);
    }
    return null;
  }

  has(key: K): bool {
    return this.find(key, HASH(key)) !== null;
  }

  add(key: K): void {
    var hashCode = HASH(key);
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
        changetype<usize>(entries) + HEADER_SIZE_AB + this.entriesOffset++ * ENTRY_SIZE<K>()
      );
      entry.key = key;
      ++this.entriesCount;
      // link with previous entry in bucket
      let bucketPtrBase = changetype<usize>(this.buckets) + <usize>(hashCode & this.bucketsMask) * BUCKET_SIZE;
      entry.taggedNext = load<usize>(bucketPtrBase, HEADER_SIZE_AB);
      store<usize>(bucketPtrBase, changetype<usize>(entry), HEADER_SIZE_AB);
      if (isManaged<K>()) __gc_link(changetype<usize>(this), changetype<usize>(key)); // tslint:disable-line
    }
  }

  delete(key: K): bool {
    var entry = this.find(key, HASH<K>(key));
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
    var oldPtr = changetype<usize>(this.entries) + HEADER_SIZE_AB;
    var oldEnd = oldPtr + <usize>this.entriesOffset * ENTRY_SIZE<K>();
    var newPtr = changetype<usize>(newEntries) + HEADER_SIZE_AB;
    while (oldPtr != oldEnd) {
      let oldEntry = changetype<SetEntry<K>>(oldPtr);
      if (!(oldEntry.taggedNext & EMPTY)) {
        let newEntry = changetype<SetEntry<K>>(newPtr);
        newEntry.key = oldEntry.key;
        let newBucketIndex = HASH<K>(oldEntry.key) & newBucketsMask;
        let newBucketPtrBase = changetype<usize>(newBuckets) + <usize>newBucketIndex * BUCKET_SIZE;
        newEntry.taggedNext = load<usize>(newBucketPtrBase, HEADER_SIZE_AB);
        store<usize>(newBucketPtrBase, newPtr, HEADER_SIZE_AB);
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

  toString(): string {
    return "[object Set]";
  }

  private __gc(): void {
    __gc_mark(changetype<usize>(this.buckets)); // tslint:disable-line
    var entries = this.entries;
    __gc_mark(changetype<usize>(entries)); // tslint:disable-line
    if (isManaged<K>()) {
      let offset: usize = 0;
      let end: usize = this.entriesOffset * ENTRY_SIZE<K>();
      while (offset < end) {
        let entry = changetype<SetEntry<K>>(
          changetype<usize>(entries) + HEADER_SIZE_AB + offset * ENTRY_SIZE<K>()
        );
        if (!(entry.taggedNext & EMPTY)) __gc_mark(changetype<usize>(entry.key)); // tslint:disable-line
        offset += ENTRY_SIZE<K>();
      }
    }
  }
}
