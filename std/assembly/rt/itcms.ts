import { BLOCK, BLOCK_OVERHEAD, OBJECT_OVERHEAD, OBJECT_MAXSIZE, TOTAL_OVERHEAD, DEBUG, TRACE } from "./common";
import { onvisit, oncollect } from "./rtrace";

// === ITCMS: An incremental Tri-Color Mark & Sweep garbage collector ===
// Adapted from Bach Le's μgc, see: https://github.com/bullno1/ugc

// Collector states

/** Not yet initilized. */
// @ts-ignore: decorator
@inline const STATE_INIT = 0;
/** Currently transitioning from SWEEP to MARK state. */
// @ts-ignore: decorator
@inline const STATE_IDLE = 1;
/** Currently marking reachable objects. */
// @ts-ignore: decorator
@inline const STATE_MARK = 2;
/** Currently sweeping unreachable objects. */
// @ts-ignore: decorator
@inline const STATE_SWEEP = 3;

/** Visit cookie indicating scanning of an object. */
// @ts-ignore: decorator
@inline const VISIT_SCAN = 0;

/** Current collector state. */
// @ts-ignore: decorator
@lazy var state = STATE_INIT;
/** Current white color. Flips between 0 and 1. */
// @ts-ignore: decorator
@lazy var white = 0;
// @ts-ignore: decorator
@inline const gray = 2;
// @ts-ignore: decorator
@inline const transparent = 3;

// From and to spaces
// @ts-ignore: decorator
@lazy var fromSpace = changetype<ObjectList>(memory.data(offsetof<ObjectList>()));
// @ts-ignore: decorator
@lazy var toSpace = changetype<ObjectList>(memory.data(offsetof<ObjectList>()));
// @ts-ignore: decorator
@lazy var pinSpace = changetype<ObjectList>(memory.data(offsetof<ObjectList>()));
// @ts-ignore: decorator
@lazy var iter: Object;

/** Initializes the GC. */
function init(): void {
  // Common object headers are designed for 32-bit words currently
  assert(sizeof<usize>() == sizeof<u32>());
  fromSpace.clear();
  toSpace.clear();
  pinSpace.clear();
  iter = toSpace;
  state = STATE_IDLE;
}

// ╒═════════════╤══════════════ Colors ═══════════════════════════╕
// │ Color       │ Meaning                                         │
// ├─────────────┼─────────────────────────────────────────────────┤
// │ WHITE       │ Unprocessed                                     │
// │ BLACK       │ Processed                                       │
// │ GRAY        │ Processed with unprocessed children             │
// │ TRANSPARENT │ Manually pinned (always reachable)              │
// └─────────────┴─────────────────────────────────────────────────┘

// @ts-ignore: decorator
@inline const COLOR_MASK = 3;

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

  /** Unlinks this object from its list. */
  unlink(): void {
    var next = this.next;
    var prev = this.prev;
    if (next == null) {
      if (DEBUG) assert(prev == null && changetype<usize>(this) < __heap_base);
      return; // static data not yet linked
    }
    next.prev = assert(prev);
    prev.next = next;
  }

  /** Marks this object as gray, that is reachable with unscanned children. */
  makeGray(): void {
    if (this == iter) iter = assert(this.prev);
    this.unlink();
    this.linkTo(toSpace, gray);
  }

  /** Links this object to the specified list, with the given color. */
  linkTo(list: ObjectList, withColor: i32): void {
    let prev = list.prev;
    this.nextWithColor = changetype<usize>(list) | withColor;
    this.prev = prev;
    prev.next = this;
    list.prev = this;
  }
}

/** A list of managed objects. Used for the from and to spaces. */
@unmanaged class ObjectList extends Object {
  /** Clears this list. */
  clear(): void {
    this.nextWithColor = changetype<usize>(this);
    this.prev = assert(this);
  }
}

/** Visits all objects considered to be program roots. */
function visitRoots(cookie: u32): void {
  __visit_globals(cookie);
  let iter = pinSpace.next;
  while (iter != pinSpace) {
    __visit_members(changetype<usize>(iter) + TOTAL_OVERHEAD, cookie);
    iter = iter.next;
  }
  __visit(__ministack, VISIT_SCAN);
}

/** Performs a single step according to the current state. */
function step(): usize {
  var obj: Object;
  switch (state) {
    case STATE_INIT:
      init();
      // fall through
    case STATE_IDLE: {
      state = STATE_MARK;
      visitRoots(VISIT_SCAN);
      // fall through
    }
    case STATE_MARK: {
      let black = i32(!white);
      obj = iter.next;
      if (obj != toSpace) {
        iter = obj;
        obj.color = black;
        __visit_members(changetype<usize>(obj) + TOTAL_OVERHEAD, VISIT_SCAN);
      } else {
        visitRoots(VISIT_SCAN);
        obj = iter.next;
        if (obj == toSpace) { // done
          let from = fromSpace;
          fromSpace = toSpace;
          toSpace = from;
          white = black;
          iter = from.next;
          state = STATE_SWEEP;
        }
      }
      break;
    }
    case STATE_SWEEP: {
      obj = iter;
      if (obj != toSpace) {
        iter = obj.next;
        if (DEBUG) assert(obj.color == i32(!white)); // old white
        free(obj);
        return 1;
      }
      toSpace.clear();
      state = STATE_IDLE;
      debt = 0;
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
    total -= 1;
    totalMem -= obj.size;
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
  if (size >= OBJECT_MAXSIZE) throw new Error("allocation too large");
  if (state == STATE_INIT) init();
  var obj = changetype<Object>(__alloc(OBJECT_OVERHEAD + size) - BLOCK_OVERHEAD);
  obj.linkTo(fromSpace, white); // inits next/prev
  obj.rtId = id;
  obj.rtSize = <u32>size;
  var ptr = changetype<usize>(obj) + TOTAL_OVERHEAD;
  total += 1;
  totalMem += obj.size;
  return ptr;
}

// @ts-ignore: decorator
@global @unsafe
export function __renew(oldPtr: usize, size: usize): usize {
  var oldObj = changetype<Object>(oldPtr - TOTAL_OVERHEAD);
  if (oldPtr < __heap_base) { // move to heap for simplicity
    let newPtr = __new(size, oldObj.rtId);
    memory.copy(newPtr, oldPtr, min(size, oldObj.rtSize));
    return newPtr;
  }
  if (size >= OBJECT_MAXSIZE) throw new Error("allocation too large");
  if (state == STATE_INIT) init();
  totalMem -= oldObj.size;
  var newPtr = __realloc(oldPtr - OBJECT_OVERHEAD, OBJECT_OVERHEAD + size) + OBJECT_OVERHEAD;
  var newObj = changetype<Object>(newPtr - TOTAL_OVERHEAD);
  newObj.rtSize = <u32>size;
  if (DEBUG) assert(newObj.next != null && newObj.prev != null);
  newObj.next.prev = newObj;
  newObj.prev.next = newObj;
  if (iter == oldObj) iter = newObj;
  totalMem += newObj.size;
  return newPtr;
}

// @ts-ignore: decorator
@global @unsafe
export function __link(parentPtr: usize, childPtr: usize, expectMultiple: bool): void {
  // Write barrier is unnecessary if non-incremental
  if (!childPtr) return;
  if (DEBUG) assert(parentPtr);
  if (state == STATE_INIT) init();
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
@global @unsafe
export function __visit(ptr: usize, cookie: i32): void {
  if (!ptr) return;
  let obj = changetype<Object>(ptr - TOTAL_OVERHEAD);
  if (isDefined(ASC_RTRACE)) if (!onvisit(obj)) return;
  if (obj.color == white) obj.makeGray();
}

// @ts-ignore: decorator
@global @unsafe
export function __pin(ptr: usize): usize {
  if (ptr) {
    let obj = changetype<Object>(ptr - TOTAL_OVERHEAD);
    if (obj.color == transparent) {
      throw new Error("already pinned");
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
    throw new Error("not pinned");
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
  if (TRACE) trace("GC (full) at mem/objs", 2, totalMem, total);
  if (state > STATE_IDLE) {
    // finish current cycle
    while (state != STATE_IDLE) step();
  }
  // perform a full cycle
  step();
  while (state != STATE_IDLE) step();
  threshold = 2 * total;
  if (TRACE) trace("GC (full) done at mem/objs", 2, totalMem, total);
  if (isDefined(ASC_RTRACE)) oncollect(total, totalMem);
}

// Garbage collector automation

/** Incremental GC granularity. */
// @ts-ignore: decorator
@inline const STEPSIZE: usize = 200;
/** Number of objects currently managed by the GC. */
// @ts-ignore: decorator
@lazy var total: usize = 0;
/** Size in memory of all objects currently managed by the GC. */
// @ts-ignore: decorator
@lazy var totalMem: usize = 0;
/** Threshold of objects for the next scheduled GC step. */
// @ts-ignore: decorator
@lazy var threshold: usize = STEPSIZE;
/** Number of objects the GC is behind schedule. */
// @ts-ignore: decorator
@lazy var debt: usize = 0;

/** Performs a reasonable amount of incremental GC steps. */
// @ts-ignore: decorator
@global @unsafe
export function __autocollect(): void {
  if (total < threshold) return;
  if (TRACE) trace("GC (auto) at mem/objs", 2, totalMem, total);
  debt = total - threshold;
  let limit: isize = max<isize>(2 * STEPSIZE, debt / 2);
  do {
    limit -= step();
    if (state == STATE_IDLE) {
      threshold = 2 * total;
      if (TRACE) trace("└ down to mem/objs (complete)", 2, totalMem, total);
      if (isDefined(ASC_RTRACE)) oncollect(total, totalMem);
      return;
    }
  } while (limit > 0);
  if (TRACE) trace("└ down to mem/objs (ongoing)", 2, totalMem, total);
  if (debt < STEPSIZE) {
    threshold = total + STEPSIZE;
  } else {
    debt -= STEPSIZE;
    threshold = total;
  }
}
