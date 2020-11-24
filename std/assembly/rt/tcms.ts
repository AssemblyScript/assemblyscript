import { BLOCK, BLOCK_OVERHEAD, OBJECT_OVERHEAD, OBJECT_MAXSIZE, TOTAL_OVERHEAD, DEBUG } from "./common";

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

/** Visit cookie indicating marking. */
// @ts-ignore: decorator
@inline const VISIT_MARK = 0;

/** Current collector state. */
// @ts-ignore: decorator
@lazy var state = STATE_INIT;
/** Current white color. Flips between 0 and 1. */
// @ts-ignore: decorator
@lazy var white = 0;

// From and to spaces
// @ts-ignore: decorator
@lazy var fromSpace = changetype<ObjectList>(memory.data(offsetof<ObjectList>() - <u32>BLOCK_OVERHEAD));
// @ts-ignore: decorator
@lazy var toSpace = changetype<ObjectList>(memory.data(offsetof<ObjectList>() - <u32>BLOCK_OVERHEAD));
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

  /** Unlinks this object from its list. */
  unlink(): void {
    var next = this.next;
    var prev = this.prev;
    next.prev = prev;
    prev.next = next;
  }

  /** Marks this object as gray, that is reachable with unscanned children. */
  makeGray(): void {
    const gray = 2;
    if (this == iter) iter = this.prev;
    this.unlink();
    toSpace.push(this);
    this.color = gray;
  }
}

/** A list of managed objects. Used for the from and to spaces. */
@unmanaged class ObjectList extends Object {

  /** Inserts an object. */
  push(obj: Object): void {
    var prev = this.prev;
    obj.next = this;
    obj.prev = prev;
    prev.next = obj;
    this.prev = obj;
  }

  /** Clears this list. */
  @inline clear(): void {
    this.nextWithColor = changetype<usize>(this);
    this.prev = this;
  }
}

/** Marks an object as reachable. */
function mark(obj: Object): void {
  obj.color = i32(!white);
  __visit_members(changetype<usize>(obj) + TOTAL_OVERHEAD, VISIT_MARK);
}

/** Performs a single step according to the current state. */
function step(): void {
  var obj: Object;
  switch (state) {
    case STATE_INIT:
      init();
      // fall through
    case STATE_IDLE: {
      __visit_globals(VISIT_MARK);
      markExternals();
      state = STATE_MARK;
      break;
    }
    case STATE_MARK: {
      obj = iter.next;
      if (obj !== toSpace) {
        iter = obj;
        mark(obj);
      } else {
        __visit_globals(VISIT_MARK);
        markExternals();
        obj = iter.next;
        if (obj === toSpace) {
          let from = fromSpace;
          fromSpace = toSpace;
          toSpace = from;
          white = i32(!white);
          iter = from.next;
          state = STATE_SWEEP;
        }
      }
      break;
    }
    case STATE_SWEEP: {
      obj = iter;
      if (obj !== toSpace) {
        iter = obj.next;
        if (isDefined(__finalize)) {
          __finalize(changetype<usize>(obj) + TOTAL_OVERHEAD);
        }
        __free(changetype<usize>(obj) + BLOCK_OVERHEAD);
      } else {
        toSpace.clear();
        state = STATE_IDLE;
      }
      break;
    }
  }
}

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
  var obj = changetype<Object>(__alloc(OBJECT_OVERHEAD + size) - BLOCK_OVERHEAD);
  obj.rtId = id;
  obj.rtSize = <u32>size;
  fromSpace.push(obj);
  obj.color = white;
  return objToPtr(obj);
}

// @ts-ignore: decorator
@global @unsafe
export function __renew(oldPtr: usize, size: usize): usize {
  if (state == STATE_INIT) init();
  if (size > OBJECT_MAXSIZE) throw new Error("allocation too large");
  var oldObj = changetype<Object>(oldPtr - TOTAL_OVERHEAD);
  var nextWithColor = oldObj.nextWithColor;
  var prev = oldObj.prev;
  var newPtr = __realloc(oldPtr - OBJECT_OVERHEAD, OBJECT_OVERHEAD + size);
  var newObj = changetype<Object>(newPtr - BLOCK_OVERHEAD);
  newObj.rtSize = <u32>size;
  if (newPtr != oldPtr) { // moved, unlink old & link new
    newObj.nextWithColor = nextWithColor;
    newObj.prev = prev;
    changetype<Object>(nextWithColor & ~COLOR_MASK).prev = newObj;
    prev.next = newObj;
  }
  return newPtr + OBJECT_OVERHEAD;
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
  if (obj.color == white) obj.makeGray();
}

// @ts-ignore: decorator
@global @unsafe
export function __mark(ptr: usize): void {
  if (ptr) mark(changetype<Object>(ptr - TOTAL_OVERHEAD));
}

// @ts-ignore: decorator
@global @unsafe
export function __collect(): void {
  do step(); while (state != STATE_IDLE);
}

// @ts-ignore: decorator
@external("env", "mark")
declare function markExternals(): void;
