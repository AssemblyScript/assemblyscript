(module
 (type $FUNCSIG$diiiiiid (func (param i32 i32 i32 i32 i32 i32 f64) (result f64)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$d (func (result f64)))
 (type $FUNCSIG$iij (func (param i32 i64) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$ji (func (param i32) (result i64)))
 (type $FUNCSIG$jij (func (param i32 i64) (result i64)))
 (type $FUNCSIG$v (func))
 (import "Date" "UTC" (func $~lib/bindings/Date/UTC (param i32 i32 i32 i32 i32 i32 f64) (result f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "Date" "now" (func $~lib/bindings/Date/now (result f64)))
 (memory $0 1)
 (data (i32.const 8) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00s\00t\00d\00/\00d\00a\00t\00e\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $std/date/creationTime (mut i64) (i64.const 0))
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $std/date/date (mut i32) (i32.const 0))
 (global $~lib/heap/__heap_base i32 (i32.const 48))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/rt/stub/__alloc (; 3 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.set $2
  local.get $2
  local.get $0
  local.tee $3
  i32.const 1
  local.tee $4
  local.get $3
  local.get $4
  i32.gt_u
  select
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $5
  memory.size
  local.set $6
  local.get $5
  local.get $6
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $5
   local.get $2
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $3
   local.get $6
   local.tee $4
   local.get $3
   local.tee $7
   local.get $4
   local.get $7
   i32.gt_s
   select
   local.set $4
   local.get $4
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $5
  global.set $~lib/rt/stub/offset
  local.get $2
  i32.const 16
  i32.sub
  local.set $8
  local.get $8
  local.get $1
  i32.store offset=8
  local.get $8
  local.get $0
  i32.store offset=12
  local.get $2
 )
 (func $~lib/rt/stub/__retain (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/date/Date#constructor (; 5 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 3
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i64.const 0
  i64.store
  local.get $0
  local.get $1
  i64.store
  local.get $0
 )
 (func $~lib/date/Date#getTime (; 6 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load
 )
 (func $~lib/date/Date#setTime (; 7 ;) (type $FUNCSIG$jij) (param $0 i32) (param $1 i64) (result i64)
  local.get $0
  local.get $1
  i64.store
  local.get $1
 )
 (func $start:std/date (; 8 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  i32.const 1970
  local.set $2
  i32.const 0
  local.set $1
  i32.const 1
  local.set $0
  i32.const 0
  local.set $3
  i32.const 0
  local.set $4
  i32.const 0
  local.set $5
  i64.const 0
  local.set $6
  local.get $2
  local.get $1
  local.get $0
  local.get $3
  local.get $4
  local.get $5
  local.get $6
  f64.convert_i64_s
  call $~lib/bindings/Date/UTC
  i64.trunc_f64_s
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 1
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1970
  local.set $5
  i32.const 0
  local.set $4
  i32.const 1
  local.set $3
  i32.const 0
  local.set $2
  i32.const 0
  local.set $1
  i32.const 0
  local.set $0
  i64.const 0
  local.set $6
  local.get $5
  local.get $4
  local.get $3
  local.get $2
  local.get $1
  local.get $0
  local.get $6
  f64.convert_i64_s
  call $~lib/bindings/Date/UTC
  i64.trunc_f64_s
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 2
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2018
  local.set $5
  i32.const 10
  local.set $4
  i32.const 10
  local.set $3
  i32.const 11
  local.set $2
  i32.const 0
  local.set $1
  i32.const 0
  local.set $0
  i64.const 1
  local.set $6
  local.get $5
  local.get $4
  local.get $3
  local.get $2
  local.get $1
  local.get $0
  local.get $6
  f64.convert_i64_s
  call $~lib/bindings/Date/UTC
  i64.trunc_f64_s
  global.set $std/date/creationTime
  global.get $std/date/creationTime
  i64.const 1541847600001
  i64.eq
  i32.eqz
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
  i64.gt_s
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 7
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/heap/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
  i32.const 0
  global.get $std/date/creationTime
  call $~lib/date/Date#constructor
  global.set $std/date/date
  global.get $std/date/date
  call $~lib/date/Date#getTime
  global.get $std/date/creationTime
  i64.eq
  i32.eqz
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
  call $~lib/date/Date#setTime
  drop
  global.get $std/date/date
  call $~lib/date/Date#getTime
  global.get $std/date/creationTime
  i64.const 1
  i64.add
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 12
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start (; 9 ;) (type $FUNCSIG$v)
  call $start:std/date
 )
 (func $null (; 10 ;) (type $FUNCSIG$v)
 )
)
