import { BLOCK, BLOCK_OVERHEAD, OBJECT_OVERHEAD, OBJECT_MAXSIZE, TOTAL_OVERHEAD, TRACE } from "./common";
import { onvisit, oncollect } from "./rtrace";

// === Two-Color Mark & Sweep garbage collector ===

// @ts-ignore: decorator
@lazy var white = 0;
// @ts-ignore: decorator
@lazy var fromSpace = initLazy(changetype<Object>(memory.data(offsetof<Object>())));
// @ts-ignore: decorator
@lazy var toSpace = initLazy(changetype<Object>(memory.data(offsetof<Object>())));
// @ts-ignore: decorator
@lazy var total: usize = 0;
// @ts-ignore: decorator
@lazy var totalMem: usize = 0;

function initLazy(space: Object): Object {
  space.nextWithColor = changetype<usize>(space);
  space.prev = space;
  return space;
}

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
}

/** Visits external objects. */
// @ts-ignore: decorator
@external("env", "visit")
declare function __visit_externals(cookie: u32): void;

// Garbage collector interface

// @ts-ignore: decorator
@global @unsafe
export function __new(size: usize, id: i32): usize {
  if (size >= OBJECT_MAXSIZE) throw new Error("allocation too large");
  var obj = changetype<Object>(__alloc(OBJECT_OVERHEAD + size) - BLOCK_OVERHEAD);

  // Initialize header
  obj.rtId = id;
  obj.rtSize = <u32>size;

  // Add to fromSpace
  var from = fromSpace;
  var prev = from.prev;
  obj.nextWithColor = changetype<usize>(from) | white;
  obj.prev = prev;
  prev.next = obj;
  from.prev = obj;

  if (TRACE) {
    total += 1;
    totalMem += obj.size;
  }
  return changetype<usize>(obj) + TOTAL_OVERHEAD;
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
  if (TRACE) totalMem -= oldObj.size;
  var newPtr = __realloc(oldPtr - OBJECT_OVERHEAD, OBJECT_OVERHEAD + size) + OBJECT_OVERHEAD;
  var newObj = changetype<Object>(newPtr - TOTAL_OVERHEAD);
  newObj.rtSize = <u32>size;

  // Replace with new object
  newObj.next.prev = newObj;
  newObj.prev.next = newObj;

  if (TRACE) totalMem += newObj.size;
  return newPtr;
}

// @ts-ignore: decorator
@global @unsafe
export function __link(parentPtr: usize, childPtr: usize, expectMultiple: bool): void {
  // nop
}

// @ts-ignore: decorator
@global @unsafe
export function __visit(ptr: usize, cookie: i32): void {
  if (!ptr) return;
  let obj = changetype<Object>(ptr - TOTAL_OVERHEAD);
  if (isDefined(ASC_RTRACE)) if (!onvisit(obj)) return;
  if (obj.color == white) {

    // Unlink from fromSpace
    let next = obj.next;
    if (next) { // otherwise static data
      let prev = obj.prev;
      next.prev = prev;
      prev.next = next;
    }

    // Link to toSpace
    let to = toSpace;
    let prev = to.prev;
    obj.nextWithColor = changetype<usize>(to) | i32(!white);
    obj.prev = prev;
    prev.next = obj;
    to.prev = obj;
  }
}

// @ts-ignore: decorator
@global @unsafe
export function __collect(): void {
  if (TRACE) trace("GC at mem/objs", 2, totalMem, total);

  // Add roots to toSpace
  __visit_globals(0);
  __visit_externals(0);

  // Mark everything reachable, add to toSpace
  var black = i32(!white);
  var to = toSpace;
  var iter = to.next;
  while (iter != to) {
    iter.color = black;
    __visit_members(changetype<usize>(iter) + TOTAL_OVERHEAD, 0);
    iter = iter.next;
  }

  // Sweep what's left in fromSpace
  var from = fromSpace;
  iter = from.next;
  while (iter != from) {
    let newNext = iter.next;
    if (changetype<usize>(iter) > __heap_base) {
      if (TRACE) {
        total -= 1;
        totalMem -= iter.size;
      }
      if (isDefined(__finalize)) __finalize(changetype<usize>(iter) + TOTAL_OVERHEAD);
      __free(changetype<usize>(iter) + BLOCK_OVERHEAD);
    }
    iter = newNext;
  }
  from.nextWithColor = changetype<usize>(from);
  from.prev = from;

  // Flip spaces and colors
  fromSpace = to;
  toSpace = from;
  white = black;

  if (TRACE) trace("GC done at mem/objs", 2, totalMem, total);
  if (isDefined(ASC_RTRACE)) oncollect(total, totalMem);
}
