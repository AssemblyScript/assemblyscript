The AssemblyScript Runtime
==========================

The runtime provides the functionality necessary to dynamically allocate and deallocate memory of objects, arrays and buffers, as well as keep track of references that are no longer used.

It is based on [the TLSF memory manager](./tlsf.ts) and [a pure reference counting garbage collector](./pure.ts).
