// Largely based on Bach Le's μgc, see: https://github.com/bullno1/ugc

// @ts-ignore: decorator
@inline
const TRACE = isDefined(GC_TRACE);

import { HEADER_SIZE } from "../util/runtime";
import { __gc_mark_roots, __gc_mark_members } from "../gc";

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
// @ts-ignore: decorator
@lazy
var state = State.INIT;
/** Current white color value. */
// @ts-ignore: decorator
@lazy
var white = 0;

// From and to spaces
// @ts-ignore: decorator
@lazy
var fromSpace: ManagedObjectList;
// @ts-ignore: decorator
@lazy
var toSpace: ManagedObjectList;
// @ts-ignore: decorator
@lazy
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

  // <HEADER>
  classId: u32;
  payloadSize: u32;
  // </HEADER>

  /** Pointer to the next object with color flags stored in the alignment bits. */
  nextWithColor: usize;

  /** Pointer to the previous object. */
  prev: ManagedObject;

  /** Class-specific hook function called with the user-space reference. */
  get hookFn(): (ref: usize) => void {
    return changetype<(ref: usize) => void>(this.classId);
  }

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
    if (TRACE) trace("     unlink [pref, ref, next]", 3, objToRef(prev), objToRef(this), objToRef(next));
    next.prev = prev;
    prev.next = next;
  }

  /** Marks this object as gray, that is reachable with unscanned children. */
  makeGray(): void {
    if (TRACE) trace("     makeGray", 1, objToRef(this));
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
    if (TRACE) trace("     push [prev, ref, next]", 3, objToRef(prev), objToRef(obj), objToRef(this));
    obj.next = this;
    obj.prev = prev;
    prev.next = obj;
    this.prev = obj;
  }

  /** Clears this list. */
  clear(): void {
    if (TRACE) trace("     clear", 1, objToRef(this));
    this.nextWithColor = changetype<usize>(this);
    this.prev = this;
  }
}

function maybeInit(): void {
  if (state == State.INIT) {
    if (TRACE) trace("itcm~init");
    fromSpace = changetype<ManagedObjectList>(memory.allocate(HEADER_SIZE));
    if (TRACE) trace("     fromSpace =", 1, objToRef(fromSpace));
    fromSpace.classId = -1; // would error
    fromSpace.payloadSize = 0;
    fromSpace.clear();
    toSpace = changetype<ManagedObjectList>(memory.allocate(HEADER_SIZE));
    if (TRACE) trace("     toSpace =", 1, objToRef(toSpace));
    toSpace.classId = -1; // would error
    toSpace.payloadSize = 0;
    toSpace.clear();
    iter = toSpace;
    state = State.IDLE;
    if (TRACE) trace("itcm~state = IDLE");
  }
}

/** Performs a single step according to the current state. */
function step(): void {
  var obj: ManagedObject;
  switch (state) {
    case State.INIT: unreachable();
    case State.IDLE: {
      if (TRACE) trace("itcm~step/IDLE");
      __gc_mark_roots();
      state = State.MARK;
      if (TRACE) trace("itcm~state = MARK");
      break;
    }
    case State.MARK: {
      obj = iter.next;
      if (obj !== toSpace) {
        if (TRACE) trace("itcm~step/MARK", 1, objToRef(obj));
        iter = obj;
        obj.color = i32(!white);
        __gc_mark_members(obj.classId, objToRef(obj));
      } else {
        __gc_mark_roots();
        if (TRACE) trace("itcm~step/MARK finish");
        obj = iter.next;
        if (obj === toSpace) {
          let from = fromSpace;
          fromSpace = toSpace;
          toSpace = from;
          white = i32(!white);
          iter = from.next;
          state = State.SWEEP;
          if (TRACE) trace("itcm~state = SWEEP");
        }
      }
      break;
    }
    case State.SWEEP: {
      obj = iter;
      if (obj !== toSpace) {
        if (TRACE) trace("itcm~step/SWEEP free", 1, objToRef(obj));
        iter = obj.next;
        if (changetype<usize>(obj) >= HEAP_BASE) memory.free(changetype<usize>(obj));
      } else {
        if (TRACE) trace("itcm~step/SWEEP finish");
        toSpace.clear();
        state = State.IDLE;
        if (TRACE) trace("itcm~state = IDLE");
      }
      break;
    }
  }
}

// @ts-ignore: decorator
@inline
function refToObj(ref: usize): ManagedObject {
  return changetype<ManagedObject>(ref - HEADER_SIZE);
}

// @ts-ignore: decorator
@inline
function objToRef(obj: ManagedObject): usize {
  return changetype<usize>(obj) + HEADER_SIZE;
}

// Garbage collector interface

// @ts-ignore: decorator
@global @unsafe
export function __ref_collect(): void {
  if (TRACE) trace("itcm.collect");
  maybeInit();
  // finish the current state
  while (state != State.IDLE) step();
  // perform a full cycle
  do step(); while (state != State.IDLE);
}

// @ts-ignore: decorator
@global @unsafe
export function __ref_register(ref: usize): void {
  if (TRACE) trace("itcm.register", 1, ref);
  maybeInit();
  var obj = refToObj(ref);
  obj.color = white;
  fromSpace.push(obj); // sets gc-reserved header fields
}

// @ts-ignore: decorator
@global @unsafe
export function __ref_link(ref: usize, parentRef: usize): void {
  if (TRACE) trace("itcm.link", 2, ref, parentRef);
  maybeInit();
  var parent = refToObj(parentRef);
  if (parent.color == i32(!white) && refToObj(ref).color == white) parent.makeGray();
}

// @ts-ignore: decorator
@global @unsafe
export function __ref_mark(ref: usize): void {
  if (TRACE) trace("itcm.mark", 1, ref);
  maybeInit();
  var obj = refToObj(ref);
  if (obj.color == white) obj.makeGray();
}
