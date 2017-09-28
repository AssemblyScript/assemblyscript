AssemblyScript NEXT
===================

This repository contains compiler component prototypes for the next iteration of the AssemblyScript compiler written in AssemblyScript itself.

Note that the code uses some features and standard library components that are not yet supported by any version of asc. To account for this, the code has been written in "portable AssemblyScript", a TypeScript-compatible subset of a subset of a superset of JavaScript, that also compiles to JavaScript using TSC.

Why is this necessary?
----------------------

Well, it isn't, but: In order to be able to compile the AssemblyScript compiler itself to WebAssembly eventually, we cannot depend on TypeScript because it is written in vanilla TypeScript and makes use of quite a few non-AOT-compatible dynamic features of JavaScript.

Cons:
- A lot of work
- Dealing with TypeScript compatibility issues

Pros:
- One day compiling to WebAssembly for performance
- Necessary features only, reducing binary size
- Linking against Binaryen compiled to WebAssembly, reducing overhead

Side effects:
- Good fire test for the compiler
- Good benchmark when comparing both versions
- Benefits standard library design ideas
