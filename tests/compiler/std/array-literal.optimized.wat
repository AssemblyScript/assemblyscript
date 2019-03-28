(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\03")
 (data (i32.const 17) "\01\02")
 (data (i32.const 24) "\08\00\00\00\03")
 (data (i32.const 32) "\14\00\00\00s\00t\00d\00/\00a\00r\00r\00a\00y\00-\00l\00i\00t\00e\00r\00a\00l\00.\00t\00s")
 (data (i32.const 80) "\0c")
 (data (i32.const 92) "\01\00\00\00\02")
 (data (i32.const 112) "P\00\00\00\03")
 (data (i32.const 128) "x")
 (data (i32.const 136) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 168) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $std/array-literal/emptyArrayI32 (mut i32) (i32.const 128))
 (global $std/array-literal/i (mut i32) (i32.const 0))
 (global $std/array-literal/dynamicArrayI8 (mut i32) (i32.const 0))
 (global $std/array-literal/dynamicArrayI32 (mut i32) (i32.const 0))
 (global $std/array-literal/dynamicArrayRef (mut i32) (i32.const 0))
 (global $std/array-literal/dynamicArrayRefWithCtor (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/allocator/arena/__memory_allocate (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 1073741816
  i32.gt_u
  if
   i32.const 0
   i32.const 168
   i32.const 26
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.const 32
  local.get $0
  i32.const 7
  i32.add
  i32.clz
  i32.sub
  i32.shl
  call $~lib/allocator/arena/__memory_allocate
  local.tee $1
  local.get $0
  i32.store
  local.get $1
 )
 (func $~lib/internal/memory/memset (; 3 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  i32.eqz
  if
   return
  end
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
  if
   return
  end
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
  if
   return
  end
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
  if
   return
  end
  i32.const 0
  local.get $0
  i32.sub
  i32.const 3
  i32.and
  local.tee $2
  local.get $0
  i32.add
  local.tee $0
  i32.const 0
  i32.store
  local.get $1
  local.get $2
  i32.sub
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
  if
   return
  end
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
  if
   return
  end
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
 )
 (func $~lib/array/Array<i8>#constructor (; 4 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.set $1
  i32.const 8
  call $~lib/allocator/arena/__memory_allocate
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store
  local.get $0
  i32.const 3
  i32.store offset=4
  local.get $1
  i32.const 8
  i32.add
  i32.const 3
  call $~lib/internal/memory/memset
  local.get $0
 )
 (func $~lib/array/Array<i32>#constructor (; 5 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  i32.const 12
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.set $1
  i32.const 8
  call $~lib/allocator/arena/__memory_allocate
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store
  local.get $0
  i32.const 3
  i32.store offset=4
  local.get $1
  i32.const 8
  i32.add
  i32.const 12
  call $~lib/internal/memory/memset
  local.get $0
 )
 (func $start:std/array-literal (; 6 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 232
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  i32.const 28
  i32.load
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 4
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 24
  i32.load
  local.tee $0
  i32.load
  i32.lt_u
  if (result i32)
   local.get $0
   i32.load8_s offset=8
  else   
   unreachable
  end
  i32.const 255
  i32.and
  if
   i32.const 0
   i32.const 32
   i32.const 5
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.const 24
  i32.load
  local.tee $0
  i32.load
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 1
   i32.add
   i32.load8_s offset=8
  else   
   unreachable
  end
  i32.const 255
  i32.and
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 6
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2
  i32.const 24
  i32.load
  local.tee $0
  i32.load
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 2
   i32.add
   i32.load8_s offset=8
  else   
   unreachable
  end
  i32.const 255
  i32.and
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 7
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 116
  i32.load
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 10
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 112
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.load offset=8
  else   
   unreachable
  end
  if
   i32.const 0
   i32.const 32
   i32.const 11
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.const 112
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 4
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 12
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2
  i32.const 112
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 8
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 13
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array-literal/emptyArrayI32
  i32.load offset=4
  if
   i32.const 0
   i32.const 32
   i32.const 16
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $~lib/array/Array<i8>#constructor
  local.tee $0
  i32.load
  global.get $std/array-literal/i
  local.tee $1
  i32.store8 offset=8
  local.get $1
  i32.const 1
  i32.add
  global.set $std/array-literal/i
  local.get $0
  i32.load
  i32.const 1
  i32.add
  global.get $std/array-literal/i
  local.tee $1
  i32.store8 offset=8
  local.get $1
  i32.const 1
  i32.add
  global.set $std/array-literal/i
  local.get $0
  i32.load
  i32.const 2
  i32.add
  global.get $std/array-literal/i
  i32.store8 offset=8
  local.get $0
  global.set $std/array-literal/dynamicArrayI8
  global.get $std/array-literal/dynamicArrayI8
  i32.load offset=4
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 21
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  global.get $std/array-literal/dynamicArrayI8
  i32.load
  local.tee $0
  i32.load
  i32.lt_u
  if (result i32)
   local.get $0
   i32.load8_s offset=8
  else   
   unreachable
  end
  i32.const 255
  i32.and
  if
   i32.const 0
   i32.const 32
   i32.const 22
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  global.get $std/array-literal/dynamicArrayI8
  i32.load
  local.tee $0
  i32.load
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 1
   i32.add
   i32.load8_s offset=8
  else   
   unreachable
  end
  i32.const 255
  i32.and
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 23
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2
  global.get $std/array-literal/dynamicArrayI8
  i32.load
  local.tee $0
  i32.load
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 2
   i32.add
   i32.load8_s offset=8
  else   
   unreachable
  end
  i32.const 255
  i32.and
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 24
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  global.set $std/array-literal/i
  call $~lib/array/Array<i32>#constructor
  local.tee $0
  i32.load
  global.get $std/array-literal/i
  local.tee $1
  i32.store offset=8
  local.get $1
  i32.const 1
  i32.add
  global.set $std/array-literal/i
  local.get $0
  i32.load
  i32.const 4
  i32.add
  global.get $std/array-literal/i
  local.tee $1
  i32.store offset=8
  local.get $1
  i32.const 1
  i32.add
  global.set $std/array-literal/i
  local.get $0
  i32.load
  i32.const 8
  i32.add
  global.get $std/array-literal/i
  i32.store offset=8
  local.get $0
  global.set $std/array-literal/dynamicArrayI32
  global.get $std/array-literal/dynamicArrayI32
  i32.load offset=4
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 29
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  global.get $std/array-literal/dynamicArrayI32
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.load offset=8
  else   
   unreachable
  end
  if
   i32.const 0
   i32.const 32
   i32.const 30
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  global.get $std/array-literal/dynamicArrayI32
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 4
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 31
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2
  global.get $std/array-literal/dynamicArrayI32
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 8
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 32
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $~lib/array/Array<i32>#constructor
  local.set $0
  i32.const 0
  call $~lib/allocator/arena/__memory_allocate
  local.set $1
  local.get $0
  i32.load
  local.get $1
  i32.store offset=8
  i32.const 0
  call $~lib/allocator/arena/__memory_allocate
  local.set $1
  local.get $0
  i32.load
  i32.const 4
  i32.add
  local.get $1
  i32.store offset=8
  i32.const 0
  call $~lib/allocator/arena/__memory_allocate
  local.set $1
  local.get $0
  i32.load
  i32.const 8
  i32.add
  local.get $1
  i32.store offset=8
  local.get $0
  global.set $std/array-literal/dynamicArrayRef
  global.get $std/array-literal/dynamicArrayRef
  i32.load offset=4
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 36
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $~lib/array/Array<i32>#constructor
  local.set $0
  i32.const 0
  call $~lib/allocator/arena/__memory_allocate
  local.set $1
  local.get $0
  i32.load
  local.get $1
  i32.store offset=8
  i32.const 0
  call $~lib/allocator/arena/__memory_allocate
  local.set $1
  local.get $0
  i32.load
  i32.const 4
  i32.add
  local.get $1
  i32.store offset=8
  i32.const 0
  call $~lib/allocator/arena/__memory_allocate
  local.set $1
  local.get $0
  i32.load
  i32.const 8
  i32.add
  local.get $1
  i32.store offset=8
  local.get $0
  global.set $std/array-literal/dynamicArrayRefWithCtor
  global.get $std/array-literal/dynamicArrayRefWithCtor
  i32.load offset=4
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 40
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 7 ;) (type $FUNCSIG$v)
  call $start:std/array-literal
 )
 (func $null (; 8 ;) (type $FUNCSIG$v)
  nop
 )
)
