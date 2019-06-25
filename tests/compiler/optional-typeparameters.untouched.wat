(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$didd (func (param i32 f64 f64) (result f64)))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $optional-typeparameters/tConcrete (mut i32) (i32.const 0))
 (global $optional-typeparameters/tDerived (mut i32) (i32.const 0))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $optional-typeparameters/testConcrete<i32,i32> (; 0 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $optional-typeparameters/testDerived<i32,i32> (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $start:~lib/allocator/arena (; 2 ;) (type $FUNCSIG$v)
  global.get $~lib/memory/HEAP_BASE
  i32.const 7
  i32.add
  i32.const 7
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
 )
 (func $~lib/allocator/arena/__memory_allocate (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741824
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/allocator/arena/offset
  local.set $1
  local.get $1
  local.get $0
  local.tee $2
  i32.const 1
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.add
  i32.const 7
  i32.add
  i32.const 7
  i32.const -1
  i32.xor
  i32.and
  local.set $4
  current_memory
  local.set $5
  local.get $4
  local.get $5
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $4
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $2
   local.get $5
   local.tee $3
   local.get $2
   local.tee $6
   local.get $3
   local.get $6
   i32.gt_s
   select
   local.set $3
   local.get $3
   grow_memory
   i32.const 0
   i32.lt_s
   if
    local.get $2
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $4
  global.set $~lib/allocator/arena/offset
  local.get $1
 )
 (func $~lib/memory/memory.allocate (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/allocator/arena/__memory_allocate
  return
 )
 (func $optional-typeparameters/TestConcrete<i32,i32>#constructor (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
 )
 (func $optional-typeparameters/TestConcrete<i32,i32>#test<i32> (; 6 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  local.get $2
  i32.add
 )
 (func $optional-typeparameters/TestDerived<f64,f64>#constructor (; 7 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
 )
 (func $optional-typeparameters/TestDerived<f64,f64>#test<f64> (; 8 ;) (type $FUNCSIG$didd) (param $0 i32) (param $1 f64) (param $2 f64) (result f64)
  local.get $1
  local.get $2
  f64.add
 )
 (func $start:optional-typeparameters (; 9 ;) (type $FUNCSIG$v)
  i32.const 1
  call $optional-typeparameters/testConcrete<i32,i32>
  drop
  i32.const 2
  call $optional-typeparameters/testDerived<i32,i32>
  drop
  call $start:~lib/allocator/arena
  i32.const 0
  call $optional-typeparameters/TestConcrete<i32,i32>#constructor
  global.set $optional-typeparameters/tConcrete
  global.get $optional-typeparameters/tConcrete
  i32.const 1
  i32.const 2
  call $optional-typeparameters/TestConcrete<i32,i32>#test<i32>
  drop
  i32.const 0
  call $optional-typeparameters/TestDerived<f64,f64>#constructor
  global.set $optional-typeparameters/tDerived
  global.get $optional-typeparameters/tDerived
  f64.const 1
  f64.const 2
  call $optional-typeparameters/TestDerived<f64,f64>#test<f64>
  drop
 )
 (func $start (; 10 ;) (type $FUNCSIG$v)
  call $start:optional-typeparameters
 )
 (func $null (; 11 ;) (type $FUNCSIG$v)
 )
)
