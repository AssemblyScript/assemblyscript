/**
 * Incremental Tri-Color-Marking Garbage Collector.
 *
 * @module std/assembly/collector/itcm
 *//***/

// Based on the concepts of Bach Le's μgc, see: https://github.com/bullno1/ugc

import {
  AL_MASK,
  MAX_SIZE_32
} from "../internal/allocator";

import {
  __gc_iterate_roots
} from "../builtins";

// ╒═══════════════ Managed object layout (32-bit) ════════════════╕
//    3                   2                   1
//  1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0  bits
// ├─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┼─┴─┴─┤      ┐
// │                              next                       │  F  │ ◄─┐ = nextWithFlags
// ├─────────────────────────────────────────────────────────┴─────┤   │ usize
// │                              prev                             │ ◄─┘
// ╞═══════════════════════════════════════════════════════════════╡ SIZE ┘
// │                          ... data ...                         │
// └───────────────────────────────────────────────────────────────┘
// F: flags

/** Managed object flags. */
namespace Flags {
  /** Object is unreachable (so far). */
  export var WHITE = 0;
  /** Object is reachable. */
  export var BLACK = 1;
  /** Object is reachable but its children have not yet been scanned. */
  export const GRAY = 2;
  /** Mask to obtain just the flag bits. */
  export const MASK = AL_MASK;
}

/** Represents a managed object in memory, consisting of a header followed by the object's data. */
@unmanaged
class ManagedObject {

  /** Pointer to the next object with additional flags stored in the alignment bits. */
  nextWithFlags: usize;

  /** Pointer to the previous object. */
  prev: ManagedObject;

  /** Visitor function called with the data pointer (excl. header). */
  visitFn: (obj: usize) => void;

  /** Size of a managed object after alignment. */
  static readonly SIZE: usize = (offsetof<ManagedObject>() + AL_MASK) & ~AL_MASK;

  /** Gets the pointer to the next object in the list. */
  get next(): ManagedObject {
    return changetype<ManagedObject>(this.nextWithFlags & ~Flags.MASK);
  }

  /** Sets the pointer to the next object in the list. */
  set next(obj: ManagedObject) {
    this.nextWithFlags = changetype<usize>(obj) | (this.nextWithFlags & Flags.MASK);
  }

  /** Inserts an object to this list. */
  insert(obj: ManagedObject): void {
    var prev = this.prev;
    obj.next = this;
    obj.prev = prev;
    prev.next = obj;
    this.prev = obj;
  }

  /** Removes this object from its list. */
  remove(): void {
    var next = this.next;
    var prev = this.prev;
    next.prev = prev;
    prev.next = next;
  }

  clear(): void {
    this.nextWithFlags = changetype<usize>(this);
    this.prev = this;
  }

  /** Tests if this object is white, that is unreachable (so far). */
  get isWhite(): bool {
    return (this.nextWithFlags & Flags.MASK) == Flags.WHITE;
  }

  /** Marks this object as white, that is unreachable (so far). */
  makeWhite(): void {
    this.nextWithFlags = (this.nextWithFlags & ~Flags.MASK) | Flags.WHITE;
  }

  /** Tests if this object is black, that is reachable. Root objects are always reachable. */
  get isBlack(): bool {
    return (this.nextWithFlags & Flags.MASK) == Flags.BLACK;
  }

  /** Marks this object as black, that is reachable. */
  makeBlack(): void {
    this.nextWithFlags = (this.nextWithFlags & ~Flags.MASK) | Flags.BLACK;
  }

  /** Tests if this object is gray, that is reachable with unscanned children. */
  get isGray(): bool {
    return (this.nextWithFlags & Flags.MASK) == Flags.GRAY;
  }

  /** Marks this object as gray, that is reachable with unscanned children. */
  makeGray(): void {
    if (this != iter) {
      this.remove();
      set2.insert(this);
    } else {
      iter = iter.prev;
    }
    this.nextWithFlags = (this.nextWithFlags & ~Flags.MASK) | Flags.GRAY;
  }
}

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

// From and to spaces
var set1: ManagedObject;
var set2: ManagedObject;
var iter: ManagedObject;

/** Performs a single step according to the current state. */
function gc_step(): void {
  var obj: ManagedObject;
  switch (state) {
    case State.INIT: {
      set1 = changetype<ManagedObject>(memory.allocate(ManagedObject.SIZE));
      set1.clear();
      set2 = changetype<ManagedObject>(memory.allocate(ManagedObject.SIZE));
      set2.clear();
      iter = set2;
      // fall-through
    }
    case State.IDLE: {
      // start by marking roots
      __gc_iterate_roots(function mark_root(ref: usize): void {
        if (ref) {
          let obj = changetype<ManagedObject>(ref - ManagedObject.SIZE);
          obj.makeBlack();
          obj.visitFn(ref);
        }
      });
      state = State.MARK;
      break;
    }
    case State.MARK: {
      obj = iter.next;
      if (obj != set2) {
        iter = obj;
        obj.makeBlack();
        obj.visitFn(changetype<usize>(obj) + ManagedObject.SIZE);
      } else {
        obj = iter.next;
        if (obj == set2) {
          let set1_ = set1;
          set1 = set2;
          set2 = set1_;
          Flags.WHITE ^= 1;
          Flags.BLACK ^= 1;
          iter = set1.next;
          state = State.SWEEP;
        }
      }
      break;
    }
    case State.SWEEP: {
      obj = iter;
      if (obj !== set2) {
        iter = obj.next;
        memory.free(changetype<usize>(obj));
      } else {
        set2.clear();
        state = State.IDLE;
      }
      break;
    }
  }
}

/** Garbage collector interface. */
@global
export namespace gc {

  /** Allocates a managed object. */
  export function alloc(
    size: usize,
    visitFn: (ref: usize) => void
  ): usize {
    assert(size <= MAX_SIZE_32 - ManagedObject.SIZE);
    var obj = changetype<ManagedObject>(memory.allocate(ManagedObject.SIZE + size));
    obj.makeWhite();
    obj.visitFn = visitFn;
    set1.insert(obj);
    return changetype<usize>(obj) + ManagedObject.SIZE;
  }

  /** Visits a reachable object. Called from the visitFn functions. */
  export function visit(obj: ManagedObject): void {
    if (state == State.SWEEP) return;
    if (obj.isWhite) obj.makeGray();
  }

  /** References a managed child object from its parent object. */
  export function ref(parent: ManagedObject, child: ManagedObject): void {
    if (parent.isBlack && child.isWhite) parent.makeGray();
  }

  /** Performs a full garbage collection cycle. */
  export function collect(): void {
    // begin collecting if not yet collecting
    switch (state) {
      case State.INIT:
      case State.IDLE: gc_step();
    }
    // finish the cycle
    while (state != State.IDLE) gc_step();
  }
}
