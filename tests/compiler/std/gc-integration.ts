// A sanity test for GC integration hooks

@global
declare function gc_roots(): void; // compiler-generated: iterates over the root set

@global
function gc_alloc(size: usize): usize {
  // gc-provided: called when allocating a managed object
  return 8;
}

@global
function gc_visit(obj: usize): void {
  // gc-provided: called each time a managed object is marked, in turn traversing its children
}

@global
function gc_refer(parent: usize, child: usize): void {
  // gc-provided: called each time a managed child becomes referred to from a managed parent
}

class Foo {}

var foo1: Foo | null = null;
var foo2: Foo | null = null;
var foo3: Foo | null = null;
