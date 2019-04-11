// An experiment on how an ARC runtime could look like.

// After the paper "A Pure Reference Counting Garbage Collector" by David F. Bacon et al.

// @ts-ignore: decorator
@inline
const DEBUG = true;

// TODO: make visitors eat cookies so we can compile direct calls into a switch
function __rt_visit_members(s: Block, cookie: i32): void { unreachable(); }
function __rt_flags(classId: u32): u32 { return unreachable(); }
const ACYCLIC_FLAG: u32 = 0;

// ╒══════════════════════ GC Info structure ══════════════════════╕
//    3                   2                   1
//  1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0  bits
// ├─┼─┴─┴─┼─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┤
// │B│color│                     refCount                          │
// └─┴─────┴───────────────────────────────────────────────────────┘
// B: buffered

// @ts-ignore: decorator
@inline
const BUFFERED_BIT: u32 = 1 << (sizeof<u32>() * 8 - 1);
// @ts-ignore: decorator
@inline
const COLOR_SIZE = 3;
// @ts-ignore: decorator
@inline
const COLOR_SHIFT: u32 = ctz(BUFFERED_BIT) - COLOR_SIZE;
// @ts-ignore: decorator
@inline
const COLOR_BITS: u32 = ((1 << COLOR_SIZE) - 1) << COLOR_SHIFT;
// @ts-ignore: decorator
@inline
const REFCOUNT_BITS: u32 = (1 << COLOR_SHIFT) - 1;

// ╒════════╤════════════ Colors ══════════════════════╕
// │ Color  │ Meaning                                  │
// ├────────┼──────────────────────────────────────────┤
// │ BLACK  │ In use or free                           │
// │ GRAY   │ Possible member of cycle                 │
// │ WHITE  │ Member of garbage cycle                  │
// │ PURPLE │ Possible root of cycle                   │
// │ RED    │ Candidate cycle undergoing Σ-computation │ concurrent only
// │ ORANGE │ Candidate cycle awaiting epoch boundary  │ concurrent only
// └────────┴──────────────────────────────────────────┘
// Acyclic detection has been decoupled, hence no GREEN.

// @ts-ignore: decorator
@inline
const COLOR_BLACK: u32 = 0 << COLOR_SHIFT;
// @ts-ignore: decorator
@inline
const COLOR_GRAY: u32 = 1 << COLOR_SHIFT;
// @ts-ignore: decorator
@inline
const COLOR_WHITE: u32 = 2 << COLOR_SHIFT;
// @ts-ignore: decorator
@inline
const COLOR_PURPLE: u32 = 3 << COLOR_SHIFT;
// @ts-ignore: decorator
@inline
const COLOR_RED: u32 = 4 << COLOR_SHIFT;
// @ts-ignore: decorator
@inline
const COLOR_ORANGE: u32 = 5 << COLOR_SHIFT;

// @ts-ignore: decorator
@inline
const VISIT_DECREMENT = 1; // guard 0
// @ts-ignore: decorator
@inline
const VISIT_MARKGRAY = 2;
// @ts-ignore: decorator
@inline
const VISIT_SCAN = 3;
// @ts-ignore: decorator
@inline
const VISIT_SCANBLACK = 4;
// @ts-ignore: decorator
@inline
const VISIT_COLLECTWHITE = 5;

// @ts-ignore: decorator
@global
function __rt_visit(s: Block, cookie: i32): void {
  switch (cookie) {
    case VISIT_DECREMENT: {
      decrement(s);
      break;
    }
    case VISIT_MARKGRAY: {
      if (DEBUG) assert((s.gcInfo & REFCOUNT_BITS) > 0);
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
      assert((info & ~REFCOUNT_BITS) == ((info + 1) & ~REFCOUNT_BITS)); // overflow
      s.gcInfo = info + 1;
      if ((info & COLOR_BITS) != COLOR_BLACK) {
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

function increment(s: Block): void {
  var info = s.gcInfo;
  assert((info & ~REFCOUNT_BITS) == ((info + 1) & ~REFCOUNT_BITS)); // overflow
  s.gcInfo = info + 1;
}

function decrement(s: Block): void {
  var info = s.gcInfo;
  var rc = info & REFCOUNT_BITS;
  if (rc == 1) {
    __rt_visit_members(s, VISIT_DECREMENT);
    if (!(info & BUFFERED_BIT)) {
      free(s);
    } else {
      s.gcInfo = BUFFERED_BIT | COLOR_BLACK | 0;
    }
  } else {
    if (DEBUG) assert(rc > 0);
    if (!(__rt_flags(s.classId) & ACYCLIC_FLAG)) {
      s.gcInfo = BUFFERED_BIT | COLOR_PURPLE | (rc - 1);
      if (!(info & BUFFERED_BIT)) {
        appendRoot(s);
      }
    } else {
      s.gcInfo = (info & ~REFCOUNT_BITS) | (rc - 1);
    }
  }
}

var ROOTS: usize;
var CUR: usize = 0;
var END: usize = 0;

function appendRoot(s: Block): void {
  var cur = CUR;
  if (cur >= END) {
    growRoots(); // TBD: either that or pick a default and force collection on overflow
    cur = CUR;
  }
  store<Block>(cur, s);
  CUR = cur + 1;
}

function growRoots(): void {
  var oldRoots = ROOTS;
  var oldSize = CUR - oldRoots;
  var newSize = max(oldSize * 2, 64 << alignof<usize>());
  var newRoots = memory.allocate(newSize);
  memory.copy(newRoots, oldRoots, oldSize);
  ROOTS = newRoots;
  CUR = newRoots + oldSize;
  END = newRoots + newSize;
}

function collectCycles(): void {

  // markRoots
  var roots = ROOTS;
  var cur = roots;
  for (let pos = cur, end = CUR; pos < end; pos += sizeof<usize>()) {
    let s = load<Block>(pos);
    let info = s.gcInfo;
    if ((info & COLOR_BITS) == COLOR_PURPLE && (info & REFCOUNT_BITS) > 0) {
      markGray(s);
      store<Block>(cur, s);
      cur += sizeof<usize>();
    } else {
      if ((info & COLOR_BITS) == COLOR_BLACK && !(info & REFCOUNT_BITS)) {
        free(s);
      } else {
        s.gcInfo = info & ~BUFFERED_BIT;
      }
    }
  }
  CUR = cur;

  // scanRoots
  for (let pos = roots; pos < cur; pos += sizeof<usize>()) {
    scan(load<Block>(pos));
  }

  // collectRoots
  for (let pos = roots; pos < cur; pos += sizeof<usize>()) {
    let s = load<Block>(pos);
    s.gcInfo = s.gcInfo & ~BUFFERED_BIT;
    collectWhite(s);
  }
  CUR = roots;
}

function markGray(s: Block): void {
  var info = s.gcInfo;
  if ((info & COLOR_BITS) != COLOR_GRAY) {
    s.gcInfo = (info & ~COLOR_BITS) | COLOR_GRAY;
    __rt_visit_members(s, VISIT_MARKGRAY);
  }
}

function scan(s: Block): void {
  var info = s.gcInfo;
  if ((info & COLOR_BITS) == COLOR_GRAY) {
    if ((info & REFCOUNT_BITS) > 0) {
      scanBlack(s);
    } else {
      s.gcInfo = (info & ~COLOR_BITS) | COLOR_WHITE;
      __rt_visit_members(s, VISIT_SCAN);
    }
  }
}

function scanBlack(s: Block): void {
  s.gcInfo = (s.gcInfo & ~COLOR_BITS) | COLOR_BLACK;
  __rt_visit_members(s, VISIT_SCANBLACK);
}

function collectWhite(s: Block): void {
  var info = s.gcInfo;
  if ((info & COLOR_BITS) == COLOR_WHITE && !(info & BUFFERED_BIT)) {
    s.gcInfo = (info & ~COLOR_BITS) | COLOR_BLACK;
    __rt_visit_members(s, VISIT_COLLECTWHITE);
  }
}

function free(s: Block): void {
  unreachable(); // TODO
}

// TODO: merge with TLSF
@unmanaged
class Block {
  /** Memory manager info. */
  mmInfo: usize; // u32 in WASM32. WASM64 might need adaption
  /** Garbage collector info. */
  gcInfo: u32;
  /** Runtime class id. */
  classId: u32;
  /** Runtime object payload size. */
  payloadSize: u32;
}

// keep alive, everything else is reached from here
export {
  __rt_visit,
  increment as retain,
  decrement as release,
  collectCycles as collect
};
