import { BLOCK, BLOCK_OVERHEAD, OBJECT_OVERHEAD, OBJECT_MAXSIZE, TOTAL_OVERHEAD, DEBUG, TRACE, RTRACE, PROFILE } from "./common";
import { onvisit, oncollect, oninterrupt, onyield } from "./rtrace";
import { TypeinfoFlags } from "../shared/typeinfo";
import { E_ALLOCATION_TOO_LARGE, E_ALREADY_PINNED, E_NOT_PINNED } from "../util/error";

// === ITCMS: An incremental Tri-Color Mark & Sweep garbage collector ===
// Adapted from Bach Le's μgc, see: https://github.com/bullno1/ugc

// ╒═════════════╤══════════════ Colors ═══════════════════════════╕
// │ Color       │ Meaning                                         │
// ├─────────────┼─────────────────────────────────────────────────┤
// │ WHITE*      │ Unprocessed                                     │
// │ BLACK*      │ Processed                                       │
// │ GRAY        │ Processed with unprocessed children             │
// │ TRANSPARENT │ Manually pinned (always reachable)              │
// └─────────────┴─────────────────────────────────────────────────┘
// * flipped between cycles

// @ts-ignore: decorator
@lazy var white = 0;
// @ts-ignore: decorator
@inline const gray = 2;
// @ts-ignore: decorator
@inline const transparent = 3;
// @ts-ignore: decorator
@inline const COLOR_MASK = 3;

/** Size in memory of all objects currently managed by the GC. */
// @ts-ignore: decorator
@lazy var total: usize = 0;

/** Currently transitioning from SWEEP to MARK state. */
// @ts-ignore: decorator
@inline const STATE_IDLE = 0;
/** Currently marking reachable objects. */
// @ts-ignore: decorator
@inline const STATE_MARK = 1;
/** Currently sweeping unreachable objects. */
// @ts-ignore: decorator
@inline const STATE_SWEEP = 2;
/** Current collector state. */
// @ts-ignore: decorator
@lazy var state = STATE_IDLE;

// @ts-ignore: decorator
@lazy var fromSpace = initLazy(changetype<Object>(memory.data(offsetof<Object>())));
// @ts-ignore: decorator
@lazy var toSpace = initLazy(changetype<Object>(memory.data(offsetof<Object>())));
// @ts-ignore: decorator
@lazy var pinSpace = initLazy(changetype<Object>(memory.data(offsetof<Object>())));
// @ts-ignore: decorator
@lazy var iter: Object; // null

function initLazy(space: Object): Object {
  space.nextWithColor = changetype<usize>(space);
  space.prev = space;
  return space;
}

/** Visit cookie indicating scanning of an object. */
// @ts-ignore: decorator
@inline const VISIT_SCAN = 0;

// ╒═══════════════ Managed object layout (32-bit) ════════════════╕
//    3                   2                   1
//  1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0  bits
// ├─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┤
// │                      Memory manager block                     │
// ╞═══════════════════════════════════════════════════════════╤═══╡
// │                              next                         │ C │ = nextWithColor
// ├───────────────────────────────────────────────────────────┴───┤
// │                              prev                             │
// ├───────────────────────────────────────────────────────────────┤
// │                              rtId                             │
// ├───────────────────────────────────────────────────────────────┤
// │                              rtSize                           │
// ╞>ptr═══════════════════════════════════════════════════════════╡
// │                               ...                             │
// C: color

/** Represents a managed object in memory, consisting of a header followed by the object's data. */
@unmanaged class Object extends BLOCK {
  /** Pointer to the next object with color flags stored in the alignment bits. */
  nextWithColor: usize; // *u32
  /** Pointer to the previous object. */
  prev: Object; // *u32
  /** Runtime id. */
  rtId: u32;
  /** Runtime size. */
  rtSize: u32;

  /** Gets the pointer to the next object. */
  get next(): Object {
    return changetype<Object>(this.nextWithColor & ~COLOR_MASK);
  }

  /** Sets the pointer to the next object. */
  set next(obj: Object) {
    this.nextWithColor = changetype<usize>(obj) | (this.nextWithColor & COLOR_MASK);
  }

  /** Gets this object's color. */
  get color(): i32 {
    return i32(this.nextWithColor & COLOR_MASK);
  }

  /** Sets this object's color. */
  set color(color: i32) {
    this.nextWithColor = (this.nextWithColor & ~COLOR_MASK) | color;
  }

  /** Gets the size of this object in memory. */
  get size(): usize {
    return BLOCK_OVERHEAD + (this.mmInfo & ~3);
  }

  /** Tests if this object is pointerfree. */
  get isPointerfree(): bool {
    var rtId = this.rtId;
    return rtId <= idof<string>() || (__typeinfo(rtId) & TypeinfoFlags.POINTERFREE) != 0;
  }

  /** Unlinks this object from its list. */
  unlink(): void {
    var next = this.next;
    if (next == null) {
      if (DEBUG) assert(this.prev == null && changetype<usize>(this) < __heap_base);
      return; // static data not yet linked
    }
    var prev = this.prev;
    if (DEBUG) assert(prev);
    next.prev = prev;
    prev.next = next;
  }

  /** Links this object to the specified list, with the given color. */
  linkTo(list: Object, withColor: i32): void {
    let prev = list.prev;
    this.nextWithColor = changetype<usize>(list) | withColor;
    this.prev = prev;
    prev.next = this;
    list.prev = this;
  }

  /** Marks this object as gray, that is reachable with unscanned children. */
  makeGray(): void {
    if (this == iter) iter = assert(this.prev);
    this.unlink();
    this.linkTo(toSpace, this.isPointerfree ? i32(!white) : gray);
  }
}

/** Visits all objects considered to be program roots. */
function visitRoots(cookie: u32): void {
  __visit_globals(cookie);
  var pn = pinSpace;
  var iter = pn.next;
  while (iter != pn) {
    if (DEBUG) assert(iter.color == transparent);
    __visit_members(changetype<usize>(iter) + TOTAL_OVERHEAD, cookie);
    iter = iter.next;
  }
}

/** Visits all objects on the stack. */
function visitStack(cookie: u32): void {
  var ptr = __stack_pointer;
  while (ptr < __heap_base) {
    __visit(load<usize>(ptr), cookie);
    ptr += sizeof<usize>();
  }
}

/** Performs a single step according to the current state. */
function step(): usize {
  // Magic constants responsible for pause times. Obtained experimentally
  // using the compiler compiling itself. 2048 budget pro run by default.
  const MARKCOST = isDefined(ASC_GC_MARKCOST) ? ASC_GC_MARKCOST : 1;
  const SWEEPCOST = isDefined(ASC_GC_SWEEPCOST) ? ASC_GC_SWEEPCOST : 10;
  var obj: Object;
  switch (state) {
    case STATE_IDLE: {
      state = STATE_MARK;
      visitCount = 0;
      visitRoots(VISIT_SCAN);
      iter = toSpace;
      return visitCount * MARKCOST;
    }
    case STATE_MARK: {
      let black = i32(!white);
      obj = iter.next;
      while (obj != toSpace) {
        iter = obj;
        if (obj.color != black) { // skip already-blacks (pointerfree)
          obj.color = black;
          visitCount = 0;
          __visit_members(changetype<usize>(obj) + TOTAL_OVERHEAD, VISIT_SCAN);
          return visitCount * MARKCOST;
        }
        obj = obj.next;
      }
      visitCount = 0;
      visitRoots(VISIT_SCAN);
      obj = iter.next;
      if (obj == toSpace) {
        visitStack(VISIT_SCAN);
        obj = iter.next;
        while (obj != toSpace) {
          if (obj.color != black) {
            obj.color = black;
            __visit_members(changetype<usize>(obj) + TOTAL_OVERHEAD, VISIT_SCAN);
          }
          obj = obj.next;
        }
        let from = fromSpace;
        fromSpace = toSpace;
        toSpace = from;
        white = black;
        iter = from.next;
        state = STATE_SWEEP;
      }
      return visitCount * MARKCOST;
    }
    case STATE_SWEEP: {
      obj = iter;
      if (obj != toSpace) {
        iter = obj.next;
        if (DEBUG) assert(obj.color == i32(!white)); // old white
        free(obj);
        return SWEEPCOST;
      }
      toSpace.nextWithColor = changetype<usize>(toSpace);
      toSpace.prev = toSpace;
      state = STATE_IDLE;
      break;
    }
  }
  return 0;
}

/** Frees an object. */
function free(obj: Object): void {
  if (changetype<usize>(obj) < __heap_base) {
    obj.nextWithColor = 0; // may become linked again
    obj.prev = changetype<Object>(0);
  } else {
    total -= obj.size;
    if (isDefined(__finalize)) {
      __finalize(changetype<usize>(obj) + TOTAL_OVERHEAD);
    }
    __free(changetype<usize>(obj) + BLOCK_OVERHEAD);
  }
}

// Garbage collector interface

// @ts-ignore: decorator
@global @unsafe
export function __new(size: usize, id: i32): usize {
  if (size >= OBJECT_MAXSIZE) throw new Error(E_ALLOCATION_TOO_LARGE);
  if (total >= threshold) interrupt();
  var obj = changetype<Object>(__alloc(OBJECT_OVERHEAD + size) - BLOCK_OVERHEAD);
  obj.rtId = id;
  obj.rtSize = <u32>size;
  obj.linkTo(fromSpace, white); // inits next/prev
  total += obj.size;
  var ptr = changetype<usize>(obj) + TOTAL_OVERHEAD;
  // may be visited before being fully initialized, so must fill
  memory.fill(ptr, 0, size);
  return ptr;
}

// @ts-ignore: decorator
@global @unsafe
export function __renew(oldPtr: usize, size: usize): usize {
  var oldObj = changetype<Object>(oldPtr - TOTAL_OVERHEAD);
  // Update object size if its block is large enough
  if (size <= (oldObj.mmInfo & ~3) - OBJECT_OVERHEAD) {
    oldObj.rtSize = <u32>size;
    return oldPtr;
  }
  // If not the same object anymore, we have to move it move it due to the
  // shadow stack potentially still referencing the old object
  var newPtr = __new(size, oldObj.rtId);
  memory.copy(newPtr, oldPtr, min(size, oldObj.rtSize));
  return newPtr;
}

// @ts-ignore: decorator
@global @unsafe
export function __link(parentPtr: usize, childPtr: usize, expectMultiple: bool): void {
  // Write barrier is unnecessary if non-incremental
  if (!childPtr) return;
  if (DEBUG) assert(parentPtr);
  var child = changetype<Object>(childPtr - TOTAL_OVERHEAD);
  if (child.color == white) {
    let parent = changetype<Object>(parentPtr - TOTAL_OVERHEAD);
    let parentColor = parent.color;
    if (parentColor == i32(!white)) {
      // Maintain the invariant that no black object may point to a white object.
      if (expectMultiple) {
        // Move the barrier "backward". Suitable for containers receiving multiple stores.
        // Avoids a barrier for subsequent objects stored into the same container.
        parent.makeGray();
      } else {
        // Move the barrier "forward". Suitable for objects receiving isolated stores.
        child.makeGray();
      }
    } else if (parentColor == transparent && state == STATE_MARK) {
      // Pinned objects are considered 'black' during the mark phase.
      child.makeGray();
    }
  }
}

// @ts-ignore: decorator
@lazy var visitCount = 0;

// @ts-ignore: decorator
@global @unsafe
export function __visit(ptr: usize, cookie: i32): void {
  if (!ptr) return;
  let obj = changetype<Object>(ptr - TOTAL_OVERHEAD);
  if (RTRACE) if (!onvisit(obj)) return;
  if (obj.color == white) {
    obj.makeGray();
    ++visitCount;
  }
}

// @ts-ignore: decorator
@global @unsafe
export function __pin(ptr: usize): usize {
  if (ptr) {
    let obj = changetype<Object>(ptr - TOTAL_OVERHEAD);
    if (obj.color == transparent) {
      throw new Error(E_ALREADY_PINNED);
    }
    obj.unlink(); // from fromSpace
    obj.linkTo(pinSpace, transparent);
  }
  return ptr;
}

// @ts-ignore: decorator
@global @unsafe
export function __unpin(ptr: usize): void {
  if (!ptr) return;
  var obj = changetype<Object>(ptr - TOTAL_OVERHEAD);
  if (obj.color != transparent) {
    throw new Error(E_NOT_PINNED);
  }
  if (state == STATE_MARK) {
    // We may be right at the point after marking roots for the second time and
    // entering the sweep phase, in which case the object would be missed if it
    // is not only pinned but also a root. Make sure it isn't missed.
    obj.makeGray();
  } else {
    obj.unlink();
    obj.linkTo(fromSpace, white);
  }
}

// @ts-ignore: decorator
@global @unsafe
export function __collect(): void {
  if (TRACE) trace("GC (full) at", 1, total);
  if (state > STATE_IDLE) {
    // finish current cycle
    while (state != STATE_IDLE) step();
  }
  // perform a full cycle
  step();
  while (state != STATE_IDLE) step();
  threshold = <usize>(<u64>total * IDLEFACTOR / 100) + GRANULARITY;
  if (TRACE) trace("GC (full) done at cur/max", 2, total, memory.size() << 16);
  if (RTRACE || PROFILE) oncollect(total);
}

// Garbage collector automation

/** How often to interrupt. The default of 1024 means "interrupt each 1024 bytes allocated". */
// @ts-ignore: decorator
@inline const GRANULARITY: usize = isDefined(ASC_GC_GRANULARITY) ? ASC_GC_GRANULARITY : 1024;
/** How long to interrupt. The default of 200% means "run at double the speed of allocations". */
// @ts-ignore: decorator
@inline const STEPFACTOR: usize = isDefined(ASC_GC_SWEEPFACTOR) ? ASC_GC_SWEEPFACTOR : 200;
/** How long to idle. The default of 200% means "wait for memory to double before kicking in again". */
// @ts-ignore: decorator
@inline const IDLEFACTOR: usize = isDefined(ASC_GC_IDLEFACTOR) ? ASC_GC_IDLEFACTOR : 200;

/** Threshold of memory used by objects to exceed before interrupting again. */
// @ts-ignore: decorator
@lazy var threshold: usize = ((<usize>memory.size() << 16) - __heap_base) >> 1;

/** Performs a reasonable amount of incremental GC steps. */
function interrupt(): void {
  if (PROFILE) oninterrupt(total);
  if (TRACE) trace("GC (auto) at", 1, total);
  var budget: isize = GRANULARITY * STEPFACTOR / 100;
  do {
    budget -= step();
    if (state == STATE_IDLE) {
      if (TRACE) trace("└ GC (auto) done at cur/max", 2, total, memory.size() << 16);
      threshold = <usize>(<u64>total * IDLEFACTOR / 100) + GRANULARITY;
      if (PROFILE) onyield(total);
      return;
    }
  } while (budget > 0);
  if (TRACE) trace("└ GC (auto) ongoing at", 1, total);
  threshold = total + GRANULARITY * usize(total - threshold < GRANULARITY);
  if (PROFILE) onyield(total);
}
