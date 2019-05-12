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
  Retains a reference to an instance of a reference type. The instance doesn't become collected as long as there's at least one retained reference. Returns the retained reference.

* **__release**(ref: `usize`): `void`<br />
  Releases a reference to an instance of a reference type. The instance is considered for collection once all references to it have been released.

* **__collect**(): `void`<br />
  Forces a full garbage collection cycle. By default this means that reference cycles are resolved and possibly collected.

### Internals

* **__retainRelease**(newRef: `usize`, oldRef: `usize`): `usize`<br />
  Retains a reference to an instance of a reference type while releasing the reference it replaces. Returns the retained reference.

* **__visit**(ref: `usize`, cookie: `u32`): `void`<br />
  Concrete visitor implementation called during traversal. Cookie can be used to indicate one of multiple operations.

### Built-ins

* **__typeinfo**(id: `u32`): `RTTIFlags`<br />
  Obtains the runtime type information for objects with the specified runtime id. Runtime type information is a set of flags indicating whether a reference type is managed, an array or similar, and what the relevant alignments when creating an instance are etc.

* **__visit_globals**(cookie: `u32`): `void`<br />
  Calls `__visit` on each global that is of a reference type. Not used anymore (originally provided to support tracing GCs) but still here for possible future use.

* **__visit_members**(ref: `usize`, cookie: `u32`): `void`<br />
  Calls `__visit` on each member of the instance pointed to by `ref` that is of a reference type.

Full/half
---------

The [full](./index-full.ts) runtime is based on [the TLSF memory manager](./tlsf.ts) and [a pure reference counting garbage collector](./pure.ts) and provides all the functionality necessary. The [half](./index-half.ts) alias is essentially the same, but doesn't expose the runtime API so unused runtime code can be DCE'ed.

Stub/none
---------

The [stub](./index-stub.ts) runtime, though fully functional, provides minimal dynamic memory allocation but no deallocation. Useful for prototyping or very short-lived programs with hardly any memory footprint. The [none](./index-none.ts) alias is the same, but doesn't expose the runtime API so unused runtime code can be DCE'ed.

Integration notes
-----------------

**NOTE:** Subject to change once local handling has been figured out.

Working with the runtime internals within standard library code can be tricky and requires knowledge of where the compiler will insert runtime calls automatically. For example, whenever a value of a reference type is assigned to a local, a global or a field, the compiler *might* insert a `__retain` call, respectively whenever such a value becomes unassigned from one, *might* insert a `__release` call. When a value is handled as an `usize` (i.e. when it comes from `__alloc` or is `changetype<usize>`ed), no such insertion happens (afterwards), but as soon as a `changetype<RefType>`ed (again), the side-effects introduced by automatic insertion must be understood.

A `__retain` call is inserted when a value of a reference type
* is assigned to a local, global or a field **if** the value is not already the exact same value as stored before
* is an argument to a function call, including `this` (i.e. `str.indexOf` retains `str`)
* is returned from a function (i.e. no need to manually `__retain` if explicitly `changetype`d)

A `__release` call is inserted when a value of a reference type
* becomes unassigned from a local, global or a field due to assigning a new value **if** the value is not already the exact same value as stored before
* is popped together with its local from the current scope, i.e. a local declared with `let` in a block, or otherwise at the end of a function

If not taken into account properly
* a memory leak will occur when `__retain`ed more often than intended
* a double-free will occur when `__release`d more often than intended

Also note that a `load<T>(x)` with a reference type acts like a `changetype<T>(load<usize>(x))` and does not `__retain` unless the result is assigned to a local.

Some best practices are:
* Use the fresh `__alloc`ed reference in `usize` form where possible, e.g. when just copying raw bytes is necessary, and `changetype` it once on return.
* When providing such a `usize` reference to a function, if the value isn't needed anymore afterwards, just `changetype` it on the call which will `__retain` and `__release` it automatically, including freeing it if wasn't retained before, or, if still needed afterwards, assign the `changetype`d reference to a local first and provide the local as the argument, hence keeping the reference alive as long as the local or any subsequent target is.
* If it's not avoidable to `changetype` to the actual reference type, do it inline in an expression and avoid assigning to a local.
