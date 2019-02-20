/**
 * Incremental Tri-Color-Marking Garbage Collector.
 *
 * @module std/assembly/collector/itcm
 *//***/

// Largely based on Bach Le's μgc, see: https://github.com/bullno1/ugc

@inline const TRACE = false;

/** Size of a managed object header. */
@inline export const HEADER_SIZE: usize = (offsetof<ManagedObject>() + AL_MASK) & ~AL_MASK;

import { AL_MASK, MAX_SIZE_32 } from "../internal/allocator";
import { iterateRoots } from "../gc";

/** Collector states. */
const enum State {
  /** Not yet initialized. */
  INIT = 0,
  /** Currently transitioning from SWEEP to MARK state. */
  IDLE = 1,
  /** Currently marking reachable objects. */
  MARK = 2,
  /** Currently sweeping unreachable objects. */
  SWEEP = 3
}

/** Current collector state. */
var state = State.INIT;
/** Current white color value. */
var white = 0;

// From and to spaces
var fromSpace: ManagedObjectList;
var toSpace: ManagedObjectList;
var iter: ManagedObject;

// ╒═══════════════ Managed object layout (32-bit) ════════════════╕
//    3                   2                   1
//  1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0  bits
// ├─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┼─┼─┴─┤      ┐
// │                              next                       │0│ C │ ◄─┐ = nextWithColor
// ├─────────────────────────────────────────────────────────┴─┴───┤   │ usize
// │                              prev                             │ ◄─┘
// ├───────────────────────────────────────────────────────────────┤
// │                             hookFn                            │
// ╞═══════════════════════════════════════════════════════════════╡ SIZE ┘ ◄─ user-space reference
// │                          ... data ...                         │
// └───────────────────────────────────────────────────────────────┘
// C: color

/** Represents a managed object in memory, consisting of a header followed by the object's data. */
@unmanaged class ManagedObject {

  /** Pointer to the next object with color flags stored in the alignment bits. */
  nextWithColor: usize;

  /** Pointer to the previous object. */
  prev: ManagedObject;

  /** Class-specific hook function called with the user-space reference. */
  hookFn: (ref: usize) => void;

  /** Gets the pointer to the next object. */
  get next(): ManagedObject {
    return changetype<ManagedObject>(this.nextWithColor & ~3);
  }

  /** Sets the pointer to the next object. */
  set next(obj: ManagedObject) {
    this.nextWithColor = changetype<usize>(obj) | (this.nextWithColor & 3);
  }

  /** Gets this object's color. */
  get color(): i32 {
    return this.nextWithColor & 3;
  }

  /** Sets this object's color. */
  set color(color: i32) {
    this.nextWithColor = (this.nextWithColor & ~3) | color;
  }

  /** Unlinks this object from its list. */
  unlink(): void {
    var next = this.next;
    var prev = this.prev;
    if (TRACE) trace("   unlink", 3, objToRef(prev), objToRef(this), objToRef(next));
    next.prev = prev;
    prev.next = next;
  }

  /** Marks this object as gray, that is reachable with unscanned children. */
  makeGray(): void {
    if (TRACE) trace("   makeGray", 1, objToRef(this));
    const gray = 2;
    if (this == iter) iter = this.prev;
    this.unlink();
    toSpace.push(this);
    this.nextWithColor = (this.nextWithColor & ~3) | gray;
  }
}

/** A list of managed objects. Used for the from and to spaces. */
@unmanaged class ManagedObjectList extends ManagedObject {

  /** Inserts an object. */
  push(obj: ManagedObject): void {
    var prev = this.prev;
    if (TRACE) trace("   push", 3, objToRef(prev), objToRef(obj), objToRef(this));
    obj.next = this;
    obj.prev = prev;
    prev.next = obj;
    this.prev = obj;
  }

  /** Clears this list. */
  clear(): void {
    if (TRACE) trace("   clear", 1, objToRef(this));
    this.nextWithColor = changetype<usize>(this);
    this.prev = this;
  }
}

/** Performs a single step according to the current state. */
function step(): void {
  var obj: ManagedObject;
  switch (state) {
    case State.INIT: {
      if (TRACE) trace("gc~step/INIT");
      fromSpace = changetype<ManagedObjectList>(memory.allocate(HEADER_SIZE));
      fromSpace.hookFn = changetype<(ref: usize) => void>(<u32>-1); // would error
      fromSpace.clear();
      toSpace = changetype<ManagedObjectList>(memory.allocate(HEADER_SIZE));
      toSpace.hookFn = changetype<(ref: usize) => void>(<u32>-1); // would error
      toSpace.clear();
      iter = toSpace;
      state = State.IDLE;
      if (TRACE) trace("gc~state = IDLE");
      // fall-through
    }
    case State.IDLE: {
      if (TRACE) trace("gc~step/IDLE");
      iterateRoots(__gc_mark);
      state = State.MARK;
      if (TRACE) trace("gc~state = MARK");
      break;
    }
    case State.MARK: {
      obj = iter.next;
      if (obj !== toSpace) {
        if (TRACE) trace("gc~step/MARK iterate", 1, objToRef(obj));
        iter = obj;
        obj.color = <i32>!white;
        // if (TRACE) {
        //   trace("   next/prev/hook", 3,
        //     changetype<usize>(obj.next),
        //     changetype<usize>(obj.prev),
        //     changetype<u32>(obj.hookFn)
        //   );
        // }
        obj.hookFn(objToRef(obj));
      } else {
        if (TRACE) trace("gc~step/MARK finish");
        iterateRoots(__gc_mark);
        obj = iter.next;
        if (obj === toSpace) {
          let from = fromSpace;
          fromSpace = toSpace;
          toSpace = from;
          white = <i32>!white;
          iter = from.next;
          state = State.SWEEP;
          if (TRACE) trace("gc~state = SWEEP");
        }
      }
      break;
    }
    case State.SWEEP: {
      obj = iter;
      if (obj !== toSpace) {
        if (TRACE) trace("gc~step/SWEEP free", 1, objToRef(obj));
        iter = obj.next;
        if (changetype<usize>(obj) >= HEAP_BASE) memory.free(changetype<usize>(obj));
      } else {
        if (TRACE) trace("gc~step/SWEEP finish");
        toSpace.clear();
        state = State.IDLE;
        if (TRACE) trace("gc~state = IDLE");
      }
      break;
    }
  }
}

@inline function refToObj(ref: usize): ManagedObject {
  return changetype<ManagedObject>(ref - HEADER_SIZE);
}

@inline function objToRef(obj: ManagedObject): usize {
  return changetype<usize>(obj) + HEADER_SIZE;
}

// Garbage collector interface

@global export function __gc_allocate(
  size: usize,
  markFn: (ref: usize) => void
): usize {
  if (TRACE) trace("gc.allocate", 1, size);
  if (size > MAX_SIZE_32 - HEADER_SIZE) unreachable();
  step(); // also makes sure it's initialized
  var obj = changetype<ManagedObject>(memory.allocate(HEADER_SIZE + size));
  obj.hookFn = markFn;
  obj.color = white;
  fromSpace.push(obj);
  return objToRef(obj);
}

@global export function __gc_link(parentRef: usize, childRef: usize): void {
  if (TRACE) trace("gc.link", 2, parentRef, childRef);
  var parent = refToObj(parentRef);
  if (parent.color == <i32>!white && refToObj(childRef).color == white) parent.makeGray();
}

@global export function __gc_mark(ref: usize): void {
  if (TRACE) trace("gc.mark", 1, ref);
  if (ref) {
    let obj = refToObj(ref);
    if (obj.color == white) obj.makeGray();
  }
}

@global export function __gc_collect(): void {
  if (TRACE) trace("gc.collect");
  // begin collecting if not yet collecting
  switch (state) {
    case State.INIT:
    case State.IDLE: step();
  }
  // finish the cycle
  while (state != State.IDLE) step();
}
