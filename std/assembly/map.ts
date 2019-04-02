/// <reference path="./collector/index.d.ts" />

import { HASH } from "./util/hash";
import { __runtime_id } from "./runtime";

// A deterministic hash map based on CloseTable from https://github.com/jorendorff/dht

// @ts-ignore: decorator
@inline
const INITIAL_CAPACITY = 4;

// @ts-ignore: decorator
@inline
const FILL_FACTOR: f64 = 8 / 3;

// @ts-ignore: decorator
@inline
const FREE_FACTOR: f64 = 3 / 4;

/** Structure of a map entry. */
@unmanaged class MapEntry<K,V> {
  key: K;
  value: V;
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

  // buckets holding references to the respective first entry within
  private buckets: ArrayBuffer; // usize[bucketsMask + 1]
  private bucketsMask: u32;

  // entries in insertion order
  private entries: ArrayBuffer; // MapEntry<K,V>[entriesCapacity]
  private entriesCapacity: i32;
  private entriesOffset: i32;
  private entriesCount: i32;

  get size(): i32 { return this.entriesCount; }

  constructor() {
    this.clear();
  }

  clear(): void {
    const bucketsSize = INITIAL_CAPACITY * <i32>BUCKET_SIZE;
    this.buckets = new ArrayBuffer(bucketsSize);
    this.bucketsMask = INITIAL_CAPACITY - 1;
    const entriesSize = INITIAL_CAPACITY * <i32>ENTRY_SIZE<K,V>();
    this.entries = new ArrayBuffer(entriesSize);
    this.entriesCapacity = INITIAL_CAPACITY;
    this.entriesOffset = 0;
    this.entriesCount = 0;
  }

  private find(key: K, hashCode: u32): MapEntry<K,V> | null {
    var entry = load<MapEntry<K,V>>(
      changetype<usize>(this.buckets) + <usize>(hashCode & this.bucketsMask) * BUCKET_SIZE
    );
    while (entry) {
      if (!(entry.taggedNext & EMPTY) && entry.key == key) return entry;
      entry = changetype<MapEntry<K,V>>(entry.taggedNext & ~EMPTY);
    }
    return null;
  }

  has(key: K): bool {
    return this.find(key, HASH<K>(key)) !== null;
  }

  get(key: K): V {
    var entry = this.find(key, HASH<K>(key));
    return entry ? entry.value : <V>unreachable();
  }

  set(key: K, value: V): void {
    var hashCode = HASH<K>(key);
    var entry = this.find(key, hashCode); // unmanaged!
    if (entry) {
      if (isManaged<V>()) {
        let oldValue = entry.value;
        if (value !== oldValue) {
          entry.value = value;
          if (isNullable<V>()) {
            if (oldValue !== null) {
              if (isDefined(__ref_link)) {
                if (isDefined(__ref_unlink)) __ref_unlink(changetype<usize>(oldValue), changetype<usize>(this));
              } else if (isDefined(__ref_retain)) __ref_release(changetype<usize>(oldValue));
              else assert(false);
            }
            if (value !== null) {
              if (isDefined(__ref_link)) __ref_link(changetype<usize>(value), changetype<usize>(this));
              else if (isDefined(__ref_retain)) __ref_retain(changetype<usize>(value));
              else assert(false);
            }
          } else {
            if (isDefined(__ref_link)) {
              if (isDefined(__ref_unlink)) __ref_unlink(changetype<usize>(oldValue), changetype<usize>(this));
              __ref_link(changetype<usize>(value), changetype<usize>(this));
            } else if (isDefined(__ref_retain)) {
              __ref_release(changetype<usize>(oldValue));
              __ref_retain(changetype<usize>(value));
            } else assert(false);
          }
        }
      } else {
        entry.value = value;
      }
    } else {
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
      entry = changetype<MapEntry<K,V>>(changetype<usize>(entries) + this.entriesOffset++ * ENTRY_SIZE<K,V>());
      entry.key = key;
      entry.value = value;
      // link with the map
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
      if (isManaged<V>()) {
        if (isNullable<V>()) {
          if (value !== null) {
            if (isDefined(__ref_link)) __ref_link(changetype<usize>(value), changetype<usize>(this));
            else if (isDefined(__ref_retain)) __ref_retain(changetype<usize>(value));
            else assert(false);
          }
        } else {
          if (isDefined(__ref_link)) __ref_link(changetype<usize>(value), changetype<usize>(this));
          else if (isDefined(__ref_retain)) __ref_retain(changetype<usize>(value));
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
      let oldKey = entry.key;
      if (isNullable<K>()) {
        if (oldKey !== null) {
          if (isDefined(__ref_link)) {
            if (isDefined(__ref_unlink)) __ref_unlink(changetype<usize>(oldKey), changetype<usize>(this));
          } else if (isDefined(__ref_retain)) __ref_release(changetype<usize>(oldKey));
          else assert(false);
        }
      } else {
        if (isDefined(__ref_link)) {
          if (isDefined(__ref_unlink)) __ref_unlink(changetype<usize>(oldKey), changetype<usize>(this));
        } else if (isDefined(__ref_retain)) __ref_release(changetype<usize>(oldKey));
        else assert(false);
      }
    }
    if (isManaged<V>()) {
      let oldValue = entry.key;
      if (isNullable<V>()) {
        if (oldValue !== null) {
          if (isDefined(__ref_link)) {
            if (isDefined(__ref_unlink)) __ref_unlink(changetype<usize>(oldValue), changetype<usize>(this));
          } else if (isDefined(__ref_retain)) __ref_release(changetype<usize>(oldValue));
          else assert(false);
        }
      } else {
        if (isDefined(__ref_link)) {
          if (isDefined(__ref_unlink)) __ref_unlink(changetype<usize>(oldValue), changetype<usize>(this));
        } else if (isDefined(__ref_retain)) __ref_release(changetype<usize>(oldValue));
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
    var newEntries = new ArrayBuffer(newEntriesCapacity * <i32>ENTRY_SIZE<K,V>());

    // copy old entries to new entries
    var oldPtr = changetype<usize>(this.entries);
    var oldEnd = oldPtr + <usize>this.entriesOffset * ENTRY_SIZE<K,V>();
    var newPtr = changetype<usize>(newEntries);
    while (oldPtr != oldEnd) {
      let oldEntry = changetype<MapEntry<K,V>>(oldPtr);
      if (!(oldEntry.taggedNext & EMPTY)) {
        let newEntry = changetype<MapEntry<K,V>>(newPtr);
        newEntry.key = oldEntry.key;
        newEntry.value = oldEntry.value;
        let newBucketIndex = HASH<K>(oldEntry.key) & newBucketsMask;
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

  toString(): string {
    return "[object Map]";
  }

  // GC integration

  @unsafe private __traverse(): void {
    __ref_mark(changetype<usize>(this.buckets));
    var entries = this.entries;
    __ref_mark(changetype<usize>(entries));
    if (isManaged<K>() || isManaged<V>()) {
      let cur = changetype<usize>(entries);
      let end = cur + <usize>this.entriesOffset * ENTRY_SIZE<K,V>();
      while (cur < end) {
        let entry = changetype<MapEntry<K,V>>(cur);
        if (!(entry.taggedNext & EMPTY)) {
          if (isManaged<K>()) {
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
          if (isManaged<V>()) {
            let val = changetype<usize>(entry.value);
            if (isNullable<V>()) {
              if (val) {
                __ref_mark(val);
                call_direct(__runtime_id<V>(), val); 
              }
            } else {
              __ref_mark(val);
              call_direct(__runtime_id<V>(), val);
            }
          }
        }
        cur += ENTRY_SIZE<K,V>();
      }
    }
  }
}
