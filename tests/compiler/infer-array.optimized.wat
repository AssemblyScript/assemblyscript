(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 48) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 112) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 160) "\18\00\00\00\01\00\00\00\00\00\00\00\18")
 (data (i32.const 182) "\f0?\00\00\00\00\00\00\00@\00\00\00\00\00\00\08@")
 (data (i32.const 208) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\01\00\00\00\ff\ff\ff\ff")
 (data (i32.const 240) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00i\00n\00f\00e\00r\00-\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 288) "\18\00\00\00\01\00\00\00\00\00\00\00\18")
 (data (i32.const 310) "\f0?\00\00\00\00\00\00\00@\00\00\00\00\00\00\08@")
 (data (i32.const 336) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\00\00\80?\00\00\00@\00\00@@")
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/stub/maybeGrowMemory (; 1 ;) (param $0 i32)
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
 (func $~lib/rt/stub/__alloc (; 2 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
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
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $2
  i32.const 16
  local.get $2
  i32.const 16
  i32.gt_u
  select
  local.tee $4
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $3
  i32.const 16
  i32.sub
  local.tee $2
  local.get $4
  i32.store
  local.get $2
  i32.const 1
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  local.get $3
 )
 (func $~lib/memory/memory.copy (; 3 ;) (param $0 i32) (param $1 i32) (param $2 i32)
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
     loop $while-continue|0
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
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $3
      i32.const 8
      i32.ge_u
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
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
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
      local.get $3
      i32.add
      i32.const 7
      i32.and
      if
       local.get $3
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $3
       i32.const 1
       i32.sub
       local.tee $3
       local.get $0
       i32.add
       local.get $1
       local.get $3
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $3
      i32.const 8
      i32.ge_u
      if
       local.get $3
       i32.const 8
       i32.sub
       local.tee $3
       local.get $0
       i32.add
       local.get $1
       local.get $3
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $3
     if
      local.get $3
      i32.const 1
      i32.sub
      local.tee $3
      local.get $0
      i32.add
      local.get $1
      local.get $3
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/rt/__allocArray (; 4 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  i32.const 16
  local.get $2
  call $~lib/rt/stub/__alloc
  local.tee $2
  local.get $0
  local.get $1
  i32.shl
  local.tee $1
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.tee $4
  i32.store
  local.get $2
  local.get $4
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  local.get $3
  if
   local.get $4
   local.get $3
   local.get $1
   call $~lib/memory/memory.copy
  end
  local.get $2
 )
 (func $~lib/array/Array<i32>#__get (; 5 ;) (param $0 i32) (result i32)
  i32.const 1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 64
   i32.const 128
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 4
  i32.add
  i32.load
 )
 (func $~lib/array/Array<f32>#__get (; 6 ;) (param $0 i32)
  i32.const 1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 64
   i32.const 128
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 4
  i32.add
  f32.load
  drop
 )
 (func $infer-array/Ref#constructor (; 7 ;) (result i32)
  i32.const 0
  i32.const 7
  call $~lib/rt/stub/__alloc
 )
 (func $start:infer-array (; 8 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 368
  global.set $~lib/rt/stub/startOffset
  i32.const 368
  global.set $~lib/rt/stub/offset
  i32.const 3
  i32.const 2
  i32.const 3
  i32.const 32
  call $~lib/rt/__allocArray
  drop
  i32.const 3
  i32.const 3
  i32.const 4
  i32.const 176
  call $~lib/rt/__allocArray
  drop
  i32.const 2
  i32.const 2
  i32.const 5
  i32.const 224
  call $~lib/rt/__allocArray
  call $~lib/array/Array<i32>#__get
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 256
   i32.const 14
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 3
  i32.const 4
  i32.const 304
  call $~lib/rt/__allocArray
  drop
  i32.const 3
  i32.const 2
  i32.const 6
  i32.const 352
  call $~lib/rt/__allocArray
  call $~lib/array/Array<f32>#__get
  call $infer-array/Ref#constructor
  local.set $0
  call $infer-array/Ref#constructor
  local.set $1
  i32.const 2
  i32.const 2
  i32.const 8
  i32.const 0
  call $~lib/rt/__allocArray
  i32.load offset=4
  local.tee $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  call $infer-array/Ref#constructor
  local.set $0
  call $infer-array/Ref#constructor
  local.set $1
  i32.const 2
  i32.const 2
  i32.const 8
  i32.const 0
  call $~lib/rt/__allocArray
  i32.load offset=4
  local.tee $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  call $infer-array/Ref#constructor
  local.set $0
  i32.const 2
  i32.const 2
  i32.const 8
  i32.const 0
  call $~lib/rt/__allocArray
  i32.load offset=4
  local.tee $1
  local.get $0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
 )
 (func $~start (; 9 ;)
  call $start:infer-array
 )
)
