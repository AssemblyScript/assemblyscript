(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\01\00\00\00\03\00\00\00\00\01\02")
 (data (i32.const 24) "\02\00\00\00\10\00\00\00\10\00\00\00\10\00\00\00\03\00\00\00\03\00\00\00")
 (data (i32.const 48) "\03\00\00\00(\00\00\00s\00t\00d\00/\00a\00r\00r\00a\00y\00-\00l\00i\00t\00e\00r\00a\00l\00.\00t\00s\00")
 (data (i32.const 96) "\03\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 136) "\01\00\00\00\0c\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00")
 (data (i32.const 160) "\04\00\00\00\10\00\00\00\90\00\00\00\90\00\00\00\0c\00\00\00\03\00\00\00")
 (data (i32.const 184) "\01\00\00\00\00\00\00\00")
 (data (i32.const 192) "\04\00\00\00\10\00\00\00\c0\00\00\00\c0\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 216) "\03\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s\00")
 (data (i32.const 256) "\03\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $std/array-literal/staticArrayI8 i32 (i32.const 32))
 (global $~lib/runtime/GC_IMPLEMENTED i32 (i32.const 0))
 (global $~lib/runtime/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/runtime/HEADER_MAGIC i32 (i32.const -1520547049))
 (global $std/array-literal/staticArrayI32 i32 (i32.const 168))
 (global $std/array-literal/emptyArrayI32 (mut i32) (i32.const 200))
 (global $std/array-literal/i (mut i32) (i32.const 0))
 (global $~lib/runtime/MAX_BYTELENGTH i32 (i32.const 1073741816))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/ASC_NO_ASSERT i32 (i32.const 0))
 (global $std/array-literal/dynamicArrayI8 (mut i32) (i32.const 0))
 (global $std/array-literal/dynamicArrayI32 (mut i32) (i32.const 0))
 (global $std/array-literal/dynamicArrayRef (mut i32) (i32.const 0))
 (global $std/array-literal/dynamicArrayRefWithCtor (mut i32) (i32.const 0))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 304))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/array/Array<i8>#get:length (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<i8>#__get (; 2 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 0
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 104
   i32.const 68
   i32.const 61
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 0
  i32.shl
  i32.add
  i32.load8_s
 )
 (func $~lib/array/Array<i32>#get:length (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<i32>#__get (; 4 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 104
   i32.const 68
   i32.const 61
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/runtime/ADJUSTOBLOCK (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 1
  i32.const 32
  local.get $0
  global.get $~lib/runtime/HEADER_SIZE
  i32.add
  i32.const 1
  i32.sub
  i32.clz
  i32.sub
  i32.shl
 )
 (func $~lib/memory/memory.allocate (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/allocator/arena/__memory_allocate|inlined.0 (result i32)
   local.get $0
   local.set $1
   local.get $1
   i32.const 1073741824
   i32.gt_u
   if
    unreachable
   end
   global.get $~lib/allocator/arena/offset
   local.set $2
   local.get $2
   local.get $1
   local.tee $3
   i32.const 1
   local.tee $4
   local.get $3
   local.get $4
   i32.gt_u
   select
   i32.add
   i32.const 7
   i32.add
   i32.const 7
   i32.const -1
   i32.xor
   i32.and
   local.set $3
   current_memory
   local.set $4
   local.get $3
   local.get $4
   i32.const 16
   i32.shl
   i32.gt_u
   if
    local.get $3
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
    local.set $5
    local.get $4
    local.tee $6
    local.get $5
    local.tee $7
    local.get $6
    local.get $7
    i32.gt_s
    select
    local.set $6
    local.get $6
    grow_memory
    i32.const 0
    i32.lt_s
    if
     local.get $5
     grow_memory
     i32.const 0
     i32.lt_s
     if
      unreachable
     end
    end
   end
   local.get $3
   global.set $~lib/allocator/arena/offset
   local.get $2
  end
  return
 )
 (func $~lib/runtime/doAllocate (; 7 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/runtime/ADJUSTOBLOCK
  call $~lib/memory/memory.allocate
  local.set $1
  local.get $1
  global.get $~lib/runtime/HEADER_MAGIC
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  global.get $~lib/runtime/HEADER_SIZE
  i32.add
 )
 (func $~lib/memory/memory.fill (; 8 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  block $~lib/util/memory/memset|inlined.0
   local.get $2
   i32.eqz
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $0
   local.get $1
   i32.store8
   local.get $0
   local.get $2
   i32.add
   i32.const 1
   i32.sub
   local.get $1
   i32.store8
   local.get $2
   i32.const 2
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $0
   i32.const 1
   i32.add
   local.get $1
   i32.store8
   local.get $0
   i32.const 2
   i32.add
   local.get $1
   i32.store8
   local.get $0
   local.get $2
   i32.add
   i32.const 2
   i32.sub
   local.get $1
   i32.store8
   local.get $0
   local.get $2
   i32.add
   i32.const 3
   i32.sub
   local.get $1
   i32.store8
   local.get $2
   i32.const 6
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $0
   i32.const 3
   i32.add
   local.get $1
   i32.store8
   local.get $0
   local.get $2
   i32.add
   i32.const 4
   i32.sub
   local.get $1
   i32.store8
   local.get $2
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.set $3
   local.get $0
   local.get $3
   i32.add
   local.set $0
   local.get $2
   local.get $3
   i32.sub
   local.set $2
   local.get $2
   i32.const -4
   i32.and
   local.set $2
   i32.const -1
   i32.const 255
   i32.div_u
   local.get $1
   i32.const 255
   i32.and
   i32.mul
   local.set $4
   local.get $0
   local.get $4
   i32.store
   local.get $0
   local.get $2
   i32.add
   i32.const 4
   i32.sub
   local.get $4
   i32.store
   local.get $2
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $0
   i32.const 4
   i32.add
   local.get $4
   i32.store
   local.get $0
   i32.const 8
   i32.add
   local.get $4
   i32.store
   local.get $0
   local.get $2
   i32.add
   i32.const 12
   i32.sub
   local.get $4
   i32.store
   local.get $0
   local.get $2
   i32.add
   i32.const 8
   i32.sub
   local.get $4
   i32.store
   local.get $2
   i32.const 24
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $0
   i32.const 12
   i32.add
   local.get $4
   i32.store
   local.get $0
   i32.const 16
   i32.add
   local.get $4
   i32.store
   local.get $0
   i32.const 20
   i32.add
   local.get $4
   i32.store
   local.get $0
   i32.const 24
   i32.add
   local.get $4
   i32.store
   local.get $0
   local.get $2
   i32.add
   i32.const 28
   i32.sub
   local.get $4
   i32.store
   local.get $0
   local.get $2
   i32.add
   i32.const 24
   i32.sub
   local.get $4
   i32.store
   local.get $0
   local.get $2
   i32.add
   i32.const 20
   i32.sub
   local.get $4
   i32.store
   local.get $0
   local.get $2
   i32.add
   i32.const 16
   i32.sub
   local.get $4
   i32.store
   i32.const 24
   local.get $0
   i32.const 4
   i32.and
   i32.add
   local.set $3
   local.get $0
   local.get $3
   i32.add
   local.set $0
   local.get $2
   local.get $3
   i32.sub
   local.set $2
   local.get $4
   i64.extend_i32_u
   local.get $4
   i64.extend_i32_u
   i64.const 32
   i64.shl
   i64.or
   local.set $5
   block $break|0
    loop $continue|0
     local.get $2
     i32.const 32
     i32.ge_u
     if
      block
       local.get $0
       local.get $5
       i64.store
       local.get $0
       i32.const 8
       i32.add
       local.get $5
       i64.store
       local.get $0
       i32.const 16
       i32.add
       local.get $5
       i64.store
       local.get $0
       i32.const 24
       i32.add
       local.get $5
       i64.store
       local.get $2
       i32.const 32
       i32.sub
       local.set $2
       local.get $0
       i32.const 32
       i32.add
       local.set $0
      end
      br $continue|0
     end
    end
   end
  end
 )
 (func $~lib/runtime/assertUnregistered (; 9 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.get $~lib/memory/HEAP_BASE
  i32.gt_u
  i32.eqz
  if
   i32.const 0
   i32.const 224
   i32.const 199
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  global.get $~lib/runtime/HEADER_SIZE
  i32.sub
  i32.load
  global.get $~lib/runtime/HEADER_MAGIC
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 224
   i32.const 200
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/runtime/doRegister (; 10 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  call $~lib/runtime/assertUnregistered
  local.get $0
  global.get $~lib/runtime/HEADER_SIZE
  i32.sub
  local.get $1
  i32.store
  local.get $0
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 11 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  global.get $~lib/runtime/MAX_BYTELENGTH
  i32.gt_u
  if
   i32.const 0
   i32.const 264
   i32.const 24
   i32.const 43
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/ALLOCATE|inlined.0 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/runtime/doAllocate
  end
  local.set $3
  local.get $3
  i32.const 0
  local.get $1
  call $~lib/memory/memory.fill
  block $~lib/runtime/REGISTER<ArrayBuffer>|inlined.0 (result i32)
   local.get $3
   local.set $2
   local.get $2
   i32.const 1
   call $~lib/runtime/doRegister
  end
 )
 (func $~lib/runtime/ArrayBufferView#constructor (; 12 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  global.get $~lib/runtime/MAX_BYTELENGTH
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   i32.const 0
   i32.const 224
   i32.const 234
   i32.const 57
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  local.get $1
  local.get $2
  i32.shl
  local.tee $1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  block (result i32)
   local.get $0
   i32.eqz
   if
    block $~lib/runtime/REGISTER<ArrayBufferView>|inlined.0 (result i32)
     block $~lib/runtime/ALLOCATE|inlined.1 (result i32)
      i32.const 12
      local.set $4
      local.get $4
      call $~lib/runtime/doAllocate
     end
     local.set $4
     local.get $4
     i32.const 5
     call $~lib/runtime/doRegister
    end
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
  end
  local.get $3
  i32.store
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/array/Array<i8>#constructor (; 13 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   block $~lib/runtime/ALLOCATE|inlined.2 (result i32)
    i32.const 16
    local.set $2
    local.get $2
    call $~lib/runtime/doAllocate
   end
   local.set $2
   local.get $2
   i32.const 2
   call $~lib/runtime/doRegister
  end
  local.get $1
  i32.const 0
  call $~lib/runtime/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array<i32>#constructor (; 14 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   block $~lib/runtime/ALLOCATE|inlined.3 (result i32)
    i32.const 16
    local.set $2
    local.get $2
    call $~lib/runtime/doAllocate
   end
   local.set $2
   local.get $2
   i32.const 4
   call $~lib/runtime/doRegister
  end
  local.get $1
  i32.const 2
  call $~lib/runtime/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $std/array-literal/Ref#constructor (; 15 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.eqz
  if
   block $~lib/runtime/REGISTER<Ref>|inlined.0 (result i32)
    block $~lib/runtime/ALLOCATE|inlined.4 (result i32)
     i32.const 0
     local.set $1
     local.get $1
     call $~lib/runtime/doAllocate
    end
    local.set $1
    local.get $1
    i32.const 6
    call $~lib/runtime/doRegister
   end
   local.set $0
  end
  local.get $0
 )
 (func $~lib/array/Array<Ref>#constructor (; 16 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   block $~lib/runtime/ALLOCATE|inlined.5 (result i32)
    i32.const 16
    local.set $2
    local.get $2
    call $~lib/runtime/doAllocate
   end
   local.set $2
   local.get $2
   i32.const 7
   call $~lib/runtime/doRegister
  end
  local.get $1
  i32.const 2
  call $~lib/runtime/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array<Ref>#get:length (; 17 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $std/array-literal/RefWithCtor#constructor (; 18 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.eqz
  if
   block $~lib/runtime/REGISTER<RefWithCtor>|inlined.0 (result i32)
    block $~lib/runtime/ALLOCATE|inlined.6 (result i32)
     i32.const 0
     local.set $1
     local.get $1
     call $~lib/runtime/doAllocate
    end
    local.set $1
    local.get $1
    i32.const 8
    call $~lib/runtime/doRegister
   end
   local.set $0
  end
  local.get $0
 )
 (func $~lib/array/Array<RefWithCtor>#constructor (; 19 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   block $~lib/runtime/ALLOCATE|inlined.7 (result i32)
    i32.const 16
    local.set $2
    local.get $2
    call $~lib/runtime/doAllocate
   end
   local.set $2
   local.get $2
   i32.const 9
   call $~lib/runtime/doRegister
  end
  local.get $1
  i32.const 2
  call $~lib/runtime/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array<RefWithCtor>#get:length (; 20 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $start:std/array-literal (; 21 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  global.get $std/array-literal/staticArrayI8
  call $~lib/array/Array<i8>#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 4
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array-literal/staticArrayI8
  i32.const 0
  call $~lib/array/Array<i8>#__get
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 5
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array-literal/staticArrayI8
  i32.const 1
  call $~lib/array/Array<i8>#__get
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 6
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array-literal/staticArrayI8
  i32.const 2
  call $~lib/array/Array<i8>#__get
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 7
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array-literal/staticArrayI32
  call $~lib/array/Array<i32>#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 10
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array-literal/staticArrayI32
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 11
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array-literal/staticArrayI32
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 12
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array-literal/staticArrayI32
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 13
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array-literal/emptyArrayI32
  call $~lib/array/Array<i32>#get:length
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 16
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/memory/HEAP_BASE
  i32.const 7
  i32.add
  i32.const 7
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  block (result i32)
   i32.const 0
   i32.const 3
   call $~lib/array/Array<i8>#constructor
   local.set $0
   local.get $0
   i32.load offset=4
   local.set $1
   local.get $1
   global.get $std/array-literal/i
   i32.store8
   local.get $1
   block (result i32)
    global.get $std/array-literal/i
    i32.const 1
    i32.add
    global.set $std/array-literal/i
    global.get $std/array-literal/i
   end
   i32.store8 offset=1
   local.get $1
   block (result i32)
    global.get $std/array-literal/i
    i32.const 1
    i32.add
    global.set $std/array-literal/i
    global.get $std/array-literal/i
   end
   i32.store8 offset=2
   local.get $0
  end
  global.set $std/array-literal/dynamicArrayI8
  global.get $std/array-literal/dynamicArrayI8
  call $~lib/array/Array<i8>#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 21
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array-literal/dynamicArrayI8
  i32.const 0
  call $~lib/array/Array<i8>#__get
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 22
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array-literal/dynamicArrayI8
  i32.const 1
  call $~lib/array/Array<i8>#__get
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 23
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array-literal/dynamicArrayI8
  i32.const 2
  call $~lib/array/Array<i8>#__get
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 24
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  global.set $std/array-literal/i
  block (result i32)
   i32.const 0
   i32.const 3
   call $~lib/array/Array<i32>#constructor
   local.set $1
   local.get $1
   i32.load offset=4
   local.set $0
   local.get $0
   global.get $std/array-literal/i
   i32.store
   local.get $0
   block (result i32)
    global.get $std/array-literal/i
    i32.const 1
    i32.add
    global.set $std/array-literal/i
    global.get $std/array-literal/i
   end
   i32.store offset=4
   local.get $0
   block (result i32)
    global.get $std/array-literal/i
    i32.const 1
    i32.add
    global.set $std/array-literal/i
    global.get $std/array-literal/i
   end
   i32.store offset=8
   local.get $1
  end
  global.set $std/array-literal/dynamicArrayI32
  global.get $std/array-literal/dynamicArrayI32
  call $~lib/array/Array<i32>#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 29
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array-literal/dynamicArrayI32
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 30
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array-literal/dynamicArrayI32
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 31
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array-literal/dynamicArrayI32
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 32
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 0
   i32.const 3
   call $~lib/array/Array<Ref>#constructor
   local.set $0
   local.get $0
   i32.load offset=4
   local.set $1
   local.get $1
   i32.const 0
   call $std/array-literal/Ref#constructor
   i32.store
   local.get $1
   i32.const 0
   call $std/array-literal/Ref#constructor
   i32.store offset=4
   local.get $1
   i32.const 0
   call $std/array-literal/Ref#constructor
   i32.store offset=8
   local.get $0
  end
  global.set $std/array-literal/dynamicArrayRef
  global.get $std/array-literal/dynamicArrayRef
  call $~lib/array/Array<Ref>#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 36
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 0
   i32.const 3
   call $~lib/array/Array<RefWithCtor>#constructor
   local.set $1
   local.get $1
   i32.load offset=4
   local.set $0
   local.get $0
   i32.const 0
   call $std/array-literal/RefWithCtor#constructor
   i32.store
   local.get $0
   i32.const 0
   call $std/array-literal/RefWithCtor#constructor
   i32.store offset=4
   local.get $0
   i32.const 0
   call $std/array-literal/RefWithCtor#constructor
   i32.store offset=8
   local.get $1
  end
  global.set $std/array-literal/dynamicArrayRefWithCtor
  global.get $std/array-literal/dynamicArrayRefWithCtor
  call $~lib/array/Array<RefWithCtor>#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 40
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 22 ;) (type $FUNCSIG$v)
  call $start:std/array-literal
 )
 (func $null (; 23 ;) (type $FUNCSIG$v)
 )
)
