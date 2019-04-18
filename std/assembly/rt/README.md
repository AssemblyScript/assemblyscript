The AssemblyScript Runtime
==========================

The runtime provides the functionality necessary to dynamically allocate and deallocate memory of objects, arrays and buffers, as well as keep track of references that are no longer used.

It is based on [the TLSF memory manager](./tlsf.ts) and [a pure reference counting garbage collector](./pure.ts).

Interface
---------

* **__rt_allocate**(size: `usize`, id: `u32` = 0): `usize`<br />
  Dynamically allocates a chunk of memory of at least the specified size and returns its address.
  Alignment is guaranteed to be 16 bytes to fit up to v128 values naturally.

* **__rt_reallocate**(ref: `usize`, size: `usize`): `usize`<br />
  Dynamically changes the size of a chunk of memory, possibly moving it to a new address.

* **__rt_free**(ref: `usize`): `void`<br />
  Frees a dynamically allocated chunk of memory by its address.

* **__rt_retain**(ref: `usize`): `void`<br />
  Retains a reference.

* **__rt_release**(ref: `usize`): `void`<br />
  Releases a reference.

* **__rt_collect**(): `void`<br />
  Forces a full garbage collection cycle.

* **__rt_typeinfo**(id: `u32`): `void`<br />
  Obtains the runtime type information for objects of the kind represented by the specified id.

Stub
----

The fully functional yet minimal [stub implementation](./stub.ts) provides dynamic memory allocation only but doesn't include sophisticated support to deallocate objects. Useful for prototyping or very short-lived programs with hardly any memory footprint.
