(module
 (type $FUNCSIG$diiiiiid (func (param i32 i32 i32 i32 i32 i32 f64) (result f64)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$d (func (result f64)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$ij (func (param i64) (result i32)))
 (import "Date" "UTC" (func $~lib/bindings/Date/UTC (param i32 i32 i32 i32 i32 i32 f64) (result f64)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (import "Date" "now" (func $~lib/bindings/Date/now (result f64)))
 (memory $0 1)
 (data (i32.const 8) "\01\00\00\00\16\00\00\00s\00t\00d\00/\00d\00a\00t\00e\00.\00t\00s")
 (data (i32.const 40) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $std/date/creationTime (mut i64) (i64.const 0))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $std/date/date (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/memory/memory.allocate (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/runtime/assertUnregistered (; 4 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 80
  i32.le_u
  if
   i32.const 0
   i32.const 48
   i32.const 191
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const -1520547049
  i32.ne
  if
   i32.const 0
   i32.const 48
   i32.const 192
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/date/Date#constructor (; 5 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (local $1 i32)
  i32.const 16
  call $~lib/memory/memory.allocate
  local.tee $1
  i32.const -1520547049
  i32.store
  local.get $1
  i32.const 8
  i32.store offset=4
  local.get $1
  i32.const 8
  i32.add
  local.tee $1
  call $~lib/runtime/assertUnregistered
  local.get $1
  i32.const 8
  i32.sub
  i32.const 2
  i32.store
  local.get $1
  i64.const 0
  i64.store
  local.get $1
  local.get $0
  i64.store
  local.get $1
 )
 (func $start:std/date (; 6 ;) (type $FUNCSIG$v)
  i32.const 1970
  i32.const 0
  i32.const 1
  i32.const 0
  i32.const 0
  i32.const 0
  f64.const 0
  call $~lib/bindings/Date/UTC
  i64.trunc_f64_s
  i64.const 0
  i64.ne
  if
   i32.const 0
   i32.const 16
   i32.const 3
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1970
  i32.const 0
  i32.const 1
  i32.const 0
  i32.const 0
  i32.const 0
  f64.const 0
  call $~lib/bindings/Date/UTC
  i64.trunc_f64_s
  i64.const 0
  i64.ne
  if
   i32.const 0
   i32.const 16
   i32.const 4
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2018
  i32.const 10
  i32.const 10
  i32.const 11
  i32.const 0
  i32.const 0
  f64.const 1
  call $~lib/bindings/Date/UTC
  i64.trunc_f64_s
  global.set $std/date/creationTime
  global.get $std/date/creationTime
  i64.const 1541847600001
  i64.ne
  if
   i32.const 0
   i32.const 16
   i32.const 7
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $~lib/bindings/Date/now
  i64.trunc_f64_s
  global.get $std/date/creationTime
  i64.le_s
  if
   i32.const 0
   i32.const 16
   i32.const 9
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 80
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  global.get $std/date/creationTime
  call $~lib/date/Date#constructor
  global.set $std/date/date
  global.get $std/date/creationTime
  global.get $std/date/date
  i64.load
  i64.ne
  if
   i32.const 0
   i32.const 16
   i32.const 12
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/date/date
  global.get $std/date/creationTime
  i64.const 1
  i64.add
  i64.store
  global.get $std/date/date
  i64.load
  global.get $std/date/creationTime
  i64.const 1
  i64.add
  i64.ne
  if
   i32.const 0
   i32.const 16
   i32.const 14
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 7 ;) (type $FUNCSIG$v)
  call $start:std/date
 )
 (func $null (; 8 ;) (type $FUNCSIG$v)
  nop
 )
)
