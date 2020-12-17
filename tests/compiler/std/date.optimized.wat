(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_f64 (func (result f64)))
 (type $i32_i32_i32_i32_i32_i32_f64_=>_f64 (func (param i32 i32 i32 i32 i32 i32 f64) (result f64)))
 (import "Date" "UTC" (func $~lib/bindings/Date/UTC (param i32 i32 i32 i32 i32 i32 f64) (result f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "Date" "now" (func $~lib/bindings/Date/now (result f64)))
 (memory $0 1)
 (data (i32.const 1036) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\16\00\00\00s\00t\00d\00/\00d\00a\00t\00e\00.\00t\00s")
 (global $std/date/creationTime (mut i64) (i64.const 0))
 (global $std/date/date (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:std/date
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
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
   i32.const 1056
   i32.const 1
   i32.const 1
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
   i32.const 1056
   i32.const 2
   i32.const 1
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
   i32.const 1056
   i32.const 5
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/bindings/Date/now
  i64.trunc_f64_s
  global.get $std/date/creationTime
  i64.le_s
  if
   i32.const 0
   i32.const 1056
   i32.const 7
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/date/creationTime
  local.set $2
  memory.size
  local.tee $1
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $0
  i32.const 1116
  i32.lt_u
  if
   local.get $1
   i32.const 66651
   local.get $0
   i32.sub
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $0
   local.get $0
   local.get $1
   i32.lt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $0
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  i32.const 1084
  i32.const 28
  i32.store
  i32.const 1088
  i32.const 0
  i32.store
  i32.const 1092
  i32.const 0
  i32.store
  i32.const 1096
  i32.const 3
  i32.store
  i32.const 1100
  i32.const 8
  i32.store
  i32.const 1104
  i64.const 0
  i64.store
  i32.const 1104
  local.get $2
  i64.store
  i32.const 1104
  global.set $std/date/date
  global.get $std/date/creationTime
  i32.const 1104
  i64.load
  i64.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 10
   i32.const 1
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
   i32.const 1056
   i32.const 12
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:std/date
 )
)
