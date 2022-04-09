/// <reference path="./rt/index.d.ts" />

import { HASH } from "./util/hash";
import { E_KEYNOTFOUND } from "./util/error";

// A deterministic hash map based on CloseTable from https://github.com/jorendorff/dht

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

/** Structure of a map entry. */
@unmanaged class MapEntry<K,V> {
  key: K;
  value: V;
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
function ENTRY_ALIGN<K,V>(): usize {
  // can align to 4 instead of 8 if 32-bit and K/V is <= 32-bits
  const maxkv = sizeof<K>() > sizeof<V>() ? sizeof<K>() : sizeof<V>();
  const align = (maxkv > sizeof<usize>() ? maxkv : sizeof<usize>()) - 1;
  return align;
}

/** Computes the aligned size of an entry. */
// @ts-ignore: decorator
@inline
function ENTRY_SIZE<K,V>(): usize {
  const align = ENTRY_ALIGN<K,V>();
  const size = (offsetof<MapEntry<K,V>>() + align) & ~align;
  return size;
}

export class Map<K,V> {

  // buckets referencing their respective first entry, usize[bucketsMask + 1]
  private buckets: ArrayBuffer = new ArrayBuffer(INITIAL_CAPACITY * <i32>BUCKET_SIZE);
  private bucketsMask: u32 = INITIAL_CAPACITY - 1;

  // entries in insertion order, MapEntry<K,V>[entriesCapacity]
  private entries: ArrayBuffer = new ArrayBuffer(INITIAL_CAPACITY * <i32>ENTRY_SIZE<K,V>());
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
    this.entries = new ArrayBuffer(INITIAL_CAPACITY * <i32>ENTRY_SIZE<K,V>());
    this.entriesCapacity = INITIAL_CAPACITY;
    this.entriesOffset = 0;
    this.entriesCount = 0;
  }

  private find(key: K, hashCode: u32): MapEntry<K,V> | null {
    var entry = load<MapEntry<K,V>>( // unmanaged!
      changetype<usize>(this.buckets) + <usize>(hashCode & this.bucketsMask) * BUCKET_SIZE
    );
    while (entry) {
      let taggedNext = entry.taggedNext;
      if (!(taggedNext & EMPTY) && entry.key == key) return entry;
      entry = changetype<MapEntry<K,V>>(taggedNext & ~EMPTY);
    }
    return null;
  }

  has(key: K): bool {
    return this.find(key, HASH<K>(key)) != null;
  }

  @operator("[]")
  get(key: K): V {
    var entry = this.find(key, HASH<K>(key));
    if (!entry) throw new Error(E_KEYNOTFOUND); // cannot represent `undefined`
    return entry.value;
  }

  @operator("[]=")
  set(key: K, value: V): this {
    var hashCode = HASH<K>(key);
    var entry = this.find(key, hashCode); // unmanaged!
    if (entry) {
      entry.value = value;
      if (isManaged<V>()) {
        __link(changetype<usize>(this), changetype<usize>(value), true);
      }
    } else {
      // check if rehashing is necessary
      if (this.entriesOffset == this.entriesCapacity) {
        this.rehash(
          this.entriesCount < this.entriesCapacity * FREE_FACTOR_N / FREE_FACTOR_D
            ?  this.bucketsMask           // just rehash if 1/4+ entries are empty
            : (this.bucketsMask << 1) | 1 // grow capacity to next 2^N
        );
      }
      // append new entry
      let entries = this.entries;
      entry = changetype<MapEntry<K,V>>(changetype<usize>(entries) + <usize>(this.entriesOffset++) * ENTRY_SIZE<K,V>());
      // link with the map
      entry.key = key;
      if (isManaged<K>()) {
        __link(changetype<usize>(this), changetype<usize>(key), true);
      }
      entry.value = value;
      if (isManaged<V>()) {
        __link(changetype<usize>(this), changetype<usize>(value), true);
      }
      ++this.entriesCount;
      // link with previous entry in bucket
      let bucketPtrBase = changetype<usize>(this.buckets) + <usize>(hashCode & this.bucketsMask) * BUCKET_SIZE;
      entry.taggedNext = load<usize>(bucketPtrBase);
      store<usize>(bucketPtrBase, changetype<usize>(entry));
    }
    return this;
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
      this.entriesCount < this.entriesCapacity * FREE_FACTOR_N / FREE_FACTOR_D
    ) this.rehash(halfBucketsMask);
    return true;
  }

  private rehash(newBucketsMask: u32): void {
    var newBucketsCapacity = <i32>(newBucketsMask + 1);
    var newBuckets = new ArrayBuffer(newBucketsCapacity * <i32>BUCKET_SIZE);
    var newEntriesCapacity = newBucketsCapacity * FILL_FACTOR_N / FILL_FACTOR_D;
    var newEntries = new ArrayBuffer(newEntriesCapacity * <i32>ENTRY_SIZE<K,V>());

    // copy old entries to new entries
    var oldPtr = changetype<usize>(this.entries);
    var oldEnd = oldPtr + <usize>this.entriesOffset * ENTRY_SIZE<K,V>();
    var newPtr = changetype<usize>(newEntries);
    while (oldPtr != oldEnd) {
      let oldEntry = changetype<MapEntry<K,V>>(oldPtr);
      if (!(oldEntry.taggedNext & EMPTY)) {
        let newEntry = changetype<MapEntry<K,V>>(newPtr);
        let oldEntryKey = oldEntry.key;
        newEntry.key = oldEntryKey;
        newEntry.value = oldEntry.value;
        let newBucketIndex = HASH<K>(oldEntryKey) & newBucketsMask;
        let newBucketPtrBase = changetype<usize>(newBuckets) + <usize>newBucketIndex * BUCKET_SIZE;
        newEntry.taggedNext = load<usize>(newBucketPtrBase);
        store<usize>(newBucketPtrBase, newPtr);
        newPtr += ENTRY_SIZE<K,V>();
      }
      oldPtr += ENTRY_SIZE<K,V>();
    }

    this.buckets = newBuckets;
    this.bucketsMask = newBucketsMask;
    this.entries = newEntries;
    this.entriesCapacity = newEntriesCapacity;
    this.entriesOffset = this.entriesCount;
  }

  keys(): K[] {
    // FIXME: this is preliminary, needs iterators/closures
    var start = changetype<usize>(this.entries);
    var size = this.entriesOffset;
    var keys = new Array<K>(size);
    var length = 0;
    for (let i = 0; i < size; ++i) {
      let entry = changetype<MapEntry<K,V>>(start + <usize>i * ENTRY_SIZE<K,V>());
      if (!(entry.taggedNext & EMPTY)) {
        keys[length++] = entry.key;
      }
    }
    keys.length = length;
    return keys;
  }

  values(): V[] {
    // FIXME: this is preliminary, needs iterators/closures
    var start = changetype<usize>(this.entries);
    var size = this.entriesOffset;
    var values = new Array<V>(size);
    var length = 0;
    for (let i = 0; i < size; ++i) {
      let entry = changetype<MapEntry<K,V>>(start + <usize>i * ENTRY_SIZE<K,V>());
      if (!(entry.taggedNext & EMPTY)) {
        values[length++] = entry.value;
      }
    }
    values.length = length;
    return values;
  }

  toString(): string {
    return "[object Map]";
  }

  // RT integration

  @unsafe private __visit(cookie: u32): void {
    __visit(changetype<usize>(this.buckets), cookie);
    var entries = changetype<usize>(this.entries);
    if (isManaged<K>() || isManaged<V>()) {
      let cur = entries;
      let end = cur + <usize>this.entriesOffset * ENTRY_SIZE<K,V>();
      while (cur < end) {
        let entry = changetype<MapEntry<K,V>>(cur);
        if (!(entry.taggedNext & EMPTY)) {
          if (isManaged<K>()) {
            let val = changetype<usize>(entry.key);
            if (isNullable<K>()) {
              if (val) __visit(val, cookie);
            } else __visit(val, cookie);
          }
          if (isManaged<V>()) {
            let val = changetype<usize>(entry.value);
            if (isNullable<V>()) {
              if (val) __visit(val, cookie);
            } else __visit(val, cookie);
          }
        }
        cur += ENTRY_SIZE<K,V>();
      }
    }
    __visit(entries, cookie);
  }
}
