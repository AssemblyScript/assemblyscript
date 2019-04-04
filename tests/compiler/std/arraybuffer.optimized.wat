(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 56) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s")
 (data (i32.const 96) "\01\00\00\00$\00\00\00s\00t\00d\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 144) "\02\00\00\00\08\00\00\00\01\00\00\00\02")
 (data (i32.const 160) "\01\00\00\00 \00\00\00~\00l\00i\00b\00/\00d\00a\00t\00a\00v\00i\00e\00w\00.\00t\00s")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $std/arraybuffer/buffer (mut i32) (i32.const 0))
 (global $std/arraybuffer/sliced (mut i32) (i32.const 0))
 (global $std/arraybuffer/arr8 (mut i32) (i32.const 0))
 (global $~lib/argc (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/allocator/arena/__mem_allocate (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/runtime/runtime.allocate (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 1
  i32.const 32
  local.get $0
  i32.const 7
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
  i32.const 8
  i32.add
 )
 (func $~lib/memory/memory.fill (; 3 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
   local.get $2
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
 (func $~lib/runtime/runtime.register (; 4 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.const 200
  i32.le_u
  if
   i32.const 0
   i32.const 64
   i32.const 82
   i32.const 6
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  i32.sub
  local.tee $2
  i32.load
  i32.const -1520547049
  i32.ne
  if
   i32.const 0
   i32.const 64
   i32.const 84
   i32.const 6
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.store
  local.get $0
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 1073741816
  i32.gt_u
  if
   i32.const 0
   i32.const 16
   i32.const 54
   i32.const 43
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/runtime/runtime.allocate
  local.tee $1
  local.get $0
  call $~lib/memory/memory.fill
  local.get $1
  i32.const 2
  call $~lib/runtime/runtime.register
 )
 (func $~lib/memory/memory.copy (; 6 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
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
       local.get $2
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $2
       i32.const 1
       i32.sub
       local.set $2
       local.get $0
       local.tee $3
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $4
       i32.const 1
       i32.add
       local.set $1
       local.get $3
       local.get $4
       i32.load8_u
       i32.store8
       br $continue|0
      end
     end
     loop $continue|1
      local.get $2
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $2
       i32.const 8
       i32.sub
       local.set $2
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
     local.get $2
     if
      local.get $0
      local.tee $3
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $4
      i32.const 1
      i32.add
      local.set $1
      local.get $3
      local.get $4
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 1
      i32.sub
      local.set $2
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
      local.get $2
      i32.add
      i32.const 7
      i32.and
      if
       local.get $2
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $2
       i32.const 1
       i32.sub
       local.tee $2
       local.get $0
       i32.add
       local.get $1
       local.get $2
       i32.add
       i32.load8_u
       i32.store8
       br $continue|3
      end
     end
     loop $continue|4
      local.get $2
      i32.const 8
      i32.ge_u
      if
       local.get $2
       i32.const 8
       i32.sub
       local.tee $2
       local.get $0
       i32.add
       local.get $1
       local.get $2
       i32.add
       i64.load
       i64.store
       br $continue|4
      end
     end
    end
    loop $continue|5
     local.get $2
     if
      local.get $2
      i32.const 1
      i32.sub
      local.tee $2
      local.get $0
      i32.add
      local.get $1
      local.get $2
      i32.add
      i32.load8_u
      i32.store8
      br $continue|5
     end
    end
   end
  end
 )
 (func $~lib/arraybuffer/ArrayBuffer#slice (; 7 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load offset=4
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else   
   local.get $1
   local.get $3
   local.get $1
   local.get $3
   i32.lt_s
   select
  end
  local.set $1
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $3
   i32.add
   local.tee $2
   i32.const 0
   local.get $2
   i32.const 0
   i32.gt_s
   select
  else   
   local.get $2
   local.get $3
   local.get $2
   local.get $3
   i32.lt_s
   select
  end
  local.get $1
  i32.sub
  local.tee $2
  i32.const 0
  local.get $2
  i32.const 0
  i32.gt_s
  select
  local.tee $2
  call $~lib/runtime/runtime.allocate
  local.tee $3
  local.get $0
  local.get $1
  i32.add
  local.get $2
  call $~lib/memory/memory.copy
  local.get $3
  i32.const 2
  call $~lib/runtime/runtime.register
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 8 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 1
  i32.const 1073741816
  local.get $1
  i32.shr_u
  i32.gt_u
  if
   i32.const 0
   i32.const 16
   i32.const 12
   i32.const 57
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  local.get $1
  i32.shl
  local.tee $2
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $0
  i32.eqz
  if
   i32.const 12
   call $~lib/runtime/runtime.allocate
   i32.const 3
   call $~lib/runtime/runtime.register
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
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
 )
 (func $~lib/runtime/runtime.newArray (; 9 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  i32.const 16
  call $~lib/runtime/runtime.allocate
  i32.const 5
  call $~lib/runtime/runtime.register
  local.tee $0
  i32.const 8
  call $~lib/runtime/runtime.allocate
  i32.const 2
  call $~lib/runtime/runtime.register
  local.tee $1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  i32.const 8
  i32.store offset=8
  local.get $0
  i32.const 2
  i32.store offset=12
  local.get $1
  i32.const 152
  i32.const 8
  call $~lib/memory/memory.copy
  local.get $0
 )
 (func $~lib/dataview/DataView#constructor (; 10 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 1073741816
  i32.gt_u
  local.get $1
  local.get $0
  i32.const 8
  i32.sub
  i32.load offset=4
  i32.gt_u
  i32.or
  if
   i32.const 0
   i32.const 168
   i32.const 21
   i32.const 6
   call $~lib/env/abort
   unreachable
  end
  i32.const 12
  call $~lib/runtime/runtime.allocate
  i32.const 7
  call $~lib/runtime/runtime.register
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  i32.const 0
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store
  local.get $2
  local.get $0
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
 )
 (func $~lib/dataview/DataView#constructor|trampoline (; 11 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  block $2of2
   block $1of2
    block $outOfRange
     global.get $~lib/argc
     i32.const 1
     i32.sub
     br_table $1of2 $1of2 $2of2 $outOfRange
    end
    unreachable
   end
   local.get $0
   i32.const 8
   i32.sub
   i32.load offset=4
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/dataview/DataView#constructor
 )
 (func $start:std/arraybuffer (; 12 ;) (type $FUNCSIG$v)
  i32.const 200
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  i32.const 8
  call $~lib/arraybuffer/ArrayBuffer#constructor
  global.set $std/arraybuffer/buffer
  global.get $std/arraybuffer/buffer
  i32.const 8
  i32.sub
  i32.load offset=4
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 104
   i32.const 3
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/arraybuffer/buffer
  i32.const 0
  i32.const 1073741816
  call $~lib/arraybuffer/ArrayBuffer#slice
  global.set $std/arraybuffer/sliced
  global.get $std/arraybuffer/sliced
  i32.const 8
  i32.sub
  i32.load offset=4
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 104
   i32.const 7
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/arraybuffer/sliced
  global.get $std/arraybuffer/buffer
  i32.eq
  if
   i32.const 0
   i32.const 104
   i32.const 8
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/arraybuffer/buffer
  i32.const 1
  i32.const 1073741816
  call $~lib/arraybuffer/ArrayBuffer#slice
  global.set $std/arraybuffer/sliced
  global.get $std/arraybuffer/sliced
  i32.const 8
  i32.sub
  i32.load offset=4
  i32.const 7
  i32.ne
  if
   i32.const 0
   i32.const 104
   i32.const 12
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/arraybuffer/buffer
  i32.const -1
  i32.const 1073741816
  call $~lib/arraybuffer/ArrayBuffer#slice
  global.set $std/arraybuffer/sliced
  global.get $std/arraybuffer/sliced
  i32.const 8
  i32.sub
  i32.load offset=4
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 104
   i32.const 16
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/arraybuffer/buffer
  i32.const 1
  i32.const 3
  call $~lib/arraybuffer/ArrayBuffer#slice
  global.set $std/arraybuffer/sliced
  global.get $std/arraybuffer/sliced
  i32.const 8
  i32.sub
  i32.load offset=4
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 104
   i32.const 20
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/arraybuffer/buffer
  i32.const 1
  i32.const -1
  call $~lib/arraybuffer/ArrayBuffer#slice
  global.set $std/arraybuffer/sliced
  global.get $std/arraybuffer/sliced
  i32.const 8
  i32.sub
  i32.load offset=4
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 104
   i32.const 24
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/arraybuffer/buffer
  i32.const -3
  i32.const -1
  call $~lib/arraybuffer/ArrayBuffer#slice
  global.set $std/arraybuffer/sliced
  global.get $std/arraybuffer/sliced
  i32.const 8
  i32.sub
  i32.load offset=4
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 104
   i32.const 28
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/arraybuffer/buffer
  i32.const -4
  i32.const 42
  call $~lib/arraybuffer/ArrayBuffer#slice
  global.set $std/arraybuffer/sliced
  global.get $std/arraybuffer/sliced
  i32.const 8
  i32.sub
  i32.load offset=4
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 104
   i32.const 32
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/arraybuffer/buffer
  i32.const 42
  i32.const 1073741816
  call $~lib/arraybuffer/ArrayBuffer#slice
  global.set $std/arraybuffer/sliced
  global.get $std/arraybuffer/sliced
  i32.const 8
  i32.sub
  i32.load offset=4
  if
   i32.const 0
   i32.const 104
   i32.const 36
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/arraybuffer/sliced
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 37
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 12
  call $~lib/runtime/runtime.allocate
  i32.const 4
  call $~lib/runtime/runtime.register
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  global.set $std/arraybuffer/arr8
  call $~lib/runtime/runtime.newArray
  drop
  global.get $std/arraybuffer/arr8
  if (result i32)
   i32.const 1
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 47
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $__inlined_func$~lib/arraybuffer/ArrayBuffer.isView<~lib/typedarray/Int32Array>11 (result i32)
   i32.const 1
   i32.const 12
   call $~lib/runtime/runtime.allocate
   i32.const 6
   call $~lib/runtime/runtime.register
   i32.const 2
   call $~lib/arraybuffer/ArrayBufferView#constructor
   br_if $__inlined_func$~lib/arraybuffer/ArrayBuffer.isView<~lib/typedarray/Int32Array>11
   drop
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 48
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  block $__inlined_func$~lib/arraybuffer/ArrayBuffer.isView<~lib/dataview/DataView>12 (result i32)
   i32.const 1
   global.get $std/arraybuffer/arr8
   i32.load
   call $~lib/dataview/DataView#constructor|trampoline
   br_if $__inlined_func$~lib/arraybuffer/ArrayBuffer.isView<~lib/dataview/DataView>12
   drop
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 49
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 13 ;) (type $FUNCSIG$v)
  call $start:std/arraybuffer
 )
 (func $null (; 14 ;) (type $FUNCSIG$v)
  nop
 )
)
