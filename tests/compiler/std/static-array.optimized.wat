(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$ji (func (param i32) (result i64)))
 (type $FUNCSIG$fi (func (param i32) (result f32)))
 (type $FUNCSIG$di (func (param i32) (result f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\01\00\00\00\02")
 (data (i32.const 32) "\10\00\00\00\01\00\00\00\03\00\00\00\10\00\00\00\18\00\00\00\18\00\00\00\08\00\00\00\02")
 (data (i32.const 64) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\03\00\00\00\00\00\00\00\04")
 (data (i32.const 96) "\10\00\00\00\01\00\00\00\04\00\00\00\10\00\00\00P\00\00\00P\00\00\00\10\00\00\00\02")
 (data (i32.const 128) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\00\00\c0?\00\00 @")
 (data (i32.const 152) "\10\00\00\00\01\00\00\00\05\00\00\00\10\00\00\00\90\00\00\00\90\00\00\00\08\00\00\00\02")
 (data (i32.const 184) "\10\00\00\00\01\00\00\00\00\00\00\00\10")
 (data (i32.const 206) "\f4?\00\00\00\00\00\00\02@")
 (data (i32.const 216) "\10\00\00\00\01\00\00\00\06\00\00\00\10\00\00\00\c8\00\00\00\c8\00\00\00\10\00\00\00\02")
 (data (i32.const 248) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00s\00t\00d\00/\00s\00t\00a\00t\00i\00c\00-\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 304) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 360) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 408) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/array/Array<i32>#__get (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 56
  i32.load
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 320
   i32.const 376
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 52
  i32.load
  local.get $0
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/rt/stub/__alloc (; 2 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.tee $3
  local.get $0
  i32.const 1
  local.get $0
  i32.const 1
  i32.gt_u
  select
  i32.add
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $2
  memory.size
  local.tee $4
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $4
   local.get $2
   local.get $3
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $5
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $2
  global.set $~lib/rt/stub/offset
  local.get $3
  i32.const 16
  i32.sub
  local.tee $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  local.get $3
 )
 (func $~lib/memory/memory.copy (; 3 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $3
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
     loop $continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $3
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $4
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       local.get $4
       i32.load8_u
       i32.store8
       br $continue|0
      end
     end
     loop $continue|1
      local.get $3
      i32.const 8
      i32.lt_u
      i32.eqz
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       br $continue|1
      end
     end
    end
    loop $continue|2
     local.get $3
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $4
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $4
      i32.load8_u
      i32.store8
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
      br $continue|2
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
     loop $continue|3
      local.get $0
      local.get $3
      i32.add
      i32.const 7
      i32.and
      if
       local.get $3
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $0
       local.get $3
       i32.const 1
       i32.sub
       local.tee $3
       i32.add
       local.get $1
       local.get $3
       i32.add
       i32.load8_u
       i32.store8
       br $continue|3
      end
     end
     loop $continue|4
      local.get $3
      i32.const 8
      i32.lt_u
      i32.eqz
      if
       local.get $0
       local.get $3
       i32.const 8
       i32.sub
       local.tee $3
       i32.add
       local.get $1
       local.get $3
       i32.add
       i64.load
       i64.store
       br $continue|4
      end
     end
    end
    loop $continue|5
     local.get $3
     if
      local.get $0
      local.get $3
      i32.const 1
      i32.sub
      local.tee $3
      i32.add
      local.get $1
      local.get $3
      i32.add
      i32.load8_u
      i32.store8
      br $continue|5
     end
    end
   end
  end
 )
 (func $~lib/rt/stub/__realloc (; 4 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.const 16
  i32.sub
  local.tee $2
  i32.load offset=12
  local.tee $3
  i32.gt_u
  if
   local.get $1
   local.get $2
   i32.load offset=8
   call $~lib/rt/stub/__alloc
   local.tee $1
   local.get $0
   local.get $3
   call $~lib/memory/memory.copy
   local.get $1
   local.set $0
  else   
   local.get $2
   local.get $1
   i32.store offset=12
  end
  local.get $0
 )
 (func $~lib/memory/memory.fill (; 5 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
   i32.const 1
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 2
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 1
   i32.add
   i32.const 0
   i32.store8
   local.get $0
   i32.const 2
   i32.add
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   local.tee $2
   i32.const 2
   i32.sub
   i32.const 0
   i32.store8
   local.get $2
   i32.const 3
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 6
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 3
   i32.add
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   i32.const 4
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.tee $1
   i32.sub
   local.get $0
   local.get $1
   i32.add
   local.tee $0
   i32.const 0
   i32.store
   i32.const -4
   i32.and
   local.tee $1
   local.get $0
   i32.add
   i32.const 4
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 4
   i32.add
   i32.const 0
   i32.store
   local.get $0
   i32.const 8
   i32.add
   i32.const 0
   i32.store
   local.get $0
   local.get $1
   i32.add
   local.tee $2
   i32.const 12
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 8
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 12
   i32.add
   i32.const 0
   i32.store
   local.get $0
   i32.const 16
   i32.add
   i32.const 0
   i32.store
   local.get $0
   i32.const 20
   i32.add
   i32.const 0
   i32.store
   local.get $0
   i32.const 24
   i32.add
   i32.const 0
   i32.store
   local.get $0
   local.get $1
   i32.add
   local.tee $2
   i32.const 28
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 24
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 20
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 16
   i32.sub
   i32.const 0
   i32.store
   local.get $0
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $2
   local.get $0
   i32.add
   local.set $0
   local.get $1
   local.get $2
   i32.sub
   local.set $1
   loop $continue|0
    local.get $1
    i32.const 32
    i32.ge_u
    if
     local.get $0
     i64.const 0
     i64.store
     local.get $0
     i32.const 8
     i32.add
     i64.const 0
     i64.store
     local.get $0
     i32.const 16
     i32.add
     i64.const 0
     i64.store
     local.get $0
     i32.const 24
     i32.add
     i64.const 0
     i64.store
     local.get $1
     i32.const 32
     i32.sub
     local.set $1
     local.get $0
     i32.const 32
     i32.add
     local.set $0
     br $continue|0
    end
   end
  end
 )
 (func $~lib/array/ensureSize (; 6 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 1
  local.get $0
  i32.load offset=8
  local.tee $2
  local.get $1
  i32.shr_u
  i32.gt_u
  if
   i32.const 1
   i32.const 1073741808
   local.get $1
   i32.shr_u
   i32.gt_u
   if
    i32.const 424
    i32.const 376
    i32.const 14
    i32.const 47
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   local.tee $4
   i32.const 1
   local.get $1
   i32.shl
   local.tee $3
   call $~lib/rt/stub/__realloc
   local.tee $1
   local.get $2
   i32.add
   local.get $3
   local.get $2
   i32.sub
   call $~lib/memory/memory.fill
   local.get $1
   local.get $4
   i32.ne
   if
    local.get $0
    local.get $1
    i32.store
    local.get $0
    local.get $1
    i32.store offset=4
   end
   local.get $0
   local.get $3
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<i32>#__set (; 7 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 60
  i32.load
  local.set $0
  i32.const 48
  i32.const 2
  call $~lib/array/ensureSize
  i32.const 52
  i32.load
  i32.const 2
  i32.store
  i32.const 0
  local.get $0
  i32.ge_s
  if
   i32.const 60
   i32.const 1
   i32.store
  end
 )
 (func $~lib/array/Array<i64>#__get (; 8 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i32.const 120
  i32.load
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 320
   i32.const 376
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 116
  i32.load
  local.get $0
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $~lib/array/Array<i64>#__set (; 9 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 124
  i32.load
  local.set $0
  i32.const 112
  i32.const 3
  call $~lib/array/ensureSize
  i32.const 116
  i32.load
  i64.const 4
  i64.store
  i32.const 0
  local.get $0
  i32.ge_s
  if
   i32.const 124
   i32.const 1
   i32.store
  end
 )
 (func $~lib/array/Array<f32>#__get (; 10 ;) (type $FUNCSIG$fi) (param $0 i32) (result f32)
  local.get $0
  i32.const 176
  i32.load
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 320
   i32.const 376
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 172
  i32.load
  local.get $0
  i32.const 2
  i32.shl
  i32.add
  f32.load
 )
 (func $~lib/array/Array<f32>#__set (; 11 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 180
  i32.load
  local.set $0
  i32.const 168
  i32.const 2
  call $~lib/array/ensureSize
  i32.const 172
  i32.load
  f32.const 2.5
  f32.store
  i32.const 0
  local.get $0
  i32.ge_s
  if
   i32.const 180
   i32.const 1
   i32.store
  end
 )
 (func $~lib/array/Array<f64>#__get (; 12 ;) (type $FUNCSIG$di) (param $0 i32) (result f64)
  local.get $0
  i32.const 240
  i32.load
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 320
   i32.const 376
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 236
  i32.load
  local.get $0
  i32.const 3
  i32.shl
  i32.add
  f64.load
 )
 (func $~lib/array/Array<f64>#__set (; 13 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 244
  i32.load
  local.set $0
  i32.const 232
  i32.const 3
  call $~lib/array/ensureSize
  i32.const 236
  i32.load
  f64.const 2.25
  f64.store
  i32.const 0
  local.get $0
  i32.ge_s
  if
   i32.const 244
   i32.const 1
   i32.store
  end
 )
 (func $start:std/static-array (; 14 ;) (type $FUNCSIG$v)
  i32.const 60
  i32.load
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 264
   i32.const 6
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 264
   i32.const 7
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 264
   i32.const 8
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 464
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
  call $~lib/array/Array<i32>#__set
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 264
   i32.const 10
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 124
  i32.load
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 264
   i32.const 12
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/array/Array<i64>#__get
  i64.const 3
  i64.ne
  if
   i32.const 0
   i32.const 264
   i32.const 13
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $~lib/array/Array<i64>#__get
  i64.const 4
  i64.ne
  if
   i32.const 0
   i32.const 264
   i32.const 14
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/array/Array<i64>#__set
  i32.const 0
  call $~lib/array/Array<i64>#__get
  i64.const 4
  i64.ne
  if
   i32.const 0
   i32.const 264
   i32.const 16
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 180
  i32.load
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 264
   i32.const 18
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/array/Array<f32>#__get
  f32.const 1.5
  f32.ne
  if
   i32.const 0
   i32.const 264
   i32.const 19
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $~lib/array/Array<f32>#__get
  f32.const 2.5
  f32.ne
  if
   i32.const 0
   i32.const 264
   i32.const 20
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/array/Array<f32>#__set
  i32.const 0
  call $~lib/array/Array<f32>#__get
  f32.const 2.5
  f32.ne
  if
   i32.const 0
   i32.const 264
   i32.const 22
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 244
  i32.load
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 264
   i32.const 24
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/array/Array<f64>#__get
  f64.const 1.25
  f64.ne
  if
   i32.const 0
   i32.const 264
   i32.const 25
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $~lib/array/Array<f64>#__get
  f64.const 2.25
  f64.ne
  if
   i32.const 0
   i32.const 264
   i32.const 26
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/array/Array<f64>#__set
  i32.const 0
  call $~lib/array/Array<f64>#__get
  f64.const 2.25
  f64.ne
  if
   i32.const 0
   i32.const 264
   i32.const 28
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start (; 15 ;) (type $FUNCSIG$v)
  call $start:std/static-array
 )
 (func $null (; 16 ;) (type $FUNCSIG$v)
  nop
 )
)
