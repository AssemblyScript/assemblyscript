(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$didd (func (param i32 f64 f64) (result f64)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00(\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/util/runtime/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/util/runtime/HEADER_MAGIC i32 (i32.const -1520547049))
 (global $~lib/ASC_NO_ASSERT i32 (i32.const 0))
 (global $optional-typeparameters/tConcrete (mut i32) (i32.const 0))
 (global $optional-typeparameters/tDerived (mut i32) (i32.const 0))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 56))
 (export "memory" (memory $0))
 (start $start)
 (func $optional-typeparameters/testConcrete<i32,i32> (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $optional-typeparameters/testDerived<i32,i32> (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/util/runtime/adjust (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 1
  i32.const 32
  local.get $0
  global.get $~lib/util/runtime/HEADER_SIZE
  i32.add
  i32.const 1
  i32.sub
  i32.clz
  i32.sub
  i32.shl
 )
 (func $~lib/allocator/arena/__mem_allocate (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/memory/memory.allocate (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/allocator/arena/__mem_allocate
  return
 )
 (func $~lib/util/runtime/allocate (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/util/runtime/adjust
  call $~lib/memory/memory.allocate
  local.set $1
  local.get $1
  global.get $~lib/util/runtime/HEADER_MAGIC
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  global.get $~lib/util/runtime/HEADER_SIZE
  i32.add
 )
 (func $~lib/util/runtime/register (; 7 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  global.get $~lib/memory/HEAP_BASE
  i32.gt_u
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 131
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  global.get $~lib/util/runtime/HEADER_SIZE
  i32.sub
  local.set $2
  local.get $2
  i32.load
  global.get $~lib/util/runtime/HEADER_MAGIC
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 133
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.store
  local.get $0
 )
 (func $optional-typeparameters/TestConcrete<i32,i32>#constructor (; 8 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   call $~lib/util/runtime/allocate
   i32.const 17
   call $~lib/util/runtime/register
   local.set $0
  end
  local.get $0
 )
 (func $optional-typeparameters/TestConcrete<i32,i32>#test<i32> (; 9 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  local.get $2
  i32.add
 )
 (func $optional-typeparameters/TestDerived<f64,f64>#constructor (; 10 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   call $~lib/util/runtime/allocate
   i32.const 18
   call $~lib/util/runtime/register
   local.set $0
  end
  local.get $0
 )
 (func $optional-typeparameters/TestDerived<f64,f64>#test<f64> (; 11 ;) (type $FUNCSIG$didd) (param $0 i32) (param $1 f64) (param $2 f64) (result f64)
  local.get $1
  local.get $2
  f64.add
 )
 (func $start:optional-typeparameters (; 12 ;) (type $FUNCSIG$v)
  i32.const 1
  call $optional-typeparameters/testConcrete<i32,i32>
  drop
  i32.const 2
  call $optional-typeparameters/testDerived<i32,i32>
  drop
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
 (func $start (; 13 ;) (type $FUNCSIG$v)
  call $start:optional-typeparameters
 )
 (func $null (; 14 ;) (type $FUNCSIG$v)
 )
)
