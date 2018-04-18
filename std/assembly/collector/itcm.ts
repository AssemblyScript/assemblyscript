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
      to.insert(this);
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
var from: ManagedObject;
var to: ManagedObject;
var iter: ManagedObject;

/** Performs a single step according to the current state. */
function gc_step(): void {
  var obj: ManagedObject;
  switch (state) {
    case State.INIT: {
      from = changetype<ManagedObject>(allocate_memory(ManagedObject.SIZE));
      from.nextWithFlags = changetype<usize>(from);
      from.prev = from;
      to = changetype<ManagedObject>(allocate_memory(ManagedObject.SIZE));
      to.nextWithFlags = changetype<usize>(to);
      to.prev = to;
      iter = to;
      // fall-through
    }
    case State.IDLE: {
      state = State.MARK;
      break;
    }
    case State.MARK: {
      obj = iter.next;
      if (obj != to) {
        iter = obj;
        obj.makeBlack();
        obj.visitFn(changetype<usize>(obj) + ManagedObject.SIZE);
      } else {
        obj = iter.next;
        if (obj == to) {
          let temp = from;
          from = to;
          to = temp;
          Flags.WHITE ^= 1;
          Flags.BLACK ^= 1;
          iter = from.next;
          state = State.SWEEP;
        }
      }
      break;
    }
    case State.SWEEP: {
      obj = iter;
      if (obj != to) {
        iter = obj.next;
        free_memory(changetype<usize>(obj));
      } else {
        to.nextWithFlags = changetype<usize>(to);
        to.prev = to;
        state = State.IDLE;
      }
      break;
    }
  }
}

/** Allocates a managed object. */
@global
export function gc_allocate(
  size: usize,
  visitFn: (obj: usize) => void
): usize {
  assert(size <= MAX_SIZE_32 - ManagedObject.SIZE);
  var obj = changetype<ManagedObject>(allocate_memory(ManagedObject.SIZE + size));
  obj.makeWhite();
  obj.visitFn = visitFn;
  from.insert(obj);
  return changetype<usize>(obj) + ManagedObject.SIZE;
}

/** Visits a reachable object. Called from the visitFn functions. */
@global
export function gc_visit(obj: ManagedObject): void {
  if (state == State.SWEEP) return;
  if (obj.isWhite) obj.makeGray();
}

/** Registers a managed child object with its parent object. */
@global
export function gc_register(parent: ManagedObject, child: ManagedObject): void {
  if (parent.isBlack && child.isWhite) parent.makeGray();
}

/** Iterates the root set. Provided by the compiler according to the program. */
@global
export declare function gc_roots(): void;

/** Performs a full garbage collection cycle. */
@global
export function gc_collect(): void {
  // begin collecting if not yet collecting
  switch (state) {
    case State.INIT:
    case State.IDLE: gc_step();
  }
  // finish the cycle
  while (state != State.IDLE) gc_step();
}

declare function allocate_memory(size: usize): usize;
declare function free_memory(ptr: usize): void;

// Considerations
//
// - An API that consists mostly of just replacing `allocate_memory` would be ideal, possibly taking
//   any additional number of parameters that are necessary, like the parent and the visitor.
//
// - Not having to generate a helper function for iterating globals but instead marking specific
//   nodes as roots could simplify the embedding, but whether this is feasible or not depends on its
//   performance characteristics and the possibility of tracking root status accross assignments.
//   For example, root status could be implemented as some sort of referenced-by-globals counting
//   and a dedicated list of root objects.
//
// - In 32-bit specifically, there is some free space in TLSF object headers due to alignment that
//   could be repurposed to store some GC information, like a class id. Certainly, this somewhat
//   depends on the efficiency of the used mechanism to detect this at compile time, including when
//   a different allocator is used.
//
// - Think about generations.
