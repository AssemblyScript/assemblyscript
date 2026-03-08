/// <reference path="./rt/index.d.ts" />

import { HASH } from "./util/hash";
import { Runtime } from "shared/runtime";
import { E_KEYNOTFOUND } from "./util/error";

// Open-addressing hash map with linear probing.
// Single contiguous buffer, cache-friendly, zero GC overhead under runtime=memory.

// @ts-ignore: decorator
@inline const SLOT_EMPTY: u8 = 0;
// @ts-ignore: decorator
@inline const SLOT_OCCUPIED: u8 = 1;
// @ts-ignore: decorator
@inline const SLOT_DELETED: u8 = 2;

// @ts-ignore: decorator
@inline const FM_INITIAL_CAPACITY: i32 = 16;

// Max load factor 75% = 3/4
// @ts-ignore: decorator
@inline const FM_LOAD_N: i32 = 3;
// @ts-ignore: decorator
@inline const FM_LOAD_D: i32 = 4;

/** Structure of a FixedMap slot. */
@unmanaged class FixedMapSlot<K,V> {
  hash: u32;
  state: u8;
  key: K;
  value: V;
}

/** Computes the alignment of a slot. */
// @ts-ignore: decorator
@inline
function FM_SLOT_ALIGN<K,V>(): usize {
  const maxkv = sizeof<K>() > sizeof<V>() ? sizeof<K>() : sizeof<V>();
  const maxAll = maxkv > sizeof<u32>() ? maxkv : sizeof<u32>();
  return maxAll - 1;
}

/** Computes the aligned size of a slot. */
// @ts-ignore: decorator
@inline
function FM_SLOT_SIZE<K,V>(): usize {
  const align = FM_SLOT_ALIGN<K,V>();
  return (offsetof<FixedMapSlot<K,V>>() + align) & ~align;
}

@final
export class FixedMap<K,V> {

  private dataPtr: usize = 0;
  private _capacity: i32 = 0;
  private capacityMask: u32 = 0;
  private _count: i32 = 0;
  private _entriesUsed: i32 = 0;

  constructor(initialCapacity: i32 = FM_INITIAL_CAPACITY) {
    if (initialCapacity < 4) initialCapacity = 4;
    let cap: i32 = 4;
    while (cap < initialCapacity) cap <<= 1;

    let bufferSize = <usize>cap * FM_SLOT_SIZE<K,V>();
    let ptr: usize;
    if (ASC_RUNTIME == Runtime.Memory) {
      ptr = __alloc(bufferSize);
    } else {
      ptr = __new(bufferSize, idof<ArrayBuffer>());
    }
    memory.fill(ptr, 0, bufferSize);
    this.dataPtr = ptr;
    this._capacity = cap;
    this.capacityMask = <u32>(cap - 1);
    if (ASC_RUNTIME != Runtime.Memory) {
      __link(changetype<usize>(this), ptr, false);
    }
  }

  get size(): i32 {
    return this._count;
  }

  has(key: K): bool {
    return this.findSlot(key, HASH<K>(key)) != -1;
  }

  @operator("[]")
  get(key: K): V {
    let idx = this.findSlot(key, HASH<K>(key));
    if (idx == -1) throw new Error(E_KEYNOTFOUND);
    let slot = changetype<FixedMapSlot<K,V>>(
      this.dataPtr + <usize>idx * FM_SLOT_SIZE<K,V>()
    );
    return slot.value;
  }

  @operator("[]=")
  set(key: K, value: V): this {
    // Check load factor before insert
    if (this._entriesUsed * FM_LOAD_D >= this._capacity * FM_LOAD_N) {
      this.rehash(
        this._count * 2 > this._capacity
          ? this._capacity << 1
          : this._capacity
      );
    }

    let hashCode = HASH<K>(key);
    let mask = this.capacityMask;
    let start = hashCode & mask;
    let i = start;
    let data = this.dataPtr;
    let slotSize = FM_SLOT_SIZE<K,V>();
    let firstDeleted: i32 = -1;

    do {
      let slot = changetype<FixedMapSlot<K,V>>(data + <usize>i * slotSize);
      let state = slot.state;

      if (state == SLOT_OCCUPIED) {
        if (slot.hash == hashCode && slot.key == key) {
          slot.value = value;
          if (isManaged<V>()) {
            if (ASC_RUNTIME != Runtime.Memory) {
              __link(changetype<usize>(this), changetype<usize>(value), true);
            }
          }
          return this;
        }
      } else if (state == SLOT_EMPTY) {
        let insertIdx: u32 = firstDeleted != -1 ? <u32>firstDeleted : i;
        let insertSlot = changetype<FixedMapSlot<K,V>>(data + <usize>insertIdx * slotSize);
        insertSlot.hash = hashCode;
        insertSlot.state = SLOT_OCCUPIED;
        insertSlot.key = key;
        insertSlot.value = value;
        ++this._count;
        if (firstDeleted == -1) ++this._entriesUsed;
        if (isManaged<K>()) {
          if (ASC_RUNTIME != Runtime.Memory) {
            __link(changetype<usize>(this), changetype<usize>(key), true);
          }
        }
        if (isManaged<V>()) {
          if (ASC_RUNTIME != Runtime.Memory) {
            __link(changetype<usize>(this), changetype<usize>(value), true);
          }
        }
        return this;
      } else { // DELETED
        if (firstDeleted == -1) firstDeleted = <i32>i;
      }

      i = (i + 1) & mask;
    } while (i != start);

    // All slots are OCCUPIED or DELETED (shouldn't happen with load factor check)
    // Insert at firstDeleted if available
    if (firstDeleted != -1) {
      let insertSlot = changetype<FixedMapSlot<K,V>>(data + <usize>firstDeleted * slotSize);
      insertSlot.hash = hashCode;
      insertSlot.state = SLOT_OCCUPIED;
      insertSlot.key = key;
      insertSlot.value = value;
      ++this._count;
      if (isManaged<K>()) {
        if (ASC_RUNTIME != Runtime.Memory) {
          __link(changetype<usize>(this), changetype<usize>(key), true);
        }
      }
      if (isManaged<V>()) {
        if (ASC_RUNTIME != Runtime.Memory) {
          __link(changetype<usize>(this), changetype<usize>(value), true);
        }
      }
    }
    return this;
  }

  delete(key: K): bool {
    let idx = this.findSlot(key, HASH<K>(key));
    if (idx == -1) return false;
    let slot = changetype<FixedMapSlot<K,V>>(
      this.dataPtr + <usize>idx * FM_SLOT_SIZE<K,V>()
    );
    slot.state = SLOT_DELETED;
    --this._count;
    return true;
  }

  clear(): void {
    memory.fill(this.dataPtr, 0, <usize>this._capacity * FM_SLOT_SIZE<K,V>());
    this._count = 0;
    this._entriesUsed = 0;
  }

  keys(): K[] {
    let data = this.dataPtr;
    let cap = this._capacity;
    let slotSize = FM_SLOT_SIZE<K,V>();
    let keys = new Array<K>(this._count);
    let length = 0;
    for (let i = 0; i < cap; ++i) {
      let slot = changetype<FixedMapSlot<K,V>>(data + <usize>i * slotSize);
      if (slot.state == SLOT_OCCUPIED) {
        unchecked(keys[length++] = slot.key);
      }
    }
    keys.length = length;
    return keys;
  }

  values(): V[] {
    let data = this.dataPtr;
    let cap = this._capacity;
    let slotSize = FM_SLOT_SIZE<K,V>();
    let values = new Array<V>(this._count);
    let length = 0;
    for (let i = 0; i < cap; ++i) {
      let slot = changetype<FixedMapSlot<K,V>>(data + <usize>i * slotSize);
      if (slot.state == SLOT_OCCUPIED) {
        unchecked(values[length++] = slot.value);
      }
    }
    values.length = length;
    return values;
  }

  toString(): string {
    return "[object FixedMap]";
  }

  @inline
  private findSlot(key: K, hashCode: u32): i32 {
    let mask = this.capacityMask;
    let start = hashCode & mask;
    let i = start;
    let data = this.dataPtr;
    let slotSize = FM_SLOT_SIZE<K,V>();
    do {
      let slot = changetype<FixedMapSlot<K,V>>(data + <usize>i * slotSize);
      let state = slot.state;
      if (state == SLOT_EMPTY) return -1;
      if (state == SLOT_OCCUPIED && slot.hash == hashCode && slot.key == key) {
        return <i32>i;
      }
      i = (i + 1) & mask;
    } while (i != start);
    return -1;
  }

  private rehash(newCapacity: i32): void {
    let oldData = this.dataPtr;
    let oldCapacity = this._capacity;
    let slotSize = FM_SLOT_SIZE<K,V>();
    let newMask = <u32>(newCapacity - 1);
    let bufferSize = <usize>newCapacity * slotSize;

    let newData: usize;
    if (ASC_RUNTIME == Runtime.Memory) {
      newData = __alloc(bufferSize);
    } else {
      newData = __new(bufferSize, idof<ArrayBuffer>());
    }
    memory.fill(newData, 0, bufferSize);

    for (let i = 0; i < oldCapacity; ++i) {
      let oldSlot = changetype<FixedMapSlot<K,V>>(oldData + <usize>i * slotSize);
      if (oldSlot.state == SLOT_OCCUPIED) {
        let h = oldSlot.hash;
        let j = h & newMask;
        while (changetype<FixedMapSlot<K,V>>(newData + <usize>j * slotSize).state != SLOT_EMPTY) {
          j = (j + 1) & newMask;
        }
        let newSlot = changetype<FixedMapSlot<K,V>>(newData + <usize>j * slotSize);
        newSlot.hash = h;
        newSlot.state = SLOT_OCCUPIED;
        newSlot.key = oldSlot.key;
        newSlot.value = oldSlot.value;
      }
    }

    this.dataPtr = newData;
    this._capacity = newCapacity;
    this.capacityMask = newMask;
    this._entriesUsed = this._count;

    if (ASC_RUNTIME != Runtime.Memory) {
      __link(changetype<usize>(this), newData, false);
    }
  }

  // RT integration

  @unsafe private __visit(cookie: u32): void {
    if (ASC_RUNTIME != Runtime.Memory) {
      let data = this.dataPtr;
      if (data) {
        if (isManaged<K>() || isManaged<V>()) {
          let cap = this._capacity;
          let slotSize = FM_SLOT_SIZE<K,V>();
          for (let i = 0; i < cap; ++i) {
            let slot = changetype<FixedMapSlot<K,V>>(data + <usize>i * slotSize);
            if (slot.state == SLOT_OCCUPIED) {
              if (isManaged<K>()) {
                let val = changetype<usize>(slot.key);
                if (isNullable<K>()) {
                  if (val) __visit(val, cookie);
                } else __visit(val, cookie);
              }
              if (isManaged<V>()) {
                let val = changetype<usize>(slot.value);
                if (isNullable<V>()) {
                  if (val) __visit(val, cookie);
                } else __visit(val, cookie);
              }
            }
          }
        }
        __visit(data, cookie);
      }
    }
  }
}
