(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$viiddddd (func (param i32 i32 f64 f64 f64 f64 f64)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (import "env" "trace" (func $~lib/env/trace (param i32 i32 f64 f64 f64 f64 f64)))
 (memory $0 1)
 (data (i32.const 8) "\02\00\00\00(\00\00\00\00\00\00\00\00\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s\00")
 (data (i32.const 64) "\02\00\00\00\16\00\00\00\00\00\00\00\00\00\00\00g\00c\00.\00r\00e\00g\00i\00s\00t\00e\00r\00")
 (data (i32.const 104) "\02\00\00\00\12\00\00\00\00\00\00\00\00\00\00\00g\00c\00.\00r\00e\00t\00a\00i\00n\00")
 (data (i32.const 144) "\02\00\00\00(\00\00\00\00\00\00\00\00\00\00\00g\00c\00/\00r\00c\00/\00g\00l\00o\00b\00a\00l\00-\00i\00n\00i\00t\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $gc/rc/_dummy/collect_count (mut i32) (i32.const 0))
 (global $gc/rc/_dummy/register_count (mut i32) (i32.const 0))
 (global $gc/rc/_dummy/register_ref (mut i32) (i32.const 0))
 (global $gc/rc/_dummy/retain_count (mut i32) (i32.const 0))
 (global $gc/rc/_dummy/retain_ref (mut i32) (i32.const 0))
 (global $gc/rc/_dummy/release_count (mut i32) (i32.const 0))
 (global $gc/rc/_dummy/release_ref (mut i32) (i32.const 0))
 (global $~lib/util/runtime/HEADER_SIZE i32 (i32.const 16))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/util/runtime/HEADER_MAGIC i32 (i32.const -1520547049))
 (global $~lib/ASC_NO_ASSERT i32 (i32.const 0))
 (global $gc/rc/global-init/global (mut i32) (i32.const 0))
 (global $~lib/started (mut i32) (i32.const 0))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 200))
 (global $~lib/capabilities i32 (i32.const 2))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "main" (func $gc/rc/global-init/main))
 (export "$.capabilities" (global $~lib/capabilities))
 (func $~lib/util/runtime/adjust (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/allocator/arena/__mem_allocate (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
  call $~lib/allocator/arena/__mem_allocate
  return
 )
 (func $~lib/util/runtime/allocate (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $1
  global.get $~lib/util/runtime/HEADER_SIZE
  i32.add
 )
 (func $gc/rc/_dummy/__ref_register (; 6 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 80
  i32.const 1
  local.get $0
  f64.convert_i32_u
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/env/trace
  global.get $gc/rc/_dummy/register_count
  i32.const 1
  i32.add
  global.set $gc/rc/_dummy/register_count
  local.get $0
  global.set $gc/rc/_dummy/register_ref
 )
 (func $~lib/util/runtime/register (; 7 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  global.get $~lib/memory/HEAP_BASE
  i32.gt_u
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 128
   i32.const 4
   call $~lib/env/abort
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
   i32.const 24
   i32.const 130
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.store
  local.get $0
  call $gc/rc/_dummy/__ref_register
  local.get $0
 )
 (func $gc/rc/global-init/Ref#constructor (; 8 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   call $~lib/util/runtime/allocate
   i32.const 1
   call $~lib/util/runtime/register
   local.set $0
  end
  local.get $0
 )
 (func $gc/rc/_dummy/__ref_retain (; 9 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 120
  i32.const 1
  local.get $0
  f64.convert_i32_u
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/env/trace
  global.get $gc/rc/_dummy/retain_count
  i32.const 1
  i32.add
  global.set $gc/rc/_dummy/retain_count
  local.get $0
  global.set $gc/rc/_dummy/retain_ref
 )
 (func $start:gc/rc/global-init (; 10 ;) (type $FUNCSIG$v)
  (local $0 i32)
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
  block (result i32)
   i32.const 0
   call $gc/rc/global-init/Ref#constructor
   local.set $0
   local.get $0
   call $gc/rc/_dummy/__ref_retain
   local.get $0
  end
  global.set $gc/rc/global-init/global
  global.get $gc/rc/_dummy/register_count
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 10
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $gc/rc/_dummy/retain_count
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 11
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $gc/rc/_dummy/retain_ref
  global.get $gc/rc/global-init/global
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 12
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $gc/rc/_dummy/release_count
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 13
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $gc/rc/global-init/main (; 11 ;) (type $FUNCSIG$v)
  global.get $~lib/started
  i32.eqz
  if
   call $start
   i32.const 1
   global.set $~lib/started
  end
 )
 (func $start (; 12 ;) (type $FUNCSIG$v)
  call $start:gc/rc/global-init
 )
 (func $null (; 13 ;) (type $FUNCSIG$v)
 )
)
