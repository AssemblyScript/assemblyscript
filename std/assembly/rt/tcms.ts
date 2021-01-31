import { BLOCK, BLOCK_OVERHEAD, OBJECT_OVERHEAD, OBJECT_MAXSIZE, TOTAL_OVERHEAD, DEBUG, TRACE, RTRACE } from "./common";
import { onvisit, oncollect } from "./rtrace";
import { E_ALLOCATION_TOO_LARGE, E_ALREADY_PINNED, E_NOT_PINNED } from "../util/error";

// === TCMS: A Two-Color Mark & Sweep garbage collector ===

// ╒═════════════╤══════════════ Colors ═══════════════════════════╕
// │ Color       │ Meaning                                         │
// ├─────────────┼─────────────────────────────────────────────────┤
// │ WHITE*      │ Unreachable                                     │
// │ BLACK*      │ Reachable                                       │
// │ TRANSPARENT │ Manually pinned (always reachable)              │
// └─────────────┴─────────────────────────────────────────────────┘
// * flipped between cycles

// @ts-ignore: decorator
@lazy var white = 0;
// @ts-ignore: decorator
@inline const transparent = 3;
// @ts-ignore: decorator
@inline const COLOR_MASK = 3;

/** Size in memory of all objects currently managed by the GC. */
// @ts-ignore: decorator
@lazy var total: usize = 0;

// @ts-ignore: decorator
@lazy var fromSpace = initLazy(changetype<Object>(memory.data(offsetof<Object>())));
// @ts-ignore: decorator
@lazy var toSpace = initLazy(changetype<Object>(memory.data(offsetof<Object>())));
// @ts-ignore: decorator
@lazy var pinSpace = initLazy(changetype<Object>(memory.data(offsetof<Object>())));

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

  /** Unlinks this object from its list. */
  unlink(): void {
    let next = this.next;
    if (next == null) {
      if (DEBUG) assert(this.prev == null && changetype<usize>(this) < __heap_base);
      return; // static data not yet linked
    }
    let prev = this.prev;
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
}

// Garbage collector interface

// @ts-ignore: decorator
@global @unsafe
export function __new(size: usize, id: i32): usize {
  if (size >= OBJECT_MAXSIZE) throw new Error(E_ALLOCATION_TOO_LARGE);
  var obj = changetype<Object>(__alloc(OBJECT_OVERHEAD + size) - BLOCK_OVERHEAD);
  obj.rtId = id;
  obj.rtSize = <u32>size;
  obj.linkTo(fromSpace, white);
  total += obj.size;
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
  if (size >= OBJECT_MAXSIZE) throw new Error(E_ALLOCATION_TOO_LARGE);
  total -= oldObj.size;
  var newPtr = __realloc(oldPtr - OBJECT_OVERHEAD, OBJECT_OVERHEAD + size) + OBJECT_OVERHEAD;
  var newObj = changetype<Object>(newPtr - TOTAL_OVERHEAD);
  newObj.rtSize = <u32>size;

  // Replace with new object
  newObj.next.prev = newObj;
  newObj.prev.next = newObj;

  total += newObj.size;
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
  if (RTRACE) if (!onvisit(obj)) return;
  if (obj.color == white) {
    obj.unlink(); // from fromSpace
    obj.linkTo(toSpace, i32(!white));
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
  obj.unlink(); // from pinSpace
  obj.linkTo(fromSpace, white);
}

// @ts-ignore: decorator
@global @unsafe
export function __collect(): void {
  if (TRACE) trace("GC at", 1, total);

  // Mark roots (add to toSpace)
  __visit_globals(VISIT_SCAN);

  // Mark direct members of pinned objects (add to toSpace)
  var pn = pinSpace;
  var iter = pn.next;
  while (iter != pn) {
    if (DEBUG) assert(iter.color == transparent);
    __visit_members(changetype<usize>(iter) + TOTAL_OVERHEAD, VISIT_SCAN);
    iter = iter.next;
  }

  // Mark what's reachable from toSpace
  var black = i32(!white);
  var to = toSpace;
  iter = to.next;
  while (iter != to) {
    if (DEBUG) assert(iter.color == black);
    __visit_members(changetype<usize>(iter) + TOTAL_OVERHEAD, VISIT_SCAN);
    iter = iter.next;
  }

  // Sweep what's left in fromSpace
  var from = fromSpace;
  iter = from.next;
  while (iter != from) {
    if (DEBUG) assert(iter.color == white);
    let newNext = iter.next;
    if (changetype<usize>(iter) < __heap_base) {
      iter.nextWithColor = 0; // may become linked again
      iter.prev = changetype<Object>(0);
    } else {
      total -= iter.size;
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

  if (TRACE) trace("GC done at", 1, total);
  if (RTRACE) oncollect(total);
}
