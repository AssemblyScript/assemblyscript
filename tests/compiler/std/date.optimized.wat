(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $none_=>_f64 (func (result f64)))
 (type $i32_i32_i32_i32_i32_i32_f64_=>_f64 (func (param i32 i32 i32 i32 i32 i32 f64) (result f64)))
 (import "Date" "UTC" (func $~lib/bindings/Date/UTC (param i32 i32 i32 i32 i32 i32 f64) (result f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "Date" "now" (func $~lib/bindings/Date/now (result f64)))
 (memory $0 1)
 (data (i32.const 16) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00s\00t\00d\00/\00d\00a\00t\00e\00.\00t\00s")
 (global $std/date/creationTime (mut i64) (i64.const 0))
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $std/date/date (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/stub/maybeGrowMemory (; 3 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  memory.size
  local.tee $2
  i32.const 16
  i32.shl
  local.tee $1
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
   local.tee $1
   local.get $2
   local.get $1
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $1
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $0
  global.set $~lib/rt/stub/offset
 )
 (func $~lib/rt/stub/__alloc (; 4 ;) (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.tee $1
  i32.const 16
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $1
  i32.const 16
  i32.sub
  local.tee $0
  i32.const 16
  i32.store
  local.get $0
  i32.const 1
  i32.store offset=4
  local.get $0
  i32.const 3
  i32.store offset=8
  local.get $0
  i32.const 8
  i32.store offset=12
  local.get $1
 )
 (func $start:std/date (; 5 ;)
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
  i64.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
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
  i64.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
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
   i32.const 32
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
   i32.const 32
   i32.const 7
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 64
  global.set $~lib/rt/stub/startOffset
  i32.const 64
  global.set $~lib/rt/stub/offset
  global.get $std/date/creationTime
  local.set $1
  call $~lib/rt/stub/__alloc
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
   i32.const 32
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
   i32.const 32
   i32.const 12
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start (; 6 ;)
  call $start:std/date
 )
)
