The AssemblyScript Runtime
==========================

The runtime provides the functionality necessary to dynamically allocate and deallocate memory of objects, arrays and buffers, as well as collect garbage that is no longer used. The current implementation is a Tri-Color Mark & Sweep (TCMS) garbage collector that must be called manually, implemented on top of a Two-Level Segregate Fit (TLSF) memory manager. It's not designed to be the fastest of its kind, but intentionally focuses on simplicity and ease of integration until we can replace it with the real deal, i.e. Wasm GC.

Interface
---------

### Memory manager

* **__alloc**(size: `usize`): `usize`<br />
  Dynamically allocates a chunk of memory of at least the specified size and returns its address.
  Alignment is guaranteed to be 16 bytes to fit up to v128 values naturally.

* **__realloc**(ref: `usize`, size: `usize`): `usize`<br />
  Dynamically changes the size of a chunk of memory, possibly moving it to a new address.

* **__free**(ref: `usize`): `void`<br />
  Frees a dynamically allocated chunk of memory by its address.

### Garbage collector

* **__new**(size: `usize`, id: `u32` = 0): `usize`<br />
  Dynamically allocates a GC object of at least the specified size and returns its address.
  Alignment is guaranteed to be 16 bytes to fit up to v128 values naturally.
  GC-allocated objects cannot be used with `__realloc` and `__free`.

* **__renew**(ptr: `usize`, size: `usize`): `usize`<br />
  Like `__realloc`, but for `__new`ed GC objects.

* **__link**(parentPtr: `usize`, childPtr: `usize`, expectMultiple: `bool`): `void`<br />
  Introduces a link from a parent object to a child object, i.e. upon `parent.field = child`.

* **__visit**(ptr: `usize`): `void`<br />
  Visits an external root during the collection phase, marking it as reachable.

* **__collect**(): `void`<br />
  Performs a garbage collection cycle.

When collection is triggered, the garbage collector invokes the imported `env.mark` function that is responsible to call
`__mark` on all externally retained values. The loader includes an implementation of this mechanism.

### Internals

* **__visit**(ref: `usize`, cookie: `u32`): `void`<br />
  Concrete visitor implementation called during traversal. Cookie can be used to indicate one of multiple operations.

### Built-ins

* **__typeinfo**(id: `u32`): `RTTIFlags`<br />
  Obtains the runtime type information for objects with the specified runtime id. Runtime type information is a set of flags indicating whether a reference type is managed, an array or similar, and what the relevant alignments when creating an instance externally are etc.

* **__instanceof**

* **__visit_globals**(cookie: `u32`): `void`<br />
  Calls `__visit` on each global that is of a reference type. Not used anymore (originally provided to support tracing GCs) but still here for possible future use.

* **__visit_members**(ref: `usize`, cookie: `u32`): `void`<br />
  Calls `__visit` on each member of the object pointed to by `ref`.

### Related

* **idof**<`T`>(): `u32`<br />
  Obtains the unique internal class id of a reference type.
