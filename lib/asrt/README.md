# ![AS](https://avatars1.githubusercontent.com/u/28916798?s=48) Shared Runtime

Experimental shared runtime working in tandem with multiple relocatable modules.

Interface
---------

* **alloc**(mbase: `usize`, size: `usize`, id: `u32`): `usize`
* **realloc**(mbase: `usize`, size: `usize`, id: `u32`): `usize`
* **free**(mbase: `usize`, global_ptr: `usize`): `void`
* **retain**(mbase: `usize`, global_ptr: `usize`): `usize`
* **release**(mbase: `usize`, global_ptr: `usize`, local_visit: `u32`): `usize`
* **visit**(mbase: `usize`, global_ptr: `usize`, cookie: `u32`, local_visit: `u32`): `void`
* **collect**(mbase: `usize`, local_visit: `u32`): `void`

Parameters prefixed `local_` indicate values local to the module (before relocation) and
parameters prefixed `global_` indicate values global to the combined program (after relocation).
Returned values are global to the combined program.

Proposed usage
--------------

For each relocatable module, read the `dylink` section and prepare a memory and a table that
fit all the modules including the shared runtime (assume 1kb). Afterwards, instantiate the
shared runtime (it sits at the start of the memory and the table) and provide it with the
final value of `__heap_base`. Use the instantiated runtime as the `asrt` import of all the
other modules along their respective `__memory_base` and `__table_base`, and proceed by
instantiating the relocatable modules sequentially.

Note that this is pretty much a concept at this point and hasn't been tested, but feel free
to experiment with it if you are interested in the mechanism.
