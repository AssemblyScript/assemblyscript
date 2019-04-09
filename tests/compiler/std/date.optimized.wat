(module
 (type $FUNCSIG$diiiiiid (func (param i32 i32 i32 i32 i32 i32 f64) (result f64)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$d (func (result f64)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$vi (func (param i32)))
 (import "Date" "UTC" (func $~lib/bindings/Date/UTC (param i32 i32 i32 i32 i32 i32 f64) (result f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "Date" "now" (func $~lib/bindings/Date/now (result f64)))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00\16")
 (data (i32.const 24) "s\00t\00d\00/\00d\00a\00t\00e\00.\00t\00s")
 (data (i32.const 48) "\10\00\00\00(")
 (data (i32.const 64) "~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s")
 (data (i32.const 104) "\10\00\00\00\1e")
 (data (i32.const 120) "~\00l\00i\00b\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s")
 (data (i32.const 152) "\12\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00I\00\00\00\0e")
 (global $std/date/creationTime (mut i64) (i64.const 0))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $std/date/date (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "$.instanceof" (func $~lib/runtime/runtime.instanceof))
 (export "$.flags" (func $~lib/runtime/runtime.flags))
 (export "$.newObject" (func $~lib/runtime/runtime.newObject))
 (export "$.newString" (func $~lib/runtime/runtime.newString))
 (export "$.newArrayBuffer" (func $~lib/runtime/runtime.newArrayBuffer))
 (export "$.newArray" (func $~lib/runtime/runtime.newArray))
 (export "$.retain" (func $~lib/runtime/runtime.retain))
 (export "$.release" (func $~lib/runtime/runtime.retain))
 (export "$.collect" (func $~lib/runtime/runtime.collect))
 (start $start)
 (func $~lib/allocator/arena/__mem_allocate (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/util/runtime/allocate (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 1
  i32.const 32
  local.get $0
  i32.const 15
  i32.add
  i32.clz
  i32.sub
  i32.shl
  call $~lib/allocator/arena/__mem_allocate
  local.tee $1
  i32.const -1520547049
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  i32.const 16
  i32.add
 )
 (func $~lib/util/runtime/register (; 5 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.const 304
  i32.le_u
  if
   i32.const 0
   i32.const 64
   i32.const 129
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
   i32.const 64
   i32.const 131
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.store
  local.get $0
 )
 (func $start:std/date (; 6 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i64)
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
   i32.const 24
   i32.const 1
   i32.const 0
   call $~lib/builtins/abort
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
   i32.const 24
   i32.const 2
   i32.const 0
   call $~lib/builtins/abort
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
   i32.const 24
   i32.const 5
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/bindings/Date/now
  i64.trunc_f64_s
  global.get $std/date/creationTime
  i64.le_s
  if
   i32.const 0
   i32.const 24
   i32.const 7
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 304
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  global.get $std/date/creationTime
  local.set $1
  i32.const 8
  call $~lib/util/runtime/allocate
  i32.const 17
  call $~lib/util/runtime/register
  local.tee $0
  i64.const 0
  i64.store
  local.get $0
  local.get $1
  i64.store
  local.get $0
  global.set $std/date/date
  global.get $std/date/creationTime
  global.get $std/date/date
  i64.load
  i64.ne
  if
   i32.const 0
   i32.const 24
   i32.const 10
   i32.const 0
   call $~lib/builtins/abort
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
   i32.const 24
   i32.const 12
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/runtime/runtime.instanceof (; 7 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 152
   i32.load
   i32.le_u
  else   
   i32.const 0
  end
  if
   loop $continue|0
    local.get $0
    local.get $1
    i32.eq
    if
     i32.const 1
     return
    end
    local.get $0
    i32.const 3
    i32.shl
    i32.const 152
    i32.add
    i32.load offset=4
    local.tee $0
    br_if $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/runtime/runtime.flags (; 8 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
   i32.const 152
   i32.load
   i32.gt_u
  else   
   i32.const 1
  end
  if (result i32)
   unreachable
  else   
   local.get $0
   i32.const 3
   i32.shl
   i32.const 152
   i32.add
   i32.load
  end
 )
 (func $~lib/runtime/runtime.newObject (; 9 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  call $~lib/util/runtime/allocate
  local.get $1
  call $~lib/util/runtime/register
 )
 (func $~lib/runtime/runtime.newString (; 10 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 1
  i32.shl
  i32.const 16
  call $~lib/runtime/runtime.newObject
 )
 (func $~lib/runtime/runtime.newArrayBuffer (; 11 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 15
  call $~lib/runtime/runtime.newObject
 )
 (func $~lib/runtime/runtime.newArray (; 12 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  if (result i32)
   local.get $0
   i32.const 152
   i32.load
   i32.gt_u
  else   
   i32.const 1
  end
  if (result i32)
   unreachable
  else   
   local.get $0
   i32.const 3
   i32.shl
   i32.const 152
   i32.add
   i32.load
  end
  local.tee $3
  i32.const 16
  i32.div_u
  i32.const 31
  i32.and
  local.set $4
  local.get $1
  if (result i32)
   local.get $1
   i32.const 16
   i32.sub
   i32.load offset=4
  else   
   i32.const 0
   call $~lib/runtime/runtime.newArrayBuffer
   local.set $1
   i32.const 0
  end
  local.set $2
  local.get $0
  i32.const 16
  call $~lib/runtime/runtime.newObject
  local.tee $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $2
  local.get $4
  i32.shr_u
  i32.store offset=12
  local.get $3
  i32.const 1024
  i32.and
  if
   local.get $1
   local.get $2
   i32.add
   local.set $2
   loop $continue|0
    local.get $1
    local.get $2
    i32.lt_u
    if
     local.get $1
     i32.load
     if
      i32.const 0
      i32.const 120
      i32.const 97
      i32.const 15
      call $~lib/builtins/abort
      unreachable
     end
     local.get $1
     i32.const 4
     i32.add
     local.set $1
     br $continue|0
    end
   end
  end
  local.get $0
 )
 (func $~lib/runtime/runtime.retain (; 13 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/runtime/runtime.collect (; 14 ;) (type $FUNCSIG$v)
  i32.const 0
  i32.const 120
  i32.const 139
  i32.const 9
  call $~lib/builtins/abort
  unreachable
 )
 (func $start (; 15 ;) (type $FUNCSIG$v)
  call $start:std/date
 )
 (func $null (; 16 ;) (type $FUNCSIG$v)
  nop
 )
)
