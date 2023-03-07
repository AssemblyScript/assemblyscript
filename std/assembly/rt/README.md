# The AssemblyScript Runtime

The runtime provides the functionality necessary to dynamically allocate and deallocate memory of objects, arrays and buffers, as well as collect garbage that is no longer used. The current implementation is either a Two-Color Mark & Sweep (TCMS) garbage collector that must be called manually when the execution stack is unwound or an Incremental Tri-Color Mark & Sweep (ITCMS) garbage collector that is fully automated with a shadow stack, implemented on top of a Two-Level Segregate Fit (TLSF) memory manager. It's not designed to be the fastest of its kind, but intentionally focuses on simplicity and ease of integration until we can replace it with the real deal, i.e. Wasm GC.

## Interface

### Garbage collector / `--exportRuntime`

- **\_\_new**(size: `usize`, id: `u32` = 0): `usize`<br />
  Dynamically allocates a GC object of at least the specified size and returns its address.
  Alignment is guaranteed to be 16 bytes to fit up to v128 values naturally.
  GC-allocated objects cannot be used with `__realloc` and `__free`.

- **\_\_pin**(ptr: `usize`): `usize`<br />
  Pins the object pointed to by `ptr` externally so it and its directly reachable members and indirectly reachable objects do not become garbage collected.

- **\_\_unpin**(ptr: `usize`): `void`<br />
  Unpins the object pointed to by `ptr` externally so it can become garbage collected.

- **\_\_collect**(): `void`<br />
  Performs a full garbage collection.

### Internals

- **\_\_alloc**(size: `usize`): `usize`<br />
  Dynamically allocates a chunk of memory of at least the specified size and returns its address.
  Alignment is guaranteed to be 16 bytes to fit up to v128 values naturally.

- **\_\_realloc**(ptr: `usize`, size: `usize`): `usize`<br />
  Dynamically changes the size of a chunk of memory, possibly moving it to a new address.

- **\_\_free**(ptr: `usize`): `void`<br />
  Frees a dynamically allocated chunk of memory by its address.

- **\_\_renew**(ptr: `usize`, size: `usize`): `usize`<br />
  Like `__realloc`, but for `__new`ed GC objects.

- **\_\_link**(parentPtr: `usize`, childPtr: `usize`, expectMultiple: `bool`): `void`<br />
  Introduces a link from a parent object to a child object, i.e. upon `parent.field = child`.

- **\_\_visit**(ptr: `usize`, cookie: `u32`): `void`<br />
  Concrete visitor implementation called during traversal. Cookie can be used to indicate one of multiple operations.

- **\_\_visit_globals**(cookie: `u32`): `void`<br />
  Calls `__visit` on each global that is of a managed type.

- **\_\_visit_members**(ptr: `usize`, cookie: `u32`): `void`<br />
  Calls `__visit` on each member of the object pointed to by `ptr`.

- **\_\_typeinfo**(id: `u32`): `RTTIFlags`<br />
  Obtains the runtime type information for objects with the specified runtime id. Runtime type information is a set of flags indicating whether a type is managed, an array or similar, and what the relevant alignments when creating an instance externally are etc.

## ITCMS / `--runtime incremental`

The Incremental Tri-Color Mark & Sweep garbage collector maintains a separate shadow stack of managed values in the background to achieve full automation. Maintaining another stack introduces some overhead compared to the simpler Two-Color Mark & Sweep garbage collector, but makes it independent of whether the execution stack is unwound or not when it is invoked, so the garbage collector can run interleaved with the program.

There are several constants one can experiment with to tweak ITCMS's automation:

- `--use ASC_GC_GRANULARITY=1024`<br />
  How often to interrupt. The default of 1024 means "interrupt each 1024 bytes allocated".
- `--use ASC_GC_STEPFACTOR=200`<br />
  How long to interrupt. The default of 200% means "run at double the speed of allocations".
- `--use ASC_GC_IDLEFACTOR=200`<br />
  How long to idle. The default of 200% means "wait for memory to double before kicking in again".
- `--use ASC_GC_MARKCOST=1`<br />
  How costly it is to mark one object. Budget per interrupt is `GRANULARITY * STEPFACTOR / 100`.
- `--use ASC_GC_SWEEPCOST=10`<br />
  How costly it is to sweep one object. Budget per interrupt is `GRANULARITY * STEPFACTOR / 100`.

## TCMS / `--runtime minimal`

If automation and low pause times aren't strictly necessary, using the Two-Color Mark & Sweep garbage collector instead by invoking collection manually at appropriate times when the execution stack is unwound may be more performant as it simpler and has less overhead. The execution stack is typically unwound when invoking the collector externally, at a place that is not indirectly called from Wasm.

## STUB / `--runtime stub`

The stub is a maximally minimal runtime substitute, consisting of a simple and fast bump allocator with no means of freeing up memory again, except when freeing the respective most recently allocated object on top of the bump. Useful where memory is not a concern, and/or where it is sufficient to destroy the whole module including any potential garbage after execution.

See also: [Garbage collection](https://www.assemblyscript.org/garbage-collection.html)
