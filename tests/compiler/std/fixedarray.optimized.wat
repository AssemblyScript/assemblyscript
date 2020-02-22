(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "\0c\00\00\00\01\00\00\00\03\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 48) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 112) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00f\00i\00x\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 176) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00s\00t\00d\00/\00f\00i\00x\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 240) "\0c\00\00\00\01\00\00\00\03\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 272) "\0c\00\00\00\01\00\00\00\03\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 304) "\0c\00\00\00\01\00\00\00\03\00\00\00\0c\00\00\00\05\00\00\00\06\00\00\00\07")
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $std/fixedarray/arr4 (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/fixedarray/FixedArray<i32>#get:length (; 1 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 2
  i32.shr_u
 )
 (func $~lib/fixedarray/FixedArray<i32>#__get (; 2 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  call $~lib/fixedarray/FixedArray<i32>#get:length
  i32.ge_u
  if
   i32.const 64
   i32.const 128
   i32.const 28
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/fixedarray/FixedArray<i32>#__set (; 3 ;) (param $0 i32) (param $1 i32)
  i32.const 1
  local.get $0
  call $~lib/fixedarray/FixedArray<i32>#get:length
  i32.ge_u
  if
   i32.const 64
   i32.const 128
   i32.const 43
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 4
  i32.add
  local.get $1
  i32.store
 )
 (func $~lib/rt/stub/maybeGrowMemory (; 4 ;) (param $0 i32)
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
 (func $~lib/rt/stub/__alloc (; 5 ;) (result i32)
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
  i32.const 12
  i32.store offset=12
  local.get $1
 )
 (func $~lib/memory/memory.copy (; 6 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 320
  local.set $2
  i32.const 12
  local.set $1
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   i32.const 320
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
   local.get $0
   i32.const 320
   i32.lt_u
   if
    local.get $0
    i32.const 7
    i32.and
    i32.eqz
    if
     loop $while-continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $1
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $1
       i32.const 1
       i32.sub
       local.set $1
       local.get $0
       local.tee $3
       i32.const 1
       i32.add
       local.set $0
       local.get $2
       local.tee $4
       i32.const 1
       i32.add
       local.set $2
       local.get $3
       local.get $4
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $1
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $2
       i64.load
       i64.store
       local.get $1
       i32.const 8
       i32.sub
       local.set $1
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $2
       i32.const 8
       i32.add
       local.set $2
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $1
     if
      local.get $0
      local.tee $3
      i32.const 1
      i32.add
      local.set $0
      local.get $2
      local.tee $4
      i32.const 1
      i32.add
      local.set $2
      local.get $3
      local.get $4
      i32.load8_u
      i32.store8
      local.get $1
      i32.const 1
      i32.sub
      local.set $1
      br $while-continue|2
     end
    end
   else
    local.get $0
    i32.const 7
    i32.and
    i32.eqz
    if
     loop $while-continue|3
      local.get $0
      local.get $1
      i32.add
      i32.const 7
      i32.and
      if
       local.get $1
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $0
       local.get $1
       i32.const 1
       i32.sub
       local.tee $1
       i32.add
       local.get $1
       i32.const 320
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $1
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $1
       i32.const 8
       i32.sub
       local.tee $1
       i32.add
       local.get $1
       i32.const 320
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $1
     if
      local.get $0
      local.get $1
      i32.const 1
      i32.sub
      local.tee $1
      i32.add
      local.get $1
      i32.const 320
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $std/fixedarray/test (; 7 ;) (result i32)
  (local $0 i32)
  call $~lib/rt/stub/__alloc
  local.tee $0
  call $~lib/memory/memory.copy
  local.get $0
 )
 (func $start:std/fixedarray (; 8 ;)
  i32.const 32
  i32.const 1
  call $~lib/fixedarray/FixedArray<i32>#__get
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 192
   i32.const 3
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  call $~lib/fixedarray/FixedArray<i32>#get:length
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 192
   i32.const 4
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  i32.const 4
  call $~lib/fixedarray/FixedArray<i32>#__set
  i32.const 32
  i32.const 1
  call $~lib/fixedarray/FixedArray<i32>#__get
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 192
   i32.const 6
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 256
  i32.const 1
  call $~lib/fixedarray/FixedArray<i32>#__get
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 192
   i32.const 10
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 256
  call $~lib/fixedarray/FixedArray<i32>#get:length
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 192
   i32.const 11
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 256
  i32.const 4
  call $~lib/fixedarray/FixedArray<i32>#__set
  i32.const 256
  i32.const 1
  call $~lib/fixedarray/FixedArray<i32>#__get
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 192
   i32.const 13
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 288
  i32.const 1
  call $~lib/fixedarray/FixedArray<i32>#__get
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 192
   i32.const 17
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 288
  call $~lib/fixedarray/FixedArray<i32>#get:length
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 192
   i32.const 18
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 288
  i32.const 4
  call $~lib/fixedarray/FixedArray<i32>#__set
  i32.const 288
  i32.const 1
  call $~lib/fixedarray/FixedArray<i32>#__get
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 192
   i32.const 20
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 336
  global.set $~lib/rt/stub/startOffset
  i32.const 336
  global.set $~lib/rt/stub/offset
  call $std/fixedarray/test
  global.set $std/fixedarray/arr4
  global.get $std/fixedarray/arr4
  i32.const 0
  call $~lib/fixedarray/FixedArray<i32>#__get
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 192
   i32.const 27
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/fixedarray/arr4
  i32.const 1
  call $~lib/fixedarray/FixedArray<i32>#__get
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 192
   i32.const 28
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/fixedarray/arr4
  i32.const 2
  call $~lib/fixedarray/FixedArray<i32>#__get
  i32.const 7
  i32.ne
  if
   i32.const 0
   i32.const 192
   i32.const 29
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/fixedarray/arr4
  call $~lib/fixedarray/FixedArray<i32>#get:length
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 192
   i32.const 30
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/fixedarray/arr4
  i32.const 8
  call $~lib/fixedarray/FixedArray<i32>#__set
  global.get $std/fixedarray/arr4
  i32.const 1
  call $~lib/fixedarray/FixedArray<i32>#__get
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 192
   i32.const 32
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  call $std/fixedarray/test
  global.set $std/fixedarray/arr4
  global.get $std/fixedarray/arr4
  i32.const 1
  call $~lib/fixedarray/FixedArray<i32>#__get
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 192
   i32.const 34
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start (; 9 ;)
  call $start:std/fixedarray
 )
)
