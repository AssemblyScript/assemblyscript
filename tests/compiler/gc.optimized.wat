(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$viiddddd (func (param i32 i32 f64 f64 f64 f64 f64)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "trace" (func $~lib/builtins/trace (param i32 i32 f64 f64 f64 f64 f64)))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00(")
 (data (i32.const 24) "~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s")
 (data (i32.const 64) "\10\00\00\00\16")
 (data (i32.const 80) "g\00c\00.\00r\00e\00g\00i\00s\00t\00e\00r")
 (data (i32.const 104) "\10\00\00\00\0e")
 (data (i32.const 120) "g\00c\00.\00l\00i\00n\00k")
 (data (i32.const 136) "\10\00\00\00\n")
 (data (i32.const 152) "g\00c\00.\00t\00s")
 (data (i32.const 168) "\10\00\00\00\12")
 (data (i32.const 184) "g\00c\00.\00u\00n\00l\00i\00n\00k")
 (data (i32.const 208) "\10\00\00\00\14")
 (data (i32.const 224) "g\00c\00.\00c\00o\00l\00l\00e\00c\00t")
 (global $gc/_dummy/collect_count (mut i32) (i32.const 0))
 (global $gc/_dummy/register_count (mut i32) (i32.const 0))
 (global $gc/_dummy/register_ref (mut i32) (i32.const 0))
 (global $gc/_dummy/link_count (mut i32) (i32.const 0))
 (global $gc/_dummy/link_ref (mut i32) (i32.const 0))
 (global $gc/_dummy/link_parentRef (mut i32) (i32.const 0))
 (global $gc/_dummy/unlink_count (mut i32) (i32.const 0))
 (global $gc/_dummy/unlink_ref (mut i32) (i32.const 0))
 (global $gc/_dummy/unlink_parentRef (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/runtime/ROOT (mut i32) (i32.const 0))
 (global $~lib/started (mut i32) (i32.const 0))
 (global $~lib/capabilities i32 (i32.const 2))
 (export "memory" (memory $0))
 (export "main" (func $gc/main))
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
 (func $gc/_dummy/__ref_register (; 4 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 80
  i32.const 1
  local.get $0
  f64.convert_i32_u
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  global.get $gc/_dummy/register_count
  i32.const 1
  i32.add
  global.set $gc/_dummy/register_count
  local.get $0
  global.set $gc/_dummy/register_ref
 )
 (func $~lib/util/runtime/register (; 5 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.const 244
  i32.le_u
  if
   i32.const 0
   i32.const 24
   i32.const 131
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.sub
  local.tee $2
  i32.load
  i32.const -1520547049
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 133
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.store
  local.get $0
  call $gc/_dummy/__ref_register
  local.get $0
 )
 (func $gc/_dummy/__ref_link (; 6 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  i32.const 120
  i32.const 2
  local.get $0
  f64.convert_i32_u
  local.get $1
  f64.convert_i32_u
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  global.get $gc/_dummy/link_count
  i32.const 1
  i32.add
  global.set $gc/_dummy/link_count
  local.get $0
  global.set $gc/_dummy/link_ref
  local.get $0
  global.set $gc/_dummy/link_parentRef
 )
 (func $gc/_dummy/__ref_unlink (; 7 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  i32.const 184
  i32.const 2
  local.get $0
  f64.convert_i32_u
  local.get $1
  f64.convert_i32_u
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  global.get $gc/_dummy/unlink_count
  i32.const 1
  i32.add
  global.set $gc/_dummy/unlink_count
  local.get $0
  global.set $gc/_dummy/unlink_ref
  local.get $1
  global.set $gc/_dummy/unlink_parentRef
 )
 (func $gc/main (; 8 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/started
  i32.eqz
  if
   i32.const 248
   global.set $~lib/allocator/arena/startOffset
   global.get $~lib/allocator/arena/startOffset
   global.set $~lib/allocator/arena/offset
   call $~lib/util/runtime/allocate
   i32.const 18
   call $~lib/util/runtime/register
   global.set $~lib/runtime/ROOT
   i32.const 1
   global.set $~lib/started
  end
  call $~lib/util/runtime/allocate
  i32.const 17
  call $~lib/util/runtime/register
  local.set $2
  global.get $gc/_dummy/link_count
  local.set $0
  global.get $gc/_dummy/unlink_count
  local.set $1
  global.get $gc/_dummy/collect_count
  local.set $3
  local.get $2
  global.get $~lib/runtime/ROOT
  call $gc/_dummy/__ref_link
  global.get $gc/_dummy/link_count
  local.get $0
  i32.const 1
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 15
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $gc/_dummy/unlink_count
  local.get $1
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 16
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $gc/_dummy/collect_count
  local.get $3
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 17
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $gc/_dummy/link_count
  local.set $0
  global.get $gc/_dummy/unlink_count
  local.set $1
  global.get $gc/_dummy/collect_count
  local.set $3
  local.get $2
  global.get $~lib/runtime/ROOT
  call $gc/_dummy/__ref_unlink
  global.get $gc/_dummy/link_count
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 24
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $gc/_dummy/unlink_count
  local.get $1
  i32.const 1
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 25
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $gc/_dummy/collect_count
  local.get $3
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 26
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $gc/_dummy/link_count
  local.set $2
  global.get $gc/_dummy/unlink_count
  local.set $0
  global.get $gc/_dummy/collect_count
  local.set $1
  i32.const 224
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  global.get $gc/_dummy/collect_count
  i32.const 1
  i32.add
  global.set $gc/_dummy/collect_count
  global.get $gc/_dummy/link_count
  local.get $2
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 33
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $gc/_dummy/unlink_count
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 34
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $gc/_dummy/collect_count
  local.get $1
  i32.const 1
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 35
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $null (; 9 ;) (type $FUNCSIG$v)
  nop
 )
)
