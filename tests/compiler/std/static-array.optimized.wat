(module
 (type $none_=>_none (func))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_i64 (func (param i32) (result i64)))
 (type $i32_=>_f32 (func (param i32) (result f32)))
 (type $i32_=>_f64 (func (param i32) (result f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1036) "\1c\00\00\00\01")
 (data (i32.const 1052) "\08\00\00\00\01\00\00\00\02")
 (data (i32.const 1068) ",\00\00\00\01\00\00\00\00\00\00\00\03\00\00\00\10\00\00\00 \04\00\00 \04\00\00\08\00\00\00\02")
 (data (i32.const 1116) ",\00\00\00\01")
 (data (i32.const 1132) "\10\00\00\00\03\00\00\00\00\00\00\00\04")
 (data (i32.const 1164) ",\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\10\00\00\00p\04\00\00p\04\00\00\10\00\00\00\02")
 (data (i32.const 1212) "\1c\00\00\00\01")
 (data (i32.const 1228) "\08\00\00\00\00\00\c0?\00\00 @")
 (data (i32.const 1244) ",\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\10\00\00\00\d0\04\00\00\d0\04\00\00\08\00\00\00\02")
 (data (i32.const 1292) ",\00\00\00\01")
 (data (i32.const 1308) "\10")
 (data (i32.const 1318) "\f4?\00\00\00\00\00\00\02@")
 (data (i32.const 1340) ",\00\00\00\01\00\00\00\00\00\00\00\06\00\00\00\10\00\00\00 \05\00\00 \05\00\00\10\00\00\00\02")
 (data (i32.const 1388) "<\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00&\00\00\00s\00t\00d\00/\00s\00t\00a\00t\00i\00c\00-\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1452) "<\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 1516) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1564) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 1612) "<\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s")
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/array/Array<i32>#__get (param $0 i32) (result i32)
  local.get $0
  i32.const 1100
  i32.load
  i32.ge_u
  if
   i32.const 1472
   i32.const 1536
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1092
  i32.load
  local.get $0
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/rt/stub/computeSize (param $0 i32) (result i32)
  local.get $0
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
 )
 (func $~lib/rt/stub/maybeGrowMemory (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  memory.size
  local.tee $2
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const -16
  i32.and
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
   local.get $1
   local.get $2
   i32.lt_s
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
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $4
   local.get $0
   local.get $1
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.set $4
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $3
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       local.get $3
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $4
       i32.const 8
       i32.sub
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $4
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $3
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $3
      i32.load8_u
      i32.store8
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
      br $while-continue|2
     end
    end
   else
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|3
      local.get $0
      local.get $4
      i32.add
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $4
       i32.const 8
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $4
     if
      local.get $4
      i32.const 1
      i32.sub
      local.tee $4
      local.get $0
      i32.add
      local.get $1
      local.get $4
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/rt/stub/__realloc (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $0
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1632
   i32.const 55
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/stub/offset
  local.get $0
  local.get $0
  i32.const 4
  i32.sub
  local.tee $3
  i32.load
  local.tee $4
  i32.add
  i32.eq
  local.set $5
  local.get $1
  call $~lib/rt/stub/computeSize
  local.set $2
  local.get $1
  local.get $4
  i32.gt_u
  if
   local.get $5
   if
    local.get $1
    i32.const 1073741820
    i32.gt_u
    if
     unreachable
    end
    local.get $0
    local.get $2
    i32.add
    call $~lib/rt/stub/maybeGrowMemory
    local.get $3
    local.get $2
    i32.store
   else
    local.get $2
    local.get $4
    i32.const 1
    i32.shl
    local.tee $1
    local.get $1
    local.get $2
    i32.lt_u
    select
    local.tee $2
    i32.const 1073741820
    i32.gt_u
    if
     unreachable
    end
    global.get $~lib/rt/stub/offset
    global.get $~lib/rt/stub/offset
    i32.const 4
    i32.add
    local.tee $1
    local.get $2
    call $~lib/rt/stub/computeSize
    local.tee $2
    i32.add
    call $~lib/rt/stub/maybeGrowMemory
    local.get $2
    i32.store
    local.get $1
    local.get $0
    local.get $4
    call $~lib/memory/memory.copy
    local.get $1
    local.set $0
   end
  else
   local.get $5
   if
    local.get $0
    local.get $2
    i32.add
    global.set $~lib/rt/stub/offset
    local.get $3
    local.get $2
    i32.store
   end
  end
  local.get $0
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.eqz
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   i32.const 4
   i32.sub
   local.tee $2
   i32.const 0
   i32.store8 offset=3
   local.get $1
   i32.const 2
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 offset=1
   local.get $0
   i32.const 0
   i32.store8 offset=2
   local.get $2
   i32.const 0
   i32.store8 offset=2
   local.get $2
   i32.const 0
   i32.store8 offset=1
   local.get $1
   i32.const 6
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 offset=3
   local.get $2
   i32.const 0
   i32.store8
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.tee $2
   i32.add
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   local.get $1
   local.get $2
   i32.sub
   i32.const -4
   i32.and
   local.tee $2
   i32.add
   i32.const 28
   i32.sub
   local.tee $1
   i32.const 0
   i32.store offset=24
   local.get $2
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.store offset=16
   local.get $1
   i32.const 0
   i32.store offset=20
   local.get $2
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
   i32.const 0
   i32.store offset=24
   local.get $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.store offset=12
   local.get $0
   local.get $0
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $1
   i32.add
   local.set $0
   local.get $2
   local.get $1
   i32.sub
   local.set $1
   loop $while-continue|0
    local.get $1
    i32.const 32
    i32.ge_u
    if
     local.get $0
     i64.const 0
     i64.store
     local.get $0
     i64.const 0
     i64.store offset=8
     local.get $0
     i64.const 0
     i64.store offset=16
     local.get $0
     i64.const 0
     i64.store offset=24
     local.get $1
     i32.const 32
     i32.sub
     local.set $1
     local.get $0
     i32.const 32
     i32.add
     local.set $0
     br $while-continue|0
    end
   end
  end
 )
 (func $~lib/array/ensureSize (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=8
  local.tee $4
  local.get $1
  i32.shr_u
  i32.const 1
  i32.lt_u
  if
   i32.const 1073741820
   local.get $1
   i32.shr_u
   i32.const 1
   i32.lt_u
   if
    i32.const 1584
    i32.const 1536
    i32.const 14
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   local.tee $5
   i32.const 1
   local.get $1
   i32.shl
   local.tee $1
   local.set $2
   local.get $1
   i32.const 1073741804
   i32.gt_u
   if
    unreachable
   end
   i32.const 16
   i32.sub
   local.get $2
   i32.const 16
   i32.add
   call $~lib/rt/stub/__realloc
   local.tee $3
   i32.const 4
   i32.sub
   local.get $2
   i32.store offset=16
   local.get $4
   local.get $3
   i32.const 16
   i32.add
   local.tee $2
   i32.add
   local.get $1
   local.get $4
   i32.sub
   call $~lib/memory/memory.fill
   local.get $2
   local.get $5
   i32.ne
   if
    local.get $0
    local.get $2
    i32.store
    local.get $0
    local.get $2
    i32.store offset=4
   end
   local.get $0
   local.get $1
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<i64>#__get (param $0 i32) (result i64)
  local.get $0
  i32.const 1196
  i32.load
  i32.ge_u
  if
   i32.const 1472
   i32.const 1536
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1188
  i32.load
  local.get $0
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $~lib/array/Array<f32>#__get (param $0 i32) (result f32)
  local.get $0
  i32.const 1276
  i32.load
  i32.ge_u
  if
   i32.const 1472
   i32.const 1536
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1268
  i32.load
  local.get $0
  i32.const 2
  i32.shl
  i32.add
  f32.load
 )
 (func $~lib/array/Array<f64>#__get (param $0 i32) (result f64)
  local.get $0
  i32.const 1372
  i32.load
  i32.ge_u
  if
   i32.const 1472
   i32.const 1536
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1364
  i32.load
  local.get $0
  i32.const 3
  i32.shl
  i32.add
  f64.load
 )
 (func $start:std/static-array
  i32.const 1100
  i32.load
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1408
   i32.const 6
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1408
   i32.const 7
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1408
   i32.const 8
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1676
  global.set $~lib/rt/stub/offset
  i32.const 1100
  i32.load
  i32.eqz
  if
   i32.const 1088
   i32.const 2
   call $~lib/array/ensureSize
   i32.const 1100
   i32.const 1
   i32.store
  end
  i32.const 1092
  i32.load
  i32.const 2
  i32.store
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1408
   i32.const 10
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1196
  i32.load
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1408
   i32.const 12
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/array/Array<i64>#__get
  i64.const 3
  i64.ne
  if
   i32.const 0
   i32.const 1408
   i32.const 13
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $~lib/array/Array<i64>#__get
  i64.const 4
  i64.ne
  if
   i32.const 0
   i32.const 1408
   i32.const 14
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1196
  i32.load
  i32.eqz
  if
   i32.const 1184
   i32.const 3
   call $~lib/array/ensureSize
   i32.const 1196
   i32.const 1
   i32.store
  end
  i32.const 1188
  i32.load
  i64.const 4
  i64.store
  i32.const 0
  call $~lib/array/Array<i64>#__get
  i64.const 4
  i64.ne
  if
   i32.const 0
   i32.const 1408
   i32.const 16
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1276
  i32.load
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1408
   i32.const 18
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/array/Array<f32>#__get
  f32.const 1.5
  f32.ne
  if
   i32.const 0
   i32.const 1408
   i32.const 19
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $~lib/array/Array<f32>#__get
  f32.const 2.5
  f32.ne
  if
   i32.const 0
   i32.const 1408
   i32.const 20
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1276
  i32.load
  i32.eqz
  if
   i32.const 1264
   i32.const 2
   call $~lib/array/ensureSize
   i32.const 1276
   i32.const 1
   i32.store
  end
  i32.const 1268
  i32.load
  f32.const 2.5
  f32.store
  i32.const 0
  call $~lib/array/Array<f32>#__get
  f32.const 2.5
  f32.ne
  if
   i32.const 0
   i32.const 1408
   i32.const 22
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1372
  i32.load
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1408
   i32.const 24
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/array/Array<f64>#__get
  f64.const 1.25
  f64.ne
  if
   i32.const 0
   i32.const 1408
   i32.const 25
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $~lib/array/Array<f64>#__get
  f64.const 2.25
  f64.ne
  if
   i32.const 0
   i32.const 1408
   i32.const 26
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1372
  i32.load
  i32.eqz
  if
   i32.const 1360
   i32.const 3
   call $~lib/array/ensureSize
   i32.const 1372
   i32.const 1
   i32.store
  end
  i32.const 1364
  i32.load
  f64.const 2.25
  f64.store
  i32.const 0
  call $~lib/array/Array<f64>#__get
  f64.const 2.25
  f64.ne
  if
   i32.const 0
   i32.const 1408
   i32.const 28
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:std/static-array
 )
)
