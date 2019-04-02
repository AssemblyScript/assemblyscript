AssemblyScript runtimes
=======================

Default
-------

```
$> asc ...
```

The [default runtime](./default.ts) adds proper support for dynamic memory management and garbage collection to your program.

* [TLSF memory allocator](../allocator/tlsf.ts)
* [ITCM garbage collector](../collector/itcm.ts)

Arena
-----

```
$> asc ... --runtime arena
```

The [arena runtime](./arena.ts) is just enough to make most language features work, but doesn't have sophisticated support for freeing memory. Useful when prototyping or for simple one-shot modules in that it produces very small modules with minimal overhead.

* [Arena memory allocator](../allocator/arena.ts) with `memory.reset()`
* No garbage collector

None
-----------------

```
$> asc ... --runtime none
```

[No runtime](./none.ts) features at all. Useful for building low-level modules that do not require language features like managed classes, or if you'd like to compose your own runtime by including a custom memory allocator and garbage collector.

* No memory allocator
* No garbage collector
