Memory manager interface
========================

A memory manager for AssemblyScript must implement the following common and may implement any number of optional interfaces:

Common
------

* **__mem_allocate**(size: `usize`): `usize`<br />
  Dynamically allocates a chunk of memory of at least the specified size and returns its address.
  Alignment must be guaranteed to be at least 8 bytes, but there are considerations to increase
  alignment to 16 bytes to fit SIMD v128 values.

* **__mem_free**(ref: `usize`): `void`<br />
  Frees a dynamically allocated chunk of memory by its address.

Optional
--------

* **__mem_reset**(ref: `usize`, parentRef: `usize`): `void`<br />
  Resets dynamic memory to its initial state. Used by the arena allocator.
