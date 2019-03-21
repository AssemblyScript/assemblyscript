// A Pure Reference Counting Garbage Collector
//
// After the paper by D. Bacon et al., 2001, IBM T.J. Watson Research Center
// https://researcher.watson.ibm.com/researcher/files/us-bacon/Bacon03Pure.pdf

import { HEADER, HEADER_SIZE } from "../runtime";

ERROR("not implemented");

/* tslint:disable */

// TODO: new builtins
declare function ITERATECHILDREN(s: Header, fn: (t: Header) => void): void;
declare function ISACYCLIC(s: Header): bool;

/** Object Colorings for Cycle Collection */
const enum Color {
  /** In use or free. */
  BLACK = 0,
  /** Possible member of cycle. */
  GRAY = 1,
  /** Member of garbage cycle. */
  WHITE = 2,
  /** Possible root of cycle. */
  PURPLE = 3,
  /** Acyclic. */
  GREEN = 4
}

// TODO: this is a placeholder -> map this to HEADER
class Header {
  rc: u32;
  color: Color;
  buffered: bool;
}

// When reference counts are decremented, we place potential roots of cyclic garbage into a buffer
// called Roots. Periodically, we process this buffer and look for cycles by subtracting internal
// reference counts.

var rootsBuffer: usize = 0;
var rootsOffset: usize = 0; // insertion offset
var rootsLength: usize = 0; // insertion limit

function appendRoot(s: Header): void {
  if (rootsOffset >= rootsLength) {
    // grow for now
    let newLength = rootsLength ? 2 * rootsLength : 256 * sizeof<usize>();
    let newBuffer = memory.allocate(newLength);
    memory.copy(newBuffer, rootsBuffer, rootsOffset);
    memory.free(rootsBuffer);
    rootsBuffer = newBuffer;
    rootsLength = newLength;
  }
  store<usize>(rootsBuffer + rootsOffset, s);
  rootsOffset += sizeof<usize>();
}

function systemFree(s: Header): void {
  memory.free(changetype<usize>(s));
}

// When a reference to a node S is created, the reference count of T is incremented and it is
// colored black, since any object whose reference count was just incremented can not be garbage.

function increment(s: Header): void {
  s.rc += 1;
  s.color = ISACYCLIC(s) ? Color.GREEN : Color.BLACK; // TODO: is this about correct?
}

// When a reference to a node S is deleted, the reference count is decremented. If the reference
// count reaches zero, the procedure Release is invoked to free the garbage node. If the reference
// count does not reach zero, the node is considered as a possible root of a cycle.

function decrement(s: Header): void {
  s.rc -= 1;
  if (s.color == Color.GREEN) { // if (ISACYCLIC<T>()) { ... }
    if (!s.rc) systemFree(s);
    // TODO: is this correct? here, if `decrement` was generic (propagate from UNLINK<T,TParent>)
    // the green condition could be eliminated both here and in increment (just using black).
    // acyclic types also don't need ITERATECHILDREN then as these really just inc/dec/free.
  } else {
    if (!s.rc) release(s);
    else possibleRoot(s);
  }
}

// When the reference count of a node reaches zero, the contained pointers are deleted, the object
// is colored black, and unless it has been buffered, it is freed. If it has been buffered, it is
// in the Roots buffer and will be freed later (in the procedure MarkRoots).

function release(s: Header): void {
  ITERATECHILDREN(s, t => decrement(t)); // TODO: skip if acyclic ?
  s.color = Color.BLACK;
  if (!s.buffered) systemFree(s);
}

// When the reference count of S is decremented but does not reach zero, it is considered as a
// possible root of a garbage cycle. If its color is already purple, then it is already a candidate
// root; if not, its color is set to purple. Then the buffered flag is checked to see if it has
// been purple since we last performed a cycle collection. If it is not buffered, it is added to
// the buffer of possible roots.

function possibleRoot(s: Header): void {
  if (s.color != Color.PURPLE) {
    s.color = Color.PURPLE;
    if (!s.buffered) {
      s.buffered = true;
      appendRoot(s);
    }
  }
}

// When the root buffer is full, or when some other condition, such as low memory occurs, the
// actual cycle collection operation is invoked. This operation has three phases: MarkRoots, which
// removes internal reference counts; ScanRoots, which restores reference counts when they are
// non-zero; and finally CollectRoots, which actually collects the cyclic garbage.

function collectCycles(): void {
  markRoots();
  scanRoots();
  collectRoots();
}

// The marking phase looks at all the nodes S whose pointers have been stored in the Roots buffer
// since the last cycle collection. If the color of the node is purple (indicating a possible root
// of a garbage cycle) and the reference count has not become zero, then MarkGray(S) is invoked to
// perform a depth-first search in which the reached nodes are colored gray and internal reference
// counts are subtracted. Otherwise, the node is removed from the Roots buffer, the buffered flag
// is cleared, and if the reference count is zero the object is freed.

function markRoots(): void {
  var readOffset = rootsBuffer;
  var writeOffset = readOffset;
  var readLimit = readOffset + rootsOffset;
  while (readOffset < readLimit) {
    let s = load<Header>(readOffset);
    if (s.color == Color.PURPLE && s.rc > 0) {
      markGray(s);
      store<Header>(writeOffset, s);
      writeOffset += sizeof<usize>();
    } else {
      s.buffered = false;
      // remove from roots
      if (s.color == Color.BLACK && !s.rc) systemFree(s);
    }
    readOffset += sizeof<usize>();
  }
  rootsOffset = writeOffset - rootsBuffer;
}

// For each node S that was considered by MarkGray(S), this procedure invokes Scan(S) to either
// color the garbage subgraph white or re-color the live subgraph black.

function scanRoots(): void {
  var readOffset = rootsBuffer;
  var readLimit = readOffset + rootsOffset;
  while (readOffset < readLimit) {
    scan(load<Header>(readOffset));
    readOffset += sizeof<usize>();
  }
}

// After the ScanRoots phase of the CollectCycles procedure, any remaining white nodes will be
// cyclic garbage and will be reachable from the Roots buffer. This prodecure invokes CollectWhite
// for each node in the Roots buffer to collect the garbage; all nodes in the root buffer are
// removed and their buffered flag is cleared.

function collectRoots(): void {
  var readOffset = rootsBuffer;
  var readLimit = readOffset + rootsOffset;
  while (readOffset < readLimit) {
    let s = load<Header>(readOffset);
    // remove from roots
    s.buffered = false;
    collectWhite(s);
  }
  rootsOffset = 0;
}

// This procedure performs a simple depth-first traversal of the graph beginning at S, marking
// visited nodes gray and removing internal reference counts as it goes.

function markGray(s: Header): void {
  if (s.color != Color.GRAY) {
    s.color = Color.GRAY;
    ITERATECHILDREN(s, t => {
      t.rc -= 1;
      markGray(t);
    });
  }
}

// If this procedure finds a gray object whose reference count is greater than one, then that
// object and everything reachable from it are live data; it will therefore call ScanBlack(S) in
// order to re-color the reachable subgraph and restore the reference counts subtracted by
// MarkGray. However, if the color of an object is gray and its reference count is zero, then it is
// colored white, and Scan is invoked upon its chldren. Note that an object may be colored white
// and then re-colored black if it is reachable from some subsequently discovered live node.

function scan(s: Header): void {
  if (s.color == Color.GRAY) {
    if (s.rc > 0) scanBlack(s);
    else {
      s.color = Color.WHITE;
      ITERATECHILDREN(s, t => scan(t));
    }
  }

}

// This procedure performs the inverse operation of MarkGray, visiting the nodes, changing the
// color of objects back to black, and restoring their reference counts.

function scanBlack(s: Header): void {
  s.color = Color.BLACK;
  ITERATECHILDREN(s, t => {
    t.rc += 1;
    if (t.color != Color.BLACK) scanBlack(t);
  });
}

// This procedure recursively frees all white objects, re-coloring them black as it goes. If a
// white object is buffered, it is not freed; it will be freed later when it is found in the Roots
// buffer.

function collectWhite(s: Header): void {
  if (s.color == Color.WHITE && !s.buffered) {
    s.color = Color.BLACK;
    ITERATECHILDREN(s, t => collectWhite(t));
    systemFree(s);
  }
}

// Garbage collector interface

// @ts-ignore: decorator
@global
function __gc_link(ref: usize, parentRef: usize): void {
  increment(changetype<Header>(ref - HEADER_SIZE));
}

// @ts-ignore: decorator
@global
function __gc_unlink(ref: usize, parentRef: usize): void {
  decrement(changetype<Header>(ref - HEADER_SIZE))
}

// @ts-ignore: decorator
@global
function __gc_collect(): void {
  collectCycles();
}

// TODO:

// A significant constant-factor improvement can be obtained for cycle collection by observing that
// some objects are inherently acyclic. We speculate that they will comprise the majorits of
// objects in many applications. Therefore, if we can avoid cycle collection for inherently acyclic
// object, we will significantly reduce the overhead of cycle collection as a whole. [...]
//
// Acyclic classes may contain:
// - scalars;
// - references to classes that are both acyclic and final; and
// - arrays of either of the above.
//
// Our implementation marks objects whose class is acyclic with the special color green. Green
// objects are ignored by the cycle collection algorithm, except that when a dead cycle refers to
// green objects, they are collected along with the dead cycle.
