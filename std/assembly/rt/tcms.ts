import { BLOCK, BLOCK_OVERHEAD, OBJECT_OVERHEAD, OBJECT_MAXSIZE, TOTAL_OVERHEAD, DEBUG, TRACE } from "./common";
import { onvisit } from "./rtrace";

// === Tri-Color Mark & Sweep garbage collector ===
// Largely based on Bach Le's μgc, see: https://github.com/bullno1/ugc

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

// From and to spaces
// @ts-ignore: decorator
@lazy var fromSpace = changetype<ObjectList>(memory.data(offsetof<ObjectList>()));
// @ts-ignore: decorator
@lazy var toSpace = changetype<ObjectList>(memory.data(offsetof<ObjectList>()));
// @ts-ignore: decorator
@lazy var iter: Object;

/** Initializes the GC. */
function init(): void {
  // Common object headers are designed for 32-bit words currently
  assert(sizeof<usize>() == sizeof<u32>());
  fromSpace.clear();
  toSpace.clear();
  iter = toSpace;
  state = STATE_IDLE;
}

// ╒════════╤═══════════════════ Colors ═══════════════════════════╕
// │ Color  │ Meaning                                              │
// ├────────┼──────────────────────────────────────────────────────┤
// │ WHITE  │ Unprocessed                                          │
// │ BLACK  │ Processed                                            │
// │ GRAY   │ Processed with unprocessed children                  │
// └────────┴──────────────────────────────────────────────────────┘

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
      assert(prev == null);
      return; // static data not yet linked
    }
    if (prev == null) { // FIXME
      trace("mmInfo", 1, this.mmInfo);
      trace("gcInfo", 1, this.nextWithColor);
      trace("gcInfo2", 1, changetype<usize>(this.prev));
      if (ASC_TARGET) {
        trace(" at", 1, changetype<usize>(this) + offsetof<Object>("prev"));
      }
      trace("rtId", 1, this.rtId);
      trace("rtSize", 1, this.rtSize);
      assert(false);
    }
    next.prev = assert(prev);
    prev.next = next;
  }

  /** Marks this object as gray, that is reachable with unscanned children. */
  makeGray(): void {
    const gray = 2;
    if (this == iter) iter = assert(this.prev);
    this.unlink();
    toSpace.push(this);
    // trace("makeGray", 3, changetype<usize>(this), this.rtId, this.color);
    this.color = gray;
  }
}

/** A list of managed objects. Used for the from and to spaces. */
@unmanaged class ObjectList extends Object {

  /** Inserts an object. */
  push(obj: Object): void {
    assert(obj != toSpace && obj != fromSpace);
    var prev = this.prev;
    obj.next = assert(this);
    obj.prev = assert(prev);
    prev.next = assert(obj);
    this.prev = assert(obj);
  }

  /** Clears this list. */
  @inline clear(): void {
    this.nextWithColor = changetype<usize>(this);
    this.prev = assert(this);
  }
}

/** Visits external objects. */
// @ts-ignore: decorator
@external("env", "mark")
declare function visitExternals(): void;

/** Visits all objects considered to be roots. */
// @ts-ignore: decorator
@lazy
function visitRoots(): void {
  // trace("visitRoots");
  __visit_globals(VISIT_SCAN);
  if (isDefined(ASC_STACK)) {
    var cur = __stack_base;
    var end = __stackptr;
    while (cur < end) {
      __visit(load<usize>(cur), VISIT_SCAN);
      cur += sizeof<usize>();
    }
  }
  visitExternals();
}
/** Performs a single step according to the current state. */
function step(): usize {
  var obj: Object;
  switch (state) {
    case STATE_INIT:
      init();
      // fall through
    case STATE_IDLE: {
      visitRoots();
      state = STATE_MARK;
      // trace("state->MARK");
      // fall through
    }
    case STATE_MARK: {
      let black = i32(!white);
      obj = iter.next;
      if (obj != toSpace) {
        iter = obj;
        obj.color = black;
        // trace("mark", 3, changetype<usize>(obj), obj.rtId, obj.color);
        __visit_members(objToPtr(obj), VISIT_SCAN);
      } else {
        visitRoots();
        obj = iter.next;
        if (obj == toSpace) { // empty
          let from = fromSpace;
          fromSpace = toSpace;
          toSpace = from;
          white = black;
          iter = from.next;
          state = STATE_SWEEP;
          // trace("state->SWEEP");
        }
      }
      break;
    }
    case STATE_SWEEP: {
      obj = iter;
      if (obj != toSpace) {
        iter = obj.next;
        // trace("free", 3, changetype<usize>(obj), obj.rtId, obj.color);
        if (obj.color != i32(!white)) {
          let cur = fromSpace.next;
          while (cur != fromSpace) {
            assert(cur != null);
            if (cur == obj) trace("in fromSpace");
            cur = cur.next;
          }
          cur = toSpace.next;
          while (cur != toSpace) {
            assert(cur != null);
            if (cur == obj) trace("in toSpace");
            cur = cur.next;
          }
          assert(false);
        }
        free(obj);
        return 1;
      }
      toSpace.clear();
      state = STATE_IDLE;
      debt = 0;
      // trace("state->IDLE");
      break;
    }
  }
  return 0;
}

/** Frees an object an returns the number of bytes freed. */
function free(obj: Object): void {
  if (changetype<usize>(obj) < __heap_base) return;
  total -= 1;
  totalMem -= obj.size;
  if (isDefined(__finalize)) {
    __finalize(changetype<usize>(obj) + TOTAL_OVERHEAD);
  }
  __free(changetype<usize>(obj) + BLOCK_OVERHEAD);
}

// Automation heuristic

// @ts-ignore: decorator
@inline const STEPSIZE: usize = 100;

/** Number of objects currently managed by the GC. */
// @ts-ignore: decorator
@lazy var total: usize = 0;
/** Size of all objects currently managed by the GC. */
// @ts-ignore: decorator
@lazy var totalMem: usize = 0;
/** Threshold of objects for the next schedule GC step. */
// @ts-ignore: decorator
@lazy var threshold: usize = STEPSIZE;
/** Number of objects the GC is behind schedule. */
// @ts-ignore: decorator
@lazy var debt: usize = 0;

/** Automatically performs a series of GC steps. */
function auto(): void {
  if (total < threshold) return;
  if (TRACE) trace("GC (incremental) at mem/objs", 2, totalMem, total);
  debt = total - threshold;
  let limit: isize = 2 * STEPSIZE;
  do {
    limit -= step();
    if (state == STATE_IDLE) {
      threshold = 2 * total;
      if (TRACE) trace(" down to mem/objs (sweep complete)", 2, totalMem, total);
      return;
    }
  } while (limit > 0);
  if (debt < STEPSIZE) {
    threshold = total + STEPSIZE;
  } else {
    debt -= STEPSIZE;
    threshold = total;
  }
}

// Helpers

// @ts-ignore: decorator
@inline
function ptrToObj(ptr: usize): Object {
  return changetype<Object>(ptr - TOTAL_OVERHEAD);
}

// @ts-ignore: decorator
@inline
function objToPtr(obj: Object): usize {
  return changetype<usize>(obj) + TOTAL_OVERHEAD;
}

// Garbage collector interface

// @ts-ignore: decorator
@global @unsafe
export function __new(size: usize, id: i32): usize {
  if (state == STATE_INIT) init();
  // auto();
  var obj = changetype<Object>(__alloc(OBJECT_OVERHEAD + size) - BLOCK_OVERHEAD);
  fromSpace.push(obj); // sets next/prev
  obj.color = white;
  obj.rtId = id;
  obj.rtSize = <u32>size;
  var ptr = objToPtr(obj);
  memory.fill(ptr, 0, size);
  // trace("new", 4, changetype<usize>(obj), obj.rtId, obj.color, ptr);
  total += 1;
  totalMem += obj.size;
  return ptr;
}

// @ts-ignore: decorator
@global @unsafe
export function __renew(oldPtr: usize, size: usize): usize {
  if (state == STATE_INIT) init();
  if (size > OBJECT_MAXSIZE) throw new Error("allocation too large");
  if (oldPtr > __heap_base) totalMem -= ptrToObj(oldPtr).size;
  var newPtr = __realloc(oldPtr - OBJECT_OVERHEAD, OBJECT_OVERHEAD + size) + OBJECT_OVERHEAD;
  var newObj = changetype<Object>(newPtr - TOTAL_OVERHEAD);
  newObj.rtSize = <u32>size;
  newObj.next.prev = assert(newObj);
  newObj.prev.next = assert(newObj);
  totalMem += newObj.size;
  return newPtr;
}

// @ts-ignore: decorator
@global @unsafe
export function __link(parentPtr: usize, childPtr: usize, expectMultiple: bool): void {
  if (!childPtr) return;
  if (state == STATE_INIT) init();
  if (DEBUG) assert(parentPtr);
  var black = i32(!white);
  var parent = ptrToObj(parentPtr);
  if (parent.color == black) {
    let child = ptrToObj(childPtr);
    if (child.color == white) {
      if (expectMultiple) {
        // Move the barrier "backward". Suitable for containers receiving multiple stores.
        // Avoids a barrier for subsequent objects stored into the same container.
        parent.makeGray();
      } else {
        // Move the barrier "forward". Suitable for objects receiving isolated stores.
        // TODO: If the child has no pointers, make black immediately?
        child.makeGray();
      }
    }
  }
}

// @ts-ignore: decorator
@global @unsafe
function __visit(ptr: usize, cookie: i32): void { // eslint-disable-line @typescript-eslint/no-unused-vars
  if (!ptr) return;
  let obj = ptrToObj(ptr);
  // trace("visit", 3, changetype<usize>(obj), obj.rtId, obj.color);
  if (isDefined(ASC_RTRACE)) {
    if (!onvisit(obj, __stackptr)) return;
  }
  if (obj.color == white) obj.makeGray();
}

// @ts-ignore: decorator
@global @unsafe
export function __mark(ptr: usize): void {
  if (ptr) __visit(ptr, VISIT_SCAN);
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
  if (TRACE) trace("GC (full) done at mem/objs", 2, totalMem, total);
  threshold = 2 * total;
}
