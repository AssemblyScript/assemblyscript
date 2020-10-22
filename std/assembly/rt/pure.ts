import { BLOCK_OVERHEAD, DEBUG, OBJECT, OBJECT_MAXSIZE, OBJECT_OVERHEAD, TOTAL_OVERHEAD } from "rt/common";
import { Block, freeBlock, ROOT } from "rt/tlsf";
import { TypeinfoFlags } from "shared/typeinfo";
import { onincrement, ondecrement } from "./rtrace";

// === A Pure Reference Counting Garbage Collector ===
// see: https://researcher.watson.ibm.com/researcher/files/us-bacon/Bacon03Pure.pdf

// ╒══════════════════════ GC Info structure ══════════════════════╕
// │  3                   2                   1                    │
// │1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0│
// ├─┼─┴─┴─┼─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┤
// │B│color│                     refCount                          │
// └─┴─────┴───────────────────────────────────────────────────────┘
// B: buffered

// @ts-ignore: decorator
@inline const BUFFERED_MASK: u32 = 1 << ((sizeof<u32>() * 8) - 1);
// @ts-ignore: decorator
@inline const COLOR_BITS = 3;
// @ts-ignore: decorator
@inline const COLOR_SHIFT: u32 = ctz(BUFFERED_MASK) - COLOR_BITS;
// @ts-ignore: decorator
@inline const COLOR_MASK: u32 = ((1 << COLOR_BITS) - 1) << COLOR_SHIFT;
// @ts-ignore: decorator
@inline export const REFCOUNT_MASK: u32 = (1 << COLOR_SHIFT) - 1;

// ╒════════╤═══════════════════ Colors ═══════════════════════════╕
// │ Color  │ Meaning                                              │
// ├────────┼──────────────────────────────────────────────────────┤
// │ BLACK  │ In use or free                                       │
// │ GRAY   │ Possible member of cycle                             │
// │ WHITE  │ Member of garbage cycle                              │
// │ PURPLE │ Possible root of cycle                               │
// │ RED    │ Candidate cycle undergoing Σ-computation *concurrent │
// │ ORANGE │ Candidate cycle awaiting epoch boundary  *concurrent │
// └────────┴──────────────────────────────────────────────────────┘
// Acyclic detection has been decoupled, hence no GREEN.

// @ts-ignore: decorator
@inline const COLOR_BLACK: u32 = 0 << COLOR_SHIFT;
// @ts-ignore: decorator
@inline const COLOR_GRAY: u32 = 1 << COLOR_SHIFT;
// @ts-ignore: decorator
@inline const COLOR_WHITE: u32 = 2 << COLOR_SHIFT;
// @ts-ignore: decorator
@inline const COLOR_PURPLE: u32 = 3 << COLOR_SHIFT;
// @ts-ignore: decorator
// @inline const COLOR_RED: u32 = 4 << COLOR_SHIFT;
// @ts-ignore: decorator
// @inline const COLOR_ORANGE: u32 = 5 << COLOR_SHIFT;

// @ts-ignore: decorator
@inline const VISIT_DECREMENT = 1; // guard 0
// @ts-ignore: decorator
@inline const VISIT_MARKGRAY = 2;
// @ts-ignore: decorator
@inline const VISIT_SCAN = 3;
// @ts-ignore: decorator
@inline const VISIT_SCANBLACK = 4;
// @ts-ignore: decorator
@inline const VISIT_COLLECTWHITE = 5;

// @ts-ignore: decorator
@global @unsafe @lazy
function __visit(ref: usize, cookie: i32): void { // eslint-disable-line @typescript-eslint/no-unused-vars
  if (ref < __heap_base) return;
  if (isDefined(__GC_ALL_ACYCLIC)) {
    if (DEBUG) assert(cookie == VISIT_DECREMENT);
    decrement(changetype<OBJECT>(ref - TOTAL_OVERHEAD));
  } else {
    let s = changetype<OBJECT>(ref - TOTAL_OVERHEAD);
    switch (cookie) {
      case VISIT_DECREMENT: {
        decrement(s);
        break;
      }
      case VISIT_MARKGRAY: {
        if (DEBUG) assert((s.gcInfo & REFCOUNT_MASK) > 0);
        s.gcInfo = s.gcInfo - 1;
        markGray(s);
        break;
      }
      case VISIT_SCAN: {
        scan(s);
        break;
      }
      case VISIT_SCANBLACK: {
        let info = s.gcInfo;
        assert((info & ~REFCOUNT_MASK) == ((info + 1) & ~REFCOUNT_MASK)); // overflow
        s.gcInfo = info + 1;
        if ((info & COLOR_MASK) != COLOR_BLACK) {
          scanBlack(s);
        }
        break;
      }
      case VISIT_COLLECTWHITE: {
        collectWhite(s);
        break;
      }
      default: if (DEBUG) assert(false);
    }
  }
}

/** Increments the reference count of the specified block by one.*/
function increment(s: OBJECT): void {
  var info = s.gcInfo;
  assert((info & ~REFCOUNT_MASK) == ((info + 1) & ~REFCOUNT_MASK)); // overflow
  s.gcInfo = info + 1;
  if (isDefined(ASC_RTRACE)) onincrement(s);
  if (DEBUG) assert(!(s.mmInfo & 1)); // used
}

/** Decrements the reference count of the specified block by one, possibly freeing it. */
// @ts-ignore: decorator
@lazy
function decrement(s: OBJECT): void {
  var info = s.gcInfo;
  var rc = info & REFCOUNT_MASK;
  if (isDefined(ASC_RTRACE)) ondecrement(s);
  if (DEBUG) assert(!(s.mmInfo & 1)); // used
  if (rc == 1) {
    __visit_members(changetype<usize>(s) + TOTAL_OVERHEAD, VISIT_DECREMENT);
    if (isDefined(__GC_ALL_ACYCLIC)) {
      if (DEBUG) assert(!(info & BUFFERED_MASK));
      finalize(s);
    } else {
      if (!(info & BUFFERED_MASK)) {
        finalize(s);
      } else {
        s.gcInfo = BUFFERED_MASK | COLOR_BLACK | 0;
      }
    }
  } else {
    if (DEBUG) assert(rc > 0);
    if (isDefined(__GC_ALL_ACYCLIC)) {
      s.gcInfo = (info & ~REFCOUNT_MASK) | (rc - 1);
    } else {
      if (!(__typeinfo(s.rtId) & TypeinfoFlags.ACYCLIC)) {
        s.gcInfo = BUFFERED_MASK | COLOR_PURPLE | (rc - 1);
        if (!(info & BUFFERED_MASK)) {
          appendRoot(s);
        }
      } else {
        s.gcInfo = (info & ~REFCOUNT_MASK) | (rc - 1);
      }
    }
  }
}

/** Finalizes the specified block, giving it back to the memory manager. */
function finalize(s: OBJECT): void {
  if (isDefined(__finalize)) {
    __finalize(changetype<usize>(s) + TOTAL_OVERHEAD);
  }
  freeBlock(ROOT, changetype<Block>(s));
}

/** Buffer of possible roots. */
// @ts-ignore: decorator
@lazy var ROOTS: usize;
/** Current absolute offset into the `ROOTS` buffer. */
// @ts-ignore: decorator
@lazy var CUR: usize = 0;
/** Current absolute end offset into the `ROOTS` buffer. */
// @ts-ignore: decorator
@lazy var END: usize = 0;

/** Appends a block to possible roots. */
function appendRoot(s: OBJECT): void {
  var cur = CUR;
  if (cur >= END) {
    growRoots(); // TBD: either that or pick a default and force collection on overflow
    cur = CUR;
  }
  store<OBJECT>(cur, s);
  CUR = cur + sizeof<usize>();
}

/** Grows the roots buffer if it ran full. */
function growRoots(): void {
  var oldRoots = ROOTS;
  var oldSize = CUR - oldRoots;
  var newSize = max(oldSize * 2, 64 << alignof<usize>());
  var newRoots = __alloc(newSize);
  memory.copy(newRoots, oldRoots, oldSize);
  if (oldRoots) __free(oldRoots);
  ROOTS = newRoots;
  CUR = newRoots + oldSize;
  END = newRoots + newSize;
}

/** Collects cyclic garbage. */
// @ts-ignore: decorator
@global @unsafe @lazy
export function __collect(): void {
  if (isDefined(__GC_ALL_ACYCLIC)) return;

  // markRoots
  var roots = ROOTS;
  var cur = roots;
  for (let pos = cur, end = CUR; pos < end; pos += sizeof<usize>()) {
    let s = load<OBJECT>(pos);
    let info = s.gcInfo;
    if ((info & COLOR_MASK) == COLOR_PURPLE && (info & REFCOUNT_MASK) > 0) {
      markGray(s);
      store<OBJECT>(cur, s);
      cur += sizeof<usize>();
    } else {
      if ((info & COLOR_MASK) == COLOR_BLACK && !(info & REFCOUNT_MASK)) {
        finalize(s);
      } else {
        s.gcInfo = info & ~BUFFERED_MASK;
      }
    }
  }
  CUR = cur;

  // scanRoots
  for (let pos = roots; pos < cur; pos += sizeof<usize>()) {
    scan(load<OBJECT>(pos));
  }

  // collectRoots
  for (let pos = roots; pos < cur; pos += sizeof<usize>()) {
    let s = load<OBJECT>(pos);
    s.gcInfo = s.gcInfo & ~BUFFERED_MASK;
    collectWhite(s);
  }
  CUR = roots;
}

/** Marks a block as gray (possible member of cycle) during the collection phase. */
function markGray(s: OBJECT): void {
  var info = s.gcInfo;
  if ((info & COLOR_MASK) != COLOR_GRAY) {
    s.gcInfo = (info & ~COLOR_MASK) | COLOR_GRAY;
    __visit_members(changetype<usize>(s) + TOTAL_OVERHEAD, VISIT_MARKGRAY);
  }
}

/** Scans a block during the collection phase, determining whether it is garbage or not. */
function scan(s: OBJECT): void {
  var info = s.gcInfo;
  if ((info & COLOR_MASK) == COLOR_GRAY) {
    if ((info & REFCOUNT_MASK) > 0) {
      scanBlack(s);
    } else {
      s.gcInfo = (info & ~COLOR_MASK) | COLOR_WHITE;
      __visit_members(changetype<usize>(s) + TOTAL_OVERHEAD, VISIT_SCAN);
    }
  }
}

/** Marks a block as black (in use) if it was found to be reachable during the collection phase. */
function scanBlack(s: OBJECT): void {
  s.gcInfo = (s.gcInfo & ~COLOR_MASK) | COLOR_BLACK;
  __visit_members(changetype<usize>(s) + TOTAL_OVERHEAD, VISIT_SCANBLACK);
}

/** Collects all white (member of a garbage cycle) nodes when completing the collection phase.  */
function collectWhite(s: OBJECT): void {
  var info = s.gcInfo;
  if ((info & COLOR_MASK) == COLOR_WHITE && !(info & BUFFERED_MASK)) {
    s.gcInfo = (info & ~COLOR_MASK) | COLOR_BLACK;
    __visit_members(changetype<usize>(s) + TOTAL_OVERHEAD, VISIT_COLLECTWHITE);
    finalize(s);
  }
}

// @ts-ignore: decorator
@global @unsafe
export function __new(size: usize, id: u32): usize {
  if (size > OBJECT_MAXSIZE) throw new Error("allocation too large");
  var ptr = __alloc(OBJECT_OVERHEAD + size);
  var object = changetype<OBJECT>(ptr - BLOCK_OVERHEAD);
  object.gcInfo = 0; // RC=0
  object.gcInfo2 = 0;
  object.rtId = id;
  object.rtSize = <u32>size;
  return ptr + OBJECT_OVERHEAD;
}

// @ts-ignore: decorator
@global @unsafe
export function __renew(oldPtr: usize, size: usize): usize {
  if (size > OBJECT_MAXSIZE) throw new Error("allocation too large");
  var newPtr = __realloc(oldPtr - OBJECT_OVERHEAD, OBJECT_OVERHEAD + size);
  changetype<OBJECT>(newPtr - BLOCK_OVERHEAD).rtSize = <u32>size;
  return newPtr + OBJECT_OVERHEAD;
}

// @ts-ignore: decorator
@global @unsafe
export function __retain(ptr: usize): usize {
  if (ptr > __heap_base) increment(changetype<OBJECT>(ptr - TOTAL_OVERHEAD));
  return ptr;
}

// @ts-ignore: decorator
@global @unsafe
export function __release(ptr: usize): void {
  if (ptr > __heap_base) decrement(changetype<OBJECT>(ptr - TOTAL_OVERHEAD));
}
