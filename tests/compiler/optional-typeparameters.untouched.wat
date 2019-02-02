(module
 (type $ii (func (param i32) (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iFFF (func (param i32 f64 f64) (result f64)))
 (type $v (func))
 (memory $0 0)
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $optional-typeparameters/tConcrete (mut i32) (i32.const 0))
 (global $optional-typeparameters/tDerived (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $optional-typeparameters/testConcrete<i32,i32> (; 0 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
 )
 (func $optional-typeparameters/testDerived<i32,i32> (; 1 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
 )
 (func $~lib/allocator/arena/__memory_allocate (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $0
  get_global $~lib/internal/allocator/MAX_SIZE_32
  i32.gt_u
  if
   unreachable
  end
  get_global $~lib/allocator/arena/offset
  set_local $1
  get_local $1
  get_local $0
  tee_local $2
  i32.const 1
  tee_local $3
  get_local $2
  get_local $3
  i32.gt_u
  select
  i32.add
  get_global $~lib/internal/allocator/AL_MASK
  i32.add
  get_global $~lib/internal/allocator/AL_MASK
  i32.const -1
  i32.xor
  i32.and
  set_local $4
  current_memory
  set_local $5
  get_local $4
  get_local $5
  i32.const 16
  i32.shl
  i32.gt_u
  if
   get_local $4
   get_local $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   set_local $2
   get_local $5
   tee_local $3
   get_local $2
   tee_local $6
   get_local $3
   get_local $6
   i32.gt_s
   select
   set_local $3
   get_local $3
   grow_memory
   i32.const 0
   i32.lt_s
   if
    get_local $2
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  get_local $4
  set_global $~lib/allocator/arena/offset
  get_local $1
 )
 (func $~lib/memory/memory.allocate (; 3 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  call $~lib/allocator/arena/__memory_allocate
  return
 )
 (func $optional-typeparameters/TestConcrete<i32,i32>#constructor (; 4 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.eqz
  if
   i32.const 0
   call $~lib/memory/memory.allocate
   set_local $0
  end
  get_local $0
 )
 (func $optional-typeparameters/TestConcrete<i32,i32>#test<i32> (; 5 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $1
  get_local $2
  i32.add
 )
 (func $optional-typeparameters/TestDerived<f64,f64>#constructor (; 6 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.eqz
  if
   i32.const 0
   call $~lib/memory/memory.allocate
   set_local $0
  end
  get_local $0
 )
 (func $optional-typeparameters/TestDerived<f64,f64>#test<f64> (; 7 ;) (type $iFFF) (param $0 i32) (param $1 f64) (param $2 f64) (result f64)
  get_local $1
  get_local $2
  f64.add
 )
 (func $start (; 8 ;) (type $v)
  i32.const 1
  call $optional-typeparameters/testConcrete<i32,i32>
  drop
  i32.const 2
  call $optional-typeparameters/testDerived<i32,i32>
  drop
  get_global $HEAP_BASE
  get_global $~lib/internal/allocator/AL_MASK
  i32.add
  get_global $~lib/internal/allocator/AL_MASK
  i32.const -1
  i32.xor
  i32.and
  set_global $~lib/allocator/arena/startOffset
  get_global $~lib/allocator/arena/startOffset
  set_global $~lib/allocator/arena/offset
  i32.const 0
  call $optional-typeparameters/TestConcrete<i32,i32>#constructor
  set_global $optional-typeparameters/tConcrete
  get_global $optional-typeparameters/tConcrete
  i32.const 1
  i32.const 2
  call $optional-typeparameters/TestConcrete<i32,i32>#test<i32>
  drop
  i32.const 0
  call $optional-typeparameters/TestDerived<f64,f64>#constructor
  set_global $optional-typeparameters/tDerived
  get_global $optional-typeparameters/tDerived
  f64.const 1
  f64.const 2
  call $optional-typeparameters/TestDerived<f64,f64>#test<f64>
  drop
 )
 (func $null (; 9 ;) (type $v)
 )
)
