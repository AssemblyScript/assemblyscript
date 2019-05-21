The AssemblyScript Runtime
==========================

The runtime provides the functionality necessary to dynamically allocate and deallocate memory of objects, arrays and buffers, as well as keep track of references that are no longer used.

Interface
---------

* **__alloc**(size: `usize`, id: `u32` = 0): `usize`<br />
  Dynamically allocates a chunk of memory of at least the specified size and returns its address.
  Alignment is guaranteed to be 16 bytes to fit up to v128 values naturally.

* **__realloc**(ref: `usize`, size: `usize`): `usize`<br />
  Dynamically changes the size of a chunk of memory, possibly moving it to a new address.

* **__free**(ref: `usize`): `void`<br />
  Frees a dynamically allocated chunk of memory by its address.

* **__retain**(ref: `usize`): `usize`<br />
  Retains a reference to an object. The object doesn't become collected as long as there's at least one retained reference. Returns the retained reference.

* **__release**(ref: `usize`): `void`<br />
  Releases a reference to an object. The object is considered for collection once all references to it have been released.

* **__collect**(): `void`<br />
  Forces a full garbage collection cycle. By default this means that reference cycles are resolved and possibly collected.

### Internals

* **__retainRelease**(newRef: `usize`, oldRef: `usize`): `usize`<br />
  Retains a reference to an object type while releasing the reference it replaces. Returns the retained reference.

* **__visit**(ref: `usize`, cookie: `u32`): `void`<br />
  Concrete visitor implementation called during traversal. Cookie can be used to indicate one of multiple operations.

### Built-ins

* **__typeinfo**(id: `u32`): `RTTIFlags`<br />
  Obtains the runtime type information for objects with the specified runtime id. Runtime type information is a set of flags indicating whether a reference type is managed, an array or similar, and what the relevant alignments when creating an instance externally are etc.

* **__visit_globals**(cookie: `u32`): `void`<br />
  Calls `__visit` on each global that is of a reference type. Not used anymore (originally provided to support tracing GCs) but still here for possible future use.

* **__visit_members**(ref: `usize`, cookie: `u32`): `void`<br />
  Calls `__visit` on each member of the object pointed to by `ref`.

Full/half
---------

The [full](./index-full.ts) runtime is based on [the TLSF memory manager](./tlsf.ts) and [a pure reference counting garbage collector](./pure.ts) and provides all the functionality necessary. The [half](./index-half.ts) alias is essentially the same, but doesn't expose the runtime API so unused runtime code can be DCE'ed.

Stub/none
---------

The [stub](./index-stub.ts) runtime, though fully functional, provides minimal dynamic memory allocation but no deallocation. Useful for prototyping or very short-lived programs with hardly any memory footprint. The [none](./index-none.ts) alias is the same, but doesn't expose the runtime API so unused runtime code can be DCE'ed.

Integration notes
-----------------

The underlying reference counting implementation works very similar to other implementations. When an object is stored in a local, global or field, its reference becomes retained (reference count is incremented by 1), respectively when it becomes deleted, it is released (reference count is decremented by 1). Once the reference count reaches zero, the object is considered for collection and the reference count of all contained objects (fields, array elements etc.) is decremented by 1. Now, if an object is inherently acyclic (most objects are), it is free'd right away, while otherwise it is added to a cycle pool and considered for cycle collection on the next `__collect`.

Differences to other implementations include:

* A new object from `__alloc` doesn't start with a reference count of 1, but 0.
* When an object is returned from a function, it remains at RC + 1 and the caller is expected to release it.
* Functions with reference type arguments retain each such argument when called, and release it again when exited. This can't be counted on, however, because the compiler may decide to eliminate these where unnecessary.
* Getters, setters, operator overloads and constructors are function calls and behave like one.

Even though the rules are simple, working with the runtime internals within standard library code can be tricky and requires knowledge of where the compiler will insert runtime calls automatically. For instance

* `changetype`ing a pointer to a reference type or vice-versa has no side-effects. The pointer is untracked before, and the reference becomes tracked afterwards, but there's nothing inserted in between.
* `load`, `store` and similar built-ins aren't functions but intrinsics and as such have no side-effects. For example a `load<Ref>(...)` is equivalent to a `changetype<Ref>(load<usize>(...))` and a `store<Ref>(..., ref)` equivalent to a `store<usize>(..., changetype<usize>(ref))`.

**GOOD:** In case of doubt, the following pattern is universal:

```ts
var ref = changetype<Ref>(__alloc(SIZE, idof<Ref>())); // retains the object in `ref`
// here, the __retain is inserted by the assignment to ref, not by changetype or __alloc
...
return ref; // knows `ref` is already retained and simply returns it
```

**BAD:** A pattern one shouldn't use is:

```ts
someFunc(changetype<Ref>(__alloc(SIZE, idof<Ref>()))); // might free the object before the call returns
```

**BONUS:** Beware of runtime calls in conditional expressions like a ternary IF, logical AND or OR. Each arm can be in either of two states (either in-flight if immediately retained/returned or not if the expression or the target doesn't support it). Don't fight the compiler there.
