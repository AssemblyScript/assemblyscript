(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$viiddddd (func (param i32 i32 f64 f64 f64 f64 f64)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (import "env" "trace" (func $~lib/env/trace (param i32 i32 f64 f64 f64 f64 f64)))
 (memory $0 1)
 (data (i32.const 8) "\02\00\00\00(")
 (data (i32.const 24) "~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s")
 (data (i32.const 64) "\02\00\00\00\16")
 (data (i32.const 80) "g\00c\00.\00r\00e\00g\00i\00s\00t\00e\00r")
 (data (i32.const 104) "\02\00\00\00\12")
 (data (i32.const 120) "g\00c\00.\00r\00e\00t\00a\00i\00n")
 (data (i32.const 144) "\02\00\00\00(")
 (data (i32.const 160) "g\00c\00/\00r\00c\00/\00g\00l\00o\00b\00a\00l\00-\00i\00n\00i\00t\00.\00t\00s")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $gc/rc/_dummy/register_count (mut i32) (i32.const 0))
 (global $gc/rc/_dummy/register_ref (mut i32) (i32.const 0))
 (global $gc/rc/_dummy/retain_count (mut i32) (i32.const 0))
 (global $gc/rc/_dummy/retain_ref (mut i32) (i32.const 0))
 (global $gc/rc/_dummy/release_count (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $gc/rc/global-init/global (mut i32) (i32.const 0))
 (global $~lib/started (mut i32) (i32.const 0))
 (global $~lib/capabilities i32 (i32.const 2))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "main" (func $gc/rc/global-init/main))
 (export "$.capabilities" (global $~lib/capabilities))
 (func $~lib/allocator/arena/__mem_allocate (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741824
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/allocator/arena/offset
  local.tee $1
  local.get $0
  i32.const 1
  local.get $0
  i32.const 1
  i32.gt_u
  select
  i32.add
  i32.const 7
  i32.add
  i32.const -8
  i32.and
  local.tee $0
  current_memory
  local.tee $2
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $2
   local.get $0
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $3
   local.get $2
   local.get $3
   i32.gt_s
   select
   grow_memory
   i32.const 0
   i32.lt_s
   if
    local.get $3
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $0
  global.set $~lib/allocator/arena/offset
  local.get $1
 )
 (func $~lib/util/runtime/allocate (; 3 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  i32.const 16
  call $~lib/allocator/arena/__mem_allocate
  local.tee $0
  i32.const -1520547049
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 16
  i32.add
 )
 (func $gc/rc/_dummy/__ref_register (; 4 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $~lib/util/runtime/register (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 200
  i32.le_u
  if
   i32.const 0
   i32.const 24
   i32.const 128
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.sub
  local.tee $1
  i32.load
  i32.const -1520547049
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 130
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.store
  local.get $0
  call $gc/rc/_dummy/__ref_register
  local.get $0
 )
 (func $gc/rc/_dummy/__ref_retain (; 6 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $start:gc/rc/global-init (; 7 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 200
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  call $~lib/util/runtime/allocate
  call $~lib/util/runtime/register
  local.tee $0
  call $gc/rc/_dummy/__ref_retain
  local.get $0
  global.set $gc/rc/global-init/global
  global.get $gc/rc/_dummy/register_count
  i32.const 1
  i32.ne
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
  i32.ne
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
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 12
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $gc/rc/_dummy/release_count
  if
   i32.const 0
   i32.const 160
   i32.const 13
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $gc/rc/global-init/main (; 8 ;) (type $FUNCSIG$v)
  global.get $~lib/started
  i32.eqz
  if
   call $start:gc/rc/global-init
   i32.const 1
   global.set $~lib/started
  end
 )
 (func $null (; 9 ;) (type $FUNCSIG$v)
  nop
 )
)
