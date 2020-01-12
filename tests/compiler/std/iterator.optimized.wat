(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\0b\00\00\00\03\00\00\00\05")
 (data (i32.const 48) "\10\00\00\00\01\00\00\00\03\00\00\00\10\00\00\00 \00\00\00 \00\00\00\0c\00\00\00\03")
 (data (i32.const 80) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 128) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 192) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 240) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s")
 (data (i32.const 288) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 352) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00s\00t\00d\00/\00i\00t\00e\00r\00a\00t\00o\00r\00.\00t\00s")
 (data (i32.const 400) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00h\00e\00l\00l\00o")
 (data (i32.const 432) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00w\00o\00r\00l\00d")
 (data (i32.const 464) "^\00\00\00\01\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $std/iterator/iterableArr (mut i32) (i32.const 0))
 (global $std/iterator/iter (mut i32) (i32.const 0))
 (global $std/iterator/iterres (mut i32) (i32.const 0))
 (global $std/iterator/arri (mut i32) (i32.const 0))
 (global $std/iterator/arr2 (mut i32) (i32.const 0))
 (global $std/iterator/map (mut i32) (i32.const 0))
 (global $std/iterator/entries (mut i32) (i32.const 0))
 (global $std/iterator/resEntry (mut i32) (i32.const 0))
 (global $std/iterator/entriesArr (mut i32) (i32.const 0))
 (global $std/iterator/keyIter (mut i32) (i32.const 0))
 (global $std/iterator/key (mut i32) (i32.const 0))
 (global $std/iterator/valIter (mut i32) (i32.const 0))
 (global $std/iterator/val (mut i32) (i32.const 0))
 (global $std/iterator/strSet (mut i32) (i32.const 0))
 (global $std/iterator/mapArray (mut i32) (i32.const 0))
 (global $std/iterator/setArray (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $start)
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
 (func $~lib/memory/memory.fill (; 3 ;) (param $0 i32) (param $1 i32)
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
   local.set $2
   local.get $0
   local.get $1
   i32.add
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   local.get $2
   i32.const -4
   i32.and
   local.tee $1
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
   local.get $0
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $2
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
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 4 ;) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 0
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.tee $1
  i32.const 0
  call $~lib/memory/memory.fill
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 2
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.load
  drop
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
 )
 (func $~lib/array/Array<i32>#constructor (; 5 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 3
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $0
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
 )
 (func $~lib/memory/memory.copy (; 6 ;) (param $0 i32) (param $1 i32) (param $2 i32)
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
       br $continue|3
      end
     end
     loop $continue|4
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
       br $continue|4
      end
     end
    end
    loop $continue|5
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
      br $continue|5
     end
    end
   end
  end
 )
 (func $~lib/rt/stub/__realloc (; 7 ;) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 256
   i32.const 43
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.sub
  local.tee $3
  i32.load
  local.set $4
  local.get $3
  i32.load offset=4
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 256
   i32.const 46
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/stub/offset
  local.get $0
  local.get $4
  i32.add
  i32.eq
  local.set $5
  local.get $1
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.set $2
  local.get $1
  local.get $4
  i32.gt_u
  if
   local.get $5
   if
    local.get $1
    i32.const 1073741808
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
    local.tee $4
    local.get $2
    local.get $4
    i32.gt_u
    select
    local.get $3
    i32.load offset=8
    call $~lib/rt/stub/__alloc
    local.tee $2
    local.get $0
    local.get $3
    i32.load offset=12
    call $~lib/memory/memory.copy
    local.get $2
    local.tee $0
    i32.const 16
    i32.sub
    local.set $3
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
  local.get $3
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/ensureSize (; 8 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 268435452
   i32.gt_u
   if
    i32.const 96
    i32.const 208
    i32.const 14
    i32.const 47
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $0
   i32.load
   local.tee $4
   local.get $1
   i32.const 2
   i32.shl
   local.tee $3
   call $~lib/rt/stub/__realloc
   local.tee $1
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
 (func $~lib/array/Array<i32>#push (; 9 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.add
  local.tee $3
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
 )
 (func $std/iterator/ArrayIterator<i32>#constructor (; 10 ;) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 8
  i32.const 6
  call $~lib/rt/stub/__alloc
  local.tee $1
  i32.const -1
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
 )
 (func $~lib/array/Array<i32>#__unchecked_get (; 11 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<i32>#__get (; 12 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 304
   i32.const 208
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__unchecked_get
 )
 (func $~lib/array/Array<i32>#__set (; 13 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 304
    i32.const 208
    i32.const 109
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   call $~lib/array/ensureSize
   local.get $0
   local.get $3
   i32.store offset=12
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $~lib/array/Array<i32>#set:length (; 14 ;) (param $0 i32) (param $1 i32)
  local.get $0
  i32.load offset=12
  drop
  local.get $0
  local.get $1
  call $~lib/array/ensureSize
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/array/Array.from<i32,i32> (; 15 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  call $~lib/array/Array<i32>#constructor
  local.set $1
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 4
  i32.sub
  if
   unreachable
  end
  local.get $0
  call $std/iterator/ArrayIterator<i32>#constructor
  local.tee $0
  local.set $3
  local.get $0
  call $~lib/iterator/Iterator<i32>#next
  local.set $2
  i32.const 0
  local.set $0
  loop $continue|0
   local.get $2
   call $~lib/iterator/IteratorResult<i32>#get:done
   i32.eqz
   if
    local.get $0
    local.tee $4
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.get $4
    local.get $2
    call $~lib/iterator/IteratorResult<i32>#get:value
    call $~lib/array/Array<i32>#__set
    local.get $3
    call $~lib/iterator/Iterator<i32>#next
    local.set $2
    br $continue|0
   end
  end
  local.get $1
  local.get $0
  call $~lib/array/Array<i32>#set:length
  local.get $1
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 16 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   i32.const 96
   i32.const 144
   i32.const 54
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.tee $1
  local.get $0
  call $~lib/memory/memory.fill
  local.get $1
 )
 (func $~lib/map/Map<~lib/string/String,i32>#clear (; 17 ;) (param $0 i32)
  (local $1 i32)
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $0
  i32.load
  drop
  local.get $0
  local.get $1
  i32.store
  local.get $0
  i32.const 3
  i32.store offset=4
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $0
  i32.load offset=8
  drop
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/map/Map<~lib/string/String,i32>#constructor (; 18 ;) (result i32)
  (local $0 i32)
  i32.const 24
  i32.const 9
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 0
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
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
  local.get $0
  call $~lib/map/Map<~lib/string/String,i32>#clear
  local.get $0
 )
 (func $~lib/string/String#get:length (; 19 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/hash/hashStr (; 20 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const -2128831035
  local.set $1
  local.get $0
  local.tee $2
  if
   block $break|0
    i32.const 0
    local.set $0
    local.get $2
    call $~lib/string/String#get:length
    i32.const 1
    i32.shl
    local.set $3
    loop $loop|0
     local.get $0
     local.get $3
     i32.ge_u
     br_if $break|0
     local.get $1
     local.get $0
     local.get $2
     i32.add
     i32.load8_u
     i32.xor
     i32.const 16777619
     i32.mul
     local.set $1
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|0
    end
    unreachable
   end
  end
  local.get $1
 )
 (func $~lib/util/string/compareImpl (; 21 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 7
  i32.and
  local.get $1
  i32.const 7
  i32.and
  i32.or
  i32.eqz
  i32.const 0
  local.get $2
  i32.const 4
  i32.ge_u
  select
  if
   loop $continue|0
    local.get $0
    i64.load
    local.get $1
    i64.load
    i64.eq
    if
     local.get $0
     i32.const 8
     i32.add
     local.set $0
     local.get $1
     i32.const 8
     i32.add
     local.set $1
     local.get $2
     i32.const 4
     i32.sub
     local.tee $2
     i32.const 4
     i32.ge_u
     br_if $continue|0
    end
   end
  end
  loop $continue|1
   block $break|1
    local.get $2
    local.tee $3
    i32.const 1
    i32.sub
    local.set $2
    local.get $3
    i32.eqz
    br_if $break|1
    local.get $1
    i32.load16_u
    local.tee $3
    local.get $0
    i32.load16_u
    local.tee $4
    i32.ne
    if
     local.get $4
     local.get $3
     i32.sub
     return
    else
     local.get $0
     i32.const 2
     i32.add
     local.set $0
     local.get $1
     i32.const 2
     i32.add
     local.set $1
     br $continue|1
    end
    unreachable
   end
  end
  i32.const 0
 )
 (func $~lib/string/String.__eq (; 22 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  block $folding-inner0
   local.get $1
   i32.eqz
   i32.const 1
   local.get $0
   select
   br_if $folding-inner0
   local.get $0
   call $~lib/string/String#get:length
   local.tee $2
   local.get $1
   call $~lib/string/String#get:length
   i32.ne
   br_if $folding-inner0
   local.get $0
   local.get $1
   local.get $2
   call $~lib/util/string/compareImpl
   i32.eqz
   return
  end
  i32.const 0
 )
 (func $~lib/map/Map<~lib/string/String,i32>#find (; 23 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  loop $continue|0
   local.get $0
   if
    local.get $0
    i32.load offset=8
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $0
     i32.load
     local.get $1
     call $~lib/string/String.__eq
    end
    if
     local.get $0
     return
    else
     local.get $0
     i32.load offset=8
     i32.const -2
     i32.and
     local.set $0
     br $continue|0
    end
    unreachable
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<~lib/string/String,i32>#rehash (; 24 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $4
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $4
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $6
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $4
  local.get $0
  i32.load offset=8
  local.tee $2
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $7
  local.get $4
  local.set $3
  loop $continue|0
   local.get $2
   local.get $7
   i32.ne
   if
    local.get $2
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $2
     i32.load
     i32.store
     local.get $3
     local.get $2
     i32.load offset=4
     i32.store offset=4
     local.get $3
     local.get $5
     local.get $2
     i32.load
     call $~lib/util/hash/hashStr
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $8
     i32.load
     i32.store offset=8
     local.get $8
     local.get $3
     i32.store
     local.get $3
     i32.const 12
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 12
    i32.add
    local.set $2
    br $continue|0
   end
  end
  local.get $5
  local.tee $2
  local.get $0
  i32.load
  i32.ne
  drop
  local.get $0
  local.get $2
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $4
  local.tee $1
  local.get $0
  i32.load offset=8
  i32.ne
  drop
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $6
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<~lib/string/String,i32>#set (; 25 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/hashStr
  local.tee $4
  call $~lib/map/Map<~lib/string/String,i32>#find
  local.tee $3
  if
   local.get $3
   local.get $2
   i32.store offset=4
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<~lib/string/String,i32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $5
   i32.const 12
   i32.mul
   i32.add
   local.tee $3
   local.get $1
   i32.store
   local.get $3
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $3
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load
   i32.store offset=8
   local.get $0
   local.get $3
   i32.store
  end
 )
 (func $~lib/map/Map<~lib/string/String,i32>#entries (; 26 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 12
  i32.const 12
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const -1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
 )
 (func $~lib/map/EntriesIter<~lib/string/String,i32>#get:done (; 27 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  local.get $0
  i32.load offset=8
  i32.ge_u
 )
 (func $~lib/map/EntriesIter<~lib/string/String,i32>#get:entry (; 28 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.const 12
  i32.mul
  i32.add
 )
 (func $~lib/map/EntriesIter<~lib/string/String,i32>#next (; 29 ;) (param $0 i32) (result i32)
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  i32.add
  i32.store
  loop $continue|0
   local.get $0
   call $~lib/map/EntriesIter<~lib/string/String,i32>#get:done
   if (result i32)
    i32.const 0
   else
    local.get $0
    call $~lib/map/EntriesIter<~lib/string/String,i32>#get:entry
    i32.load offset=8
    i32.const 1
    i32.and
   end
   if
    local.get $0
    local.get $0
    i32.load
    i32.const 1
    i32.add
    i32.store
    br $continue|0
   end
  end
  local.get $0
 )
 (func $~lib/array/Array.from<~lib/map/MapEntry<~lib/string/String,i32>,~lib/map/MapEntry<~lib/string/String,i32>> (; 30 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 16
  i32.const 15
  call $~lib/rt/stub/__alloc
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $1
  i32.const 0
  i32.store offset=12
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 9
  i32.sub
  if
   unreachable
  end
  local.get $0
  call $~lib/map/Map<~lib/string/String,i32>#entries
  local.tee $0
  local.set $3
  local.get $0
  call $~lib/iterator/Iterator<~lib/map/MapEntry<~lib/string/String,i32>>#next
  local.set $2
  i32.const 0
  local.set $0
  loop $continue|0
   local.get $2
   i32.const 8
   i32.sub
   i32.load
   i32.const 12
   i32.sub
   if
    unreachable
   end
   local.get $2
   call $~lib/map/EntriesIter<~lib/string/String,i32>#get:done
   i32.eqz
   if
    local.get $0
    local.tee $4
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.get $4
    local.get $2
    call $~lib/iterator/IteratorResult<~lib/map/MapEntry<~lib/string/String,i32>>#get:value
    call $~lib/array/Array<i32>#__set
    local.get $3
    call $~lib/iterator/Iterator<~lib/map/MapEntry<~lib/string/String,i32>>#next
    local.set $2
    br $continue|0
   end
  end
  local.get $1
  local.get $0
  call $~lib/array/Array<i32>#set:length
  local.get $1
 )
 (func $~lib/array/Array<~lib/map/MapEntry<~lib/string/String,i32>>#__get (; 31 ;) (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 304
   i32.const 208
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/array/Array<i32>#__unchecked_get
  local.tee $0
  i32.eqz
  if
   i32.const 480
   i32.const 208
   i32.const 97
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/set/Set<~lib/string/String>#clear (; 32 ;) (param $0 i32)
  (local $1 i32)
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $0
  i32.load
  drop
  local.get $0
  local.get $1
  i32.store
  local.get $0
  i32.const 3
  i32.store offset=4
  i32.const 32
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $0
  i32.load offset=8
  drop
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/set/Set<~lib/string/String>#constructor (; 33 ;) (result i32)
  (local $0 i32)
  i32.const 24
  i32.const 22
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 0
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
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
  local.get $0
  call $~lib/set/Set<~lib/string/String>#clear
  local.get $0
 )
 (func $~lib/set/Set<~lib/string/String>#find (; 34 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  loop $continue|0
   local.get $0
   if
    local.get $0
    i32.load offset=4
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $0
     i32.load
     local.get $1
     call $~lib/string/String.__eq
    end
    if
     local.get $0
     return
    else
     local.get $0
     i32.load offset=4
     i32.const -2
     i32.and
     local.set $0
     br $continue|0
    end
    unreachable
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<~lib/string/String>#rehash (; 35 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $4
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $4
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $6
  i32.const 3
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $4
  local.get $0
  i32.load offset=8
  local.tee $2
  local.get $0
  i32.load offset=16
  i32.const 3
  i32.shl
  i32.add
  local.set $7
  local.get $4
  local.set $3
  loop $continue|0
   local.get $2
   local.get $7
   i32.ne
   if
    local.get $2
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $2
     i32.load
     i32.store
     local.get $3
     local.get $5
     local.get $2
     i32.load
     call $~lib/util/hash/hashStr
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $8
     i32.load
     i32.store offset=4
     local.get $8
     local.get $3
     i32.store
     local.get $3
     i32.const 8
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 8
    i32.add
    local.set $2
    br $continue|0
   end
  end
  local.get $5
  local.tee $2
  local.get $0
  i32.load
  i32.ne
  drop
  local.get $0
  local.get $2
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $4
  local.tee $1
  local.get $0
  i32.load offset=8
  i32.ne
  drop
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $6
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/set/Set<~lib/string/String>#add (; 36 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/hashStr
  local.tee $3
  call $~lib/set/Set<~lib/string/String>#find
  i32.eqz
  if
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<~lib/string/String>#rehash
   end
   local.get $0
   i32.load offset=8
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $4
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $4
   i32.const 3
   i32.shl
   i32.add
   local.tee $2
   local.get $1
   i32.store
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $2
   local.get $0
   i32.load
   local.get $3
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load
   i32.store offset=4
   local.get $0
   local.get $2
   i32.store
  end
 )
 (func $~lib/set/Set<~lib/string/String>#values (; 37 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 12
  i32.const 25
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const -1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
 )
 (func $~lib/array/Array<~lib/string/String>#__set (; 38 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 304
    i32.const 208
    i32.const 109
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   call $~lib/array/ensureSize
   local.get $0
   local.get $3
   i32.store offset=12
  end
  local.get $2
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  i32.load
  i32.ne
  if
   local.get $0
   local.get $2
   i32.store
  end
 )
 (func $~lib/array/Array<~lib/string/String>#set:length (; 39 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=12
  local.tee $2
  local.get $1
  i32.gt_s
  if
   local.get $0
   i32.load offset=4
   local.tee $4
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   local.set $3
   local.get $4
   local.get $2
   i32.const 2
   i32.shl
   i32.add
   local.set $2
   loop $continue|0
    local.get $3
    i32.load
    drop
    local.get $3
    i32.const 4
    i32.add
    local.tee $3
    local.get $2
    i32.lt_u
    br_if $continue|0
   end
  else
   local.get $0
   local.get $1
   call $~lib/array/ensureSize
  end
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/array/Array.from<~lib/string/String,~lib/string/String> (; 40 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 16
  i32.const 24
  call $~lib/rt/stub/__alloc
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $1
  i32.const 0
  i32.store offset=12
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $0
  call $~lib/iterator/Iterable<~lib/string/String>#get:iterator
  local.tee $3
  call $~lib/iterator/Iterator<~lib/string/String>#next
  local.set $2
  i32.const 0
  local.set $0
  loop $continue|0
   local.get $2
   call $~lib/iterator/IteratorResult<~lib/string/String>#get:done
   i32.eqz
   if
    local.get $0
    local.tee $4
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.get $4
    local.get $2
    call $~lib/iterator/IteratorResult<~lib/string/String>#get:value
    call $~lib/array/Array<~lib/string/String>#__set
    local.get $3
    call $~lib/iterator/Iterator<~lib/string/String>#next
    local.set $2
    br $continue|0
   end
  end
  local.get $1
  local.get $0
  call $~lib/array/Array<~lib/string/String>#set:length
  local.get $1
 )
 (func $~lib/array/Array<~lib/string/String>#__get (; 41 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 304
   i32.const 208
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.eqz
  if
   i32.const 480
   i32.const 208
   i32.const 97
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $start:std/iterator (; 42 ;)
  (local $0 i32)
  (local $1 i32)
  i32.const 576
  global.set $~lib/rt/stub/startOffset
  i32.const 576
  global.set $~lib/rt/stub/offset
  i32.const 16
  i32.const 4
  call $~lib/rt/stub/__alloc
  call $~lib/array/Array<i32>#constructor
  global.set $std/iterator/iterableArr
  global.get $std/iterator/iterableArr
  i32.const 11
  call $~lib/array/Array<i32>#push
  global.get $std/iterator/iterableArr
  i32.const 3
  call $~lib/array/Array<i32>#push
  global.get $std/iterator/iterableArr
  i32.const 5
  call $~lib/array/Array<i32>#push
  global.get $std/iterator/iterableArr
  call $std/iterator/ArrayIterator<i32>#constructor
  global.set $std/iterator/iter
  global.get $std/iterator/iter
  call $~lib/iterator/Iterator<i32>#next
  global.set $std/iterator/iterres
  loop $continue|0
   global.get $std/iterator/iterres
   call $~lib/iterator/IteratorResult<i32>#get:done
   i32.eqz
   if
    global.get $std/iterator/iterres
    call $~lib/iterator/IteratorResult<i32>#get:value
    local.set $0
    global.get $std/iterator/arri
    local.tee $1
    i32.const 1
    i32.add
    global.set $std/iterator/arri
    i32.const 64
    local.get $1
    call $~lib/array/Array<i32>#__get
    local.get $0
    i32.ne
    if
     i32.const 0
     i32.const 368
     i32.const 38
     i32.const 2
     call $~lib/builtins/abort
     unreachable
    else
     global.get $std/iterator/iter
     call $~lib/iterator/Iterator<i32>#next
     global.set $std/iterator/iterres
     br $continue|0
    end
    unreachable
   end
  end
  global.get $std/iterator/iterableArr
  call $~lib/array/Array.from<i32,i32>
  global.set $std/iterator/arr2
  global.get $std/iterator/arr2
  i32.load offset=12
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 368
   i32.const 44
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/iterator/arr2
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 11
  i32.ne
  if
   i32.const 0
   i32.const 368
   i32.const 45
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/iterator/arr2
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 368
   i32.const 46
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/map/Map<~lib/string/String,i32>#constructor
  global.set $std/iterator/map
  global.get $std/iterator/map
  i32.const 416
  i32.const 40
  call $~lib/map/Map<~lib/string/String,i32>#set
  global.get $std/iterator/map
  i32.const 448
  i32.const 1
  call $~lib/map/Map<~lib/string/String,i32>#set
  global.get $std/iterator/map
  call $~lib/map/Map<~lib/string/String,i32>#entries
  global.set $std/iterator/entries
  global.get $std/iterator/entries
  call $~lib/map/EntriesIter<~lib/string/String,i32>#next
  global.set $std/iterator/resEntry
  global.get $std/iterator/resEntry
  call $~lib/iterator/IteratorResult<~lib/map/MapEntry<~lib/string/String,i32>>#get:value
  i32.load
  i32.const 416
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 54
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/iterator/map
  call $~lib/array/Array.from<~lib/map/MapEntry<~lib/string/String,i32>,~lib/map/MapEntry<~lib/string/String,i32>>
  global.set $std/iterator/entriesArr
  global.get $std/iterator/entriesArr
  i32.load offset=12
  global.get $std/iterator/map
  i32.load offset=20
  i32.ne
  if
   i32.const 0
   i32.const 368
   i32.const 57
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/iterator/entriesArr
  call $~lib/array/Array<~lib/map/MapEntry<~lib/string/String,i32>>#__get
  i32.load
  i32.const 416
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 58
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/iterator/map
  call $~lib/map/Map<~lib/string/String,i32>#entries
  local.set $0
  i32.const 4
  i32.const 18
  call $~lib/rt/stub/__alloc
  local.tee $1
  local.get $0
  i32.store
  local.get $1
  global.set $std/iterator/keyIter
  global.get $std/iterator/keyIter
  call $~lib/iterator/Iterator<~lib/string/String>#next
  global.set $std/iterator/key
  global.get $std/iterator/key
  call $~lib/iterator/IteratorResult<~lib/string/String>#get:value
  i32.const 416
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 62
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/iterator/map
  call $~lib/map/Map<~lib/string/String,i32>#entries
  local.set $0
  i32.const 4
  i32.const 21
  call $~lib/rt/stub/__alloc
  local.tee $1
  local.get $0
  i32.store
  local.get $1
  global.set $std/iterator/valIter
  global.get $std/iterator/valIter
  call $~lib/iterator/Iterator<i32>#next
  global.set $std/iterator/val
  global.get $std/iterator/val
  call $~lib/iterator/IteratorResult<i32>#get:value
  i32.const 40
  i32.ne
  if
   i32.const 0
   i32.const 368
   i32.const 66
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/set/Set<~lib/string/String>#constructor
  global.set $std/iterator/strSet
  global.get $std/iterator/strSet
  i32.const 416
  call $~lib/set/Set<~lib/string/String>#add
  global.get $std/iterator/strSet
  i32.const 448
  call $~lib/set/Set<~lib/string/String>#add
  global.get $std/iterator/strSet
  i32.const 416
  i32.const 416
  call $~lib/util/hash/hashStr
  call $~lib/set/Set<~lib/string/String>#find
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 71
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/iterator/strSet
  call $~lib/set/Set<~lib/string/String>#values
  call $~lib/array/Array.from<~lib/string/String,~lib/string/String>
  global.set $std/iterator/mapArray
  global.get $std/iterator/mapArray
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#__get
  i32.const 416
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 74
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/iterator/mapArray
  i32.const 1
  call $~lib/array/Array<~lib/string/String>#__get
  i32.const 448
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 75
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/iterator/strSet
  call $~lib/array/Array.from<~lib/string/String,~lib/string/String>
  global.set $std/iterator/setArray
  global.get $std/iterator/setArray
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#__get
  i32.const 416
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 78
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/iterator/setArray
  i32.const 1
  call $~lib/array/Array<~lib/string/String>#__get
  i32.const 448
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 79
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start (; 43 ;)
  call $start:std/iterator
 )
 (func $~lib/map/ValueIterator<~lib/string/String,i32>#next (; 44 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<~lib/string/String,i32>#next
  drop
  local.get $0
 )
 (func $~lib/iterator/Iterator<i32>#next (; 45 ;) (param $0 i32) (result i32)
  (local $1 i32)
  block $switch$1$case$4
   local.get $0
   i32.const 8
   i32.sub
   i32.load
   i32.const 6
   i32.sub
   local.tee $1
   if
    local.get $1
    i32.const 15
    i32.eq
    br_if $switch$1$case$4
    unreachable
   end
   local.get $0
   local.get $0
   i32.load
   i32.const 1
   i32.add
   i32.store
   local.get $0
   return
  end
  local.get $0
  call $~lib/map/ValueIterator<~lib/string/String,i32>#next
 )
 (func $~lib/map/ValueIterator<~lib/string/String,i32>#get:done (; 46 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<~lib/string/String,i32>#get:done
 )
 (func $~lib/iterator/IteratorResult<i32>#get:done (; 47 ;) (param $0 i32) (result i32)
  (local $1 i32)
  block $switch$1$case$4
   local.get $0
   i32.const 8
   i32.sub
   i32.load
   i32.const 6
   i32.sub
   local.tee $1
   if
    local.get $1
    i32.const 15
    i32.eq
    br_if $switch$1$case$4
    unreachable
   end
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load offset=12
   i32.ge_s
   return
  end
  local.get $0
  call $~lib/map/ValueIterator<~lib/string/String,i32>#get:done
 )
 (func $~lib/iterator/IteratorResult<i32>#get:value (; 48 ;) (param $0 i32) (result i32)
  (local $1 i32)
  block $switch$1$case$4
   local.get $0
   i32.const 8
   i32.sub
   i32.load
   i32.const 6
   i32.sub
   local.tee $1
   if
    local.get $1
    i32.const 15
    i32.eq
    br_if $switch$1$case$4
    unreachable
   end
   local.get $0
   i32.load offset=4
   local.get $0
   i32.load
   call $~lib/array/Array<i32>#__get
   return
  end
  local.get $0
  i32.load
  call $~lib/map/EntriesIter<~lib/string/String,i32>#get:entry
  i32.load offset=4
 )
 (func $~lib/iterator/IteratorResult<~lib/map/MapEntry<~lib/string/String,i32>>#get:value (; 49 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 12
  i32.sub
  if
   unreachable
  end
  local.get $0
  call $~lib/map/EntriesIter<~lib/string/String,i32>#get:entry
 )
 (func $~lib/iterator/Iterator<~lib/map/MapEntry<~lib/string/String,i32>>#next (; 50 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 12
  i32.sub
  if
   unreachable
  end
  local.get $0
  call $~lib/map/EntriesIter<~lib/string/String,i32>#next
 )
 (func $~lib/set/SetIterator<~lib/string/String>#get:entry (; 51 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.const 3
  i32.shl
  i32.add
 )
 (func $~lib/set/SetIterator<~lib/string/String>#next (; 52 ;) (param $0 i32) (result i32)
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  i32.add
  i32.store
  loop $continue|0
   local.get $0
   call $~lib/map/EntriesIter<~lib/string/String,i32>#get:done
   if (result i32)
    i32.const 0
   else
    local.get $0
    call $~lib/set/SetIterator<~lib/string/String>#get:entry
    i32.load offset=4
    i32.const 1
    i32.and
   end
   if
    local.get $0
    local.get $0
    i32.load
    i32.const 1
    i32.add
    i32.store
    br $continue|0
   end
  end
  local.get $0
 )
 (func $~lib/iterator/Iterator<~lib/string/String>#next (; 53 ;) (param $0 i32) (result i32)
  block $switch$1$case$4
   block $switch$1$case$3
    block $switch$1$default
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     i32.const 18
     i32.sub
     br_table $switch$1$case$3 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$4 $switch$1$default
    end
    unreachable
   end
   local.get $0
   call $~lib/map/ValueIterator<~lib/string/String,i32>#next
   return
  end
  local.get $0
  call $~lib/set/SetIterator<~lib/string/String>#next
 )
 (func $~lib/iterator/IteratorResult<~lib/string/String>#get:value (; 54 ;) (param $0 i32) (result i32)
  block $switch$1$case$4
   block $switch$1$case$3
    block $switch$1$default
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     i32.const 18
     i32.sub
     br_table $switch$1$case$3 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$4 $switch$1$default
    end
    unreachable
   end
   local.get $0
   i32.load
   call $~lib/map/EntriesIter<~lib/string/String,i32>#get:entry
   i32.load
   return
  end
  local.get $0
  call $~lib/set/SetIterator<~lib/string/String>#get:entry
  i32.load
 )
 (func $~lib/iterator/Iterable<~lib/string/String>#get:iterator (; 55 ;) (param $0 i32) (result i32)
  block $switch$1$case$5
   block $switch$1$case$4
    block $switch$1$case$3
     block $switch$1$default
      local.get $0
      i32.const 8
      i32.sub
      i32.load
      i32.const 18
      i32.sub
      br_table $switch$1$case$3 $switch$1$default $switch$1$default $switch$1$default $switch$1$case$5 $switch$1$default $switch$1$default $switch$1$case$4 $switch$1$default
     end
     unreachable
    end
    local.get $0
    return
   end
   local.get $0
   return
  end
  local.get $0
  call $~lib/set/Set<~lib/string/String>#values
 )
 (func $~lib/iterator/IteratorResult<~lib/string/String>#get:done (; 56 ;) (param $0 i32) (result i32)
  block $switch$1$case$4
   block $switch$1$case$3
    block $switch$1$default
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     i32.const 18
     i32.sub
     br_table $switch$1$case$3 $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$4 $switch$1$default
    end
    unreachable
   end
   local.get $0
   call $~lib/map/ValueIterator<~lib/string/String,i32>#get:done
   return
  end
  local.get $0
  call $~lib/map/EntriesIter<~lib/string/String,i32>#get:done
 )
)
