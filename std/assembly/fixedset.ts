/// <reference path="./rt/index.d.ts" />

import { HASH } from "./util/hash";
import { Runtime } from "shared/runtime";

// Open-addressing hash set with linear probing.
// Single contiguous buffer, cache-friendly, zero GC overhead under runtime=memory.

// @ts-ignore: decorator
@inline const SLOT_EMPTY: u8 = 0;
// @ts-ignore: decorator
@inline const SLOT_OCCUPIED: u8 = 1;
// @ts-ignore: decorator
@inline const SLOT_DELETED: u8 = 2;

// @ts-ignore: decorator
@inline const FS_INITIAL_CAPACITY: i32 = 16;

// Max load factor 75% = 3/4
// @ts-ignore: decorator
@inline const FS_LOAD_N: i32 = 3;
// @ts-ignore: decorator
@inline const FS_LOAD_D: i32 = 4;

/** Structure of a FixedSet slot. */
@unmanaged class FixedSetSlot<T> {
  hash: u32;
  state: u8;
  key: T;
}

/** Computes the alignment of a slot. */
// @ts-ignore: decorator
@inline
function FS_SLOT_ALIGN<T>(): usize {
  const maxAll = sizeof<T>() > sizeof<u32>() ? sizeof<T>() : sizeof<u32>();
  return maxAll - 1;
}

/** Computes the aligned size of a slot. */
// @ts-ignore: decorator
@inline
function FS_SLOT_SIZE<T>(): usize {
  const align = FS_SLOT_ALIGN<T>();
  return (offsetof<FixedSetSlot<T>>() + align) & ~align;
}

@final
export class FixedSet<T> {

  private dataPtr: usize = 0;
  private _capacity: i32 = 0;
  private capacityMask: u32 = 0;
  private _count: i32 = 0;
  private _entriesUsed: i32 = 0;

  constructor(initialCapacity: i32 = FS_INITIAL_CAPACITY) {
    if (initialCapacity < 4) initialCapacity = 4;
    let cap: i32 = 4;
    while (cap < initialCapacity) cap <<= 1;

    let bufferSize = <usize>cap * FS_SLOT_SIZE<T>();
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

  @operator("[]")
  has(key: T): bool {
    return this.findSlot(key, HASH<T>(key)) != -1;
  }

  add(key: T): this {
    // Check load factor before insert
    if (this._entriesUsed * FS_LOAD_D >= this._capacity * FS_LOAD_N) {
      this.rehash(
        this._count * 2 > this._capacity
          ? this._capacity << 1
          : this._capacity
      );
    }

    let hashCode = HASH<T>(key);
    let mask = this.capacityMask;
    let start = hashCode & mask;
    let i = start;
    let data = this.dataPtr;
    let slotSize = FS_SLOT_SIZE<T>();
    let firstDeleted: i32 = -1;

    do {
      let slot = changetype<FixedSetSlot<T>>(data + <usize>i * slotSize);
      let state = slot.state;

      if (state == SLOT_OCCUPIED) {
        if (slot.hash == hashCode && slot.key == key) {
          return this; // already exists
        }
      } else if (state == SLOT_EMPTY) {
        let insertIdx: u32 = firstDeleted != -1 ? <u32>firstDeleted : i;
        let insertSlot = changetype<FixedSetSlot<T>>(data + <usize>insertIdx * slotSize);
        insertSlot.hash = hashCode;
        insertSlot.state = SLOT_OCCUPIED;
        insertSlot.key = key;
        ++this._count;
        if (firstDeleted == -1) ++this._entriesUsed;
        if (isManaged<T>()) {
          if (ASC_RUNTIME != Runtime.Memory) {
            __link(changetype<usize>(this), changetype<usize>(key), true);
          }
        }
        return this;
      } else { // DELETED
        if (firstDeleted == -1) firstDeleted = <i32>i;
      }

      i = (i + 1) & mask;
    } while (i != start);

    // Fallback: insert at firstDeleted
    if (firstDeleted != -1) {
      let insertSlot = changetype<FixedSetSlot<T>>(data + <usize>firstDeleted * slotSize);
      insertSlot.hash = hashCode;
      insertSlot.state = SLOT_OCCUPIED;
      insertSlot.key = key;
      ++this._count;
      if (isManaged<T>()) {
        if (ASC_RUNTIME != Runtime.Memory) {
          __link(changetype<usize>(this), changetype<usize>(key), true);
        }
      }
    }
    return this;
  }

  @operator("[]=")
  private __set(key: T, value: bool): void {
    if (value) this.add(key);
    else this.delete(key);
  }

  delete(key: T): bool {
    let idx = this.findSlot(key, HASH<T>(key));
    if (idx == -1) return false;
    let slot = changetype<FixedSetSlot<T>>(
      this.dataPtr + <usize>idx * FS_SLOT_SIZE<T>()
    );
    slot.state = SLOT_DELETED;
    --this._count;
    return true;
  }

  clear(): void {
    memory.fill(this.dataPtr, 0, <usize>this._capacity * FS_SLOT_SIZE<T>());
    this._count = 0;
    this._entriesUsed = 0;
  }

  values(): T[] {
    let data = this.dataPtr;
    let cap = this._capacity;
    let slotSize = FS_SLOT_SIZE<T>();
    let values = new Array<T>(this._count);
    let length = 0;
    for (let i = 0; i < cap; ++i) {
      let slot = changetype<FixedSetSlot<T>>(data + <usize>i * slotSize);
      if (slot.state == SLOT_OCCUPIED) {
        unchecked(values[length++] = slot.key);
      }
    }
    values.length = length;
    return values;
  }

  toString(): string {
    return "[object FixedSet]";
  }

  @inline
  private findSlot(key: T, hashCode: u32): i32 {
    let mask = this.capacityMask;
    let start = hashCode & mask;
    let i = start;
    let data = this.dataPtr;
    let slotSize = FS_SLOT_SIZE<T>();
    do {
      let slot = changetype<FixedSetSlot<T>>(data + <usize>i * slotSize);
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
    let slotSize = FS_SLOT_SIZE<T>();
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
      let oldSlot = changetype<FixedSetSlot<T>>(oldData + <usize>i * slotSize);
      if (oldSlot.state == SLOT_OCCUPIED) {
        let h = oldSlot.hash;
        let j = h & newMask;
        while (changetype<FixedSetSlot<T>>(newData + <usize>j * slotSize).state != SLOT_EMPTY) {
          j = (j + 1) & newMask;
        }
        let newSlot = changetype<FixedSetSlot<T>>(newData + <usize>j * slotSize);
        newSlot.hash = h;
        newSlot.state = SLOT_OCCUPIED;
        newSlot.key = oldSlot.key;
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
        if (isManaged<T>()) {
          let cap = this._capacity;
          let slotSize = FS_SLOT_SIZE<T>();
          for (let i = 0; i < cap; ++i) {
            let slot = changetype<FixedSetSlot<T>>(data + <usize>i * slotSize);
            if (slot.state == SLOT_OCCUPIED) {
              let val = changetype<usize>(slot.key);
              if (isNullable<T>()) {
                if (val) __visit(val, cookie);
              } else __visit(val, cookie);
            }
          }
        }
        __visit(data, cookie);
      }
    }
  }
}
