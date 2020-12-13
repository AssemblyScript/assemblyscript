/// <reference path="./rt/index.d.ts" />

import { HASH } from "./util/hash";

// A deterministic hash set based on CloseTable from https://github.com/jorendorff/dht

// @ts-ignore: decorator
@inline const INITIAL_CAPACITY = 4;

// @ts-ignore: decorator
@inline const FILL_FACTOR_N = 8;

// @ts-ignore: decorator
@inline const FILL_FACTOR_D = 3;

// @ts-ignore: decorator
@inline const FREE_FACTOR_N = 3;

// @ts-ignore: decorator
@inline const FREE_FACTOR_D = 4;

/** Structure of a set entry. */
@unmanaged class SetEntry<K> {
  key: K;
  taggedNext: usize; // LSB=1 indicates EMPTY
}

/** Empty bit. */
// @ts-ignore: decorator
@inline const EMPTY: usize = 1 << 0;

/** Size of a bucket. */
// @ts-ignore: decorator
@inline const BUCKET_SIZE = sizeof<usize>();

/** Computes the alignment of an entry. */
// @ts-ignore: decorator
@inline
function ENTRY_ALIGN<T>(): usize {
  // can align to 4 instead of 8 if 32-bit and K is <= 32-bits
  const align = (sizeof<T>() > sizeof<usize>() ? sizeof<T>() : sizeof<usize>()) - 1;
  return align;
}

/** Computes the aligned size of an entry. */
// @ts-ignore: decorator
@inline
function ENTRY_SIZE<T>(): usize {
  const align = ENTRY_ALIGN<T>();
  const size = (offsetof<SetEntry<T>>() + align) & ~align;
  return size;
}

export class Set<T> {

  // buckets referencing their respective first entry, usize[bucketsMask + 1]
  private buckets: ArrayBuffer = new ArrayBuffer(INITIAL_CAPACITY * <i32>BUCKET_SIZE);
  private bucketsMask: u32 = INITIAL_CAPACITY - 1;

  // entries in insertion order, SetEntry<K>[entriesCapacity]
  private entries: ArrayBuffer = new ArrayBuffer(INITIAL_CAPACITY * <i32>ENTRY_SIZE<T>());
  private entriesCapacity: i32 = INITIAL_CAPACITY;
  private entriesOffset: i32 = 0;
  private entriesCount: i32 = 0;

  constructor() {
    /* nop */
  }

  get size(): i32 {
    return this.entriesCount;
  }

  clear(): void {
    this.buckets = new ArrayBuffer(INITIAL_CAPACITY * <i32>BUCKET_SIZE);
    this.bucketsMask = INITIAL_CAPACITY - 1;
    this.entries = new ArrayBuffer(INITIAL_CAPACITY * <i32>ENTRY_SIZE<T>());
    this.entriesCapacity = INITIAL_CAPACITY;
    this.entriesOffset = 0;
    this.entriesCount = 0;
  }

  private find(key: T, hashCode: u32): SetEntry<T> | null {
    var entry = load<SetEntry<T>>( // unmanaged!
      changetype<usize>(this.buckets) + <usize>(hashCode & this.bucketsMask) * BUCKET_SIZE
    );
    while (entry) {
      let taggedNext = entry.taggedNext;
      if (!(taggedNext & EMPTY) && entry.key == key) return entry;
      entry = changetype<SetEntry<T>>(taggedNext & ~EMPTY);
    }
    return null;
  }

  @operator("[]")
  has(key: T): bool {
    return this.find(key, HASH<T>(key)) !== null;
  }

  add(key: T): this {
    var hashCode = HASH<T>(key);
    var entry = this.find(key, hashCode); // unmanaged!
    if (!entry) {
      // check if rehashing is necessary
      if (this.entriesOffset == this.entriesCapacity) {
        this.rehash(
          this.entriesCount < this.entriesCapacity * FREE_FACTOR_N / FREE_FACTOR_D
            ?  this.bucketsMask           // just rehash if 1/4+ entries are empty
            : (this.bucketsMask << 1) | 1 // grow capacity to next 2^N
        );
      }
      // append new entry
      entry = changetype<SetEntry<T>>(changetype<usize>(this.entries) + <usize>(this.entriesOffset++) * ENTRY_SIZE<T>());
      entry.key = isManaged<T>()
        ? changetype<T>(__retain(changetype<usize>(key)))
        : key;
      ++this.entriesCount;
      // link with previous entry in bucket
      let bucketPtrBase = changetype<usize>(this.buckets) + <usize>(hashCode & this.bucketsMask) * BUCKET_SIZE;
      entry.taggedNext = load<usize>(bucketPtrBase);
      store<usize>(bucketPtrBase, changetype<usize>(entry));
    }
    return this;
  }

  @operator("[]=")
  private __set(key: T, value: bool): void {
    if (value) this.add(key);
    else this.delete(key);
  }

  delete(key: T): bool {
    var entry = this.find(key, HASH<T>(key)); // unmanaged!
    if (!entry) return false;
    if (isManaged<T>()) __release(changetype<usize>(entry.key)); // exact 'key'
    entry.taggedNext |= EMPTY;
    --this.entriesCount;
    // check if rehashing is appropriate
    var halfBucketsMask = this.bucketsMask >> 1;
    if (
      halfBucketsMask + 1 >= max<u32>(INITIAL_CAPACITY, this.entriesCount) &&
      this.entriesCount < this.entriesCapacity * FREE_FACTOR_N / FREE_FACTOR_D
    ) this.rehash(halfBucketsMask);
    return true;
  }

  private rehash(newBucketsMask: u32): void {
    var newBucketsCapacity = <i32>(newBucketsMask + 1);
    var newBuckets = new ArrayBuffer(newBucketsCapacity * <i32>BUCKET_SIZE);
    var newEntriesCapacity = newBucketsCapacity * FILL_FACTOR_N / FILL_FACTOR_D;
    var newEntries = new ArrayBuffer(newEntriesCapacity * <i32>ENTRY_SIZE<T>());

    // copy old entries to new entries
    var oldPtr = changetype<usize>(this.entries);
    var oldEnd = oldPtr + <usize>this.entriesOffset * ENTRY_SIZE<T>();
    var newPtr = changetype<usize>(newEntries);
    while (oldPtr != oldEnd) {
      let oldEntry = changetype<SetEntry<T>>(oldPtr); // unmanaged!
      if (!(oldEntry.taggedNext & EMPTY)) {
        let newEntry = changetype<SetEntry<T>>(newPtr); // unmanaged!
        let oldEntryKey = oldEntry.key;
        newEntry.key = oldEntryKey;
        let newBucketIndex = HASH<T>(oldEntryKey) & newBucketsMask;
        let newBucketPtrBase = changetype<usize>(newBuckets) + <usize>newBucketIndex * BUCKET_SIZE;
        newEntry.taggedNext = load<usize>(newBucketPtrBase);
        store<usize>(newBucketPtrBase, newPtr);
        newPtr += ENTRY_SIZE<T>();
      }
      oldPtr += ENTRY_SIZE<T>();
    }

    this.buckets = newBuckets;
    this.bucketsMask = newBucketsMask;
    this.entries = newEntries;
    this.entriesCapacity = newEntriesCapacity;
    this.entriesOffset = this.entriesCount;
  }

  values(): T[] {
    // FIXME: this is preliminary, needs iterators/closures
    var start = changetype<usize>(this.entries);
    var size = this.entriesOffset;
    var values = new Array<T>(size);
    var length = 0;
    for (let i = 0; i < size; ++i) {
      let entry = changetype<SetEntry<T>>(start + <usize>i * ENTRY_SIZE<T>());
      if (!(entry.taggedNext & EMPTY)) {
        values[length++] = entry.key;
      }
    }
    values.length = length;
    return values;
  }

  toString(): string {
    return "[object Set]";
  }

  // RT integration

  @unsafe private __visit(cookie: u32): void {
    __visit(changetype<usize>(this.buckets), cookie);
    var entries = changetype<usize>(this.entries);
    if (isManaged<T>()) {
      let cur = entries;
      let end = cur + <usize>this.entriesOffset * ENTRY_SIZE<T>();
      while (cur < end) {
        let entry = changetype<SetEntry<T>>(cur);
        if (!(entry.taggedNext & EMPTY)) {
          let val = changetype<usize>(entry.key);
          if (isNullable<T>()) {
            if (val) __visit(val, cookie);
          } else __visit(val, cookie);
        }
        cur += ENTRY_SIZE<T>();
      }
    }
    __visit(entries, cookie);
  }
}
