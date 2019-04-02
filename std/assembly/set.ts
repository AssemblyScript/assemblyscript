/// <reference path="./collector/index.d.ts" />

import { HASH } from "./util/hash";
import { __runtime_id } from "./runtime";

// A deterministic hash set based on CloseTable from https://github.com/jorendorff/dht

// @ts-ignore: decorator
@inline
const INITIAL_CAPACITY = 4;

// @ts-ignore: decorator
@inline
const FILL_FACTOR: f64 = 8 / 3;

// @ts-ignore: decorator
@inline
const FREE_FACTOR: f64 = 3 / 4;

/** Structure of a set entry. */
@unmanaged class SetEntry<K> {
  key: K;
  taggedNext: usize; // LSB=1 indicates EMPTY
}

/** Empty bit. */
// @ts-ignore: decorator
@inline
const EMPTY: usize = 1 << 0;

/** Size of a bucket. */
// @ts-ignore: decorator
@inline
const BUCKET_SIZE = sizeof<usize>();

/** Computes the alignment of an entry. */
// @ts-ignore: decorator
@inline
function ENTRY_ALIGN<K>(): usize {
  // can align to 4 instead of 8 if 32-bit and K is <= 32-bits
  const align = (sizeof<K>() > sizeof<usize>() ? sizeof<K>() : sizeof<usize>()) - 1;
  return align;
}

/** Computes the aligned size of an entry. */
// @ts-ignore: decorator
@inline
function ENTRY_SIZE<K>(): usize {
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
    this.entries = new ArrayBuffer(entriesSize);
    this.entriesCapacity = INITIAL_CAPACITY;
    this.entriesOffset = 0;
    this.entriesCount = 0;
  }

  private find(key: K, hashCode: u32): SetEntry<K> | null {
    var entry = load<SetEntry<K>>(
      changetype<usize>(this.buckets) + <usize>(hashCode & this.bucketsMask) * BUCKET_SIZE
    );
    while (entry) {
      if (!(entry.taggedNext & EMPTY) && entry.key == key) return entry;
      entry = changetype<SetEntry<K>>(entry.taggedNext & ~EMPTY);
    }
    return null;
  }

  has(key: K): bool {
    return this.find(key, HASH<K>(key)) !== null;
  }

  add(key: K): void {
    var hashCode = HASH<K>(key);
    var entry = this.find(key, hashCode); // unmanaged!
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
      entry = changetype<SetEntry<K>>(changetype<usize>(entries) + this.entriesOffset++ * ENTRY_SIZE<K>());
      entry.key = key;
      // link with the set
      if (isManaged<K>()) {
        if (isNullable<K>()) {
          if (key !== null) {
            if (isDefined(__ref_link)) __ref_link(changetype<usize>(key), changetype<usize>(this));
            else if (isDefined(__ref_retain)) __ref_retain(changetype<usize>(key));
            else assert(false);
          }
        } else {
          if (isDefined(__ref_link)) __ref_link(changetype<usize>(key), changetype<usize>(this));
          else if (isDefined(__ref_retain)) __ref_retain(changetype<usize>(key));
          else assert(false);
        }
      }
      ++this.entriesCount;
      // link with previous entry in bucket
      let bucketPtrBase = changetype<usize>(this.buckets) + <usize>(hashCode & this.bucketsMask) * BUCKET_SIZE;
      entry.taggedNext = load<usize>(bucketPtrBase);
      store<usize>(bucketPtrBase, changetype<usize>(entry));
    }
  }

  delete(key: K): bool {
    var entry = this.find(key, HASH<K>(key));
    if (!entry) return false;
    if (isManaged<K>()) {
      key = entry.key; // exact, e.g. string
      if (isNullable<K>()) {
        if (key !== null) {
          if (isDefined(__ref_link)) {
            if (isDefined(__ref_unlink)) __ref_unlink(changetype<usize>(key), changetype<usize>(this));
          } else if (isDefined(__ref_retain)) __ref_release(changetype<usize>(key));
          else assert(false);
        }
      } else {
        if (isDefined(__ref_link)) {
          if (isDefined(__ref_unlink)) __ref_unlink(changetype<usize>(key), changetype<usize>(this));
        } else if (isDefined(__ref_retain)) __ref_release(changetype<usize>(key));
        else assert(false);
      }
    }
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
    var newEntries = new ArrayBuffer(newEntriesCapacity * <i32>ENTRY_SIZE<K>());

    // copy old entries to new entries
    var oldPtr = changetype<usize>(this.entries);
    var oldEnd = oldPtr + <usize>this.entriesOffset * ENTRY_SIZE<K>();
    var newPtr = changetype<usize>(newEntries);
    while (oldPtr != oldEnd) {
      let oldEntry = changetype<SetEntry<K>>(oldPtr);
      if (!(oldEntry.taggedNext & EMPTY)) {
        let newEntry = changetype<SetEntry<K>>(newPtr);
        newEntry.key = oldEntry.key;
        let newBucketIndex = HASH<K>(oldEntry.key) & newBucketsMask;
        let newBucketPtrBase = changetype<usize>(newBuckets) + <usize>newBucketIndex * BUCKET_SIZE;
        newEntry.taggedNext = load<usize>(newBucketPtrBase);
        store<usize>(newBucketPtrBase, newPtr);
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

  // GC integration

  @unsafe private __traverse(): void {
    __ref_mark(changetype<usize>(this.buckets));
    var entries = this.entries;
    __ref_mark(changetype<usize>(entries));
    if (isManaged<K>()) {
      let cur = changetype<usize>(entries);
      let end = cur + <usize>this.entriesOffset * ENTRY_SIZE<K>();
      while (cur < end) {
        let entry = changetype<SetEntry<K>>(cur);
        if (!(entry.taggedNext & EMPTY)) {
          let val = changetype<usize>(entry.key);
          if (isNullable<K>()) {
            if (val) {
              __ref_mark(val);
              call_direct(__runtime_id<K>(), val);
            }
          } else {
            __ref_mark(val);
            call_direct(__runtime_id<K>(), val);
          }
        }
        cur += ENTRY_SIZE<K>();
      }
    }
  }
}
