(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$iij (func (param i32 i64) (result i32)))
 (type $FUNCSIG$ij (func (param i64) (result i32)))
 (type $FUNCSIG$iiji (func (param i32 i64 i32) (result i32)))
 (type $FUNCSIG$viji (func (param i32 i64 i32)))
 (type $FUNCSIG$iif (func (param i32 f32) (result i32)))
 (type $FUNCSIG$iifi (func (param i32 f32 i32) (result i32)))
 (type $FUNCSIG$vifi (func (param i32 f32 i32)))
 (type $FUNCSIG$iid (func (param i32 f64) (result i32)))
 (type $FUNCSIG$iidi (func (param i32 f64 i32) (result i32)))
 (type $FUNCSIG$vidi (func (param i32 f64 i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s\00")
 (data (i32.const 48) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 96) "\01\00\00\00\14\00\00\00s\00t\00d\00/\00m\00a\00p\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/runtime/GC_IMPLEMENTED i32 (i32.const 0))
 (global $~lib/runtime/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/runtime/HEADER_MAGIC i32 (i32.const -1520547049))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/runtime/MAX_BYTELENGTH i32 (i32.const 1073741816))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 124))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/runtime/ADJUST (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/memory/memory.allocate (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/runtime/ALLOCATE (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/runtime/ADJUST
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
 (func $~lib/runtime/ASSERT_UNREGISTERED (; 4 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.get $~lib/memory/HEAP_BASE
  i32.gt_u
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 172
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
   i32.const 16
   i32.const 173
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/memory/memory.fill (; 5 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  block $~lib/util/memory/memset|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $5
   i32.eqz
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $3
   local.get $4
   i32.store8
   local.get $3
   local.get $5
   i32.add
   i32.const 1
   i32.sub
   local.get $4
   i32.store8
   local.get $5
   i32.const 2
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $3
   i32.const 1
   i32.add
   local.get $4
   i32.store8
   local.get $3
   i32.const 2
   i32.add
   local.get $4
   i32.store8
   local.get $3
   local.get $5
   i32.add
   i32.const 2
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   local.get $5
   i32.add
   i32.const 3
   i32.sub
   local.get $4
   i32.store8
   local.get $5
   i32.const 6
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $3
   i32.const 3
   i32.add
   local.get $4
   i32.store8
   local.get $3
   local.get $5
   i32.add
   i32.const 4
   i32.sub
   local.get $4
   i32.store8
   local.get $5
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   i32.const 0
   local.get $3
   i32.sub
   i32.const 3
   i32.and
   local.set $6
   local.get $3
   local.get $6
   i32.add
   local.set $3
   local.get $5
   local.get $6
   i32.sub
   local.set $5
   local.get $5
   i32.const -4
   i32.and
   local.set $5
   i32.const -1
   i32.const 255
   i32.div_u
   local.get $4
   i32.const 255
   i32.and
   i32.mul
   local.set $7
   local.get $3
   local.get $7
   i32.store
   local.get $3
   local.get $5
   i32.add
   i32.const 4
   i32.sub
   local.get $7
   i32.store
   local.get $5
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $3
   i32.const 4
   i32.add
   local.get $7
   i32.store
   local.get $3
   i32.const 8
   i32.add
   local.get $7
   i32.store
   local.get $3
   local.get $5
   i32.add
   i32.const 12
   i32.sub
   local.get $7
   i32.store
   local.get $3
   local.get $5
   i32.add
   i32.const 8
   i32.sub
   local.get $7
   i32.store
   local.get $5
   i32.const 24
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $3
   i32.const 12
   i32.add
   local.get $7
   i32.store
   local.get $3
   i32.const 16
   i32.add
   local.get $7
   i32.store
   local.get $3
   i32.const 20
   i32.add
   local.get $7
   i32.store
   local.get $3
   i32.const 24
   i32.add
   local.get $7
   i32.store
   local.get $3
   local.get $5
   i32.add
   i32.const 28
   i32.sub
   local.get $7
   i32.store
   local.get $3
   local.get $5
   i32.add
   i32.const 24
   i32.sub
   local.get $7
   i32.store
   local.get $3
   local.get $5
   i32.add
   i32.const 20
   i32.sub
   local.get $7
   i32.store
   local.get $3
   local.get $5
   i32.add
   i32.const 16
   i32.sub
   local.get $7
   i32.store
   i32.const 24
   local.get $3
   i32.const 4
   i32.and
   i32.add
   local.set $6
   local.get $3
   local.get $6
   i32.add
   local.set $3
   local.get $5
   local.get $6
   i32.sub
   local.set $5
   local.get $7
   i64.extend_i32_u
   local.get $7
   i64.extend_i32_u
   i64.const 32
   i64.shl
   i64.or
   local.set $8
   block $break|0
    loop $continue|0
     local.get $5
     i32.const 32
     i32.ge_u
     if
      block
       local.get $3
       local.get $8
       i64.store
       local.get $3
       i32.const 8
       i32.add
       local.get $8
       i64.store
       local.get $3
       i32.const 16
       i32.add
       local.get $8
       i64.store
       local.get $3
       i32.const 24
       i32.add
       local.get $8
       i64.store
       local.get $5
       i32.const 32
       i32.sub
       local.set $5
       local.get $3
       i32.const 32
       i32.add
       local.set $3
      end
      br $continue|0
     end
    end
   end
  end
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 6 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  global.get $~lib/runtime/MAX_BYTELENGTH
  i32.gt_u
  if
   i32.const 0
   i32.const 56
   i32.const 24
   i32.const 43
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  call $~lib/runtime/ALLOCATE
  local.set $2
  local.get $2
  i32.const 0
  local.get $1
  call $~lib/memory/memory.fill
  block $~lib/runtime/REGISTER<ArrayBuffer>|inlined.0 (result i32)
   local.get $2
   local.set $3
   local.get $3
   call $~lib/runtime/ASSERT_UNREGISTERED
   local.get $3
   global.get $~lib/runtime/HEADER_SIZE
   i32.sub
   i32.const 3
   i32.store
   local.get $3
  end
 )
 (func $~lib/map/Map<i8,i32>#clear (; 7 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
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
 (func $~lib/map/Map<i8,i32>#constructor (; 8 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    block $~lib/runtime/REGISTER<Map<i8,i32>>|inlined.0 (result i32)
     i32.const 24
     call $~lib/runtime/ALLOCATE
     local.set $1
     local.get $1
     call $~lib/runtime/ASSERT_UNREGISTERED
     local.get $1
     global.get $~lib/runtime/HEADER_SIZE
     i32.sub
     i32.const 2
     i32.store
     local.get $1
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
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
  end
  call $~lib/map/Map<i8,i32>#clear
  local.get $0
 )
 (func $~lib/util/hash/hash8 (; 9 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const -2128831035
  local.get $0
  i32.xor
  i32.const 16777619
  i32.mul
 )
 (func $~lib/map/Map<i8,i32>#find (; 10 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  block $break|0
   loop $continue|0
    local.get $3
    if
     block
      local.get $3
      i32.load offset=8
      i32.const 1
      i32.and
      i32.eqz
      local.tee $4
      if (result i32)
       local.get $3
       i32.load8_s
       local.get $1
       i32.const 24
       i32.shl
       i32.const 24
       i32.shr_s
       i32.eq
      else       
       local.get $4
      end
      if
       local.get $3
       return
      end
      local.get $3
      i32.load offset=8
      i32.const 1
      i32.const -1
      i32.xor
      i32.and
      local.set $3
     end
     br $continue|0
    end
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<i8,i32>#has (; 11 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i8>|inlined.0 (result i32)
   local.get $1
   local.set $2
   local.get $2
   i32.const 24
   i32.shl
   i32.const 24
   i32.shr_s
   call $~lib/util/hash/hash8
   br $~lib/util/hash/HASH<i8>|inlined.0
  end
  call $~lib/map/Map<i8,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<i8,i32>#rehash (; 12 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  f64.convert_i32_s
  f64.const 2.6666666666666665
  f64.mul
  i32.trunc_f64_s
  local.set $4
  i32.const 0
  local.get $4
  block $~lib/map/ENTRY_SIZE<i8,i32>|inlined.1 (result i32)
   i32.const 12
  end
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  block $~lib/map/ENTRY_SIZE<i8,i32>|inlined.2 (result i32)
   i32.const 12
  end
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  block $break|0
   loop $continue|0
    local.get $6
    local.get $7
    i32.ne
    if
     block
      local.get $6
      local.set $9
      local.get $9
      i32.load offset=8
      i32.const 1
      i32.and
      i32.eqz
      if
       local.get $8
       local.set $10
       local.get $10
       local.get $9
       i32.load8_s
       i32.store8
       local.get $10
       local.get $9
       i32.load offset=4
       i32.store offset=4
       block $~lib/util/hash/HASH<i8>|inlined.2 (result i32)
        local.get $9
        i32.load8_s
        local.set $11
        local.get $11
        call $~lib/util/hash/hash8
        br $~lib/util/hash/HASH<i8>|inlined.2
       end
       local.get $1
       i32.and
       local.set $11
       local.get $3
       local.get $11
       i32.const 4
       i32.mul
       i32.add
       local.set $12
       local.get $10
       local.get $12
       i32.load
       i32.store offset=8
       local.get $12
       local.get $8
       i32.store
       local.get $8
       block $~lib/map/ENTRY_SIZE<i8,i32>|inlined.3 (result i32)
        i32.const 12
       end
       i32.add
       local.set $8
      end
      local.get $6
      block $~lib/map/ENTRY_SIZE<i8,i32>|inlined.4 (result i32)
       i32.const 12
      end
      i32.add
      local.set $6
     end
     br $continue|0
    end
   end
  end
  local.get $0
  local.get $3
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $5
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<i8,i32>#set (; 13 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/hash/HASH<i8>|inlined.1 (result i32)
   local.get $1
   local.set $3
   local.get $3
   i32.const 24
   i32.shl
   i32.const 24
   i32.shr_s
   call $~lib/util/hash/hash8
   br $~lib/util/hash/HASH<i8>|inlined.1
  end
  local.set $4
  local.get $0
  local.get $1
  local.get $4
  call $~lib/map/Map<i8,i32>#find
  local.set $5
  local.get $5
  if
   local.get $5
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
    f64.convert_i32_s
    f64.const 0.75
    f64.mul
    i32.trunc_f64_s
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
    call $~lib/map/Map<i8,i32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $3
   local.get $3
   block (result i32)
    local.get $0
    local.get $0
    i32.load offset=16
    local.tee $6
    i32.const 1
    i32.add
    i32.store offset=16
    local.get $6
   end
   block $~lib/map/ENTRY_SIZE<i8,i32>|inlined.5 (result i32)
    i32.const 12
   end
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   i32.store8
   local.get $5
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $6
   local.get $5
   local.get $6
   i32.load
   i32.store offset=8
   local.get $6
   local.get $5
   i32.store
  end
 )
 (func $~lib/map/Map<i8,i32>#get (; 14 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i8>|inlined.3 (result i32)
   local.get $1
   local.set $2
   local.get $2
   i32.const 24
   i32.shl
   i32.const 24
   i32.shr_s
   call $~lib/util/hash/hash8
   br $~lib/util/hash/HASH<i8>|inlined.3
  end
  call $~lib/map/Map<i8,i32>#find
  local.set $3
  local.get $3
  if (result i32)
   local.get $3
   i32.load offset=4
  else   
   unreachable
  end
 )
 (func $~lib/map/Map<i8,i32>#get:size (; 15 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<i8,i32>#delete (; 16 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i8>|inlined.4 (result i32)
   local.get $1
   local.set $2
   local.get $2
   i32.const 24
   i32.shl
   i32.const 24
   i32.shr_s
   call $~lib/util/hash/hash8
   br $~lib/util/hash/HASH<i8>|inlined.4
  end
  call $~lib/map/Map<i8,i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $3
  local.get $3
  i32.load offset=8
  i32.const 1
  i32.or
  i32.store offset=8
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.set $4
  local.get $4
  i32.const 1
  i32.add
  i32.const 4
  local.tee $2
  local.get $0
  i32.load offset=20
  local.tee $5
  local.get $2
  local.get $5
  i32.gt_u
  select
  i32.ge_u
  local.tee $2
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   f64.convert_i32_s
   f64.const 0.75
   f64.mul
   i32.trunc_f64_s
   i32.lt_s
  else   
   local.get $2
  end
  if
   local.get $0
   local.get $4
   call $~lib/map/Map<i8,i32>#rehash
  end
  i32.const 1
 )
 (func $std/map/test<i8,i32> (; 17 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  call $~lib/map/Map<i8,i32>#constructor
  local.set $0
  block $break|0
   i32.const 0
   local.set $1
   loop $repeat|0
    local.get $1
    i32.const 100
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<i8,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 8
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     i32.const 10
     local.get $1
     i32.const 24
     i32.shl
     i32.const 24
     i32.shr_s
     i32.add
     call $~lib/map/Map<i8,i32>#set
     local.get $0
     local.get $1
     call $~lib/map/Map<i8,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 10
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<i8,i32>#get
     i32.const 10
     local.get $1
     i32.const 24
     i32.shl
     i32.const 24
     i32.shr_s
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 11
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 13
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i32.const 0
   local.set $1
   loop $repeat|1
    local.get $1
    i32.const 100
    i32.lt_s
    i32.eqz
    br_if $break|1
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<i8,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 17
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<i8,i32>#get
     i32.const 10
     local.get $1
     i32.const 24
     i32.shl
     i32.const 24
     i32.shr_s
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 18
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     i32.const 20
     local.get $1
     i32.const 24
     i32.shl
     i32.const 24
     i32.shr_s
     i32.add
     call $~lib/map/Map<i8,i32>#set
     local.get $0
     local.get $1
     call $~lib/map/Map<i8,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 20
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<i8,i32>#get
     i32.const 20
     local.get $1
     i32.const 24
     i32.shl
     i32.const 24
     i32.shr_s
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 21
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|1
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 23
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   i32.const 0
   local.set $1
   loop $repeat|2
    local.get $1
    i32.const 50
    i32.lt_s
    i32.eqz
    br_if $break|2
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<i8,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 27
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<i8,i32>#get
     i32.const 20
     local.get $1
     i32.const 24
     i32.shl
     i32.const 24
     i32.shr_s
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 28
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<i8,i32>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/map/Map<i8,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 30
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|2
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 32
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   i32.const 0
   local.set $1
   loop $repeat|3
    local.get $1
    i32.const 50
    i32.lt_s
    i32.eqz
    br_if $break|3
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<i8,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 36
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     i32.const 10
     local.get $1
     i32.const 24
     i32.shl
     i32.const 24
     i32.shr_s
     i32.add
     call $~lib/map/Map<i8,i32>#set
     local.get $0
     local.get $1
     call $~lib/map/Map<i8,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 38
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<i8,i32>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/map/Map<i8,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 40
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|3
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<i8,i32>#clear
  local.get $0
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 46
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/map/Map<u8,i32>#clear (; 18 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
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
 (func $~lib/map/Map<u8,i32>#constructor (; 19 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    block $~lib/runtime/REGISTER<Map<u8,i32>>|inlined.0 (result i32)
     i32.const 24
     call $~lib/runtime/ALLOCATE
     local.set $1
     local.get $1
     call $~lib/runtime/ASSERT_UNREGISTERED
     local.get $1
     global.get $~lib/runtime/HEADER_SIZE
     i32.sub
     i32.const 4
     i32.store
     local.get $1
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
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
  end
  call $~lib/map/Map<u8,i32>#clear
  local.get $0
 )
 (func $~lib/map/Map<u8,i32>#find (; 20 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  block $break|0
   loop $continue|0
    local.get $3
    if
     block
      local.get $3
      i32.load offset=8
      i32.const 1
      i32.and
      i32.eqz
      local.tee $4
      if (result i32)
       local.get $3
       i32.load8_u
       local.get $1
       i32.const 255
       i32.and
       i32.eq
      else       
       local.get $4
      end
      if
       local.get $3
       return
      end
      local.get $3
      i32.load offset=8
      i32.const 1
      i32.const -1
      i32.xor
      i32.and
      local.set $3
     end
     br $continue|0
    end
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<u8,i32>#has (; 21 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u8>|inlined.0 (result i32)
   local.get $1
   local.set $2
   local.get $2
   i32.const 255
   i32.and
   call $~lib/util/hash/hash8
   br $~lib/util/hash/HASH<u8>|inlined.0
  end
  call $~lib/map/Map<u8,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<u8,i32>#rehash (; 22 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  f64.convert_i32_s
  f64.const 2.6666666666666665
  f64.mul
  i32.trunc_f64_s
  local.set $4
  i32.const 0
  local.get $4
  block $~lib/map/ENTRY_SIZE<u8,i32>|inlined.1 (result i32)
   i32.const 12
  end
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  block $~lib/map/ENTRY_SIZE<u8,i32>|inlined.2 (result i32)
   i32.const 12
  end
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  block $break|0
   loop $continue|0
    local.get $6
    local.get $7
    i32.ne
    if
     block
      local.get $6
      local.set $9
      local.get $9
      i32.load offset=8
      i32.const 1
      i32.and
      i32.eqz
      if
       local.get $8
       local.set $10
       local.get $10
       local.get $9
       i32.load8_u
       i32.store8
       local.get $10
       local.get $9
       i32.load offset=4
       i32.store offset=4
       block $~lib/util/hash/HASH<u8>|inlined.2 (result i32)
        local.get $9
        i32.load8_u
        local.set $11
        local.get $11
        call $~lib/util/hash/hash8
        br $~lib/util/hash/HASH<u8>|inlined.2
       end
       local.get $1
       i32.and
       local.set $11
       local.get $3
       local.get $11
       i32.const 4
       i32.mul
       i32.add
       local.set $12
       local.get $10
       local.get $12
       i32.load
       i32.store offset=8
       local.get $12
       local.get $8
       i32.store
       local.get $8
       block $~lib/map/ENTRY_SIZE<u8,i32>|inlined.3 (result i32)
        i32.const 12
       end
       i32.add
       local.set $8
      end
      local.get $6
      block $~lib/map/ENTRY_SIZE<u8,i32>|inlined.4 (result i32)
       i32.const 12
      end
      i32.add
      local.set $6
     end
     br $continue|0
    end
   end
  end
  local.get $0
  local.get $3
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $5
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<u8,i32>#set (; 23 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/hash/HASH<u8>|inlined.1 (result i32)
   local.get $1
   local.set $3
   local.get $3
   i32.const 255
   i32.and
   call $~lib/util/hash/hash8
   br $~lib/util/hash/HASH<u8>|inlined.1
  end
  local.set $4
  local.get $0
  local.get $1
  local.get $4
  call $~lib/map/Map<u8,i32>#find
  local.set $5
  local.get $5
  if
   local.get $5
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
    f64.convert_i32_s
    f64.const 0.75
    f64.mul
    i32.trunc_f64_s
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
    call $~lib/map/Map<u8,i32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $3
   local.get $3
   block (result i32)
    local.get $0
    local.get $0
    i32.load offset=16
    local.tee $6
    i32.const 1
    i32.add
    i32.store offset=16
    local.get $6
   end
   block $~lib/map/ENTRY_SIZE<u8,i32>|inlined.5 (result i32)
    i32.const 12
   end
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   i32.store8
   local.get $5
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $6
   local.get $5
   local.get $6
   i32.load
   i32.store offset=8
   local.get $6
   local.get $5
   i32.store
  end
 )
 (func $~lib/map/Map<u8,i32>#get (; 24 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u8>|inlined.3 (result i32)
   local.get $1
   local.set $2
   local.get $2
   i32.const 255
   i32.and
   call $~lib/util/hash/hash8
   br $~lib/util/hash/HASH<u8>|inlined.3
  end
  call $~lib/map/Map<u8,i32>#find
  local.set $3
  local.get $3
  if (result i32)
   local.get $3
   i32.load offset=4
  else   
   unreachable
  end
 )
 (func $~lib/map/Map<u8,i32>#get:size (; 25 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<u8,i32>#delete (; 26 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u8>|inlined.4 (result i32)
   local.get $1
   local.set $2
   local.get $2
   i32.const 255
   i32.and
   call $~lib/util/hash/hash8
   br $~lib/util/hash/HASH<u8>|inlined.4
  end
  call $~lib/map/Map<u8,i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $3
  local.get $3
  i32.load offset=8
  i32.const 1
  i32.or
  i32.store offset=8
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.set $4
  local.get $4
  i32.const 1
  i32.add
  i32.const 4
  local.tee $2
  local.get $0
  i32.load offset=20
  local.tee $5
  local.get $2
  local.get $5
  i32.gt_u
  select
  i32.ge_u
  local.tee $2
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   f64.convert_i32_s
   f64.const 0.75
   f64.mul
   i32.trunc_f64_s
   i32.lt_s
  else   
   local.get $2
  end
  if
   local.get $0
   local.get $4
   call $~lib/map/Map<u8,i32>#rehash
  end
  i32.const 1
 )
 (func $std/map/test<u8,i32> (; 27 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  call $~lib/map/Map<u8,i32>#constructor
  local.set $0
  block $break|0
   i32.const 0
   local.set $1
   loop $repeat|0
    local.get $1
    i32.const 100
    i32.lt_u
    i32.eqz
    br_if $break|0
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<u8,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 8
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     i32.const 10
     local.get $1
     i32.const 255
     i32.and
     i32.add
     call $~lib/map/Map<u8,i32>#set
     local.get $0
     local.get $1
     call $~lib/map/Map<u8,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 10
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<u8,i32>#get
     i32.const 10
     local.get $1
     i32.const 255
     i32.and
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 11
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<u8,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 13
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i32.const 0
   local.set $1
   loop $repeat|1
    local.get $1
    i32.const 100
    i32.lt_u
    i32.eqz
    br_if $break|1
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<u8,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 17
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<u8,i32>#get
     i32.const 10
     local.get $1
     i32.const 255
     i32.and
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 18
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     i32.const 20
     local.get $1
     i32.const 255
     i32.and
     i32.add
     call $~lib/map/Map<u8,i32>#set
     local.get $0
     local.get $1
     call $~lib/map/Map<u8,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 20
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<u8,i32>#get
     i32.const 20
     local.get $1
     i32.const 255
     i32.and
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 21
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|1
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<u8,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 23
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   i32.const 0
   local.set $1
   loop $repeat|2
    local.get $1
    i32.const 50
    i32.lt_u
    i32.eqz
    br_if $break|2
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<u8,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 27
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<u8,i32>#get
     i32.const 20
     local.get $1
     i32.const 255
     i32.and
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 28
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<u8,i32>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/map/Map<u8,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 30
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|2
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<u8,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 32
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   i32.const 0
   local.set $1
   loop $repeat|3
    local.get $1
    i32.const 50
    i32.lt_u
    i32.eqz
    br_if $break|3
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<u8,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 36
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     i32.const 10
     local.get $1
     i32.const 255
     i32.and
     i32.add
     call $~lib/map/Map<u8,i32>#set
     local.get $0
     local.get $1
     call $~lib/map/Map<u8,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 38
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<u8,i32>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/map/Map<u8,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 40
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|3
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<u8,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<u8,i32>#clear
  local.get $0
  call $~lib/map/Map<u8,i32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 46
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/map/Map<i16,i32>#clear (; 28 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
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
 (func $~lib/map/Map<i16,i32>#constructor (; 29 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    block $~lib/runtime/REGISTER<Map<i16,i32>>|inlined.0 (result i32)
     i32.const 24
     call $~lib/runtime/ALLOCATE
     local.set $1
     local.get $1
     call $~lib/runtime/ASSERT_UNREGISTERED
     local.get $1
     global.get $~lib/runtime/HEADER_SIZE
     i32.sub
     i32.const 5
     i32.store
     local.get $1
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
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
  end
  call $~lib/map/Map<i16,i32>#clear
  local.get $0
 )
 (func $~lib/util/hash/hash16 (; 30 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const -2128831035
  local.set $1
  local.get $1
  local.get $0
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $1
  local.get $1
  local.get $0
  i32.const 8
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $1
  local.get $1
 )
 (func $~lib/map/Map<i16,i32>#find (; 31 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  block $break|0
   loop $continue|0
    local.get $3
    if
     block
      local.get $3
      i32.load offset=8
      i32.const 1
      i32.and
      i32.eqz
      local.tee $4
      if (result i32)
       local.get $3
       i32.load16_s
       local.get $1
       i32.const 16
       i32.shl
       i32.const 16
       i32.shr_s
       i32.eq
      else       
       local.get $4
      end
      if
       local.get $3
       return
      end
      local.get $3
      i32.load offset=8
      i32.const 1
      i32.const -1
      i32.xor
      i32.and
      local.set $3
     end
     br $continue|0
    end
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<i16,i32>#has (; 32 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i16>|inlined.0 (result i32)
   local.get $1
   local.set $2
   local.get $2
   i32.const 16
   i32.shl
   i32.const 16
   i32.shr_s
   call $~lib/util/hash/hash16
   br $~lib/util/hash/HASH<i16>|inlined.0
  end
  call $~lib/map/Map<i16,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<i16,i32>#rehash (; 33 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  f64.convert_i32_s
  f64.const 2.6666666666666665
  f64.mul
  i32.trunc_f64_s
  local.set $4
  i32.const 0
  local.get $4
  block $~lib/map/ENTRY_SIZE<i16,i32>|inlined.1 (result i32)
   i32.const 12
  end
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  block $~lib/map/ENTRY_SIZE<i16,i32>|inlined.2 (result i32)
   i32.const 12
  end
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  block $break|0
   loop $continue|0
    local.get $6
    local.get $7
    i32.ne
    if
     block
      local.get $6
      local.set $9
      local.get $9
      i32.load offset=8
      i32.const 1
      i32.and
      i32.eqz
      if
       local.get $8
       local.set $10
       local.get $10
       local.get $9
       i32.load16_s
       i32.store16
       local.get $10
       local.get $9
       i32.load offset=4
       i32.store offset=4
       block $~lib/util/hash/HASH<i16>|inlined.2 (result i32)
        local.get $9
        i32.load16_s
        local.set $11
        local.get $11
        call $~lib/util/hash/hash16
        br $~lib/util/hash/HASH<i16>|inlined.2
       end
       local.get $1
       i32.and
       local.set $11
       local.get $3
       local.get $11
       i32.const 4
       i32.mul
       i32.add
       local.set $12
       local.get $10
       local.get $12
       i32.load
       i32.store offset=8
       local.get $12
       local.get $8
       i32.store
       local.get $8
       block $~lib/map/ENTRY_SIZE<i16,i32>|inlined.3 (result i32)
        i32.const 12
       end
       i32.add
       local.set $8
      end
      local.get $6
      block $~lib/map/ENTRY_SIZE<i16,i32>|inlined.4 (result i32)
       i32.const 12
      end
      i32.add
      local.set $6
     end
     br $continue|0
    end
   end
  end
  local.get $0
  local.get $3
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $5
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<i16,i32>#set (; 34 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/hash/HASH<i16>|inlined.1 (result i32)
   local.get $1
   local.set $3
   local.get $3
   i32.const 16
   i32.shl
   i32.const 16
   i32.shr_s
   call $~lib/util/hash/hash16
   br $~lib/util/hash/HASH<i16>|inlined.1
  end
  local.set $4
  local.get $0
  local.get $1
  local.get $4
  call $~lib/map/Map<i16,i32>#find
  local.set $5
  local.get $5
  if
   local.get $5
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
    f64.convert_i32_s
    f64.const 0.75
    f64.mul
    i32.trunc_f64_s
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
    call $~lib/map/Map<i16,i32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $3
   local.get $3
   block (result i32)
    local.get $0
    local.get $0
    i32.load offset=16
    local.tee $6
    i32.const 1
    i32.add
    i32.store offset=16
    local.get $6
   end
   block $~lib/map/ENTRY_SIZE<i16,i32>|inlined.5 (result i32)
    i32.const 12
   end
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   i32.store16
   local.get $5
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $6
   local.get $5
   local.get $6
   i32.load
   i32.store offset=8
   local.get $6
   local.get $5
   i32.store
  end
 )
 (func $~lib/map/Map<i16,i32>#get (; 35 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i16>|inlined.3 (result i32)
   local.get $1
   local.set $2
   local.get $2
   i32.const 16
   i32.shl
   i32.const 16
   i32.shr_s
   call $~lib/util/hash/hash16
   br $~lib/util/hash/HASH<i16>|inlined.3
  end
  call $~lib/map/Map<i16,i32>#find
  local.set $3
  local.get $3
  if (result i32)
   local.get $3
   i32.load offset=4
  else   
   unreachable
  end
 )
 (func $~lib/map/Map<i16,i32>#get:size (; 36 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<i16,i32>#delete (; 37 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i16>|inlined.4 (result i32)
   local.get $1
   local.set $2
   local.get $2
   i32.const 16
   i32.shl
   i32.const 16
   i32.shr_s
   call $~lib/util/hash/hash16
   br $~lib/util/hash/HASH<i16>|inlined.4
  end
  call $~lib/map/Map<i16,i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $3
  local.get $3
  i32.load offset=8
  i32.const 1
  i32.or
  i32.store offset=8
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.set $4
  local.get $4
  i32.const 1
  i32.add
  i32.const 4
  local.tee $2
  local.get $0
  i32.load offset=20
  local.tee $5
  local.get $2
  local.get $5
  i32.gt_u
  select
  i32.ge_u
  local.tee $2
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   f64.convert_i32_s
   f64.const 0.75
   f64.mul
   i32.trunc_f64_s
   i32.lt_s
  else   
   local.get $2
  end
  if
   local.get $0
   local.get $4
   call $~lib/map/Map<i16,i32>#rehash
  end
  i32.const 1
 )
 (func $std/map/test<i16,i32> (; 38 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  call $~lib/map/Map<i16,i32>#constructor
  local.set $0
  block $break|0
   i32.const 0
   local.set $1
   loop $repeat|0
    local.get $1
    i32.const 100
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<i16,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 8
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     i32.const 10
     local.get $1
     i32.const 16
     i32.shl
     i32.const 16
     i32.shr_s
     i32.add
     call $~lib/map/Map<i16,i32>#set
     local.get $0
     local.get $1
     call $~lib/map/Map<i16,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 10
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<i16,i32>#get
     i32.const 10
     local.get $1
     i32.const 16
     i32.shl
     i32.const 16
     i32.shr_s
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 11
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<i16,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 13
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i32.const 0
   local.set $1
   loop $repeat|1
    local.get $1
    i32.const 100
    i32.lt_s
    i32.eqz
    br_if $break|1
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<i16,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 17
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<i16,i32>#get
     i32.const 10
     local.get $1
     i32.const 16
     i32.shl
     i32.const 16
     i32.shr_s
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 18
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     i32.const 20
     local.get $1
     i32.const 16
     i32.shl
     i32.const 16
     i32.shr_s
     i32.add
     call $~lib/map/Map<i16,i32>#set
     local.get $0
     local.get $1
     call $~lib/map/Map<i16,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 20
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<i16,i32>#get
     i32.const 20
     local.get $1
     i32.const 16
     i32.shl
     i32.const 16
     i32.shr_s
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 21
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|1
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<i16,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 23
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   i32.const 0
   local.set $1
   loop $repeat|2
    local.get $1
    i32.const 50
    i32.lt_s
    i32.eqz
    br_if $break|2
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<i16,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 27
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<i16,i32>#get
     i32.const 20
     local.get $1
     i32.const 16
     i32.shl
     i32.const 16
     i32.shr_s
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 28
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<i16,i32>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/map/Map<i16,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 30
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|2
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<i16,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 32
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   i32.const 0
   local.set $1
   loop $repeat|3
    local.get $1
    i32.const 50
    i32.lt_s
    i32.eqz
    br_if $break|3
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<i16,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 36
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     i32.const 10
     local.get $1
     i32.const 16
     i32.shl
     i32.const 16
     i32.shr_s
     i32.add
     call $~lib/map/Map<i16,i32>#set
     local.get $0
     local.get $1
     call $~lib/map/Map<i16,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 38
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<i16,i32>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/map/Map<i16,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 40
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|3
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<i16,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<i16,i32>#clear
  local.get $0
  call $~lib/map/Map<i16,i32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 46
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/map/Map<u16,i32>#clear (; 39 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
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
 (func $~lib/map/Map<u16,i32>#constructor (; 40 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    block $~lib/runtime/REGISTER<Map<u16,i32>>|inlined.0 (result i32)
     i32.const 24
     call $~lib/runtime/ALLOCATE
     local.set $1
     local.get $1
     call $~lib/runtime/ASSERT_UNREGISTERED
     local.get $1
     global.get $~lib/runtime/HEADER_SIZE
     i32.sub
     i32.const 6
     i32.store
     local.get $1
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
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
  end
  call $~lib/map/Map<u16,i32>#clear
  local.get $0
 )
 (func $~lib/map/Map<u16,i32>#find (; 41 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  block $break|0
   loop $continue|0
    local.get $3
    if
     block
      local.get $3
      i32.load offset=8
      i32.const 1
      i32.and
      i32.eqz
      local.tee $4
      if (result i32)
       local.get $3
       i32.load16_u
       local.get $1
       i32.const 65535
       i32.and
       i32.eq
      else       
       local.get $4
      end
      if
       local.get $3
       return
      end
      local.get $3
      i32.load offset=8
      i32.const 1
      i32.const -1
      i32.xor
      i32.and
      local.set $3
     end
     br $continue|0
    end
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<u16,i32>#has (; 42 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u16>|inlined.0 (result i32)
   local.get $1
   local.set $2
   local.get $2
   i32.const 65535
   i32.and
   call $~lib/util/hash/hash16
   br $~lib/util/hash/HASH<u16>|inlined.0
  end
  call $~lib/map/Map<u16,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<u16,i32>#rehash (; 43 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  f64.convert_i32_s
  f64.const 2.6666666666666665
  f64.mul
  i32.trunc_f64_s
  local.set $4
  i32.const 0
  local.get $4
  block $~lib/map/ENTRY_SIZE<u16,i32>|inlined.1 (result i32)
   i32.const 12
  end
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  block $~lib/map/ENTRY_SIZE<u16,i32>|inlined.2 (result i32)
   i32.const 12
  end
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  block $break|0
   loop $continue|0
    local.get $6
    local.get $7
    i32.ne
    if
     block
      local.get $6
      local.set $9
      local.get $9
      i32.load offset=8
      i32.const 1
      i32.and
      i32.eqz
      if
       local.get $8
       local.set $10
       local.get $10
       local.get $9
       i32.load16_u
       i32.store16
       local.get $10
       local.get $9
       i32.load offset=4
       i32.store offset=4
       block $~lib/util/hash/HASH<u16>|inlined.2 (result i32)
        local.get $9
        i32.load16_u
        local.set $11
        local.get $11
        call $~lib/util/hash/hash16
        br $~lib/util/hash/HASH<u16>|inlined.2
       end
       local.get $1
       i32.and
       local.set $11
       local.get $3
       local.get $11
       i32.const 4
       i32.mul
       i32.add
       local.set $12
       local.get $10
       local.get $12
       i32.load
       i32.store offset=8
       local.get $12
       local.get $8
       i32.store
       local.get $8
       block $~lib/map/ENTRY_SIZE<u16,i32>|inlined.3 (result i32)
        i32.const 12
       end
       i32.add
       local.set $8
      end
      local.get $6
      block $~lib/map/ENTRY_SIZE<u16,i32>|inlined.4 (result i32)
       i32.const 12
      end
      i32.add
      local.set $6
     end
     br $continue|0
    end
   end
  end
  local.get $0
  local.get $3
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $5
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<u16,i32>#set (; 44 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/hash/HASH<u16>|inlined.1 (result i32)
   local.get $1
   local.set $3
   local.get $3
   i32.const 65535
   i32.and
   call $~lib/util/hash/hash16
   br $~lib/util/hash/HASH<u16>|inlined.1
  end
  local.set $4
  local.get $0
  local.get $1
  local.get $4
  call $~lib/map/Map<u16,i32>#find
  local.set $5
  local.get $5
  if
   local.get $5
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
    f64.convert_i32_s
    f64.const 0.75
    f64.mul
    i32.trunc_f64_s
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
    call $~lib/map/Map<u16,i32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $3
   local.get $3
   block (result i32)
    local.get $0
    local.get $0
    i32.load offset=16
    local.tee $6
    i32.const 1
    i32.add
    i32.store offset=16
    local.get $6
   end
   block $~lib/map/ENTRY_SIZE<u16,i32>|inlined.5 (result i32)
    i32.const 12
   end
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   i32.store16
   local.get $5
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $6
   local.get $5
   local.get $6
   i32.load
   i32.store offset=8
   local.get $6
   local.get $5
   i32.store
  end
 )
 (func $~lib/map/Map<u16,i32>#get (; 45 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u16>|inlined.3 (result i32)
   local.get $1
   local.set $2
   local.get $2
   i32.const 65535
   i32.and
   call $~lib/util/hash/hash16
   br $~lib/util/hash/HASH<u16>|inlined.3
  end
  call $~lib/map/Map<u16,i32>#find
  local.set $3
  local.get $3
  if (result i32)
   local.get $3
   i32.load offset=4
  else   
   unreachable
  end
 )
 (func $~lib/map/Map<u16,i32>#get:size (; 46 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<u16,i32>#delete (; 47 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u16>|inlined.4 (result i32)
   local.get $1
   local.set $2
   local.get $2
   i32.const 65535
   i32.and
   call $~lib/util/hash/hash16
   br $~lib/util/hash/HASH<u16>|inlined.4
  end
  call $~lib/map/Map<u16,i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $3
  local.get $3
  i32.load offset=8
  i32.const 1
  i32.or
  i32.store offset=8
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.set $4
  local.get $4
  i32.const 1
  i32.add
  i32.const 4
  local.tee $2
  local.get $0
  i32.load offset=20
  local.tee $5
  local.get $2
  local.get $5
  i32.gt_u
  select
  i32.ge_u
  local.tee $2
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   f64.convert_i32_s
   f64.const 0.75
   f64.mul
   i32.trunc_f64_s
   i32.lt_s
  else   
   local.get $2
  end
  if
   local.get $0
   local.get $4
   call $~lib/map/Map<u16,i32>#rehash
  end
  i32.const 1
 )
 (func $std/map/test<u16,i32> (; 48 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  call $~lib/map/Map<u16,i32>#constructor
  local.set $0
  block $break|0
   i32.const 0
   local.set $1
   loop $repeat|0
    local.get $1
    i32.const 100
    i32.lt_u
    i32.eqz
    br_if $break|0
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<u16,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 8
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     i32.const 10
     local.get $1
     i32.const 65535
     i32.and
     i32.add
     call $~lib/map/Map<u16,i32>#set
     local.get $0
     local.get $1
     call $~lib/map/Map<u16,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 10
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<u16,i32>#get
     i32.const 10
     local.get $1
     i32.const 65535
     i32.and
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 11
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<u16,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 13
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i32.const 0
   local.set $1
   loop $repeat|1
    local.get $1
    i32.const 100
    i32.lt_u
    i32.eqz
    br_if $break|1
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<u16,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 17
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<u16,i32>#get
     i32.const 10
     local.get $1
     i32.const 65535
     i32.and
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 18
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     i32.const 20
     local.get $1
     i32.const 65535
     i32.and
     i32.add
     call $~lib/map/Map<u16,i32>#set
     local.get $0
     local.get $1
     call $~lib/map/Map<u16,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 20
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<u16,i32>#get
     i32.const 20
     local.get $1
     i32.const 65535
     i32.and
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 21
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|1
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<u16,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 23
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   i32.const 0
   local.set $1
   loop $repeat|2
    local.get $1
    i32.const 50
    i32.lt_u
    i32.eqz
    br_if $break|2
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<u16,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 27
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<u16,i32>#get
     i32.const 20
     local.get $1
     i32.const 65535
     i32.and
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 28
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<u16,i32>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/map/Map<u16,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 30
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|2
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<u16,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 32
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   i32.const 0
   local.set $1
   loop $repeat|3
    local.get $1
    i32.const 50
    i32.lt_u
    i32.eqz
    br_if $break|3
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<u16,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 36
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     i32.const 10
     local.get $1
     i32.const 65535
     i32.and
     i32.add
     call $~lib/map/Map<u16,i32>#set
     local.get $0
     local.get $1
     call $~lib/map/Map<u16,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 38
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<u16,i32>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/map/Map<u16,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 40
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|3
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<u16,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<u16,i32>#clear
  local.get $0
  call $~lib/map/Map<u16,i32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 46
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/map/Map<i32,i32>#clear (; 49 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
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
 (func $~lib/map/Map<i32,i32>#constructor (; 50 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    block $~lib/runtime/REGISTER<Map<i32,i32>>|inlined.0 (result i32)
     i32.const 24
     call $~lib/runtime/ALLOCATE
     local.set $1
     local.get $1
     call $~lib/runtime/ASSERT_UNREGISTERED
     local.get $1
     global.get $~lib/runtime/HEADER_SIZE
     i32.sub
     i32.const 7
     i32.store
     local.get $1
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
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
  end
  call $~lib/map/Map<i32,i32>#clear
  local.get $0
 )
 (func $~lib/util/hash/hash32 (; 51 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const -2128831035
  local.set $1
  local.get $1
  local.get $0
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $1
  local.get $1
  local.get $0
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $1
  local.get $1
  local.get $0
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $1
  local.get $1
  local.get $0
  i32.const 24
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $1
  local.get $1
 )
 (func $~lib/map/Map<i32,i32>#find (; 52 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  block $break|0
   loop $continue|0
    local.get $3
    if
     block
      local.get $3
      i32.load offset=8
      i32.const 1
      i32.and
      i32.eqz
      local.tee $4
      if (result i32)
       local.get $3
       i32.load
       local.get $1
       i32.eq
      else       
       local.get $4
      end
      if
       local.get $3
       return
      end
      local.get $3
      i32.load offset=8
      i32.const 1
      i32.const -1
      i32.xor
      i32.and
      local.set $3
     end
     br $continue|0
    end
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<i32,i32>#has (; 53 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i32>|inlined.0 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<i32>|inlined.0
  end
  call $~lib/map/Map<i32,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<i32,i32>#rehash (; 54 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  f64.convert_i32_s
  f64.const 2.6666666666666665
  f64.mul
  i32.trunc_f64_s
  local.set $4
  i32.const 0
  local.get $4
  block $~lib/map/ENTRY_SIZE<i32,i32>|inlined.1 (result i32)
   i32.const 12
  end
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  block $~lib/map/ENTRY_SIZE<i32,i32>|inlined.2 (result i32)
   i32.const 12
  end
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  block $break|0
   loop $continue|0
    local.get $6
    local.get $7
    i32.ne
    if
     block
      local.get $6
      local.set $9
      local.get $9
      i32.load offset=8
      i32.const 1
      i32.and
      i32.eqz
      if
       local.get $8
       local.set $10
       local.get $10
       local.get $9
       i32.load
       i32.store
       local.get $10
       local.get $9
       i32.load offset=4
       i32.store offset=4
       block $~lib/util/hash/HASH<i32>|inlined.2 (result i32)
        local.get $9
        i32.load
        local.set $11
        local.get $11
        call $~lib/util/hash/hash32
        br $~lib/util/hash/HASH<i32>|inlined.2
       end
       local.get $1
       i32.and
       local.set $11
       local.get $3
       local.get $11
       i32.const 4
       i32.mul
       i32.add
       local.set $12
       local.get $10
       local.get $12
       i32.load
       i32.store offset=8
       local.get $12
       local.get $8
       i32.store
       local.get $8
       block $~lib/map/ENTRY_SIZE<i32,i32>|inlined.3 (result i32)
        i32.const 12
       end
       i32.add
       local.set $8
      end
      local.get $6
      block $~lib/map/ENTRY_SIZE<i32,i32>|inlined.4 (result i32)
       i32.const 12
      end
      i32.add
      local.set $6
     end
     br $continue|0
    end
   end
  end
  local.get $0
  local.get $3
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $5
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<i32,i32>#set (; 55 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/hash/HASH<i32>|inlined.1 (result i32)
   local.get $1
   local.set $3
   local.get $3
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<i32>|inlined.1
  end
  local.set $4
  local.get $0
  local.get $1
  local.get $4
  call $~lib/map/Map<i32,i32>#find
  local.set $5
  local.get $5
  if
   local.get $5
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
    f64.convert_i32_s
    f64.const 0.75
    f64.mul
    i32.trunc_f64_s
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
    call $~lib/map/Map<i32,i32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $3
   local.get $3
   block (result i32)
    local.get $0
    local.get $0
    i32.load offset=16
    local.tee $6
    i32.const 1
    i32.add
    i32.store offset=16
    local.get $6
   end
   block $~lib/map/ENTRY_SIZE<i32,i32>|inlined.5 (result i32)
    i32.const 12
   end
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   i32.store
   local.get $5
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $6
   local.get $5
   local.get $6
   i32.load
   i32.store offset=8
   local.get $6
   local.get $5
   i32.store
  end
 )
 (func $~lib/map/Map<i32,i32>#get (; 56 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i32>|inlined.3 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<i32>|inlined.3
  end
  call $~lib/map/Map<i32,i32>#find
  local.set $3
  local.get $3
  if (result i32)
   local.get $3
   i32.load offset=4
  else   
   unreachable
  end
 )
 (func $~lib/map/Map<i32,i32>#get:size (; 57 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<i32,i32>#delete (; 58 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i32>|inlined.4 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<i32>|inlined.4
  end
  call $~lib/map/Map<i32,i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $3
  local.get $3
  i32.load offset=8
  i32.const 1
  i32.or
  i32.store offset=8
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.set $4
  local.get $4
  i32.const 1
  i32.add
  i32.const 4
  local.tee $2
  local.get $0
  i32.load offset=20
  local.tee $5
  local.get $2
  local.get $5
  i32.gt_u
  select
  i32.ge_u
  local.tee $2
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   f64.convert_i32_s
   f64.const 0.75
   f64.mul
   i32.trunc_f64_s
   i32.lt_s
  else   
   local.get $2
  end
  if
   local.get $0
   local.get $4
   call $~lib/map/Map<i32,i32>#rehash
  end
  i32.const 1
 )
 (func $std/map/test<i32,i32> (; 59 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  call $~lib/map/Map<i32,i32>#constructor
  local.set $0
  block $break|0
   i32.const 0
   local.set $1
   loop $repeat|0
    local.get $1
    i32.const 100
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<i32,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 8
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     i32.const 10
     local.get $1
     i32.add
     call $~lib/map/Map<i32,i32>#set
     local.get $0
     local.get $1
     call $~lib/map/Map<i32,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 10
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<i32,i32>#get
     i32.const 10
     local.get $1
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 11
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 13
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i32.const 0
   local.set $1
   loop $repeat|1
    local.get $1
    i32.const 100
    i32.lt_s
    i32.eqz
    br_if $break|1
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<i32,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 17
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<i32,i32>#get
     i32.const 10
     local.get $1
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 18
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     i32.const 20
     local.get $1
     i32.add
     call $~lib/map/Map<i32,i32>#set
     local.get $0
     local.get $1
     call $~lib/map/Map<i32,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 20
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<i32,i32>#get
     i32.const 20
     local.get $1
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 21
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|1
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 23
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   i32.const 0
   local.set $1
   loop $repeat|2
    local.get $1
    i32.const 50
    i32.lt_s
    i32.eqz
    br_if $break|2
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<i32,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 27
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<i32,i32>#get
     i32.const 20
     local.get $1
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 28
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<i32,i32>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/map/Map<i32,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 30
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|2
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 32
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   i32.const 0
   local.set $1
   loop $repeat|3
    local.get $1
    i32.const 50
    i32.lt_s
    i32.eqz
    br_if $break|3
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<i32,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 36
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     i32.const 10
     local.get $1
     i32.add
     call $~lib/map/Map<i32,i32>#set
     local.get $0
     local.get $1
     call $~lib/map/Map<i32,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 38
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<i32,i32>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/map/Map<i32,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 40
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|3
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<i32,i32>#clear
  local.get $0
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 46
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/map/Map<u32,i32>#clear (; 60 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
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
 (func $~lib/map/Map<u32,i32>#constructor (; 61 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    block $~lib/runtime/REGISTER<Map<u32,i32>>|inlined.0 (result i32)
     i32.const 24
     call $~lib/runtime/ALLOCATE
     local.set $1
     local.get $1
     call $~lib/runtime/ASSERT_UNREGISTERED
     local.get $1
     global.get $~lib/runtime/HEADER_SIZE
     i32.sub
     i32.const 8
     i32.store
     local.get $1
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
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
  end
  call $~lib/map/Map<u32,i32>#clear
  local.get $0
 )
 (func $~lib/map/Map<u32,i32>#find (; 62 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  block $break|0
   loop $continue|0
    local.get $3
    if
     block
      local.get $3
      i32.load offset=8
      i32.const 1
      i32.and
      i32.eqz
      local.tee $4
      if (result i32)
       local.get $3
       i32.load
       local.get $1
       i32.eq
      else       
       local.get $4
      end
      if
       local.get $3
       return
      end
      local.get $3
      i32.load offset=8
      i32.const 1
      i32.const -1
      i32.xor
      i32.and
      local.set $3
     end
     br $continue|0
    end
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<u32,i32>#has (; 63 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u32>|inlined.0 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<u32>|inlined.0
  end
  call $~lib/map/Map<u32,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<u32,i32>#rehash (; 64 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  f64.convert_i32_s
  f64.const 2.6666666666666665
  f64.mul
  i32.trunc_f64_s
  local.set $4
  i32.const 0
  local.get $4
  block $~lib/map/ENTRY_SIZE<u32,i32>|inlined.1 (result i32)
   i32.const 12
  end
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  block $~lib/map/ENTRY_SIZE<u32,i32>|inlined.2 (result i32)
   i32.const 12
  end
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  block $break|0
   loop $continue|0
    local.get $6
    local.get $7
    i32.ne
    if
     block
      local.get $6
      local.set $9
      local.get $9
      i32.load offset=8
      i32.const 1
      i32.and
      i32.eqz
      if
       local.get $8
       local.set $10
       local.get $10
       local.get $9
       i32.load
       i32.store
       local.get $10
       local.get $9
       i32.load offset=4
       i32.store offset=4
       block $~lib/util/hash/HASH<u32>|inlined.2 (result i32)
        local.get $9
        i32.load
        local.set $11
        local.get $11
        call $~lib/util/hash/hash32
        br $~lib/util/hash/HASH<u32>|inlined.2
       end
       local.get $1
       i32.and
       local.set $11
       local.get $3
       local.get $11
       i32.const 4
       i32.mul
       i32.add
       local.set $12
       local.get $10
       local.get $12
       i32.load
       i32.store offset=8
       local.get $12
       local.get $8
       i32.store
       local.get $8
       block $~lib/map/ENTRY_SIZE<u32,i32>|inlined.3 (result i32)
        i32.const 12
       end
       i32.add
       local.set $8
      end
      local.get $6
      block $~lib/map/ENTRY_SIZE<u32,i32>|inlined.4 (result i32)
       i32.const 12
      end
      i32.add
      local.set $6
     end
     br $continue|0
    end
   end
  end
  local.get $0
  local.get $3
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $5
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<u32,i32>#set (; 65 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/hash/HASH<u32>|inlined.1 (result i32)
   local.get $1
   local.set $3
   local.get $3
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<u32>|inlined.1
  end
  local.set $4
  local.get $0
  local.get $1
  local.get $4
  call $~lib/map/Map<u32,i32>#find
  local.set $5
  local.get $5
  if
   local.get $5
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
    f64.convert_i32_s
    f64.const 0.75
    f64.mul
    i32.trunc_f64_s
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
    call $~lib/map/Map<u32,i32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $3
   local.get $3
   block (result i32)
    local.get $0
    local.get $0
    i32.load offset=16
    local.tee $6
    i32.const 1
    i32.add
    i32.store offset=16
    local.get $6
   end
   block $~lib/map/ENTRY_SIZE<u32,i32>|inlined.5 (result i32)
    i32.const 12
   end
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   i32.store
   local.get $5
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $6
   local.get $5
   local.get $6
   i32.load
   i32.store offset=8
   local.get $6
   local.get $5
   i32.store
  end
 )
 (func $~lib/map/Map<u32,i32>#get (; 66 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u32>|inlined.3 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<u32>|inlined.3
  end
  call $~lib/map/Map<u32,i32>#find
  local.set $3
  local.get $3
  if (result i32)
   local.get $3
   i32.load offset=4
  else   
   unreachable
  end
 )
 (func $~lib/map/Map<u32,i32>#get:size (; 67 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<u32,i32>#delete (; 68 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u32>|inlined.4 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<u32>|inlined.4
  end
  call $~lib/map/Map<u32,i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $3
  local.get $3
  i32.load offset=8
  i32.const 1
  i32.or
  i32.store offset=8
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.set $4
  local.get $4
  i32.const 1
  i32.add
  i32.const 4
  local.tee $2
  local.get $0
  i32.load offset=20
  local.tee $5
  local.get $2
  local.get $5
  i32.gt_u
  select
  i32.ge_u
  local.tee $2
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   f64.convert_i32_s
   f64.const 0.75
   f64.mul
   i32.trunc_f64_s
   i32.lt_s
  else   
   local.get $2
  end
  if
   local.get $0
   local.get $4
   call $~lib/map/Map<u32,i32>#rehash
  end
  i32.const 1
 )
 (func $std/map/test<u32,i32> (; 69 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  call $~lib/map/Map<u32,i32>#constructor
  local.set $0
  block $break|0
   i32.const 0
   local.set $1
   loop $repeat|0
    local.get $1
    i32.const 100
    i32.lt_u
    i32.eqz
    br_if $break|0
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<u32,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 8
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     i32.const 10
     local.get $1
     i32.add
     call $~lib/map/Map<u32,i32>#set
     local.get $0
     local.get $1
     call $~lib/map/Map<u32,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 10
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<u32,i32>#get
     i32.const 10
     local.get $1
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 11
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<u32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 13
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i32.const 0
   local.set $1
   loop $repeat|1
    local.get $1
    i32.const 100
    i32.lt_u
    i32.eqz
    br_if $break|1
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<u32,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 17
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<u32,i32>#get
     i32.const 10
     local.get $1
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 18
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     i32.const 20
     local.get $1
     i32.add
     call $~lib/map/Map<u32,i32>#set
     local.get $0
     local.get $1
     call $~lib/map/Map<u32,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 20
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<u32,i32>#get
     i32.const 20
     local.get $1
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 21
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|1
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<u32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 23
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   i32.const 0
   local.set $1
   loop $repeat|2
    local.get $1
    i32.const 50
    i32.lt_u
    i32.eqz
    br_if $break|2
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<u32,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 27
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<u32,i32>#get
     i32.const 20
     local.get $1
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 28
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<u32,i32>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/map/Map<u32,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 30
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|2
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<u32,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 32
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   i32.const 0
   local.set $1
   loop $repeat|3
    local.get $1
    i32.const 50
    i32.lt_u
    i32.eqz
    br_if $break|3
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<u32,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 36
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     i32.const 10
     local.get $1
     i32.add
     call $~lib/map/Map<u32,i32>#set
     local.get $0
     local.get $1
     call $~lib/map/Map<u32,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 38
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<u32,i32>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/map/Map<u32,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 40
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|3
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<u32,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<u32,i32>#clear
  local.get $0
  call $~lib/map/Map<u32,i32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 46
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/map/Map<i64,i32>#clear (; 70 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.const 64
  call $~lib/arraybuffer/ArrayBuffer#constructor
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
 (func $~lib/map/Map<i64,i32>#constructor (; 71 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    block $~lib/runtime/REGISTER<Map<i64,i32>>|inlined.0 (result i32)
     i32.const 24
     call $~lib/runtime/ALLOCATE
     local.set $1
     local.get $1
     call $~lib/runtime/ASSERT_UNREGISTERED
     local.get $1
     global.get $~lib/runtime/HEADER_SIZE
     i32.sub
     i32.const 9
     i32.store
     local.get $1
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
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
  end
  call $~lib/map/Map<i64,i32>#clear
  local.get $0
 )
 (func $~lib/util/hash/hash64 (; 72 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.wrap_i64
  local.set $1
  local.get $0
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $2
  i32.const -2128831035
  local.set $3
  local.get $3
  local.get $1
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $3
  local.get $3
  local.get $1
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $3
  local.get $3
  local.get $1
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $3
  local.get $3
  local.get $1
  i32.const 24
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $3
  local.get $3
  local.get $2
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $3
  local.get $3
  local.get $2
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $3
  local.get $3
  local.get $2
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $3
  local.get $3
  local.get $2
  i32.const 24
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $3
  local.get $3
 )
 (func $~lib/map/Map<i64,i32>#find (; 73 ;) (type $FUNCSIG$iiji) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  block $break|0
   loop $continue|0
    local.get $3
    if
     block
      local.get $3
      i32.load offset=12
      i32.const 1
      i32.and
      i32.eqz
      local.tee $4
      if (result i32)
       local.get $3
       i64.load
       local.get $1
       i64.eq
      else       
       local.get $4
      end
      if
       local.get $3
       return
      end
      local.get $3
      i32.load offset=12
      i32.const 1
      i32.const -1
      i32.xor
      i32.and
      local.set $3
     end
     br $continue|0
    end
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<i64,i32>#has (; 74 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i64)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i64>|inlined.0 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<i64>|inlined.0
  end
  call $~lib/map/Map<i64,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<i64,i32>#rehash (; 75 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i64)
  (local $12 i32)
  (local $13 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  f64.convert_i32_s
  f64.const 2.6666666666666665
  f64.mul
  i32.trunc_f64_s
  local.set $4
  i32.const 0
  local.get $4
  block $~lib/map/ENTRY_SIZE<i64,i32>|inlined.1 (result i32)
   i32.const 16
  end
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  block $~lib/map/ENTRY_SIZE<i64,i32>|inlined.2 (result i32)
   i32.const 16
  end
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  block $break|0
   loop $continue|0
    local.get $6
    local.get $7
    i32.ne
    if
     block
      local.get $6
      local.set $9
      local.get $9
      i32.load offset=12
      i32.const 1
      i32.and
      i32.eqz
      if
       local.get $8
       local.set $10
       local.get $10
       local.get $9
       i64.load
       i64.store
       local.get $10
       local.get $9
       i32.load offset=8
       i32.store offset=8
       block $~lib/util/hash/HASH<i64>|inlined.2 (result i32)
        local.get $9
        i64.load
        local.set $11
        local.get $11
        call $~lib/util/hash/hash64
        br $~lib/util/hash/HASH<i64>|inlined.2
       end
       local.get $1
       i32.and
       local.set $12
       local.get $3
       local.get $12
       i32.const 4
       i32.mul
       i32.add
       local.set $13
       local.get $10
       local.get $13
       i32.load
       i32.store offset=12
       local.get $13
       local.get $8
       i32.store
       local.get $8
       block $~lib/map/ENTRY_SIZE<i64,i32>|inlined.3 (result i32)
        i32.const 16
       end
       i32.add
       local.set $8
      end
      local.get $6
      block $~lib/map/ENTRY_SIZE<i64,i32>|inlined.4 (result i32)
       i32.const 16
      end
      i32.add
      local.set $6
     end
     br $continue|0
    end
   end
  end
  local.get $0
  local.get $3
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $5
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<i64,i32>#set (; 76 ;) (type $FUNCSIG$viji) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/util/hash/HASH<i64>|inlined.1 (result i32)
   local.get $1
   local.set $3
   local.get $3
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<i64>|inlined.1
  end
  local.set $4
  local.get $0
  local.get $1
  local.get $4
  call $~lib/map/Map<i64,i32>#find
  local.set $5
  local.get $5
  if
   local.get $5
   local.get $2
   i32.store offset=8
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
    f64.convert_i32_s
    f64.const 0.75
    f64.mul
    i32.trunc_f64_s
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
    call $~lib/map/Map<i64,i32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $6
   local.get $6
   block (result i32)
    local.get $0
    local.get $0
    i32.load offset=16
    local.tee $7
    i32.const 1
    i32.add
    i32.store offset=16
    local.get $7
   end
   block $~lib/map/ENTRY_SIZE<i64,i32>|inlined.5 (result i32)
    i32.const 16
   end
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   i64.store
   local.get $5
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $7
   local.get $5
   local.get $7
   i32.load
   i32.store offset=12
   local.get $7
   local.get $5
   i32.store
  end
 )
 (func $~lib/map/Map<i64,i32>#get (; 77 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i64)
  (local $3 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i64>|inlined.3 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<i64>|inlined.3
  end
  call $~lib/map/Map<i64,i32>#find
  local.set $3
  local.get $3
  if (result i32)
   local.get $3
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $~lib/map/Map<i64,i32>#get:size (; 78 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<i64,i32>#delete (; 79 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i64>|inlined.4 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<i64>|inlined.4
  end
  call $~lib/map/Map<i64,i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $3
  local.get $3
  i32.load offset=12
  i32.const 1
  i32.or
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.set $4
  local.get $4
  i32.const 1
  i32.add
  i32.const 4
  local.tee $5
  local.get $0
  i32.load offset=20
  local.tee $6
  local.get $5
  local.get $6
  i32.gt_u
  select
  i32.ge_u
  local.tee $5
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   f64.convert_i32_s
   f64.const 0.75
   f64.mul
   i32.trunc_f64_s
   i32.lt_s
  else   
   local.get $5
  end
  if
   local.get $0
   local.get $4
   call $~lib/map/Map<i64,i32>#rehash
  end
  i32.const 1
 )
 (func $std/map/test<i64,i32> (; 80 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i64)
  i32.const 0
  call $~lib/map/Map<i64,i32>#constructor
  local.set $0
  block $break|0
   i64.const 0
   local.set $1
   loop $repeat|0
    local.get $1
    i64.const 100
    i64.lt_s
    i32.eqz
    br_if $break|0
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<i64,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 8
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     i32.const 10
     local.get $1
     i32.wrap_i64
     i32.add
     call $~lib/map/Map<i64,i32>#set
     local.get $0
     local.get $1
     call $~lib/map/Map<i64,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 10
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<i64,i32>#get
     i32.const 10
     local.get $1
     i32.wrap_i64
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 11
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i64.const 1
    i64.add
    local.set $1
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<i64,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 13
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i64.const 0
   local.set $1
   loop $repeat|1
    local.get $1
    i64.const 100
    i64.lt_s
    i32.eqz
    br_if $break|1
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<i64,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 17
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<i64,i32>#get
     i32.const 10
     local.get $1
     i32.wrap_i64
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 18
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     i32.const 20
     local.get $1
     i32.wrap_i64
     i32.add
     call $~lib/map/Map<i64,i32>#set
     local.get $0
     local.get $1
     call $~lib/map/Map<i64,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 20
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<i64,i32>#get
     i32.const 20
     local.get $1
     i32.wrap_i64
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 21
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i64.const 1
    i64.add
    local.set $1
    br $repeat|1
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<i64,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 23
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   i64.const 0
   local.set $1
   loop $repeat|2
    local.get $1
    i64.const 50
    i64.lt_s
    i32.eqz
    br_if $break|2
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<i64,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 27
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<i64,i32>#get
     i32.const 20
     local.get $1
     i32.wrap_i64
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 28
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<i64,i32>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/map/Map<i64,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 30
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i64.const 1
    i64.add
    local.set $1
    br $repeat|2
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<i64,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 32
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   i64.const 0
   local.set $1
   loop $repeat|3
    local.get $1
    i64.const 50
    i64.lt_s
    i32.eqz
    br_if $break|3
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<i64,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 36
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     i32.const 10
     local.get $1
     i32.wrap_i64
     i32.add
     call $~lib/map/Map<i64,i32>#set
     local.get $0
     local.get $1
     call $~lib/map/Map<i64,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 38
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<i64,i32>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/map/Map<i64,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 40
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i64.const 1
    i64.add
    local.set $1
    br $repeat|3
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<i64,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<i64,i32>#clear
  local.get $0
  call $~lib/map/Map<i64,i32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 46
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/map/Map<u64,i32>#clear (; 81 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.const 64
  call $~lib/arraybuffer/ArrayBuffer#constructor
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
 (func $~lib/map/Map<u64,i32>#constructor (; 82 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    block $~lib/runtime/REGISTER<Map<u64,i32>>|inlined.0 (result i32)
     i32.const 24
     call $~lib/runtime/ALLOCATE
     local.set $1
     local.get $1
     call $~lib/runtime/ASSERT_UNREGISTERED
     local.get $1
     global.get $~lib/runtime/HEADER_SIZE
     i32.sub
     i32.const 10
     i32.store
     local.get $1
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
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
  end
  call $~lib/map/Map<u64,i32>#clear
  local.get $0
 )
 (func $~lib/map/Map<u64,i32>#find (; 83 ;) (type $FUNCSIG$iiji) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  block $break|0
   loop $continue|0
    local.get $3
    if
     block
      local.get $3
      i32.load offset=12
      i32.const 1
      i32.and
      i32.eqz
      local.tee $4
      if (result i32)
       local.get $3
       i64.load
       local.get $1
       i64.eq
      else       
       local.get $4
      end
      if
       local.get $3
       return
      end
      local.get $3
      i32.load offset=12
      i32.const 1
      i32.const -1
      i32.xor
      i32.and
      local.set $3
     end
     br $continue|0
    end
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<u64,i32>#has (; 84 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i64)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u64>|inlined.0 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<u64>|inlined.0
  end
  call $~lib/map/Map<u64,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<u64,i32>#rehash (; 85 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i64)
  (local $12 i32)
  (local $13 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  f64.convert_i32_s
  f64.const 2.6666666666666665
  f64.mul
  i32.trunc_f64_s
  local.set $4
  i32.const 0
  local.get $4
  block $~lib/map/ENTRY_SIZE<u64,i32>|inlined.1 (result i32)
   i32.const 16
  end
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  block $~lib/map/ENTRY_SIZE<u64,i32>|inlined.2 (result i32)
   i32.const 16
  end
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  block $break|0
   loop $continue|0
    local.get $6
    local.get $7
    i32.ne
    if
     block
      local.get $6
      local.set $9
      local.get $9
      i32.load offset=12
      i32.const 1
      i32.and
      i32.eqz
      if
       local.get $8
       local.set $10
       local.get $10
       local.get $9
       i64.load
       i64.store
       local.get $10
       local.get $9
       i32.load offset=8
       i32.store offset=8
       block $~lib/util/hash/HASH<u64>|inlined.2 (result i32)
        local.get $9
        i64.load
        local.set $11
        local.get $11
        call $~lib/util/hash/hash64
        br $~lib/util/hash/HASH<u64>|inlined.2
       end
       local.get $1
       i32.and
       local.set $12
       local.get $3
       local.get $12
       i32.const 4
       i32.mul
       i32.add
       local.set $13
       local.get $10
       local.get $13
       i32.load
       i32.store offset=12
       local.get $13
       local.get $8
       i32.store
       local.get $8
       block $~lib/map/ENTRY_SIZE<u64,i32>|inlined.3 (result i32)
        i32.const 16
       end
       i32.add
       local.set $8
      end
      local.get $6
      block $~lib/map/ENTRY_SIZE<u64,i32>|inlined.4 (result i32)
       i32.const 16
      end
      i32.add
      local.set $6
     end
     br $continue|0
    end
   end
  end
  local.get $0
  local.get $3
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $5
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<u64,i32>#set (; 86 ;) (type $FUNCSIG$viji) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/util/hash/HASH<u64>|inlined.1 (result i32)
   local.get $1
   local.set $3
   local.get $3
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<u64>|inlined.1
  end
  local.set $4
  local.get $0
  local.get $1
  local.get $4
  call $~lib/map/Map<u64,i32>#find
  local.set $5
  local.get $5
  if
   local.get $5
   local.get $2
   i32.store offset=8
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
    f64.convert_i32_s
    f64.const 0.75
    f64.mul
    i32.trunc_f64_s
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
    call $~lib/map/Map<u64,i32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $6
   local.get $6
   block (result i32)
    local.get $0
    local.get $0
    i32.load offset=16
    local.tee $7
    i32.const 1
    i32.add
    i32.store offset=16
    local.get $7
   end
   block $~lib/map/ENTRY_SIZE<u64,i32>|inlined.5 (result i32)
    i32.const 16
   end
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   i64.store
   local.get $5
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $7
   local.get $5
   local.get $7
   i32.load
   i32.store offset=12
   local.get $7
   local.get $5
   i32.store
  end
 )
 (func $~lib/map/Map<u64,i32>#get (; 87 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i64)
  (local $3 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u64>|inlined.3 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<u64>|inlined.3
  end
  call $~lib/map/Map<u64,i32>#find
  local.set $3
  local.get $3
  if (result i32)
   local.get $3
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $~lib/map/Map<u64,i32>#get:size (; 88 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<u64,i32>#delete (; 89 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u64>|inlined.4 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<u64>|inlined.4
  end
  call $~lib/map/Map<u64,i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $3
  local.get $3
  i32.load offset=12
  i32.const 1
  i32.or
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.set $4
  local.get $4
  i32.const 1
  i32.add
  i32.const 4
  local.tee $5
  local.get $0
  i32.load offset=20
  local.tee $6
  local.get $5
  local.get $6
  i32.gt_u
  select
  i32.ge_u
  local.tee $5
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   f64.convert_i32_s
   f64.const 0.75
   f64.mul
   i32.trunc_f64_s
   i32.lt_s
  else   
   local.get $5
  end
  if
   local.get $0
   local.get $4
   call $~lib/map/Map<u64,i32>#rehash
  end
  i32.const 1
 )
 (func $std/map/test<u64,i32> (; 90 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i64)
  i32.const 0
  call $~lib/map/Map<u64,i32>#constructor
  local.set $0
  block $break|0
   i64.const 0
   local.set $1
   loop $repeat|0
    local.get $1
    i64.const 100
    i64.lt_u
    i32.eqz
    br_if $break|0
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<u64,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 8
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     i32.const 10
     local.get $1
     i32.wrap_i64
     i32.add
     call $~lib/map/Map<u64,i32>#set
     local.get $0
     local.get $1
     call $~lib/map/Map<u64,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 10
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<u64,i32>#get
     i32.const 10
     local.get $1
     i32.wrap_i64
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 11
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i64.const 1
    i64.add
    local.set $1
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<u64,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 13
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i64.const 0
   local.set $1
   loop $repeat|1
    local.get $1
    i64.const 100
    i64.lt_u
    i32.eqz
    br_if $break|1
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<u64,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 17
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<u64,i32>#get
     i32.const 10
     local.get $1
     i32.wrap_i64
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 18
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     i32.const 20
     local.get $1
     i32.wrap_i64
     i32.add
     call $~lib/map/Map<u64,i32>#set
     local.get $0
     local.get $1
     call $~lib/map/Map<u64,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 20
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<u64,i32>#get
     i32.const 20
     local.get $1
     i32.wrap_i64
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 21
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i64.const 1
    i64.add
    local.set $1
    br $repeat|1
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<u64,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 23
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   i64.const 0
   local.set $1
   loop $repeat|2
    local.get $1
    i64.const 50
    i64.lt_u
    i32.eqz
    br_if $break|2
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<u64,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 27
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<u64,i32>#get
     i32.const 20
     local.get $1
     i32.wrap_i64
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 28
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<u64,i32>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/map/Map<u64,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 30
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i64.const 1
    i64.add
    local.set $1
    br $repeat|2
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<u64,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 32
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   i64.const 0
   local.set $1
   loop $repeat|3
    local.get $1
    i64.const 50
    i64.lt_u
    i32.eqz
    br_if $break|3
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<u64,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 36
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     i32.const 10
     local.get $1
     i32.wrap_i64
     i32.add
     call $~lib/map/Map<u64,i32>#set
     local.get $0
     local.get $1
     call $~lib/map/Map<u64,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 38
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<u64,i32>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/map/Map<u64,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 40
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    i64.const 1
    i64.add
    local.set $1
    br $repeat|3
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<u64,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<u64,i32>#clear
  local.get $0
  call $~lib/map/Map<u64,i32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 46
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/map/Map<f32,i32>#clear (; 91 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
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
 (func $~lib/map/Map<f32,i32>#constructor (; 92 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    block $~lib/runtime/REGISTER<Map<f32,i32>>|inlined.0 (result i32)
     i32.const 24
     call $~lib/runtime/ALLOCATE
     local.set $1
     local.get $1
     call $~lib/runtime/ASSERT_UNREGISTERED
     local.get $1
     global.get $~lib/runtime/HEADER_SIZE
     i32.sub
     i32.const 11
     i32.store
     local.get $1
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
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
  end
  call $~lib/map/Map<f32,i32>#clear
  local.get $0
 )
 (func $~lib/map/Map<f32,i32>#find (; 93 ;) (type $FUNCSIG$iifi) (param $0 i32) (param $1 f32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  block $break|0
   loop $continue|0
    local.get $3
    if
     block
      local.get $3
      i32.load offset=8
      i32.const 1
      i32.and
      i32.eqz
      local.tee $4
      if (result i32)
       local.get $3
       f32.load
       local.get $1
       f32.eq
      else       
       local.get $4
      end
      if
       local.get $3
       return
      end
      local.get $3
      i32.load offset=8
      i32.const 1
      i32.const -1
      i32.xor
      i32.and
      local.set $3
     end
     br $continue|0
    end
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<f32,i32>#has (; 94 ;) (type $FUNCSIG$iif) (param $0 i32) (param $1 f32) (result i32)
  (local $2 f32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<f32>|inlined.0 (result i32)
   local.get $1
   local.set $2
   local.get $2
   i32.reinterpret_f32
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<f32>|inlined.0
  end
  call $~lib/map/Map<f32,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<f32,i32>#rehash (; 95 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 f32)
  (local $12 i32)
  (local $13 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  f64.convert_i32_s
  f64.const 2.6666666666666665
  f64.mul
  i32.trunc_f64_s
  local.set $4
  i32.const 0
  local.get $4
  block $~lib/map/ENTRY_SIZE<f32,i32>|inlined.1 (result i32)
   i32.const 12
  end
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  block $~lib/map/ENTRY_SIZE<f32,i32>|inlined.2 (result i32)
   i32.const 12
  end
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  block $break|0
   loop $continue|0
    local.get $6
    local.get $7
    i32.ne
    if
     block
      local.get $6
      local.set $9
      local.get $9
      i32.load offset=8
      i32.const 1
      i32.and
      i32.eqz
      if
       local.get $8
       local.set $10
       local.get $10
       local.get $9
       f32.load
       f32.store
       local.get $10
       local.get $9
       i32.load offset=4
       i32.store offset=4
       block $~lib/util/hash/HASH<f32>|inlined.2 (result i32)
        local.get $9
        f32.load
        local.set $11
        local.get $11
        i32.reinterpret_f32
        call $~lib/util/hash/hash32
        br $~lib/util/hash/HASH<f32>|inlined.2
       end
       local.get $1
       i32.and
       local.set $12
       local.get $3
       local.get $12
       i32.const 4
       i32.mul
       i32.add
       local.set $13
       local.get $10
       local.get $13
       i32.load
       i32.store offset=8
       local.get $13
       local.get $8
       i32.store
       local.get $8
       block $~lib/map/ENTRY_SIZE<f32,i32>|inlined.3 (result i32)
        i32.const 12
       end
       i32.add
       local.set $8
      end
      local.get $6
      block $~lib/map/ENTRY_SIZE<f32,i32>|inlined.4 (result i32)
       i32.const 12
      end
      i32.add
      local.set $6
     end
     br $continue|0
    end
   end
  end
  local.get $0
  local.get $3
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $5
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<f32,i32>#set (; 96 ;) (type $FUNCSIG$vifi) (param $0 i32) (param $1 f32) (param $2 i32)
  (local $3 f32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/util/hash/HASH<f32>|inlined.1 (result i32)
   local.get $1
   local.set $3
   local.get $3
   i32.reinterpret_f32
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<f32>|inlined.1
  end
  local.set $4
  local.get $0
  local.get $1
  local.get $4
  call $~lib/map/Map<f32,i32>#find
  local.set $5
  local.get $5
  if
   local.get $5
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
    f64.convert_i32_s
    f64.const 0.75
    f64.mul
    i32.trunc_f64_s
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
    call $~lib/map/Map<f32,i32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $6
   local.get $6
   block (result i32)
    local.get $0
    local.get $0
    i32.load offset=16
    local.tee $7
    i32.const 1
    i32.add
    i32.store offset=16
    local.get $7
   end
   block $~lib/map/ENTRY_SIZE<f32,i32>|inlined.5 (result i32)
    i32.const 12
   end
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   f32.store
   local.get $5
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $7
   local.get $5
   local.get $7
   i32.load
   i32.store offset=8
   local.get $7
   local.get $5
   i32.store
  end
 )
 (func $~lib/map/Map<f32,i32>#get (; 97 ;) (type $FUNCSIG$iif) (param $0 i32) (param $1 f32) (result i32)
  (local $2 f32)
  (local $3 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<f32>|inlined.3 (result i32)
   local.get $1
   local.set $2
   local.get $2
   i32.reinterpret_f32
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<f32>|inlined.3
  end
  call $~lib/map/Map<f32,i32>#find
  local.set $3
  local.get $3
  if (result i32)
   local.get $3
   i32.load offset=4
  else   
   unreachable
  end
 )
 (func $~lib/map/Map<f32,i32>#get:size (; 98 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<f32,i32>#delete (; 99 ;) (type $FUNCSIG$iif) (param $0 i32) (param $1 f32) (result i32)
  (local $2 f32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<f32>|inlined.4 (result i32)
   local.get $1
   local.set $2
   local.get $2
   i32.reinterpret_f32
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<f32>|inlined.4
  end
  call $~lib/map/Map<f32,i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $3
  local.get $3
  i32.load offset=8
  i32.const 1
  i32.or
  i32.store offset=8
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.set $4
  local.get $4
  i32.const 1
  i32.add
  i32.const 4
  local.tee $5
  local.get $0
  i32.load offset=20
  local.tee $6
  local.get $5
  local.get $6
  i32.gt_u
  select
  i32.ge_u
  local.tee $5
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   f64.convert_i32_s
   f64.const 0.75
   f64.mul
   i32.trunc_f64_s
   i32.lt_s
  else   
   local.get $5
  end
  if
   local.get $0
   local.get $4
   call $~lib/map/Map<f32,i32>#rehash
  end
  i32.const 1
 )
 (func $std/map/test<f32,i32> (; 100 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 f32)
  i32.const 0
  call $~lib/map/Map<f32,i32>#constructor
  local.set $0
  block $break|0
   f32.const 0
   local.set $1
   loop $repeat|0
    local.get $1
    f32.const 100
    f32.lt
    i32.eqz
    br_if $break|0
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<f32,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 8
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     i32.const 10
     local.get $1
     i32.trunc_f32_s
     i32.add
     call $~lib/map/Map<f32,i32>#set
     local.get $0
     local.get $1
     call $~lib/map/Map<f32,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 10
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<f32,i32>#get
     i32.const 10
     local.get $1
     i32.trunc_f32_s
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 11
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    f32.const 1
    f32.add
    local.set $1
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<f32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 13
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   f32.const 0
   local.set $1
   loop $repeat|1
    local.get $1
    f32.const 100
    f32.lt
    i32.eqz
    br_if $break|1
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<f32,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 17
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<f32,i32>#get
     i32.const 10
     local.get $1
     i32.trunc_f32_s
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 18
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     i32.const 20
     local.get $1
     i32.trunc_f32_s
     i32.add
     call $~lib/map/Map<f32,i32>#set
     local.get $0
     local.get $1
     call $~lib/map/Map<f32,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 20
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<f32,i32>#get
     i32.const 20
     local.get $1
     i32.trunc_f32_s
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 21
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    f32.const 1
    f32.add
    local.set $1
    br $repeat|1
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<f32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 23
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   f32.const 0
   local.set $1
   loop $repeat|2
    local.get $1
    f32.const 50
    f32.lt
    i32.eqz
    br_if $break|2
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<f32,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 27
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<f32,i32>#get
     i32.const 20
     local.get $1
     i32.trunc_f32_s
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 28
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<f32,i32>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/map/Map<f32,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 30
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    f32.const 1
    f32.add
    local.set $1
    br $repeat|2
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<f32,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 32
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   f32.const 0
   local.set $1
   loop $repeat|3
    local.get $1
    f32.const 50
    f32.lt
    i32.eqz
    br_if $break|3
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<f32,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 36
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     i32.const 10
     local.get $1
     i32.trunc_f32_s
     i32.add
     call $~lib/map/Map<f32,i32>#set
     local.get $0
     local.get $1
     call $~lib/map/Map<f32,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 38
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<f32,i32>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/map/Map<f32,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 40
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    f32.const 1
    f32.add
    local.set $1
    br $repeat|3
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<f32,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<f32,i32>#clear
  local.get $0
  call $~lib/map/Map<f32,i32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 46
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/map/Map<f64,i32>#clear (; 101 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.const 64
  call $~lib/arraybuffer/ArrayBuffer#constructor
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
 (func $~lib/map/Map<f64,i32>#constructor (; 102 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    block $~lib/runtime/REGISTER<Map<f64,i32>>|inlined.0 (result i32)
     i32.const 24
     call $~lib/runtime/ALLOCATE
     local.set $1
     local.get $1
     call $~lib/runtime/ASSERT_UNREGISTERED
     local.get $1
     global.get $~lib/runtime/HEADER_SIZE
     i32.sub
     i32.const 12
     i32.store
     local.get $1
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
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
  end
  call $~lib/map/Map<f64,i32>#clear
  local.get $0
 )
 (func $~lib/map/Map<f64,i32>#find (; 103 ;) (type $FUNCSIG$iidi) (param $0 i32) (param $1 f64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  block $break|0
   loop $continue|0
    local.get $3
    if
     block
      local.get $3
      i32.load offset=12
      i32.const 1
      i32.and
      i32.eqz
      local.tee $4
      if (result i32)
       local.get $3
       f64.load
       local.get $1
       f64.eq
      else       
       local.get $4
      end
      if
       local.get $3
       return
      end
      local.get $3
      i32.load offset=12
      i32.const 1
      i32.const -1
      i32.xor
      i32.and
      local.set $3
     end
     br $continue|0
    end
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<f64,i32>#has (; 104 ;) (type $FUNCSIG$iid) (param $0 i32) (param $1 f64) (result i32)
  (local $2 f64)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<f64>|inlined.0 (result i32)
   local.get $1
   local.set $2
   local.get $2
   i64.reinterpret_f64
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<f64>|inlined.0
  end
  call $~lib/map/Map<f64,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<f64,i32>#rehash (; 105 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 f64)
  (local $12 i32)
  (local $13 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  f64.convert_i32_s
  f64.const 2.6666666666666665
  f64.mul
  i32.trunc_f64_s
  local.set $4
  i32.const 0
  local.get $4
  block $~lib/map/ENTRY_SIZE<f64,i32>|inlined.1 (result i32)
   i32.const 16
  end
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  block $~lib/map/ENTRY_SIZE<f64,i32>|inlined.2 (result i32)
   i32.const 16
  end
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  block $break|0
   loop $continue|0
    local.get $6
    local.get $7
    i32.ne
    if
     block
      local.get $6
      local.set $9
      local.get $9
      i32.load offset=12
      i32.const 1
      i32.and
      i32.eqz
      if
       local.get $8
       local.set $10
       local.get $10
       local.get $9
       f64.load
       f64.store
       local.get $10
       local.get $9
       i32.load offset=8
       i32.store offset=8
       block $~lib/util/hash/HASH<f64>|inlined.2 (result i32)
        local.get $9
        f64.load
        local.set $11
        local.get $11
        i64.reinterpret_f64
        call $~lib/util/hash/hash64
        br $~lib/util/hash/HASH<f64>|inlined.2
       end
       local.get $1
       i32.and
       local.set $12
       local.get $3
       local.get $12
       i32.const 4
       i32.mul
       i32.add
       local.set $13
       local.get $10
       local.get $13
       i32.load
       i32.store offset=12
       local.get $13
       local.get $8
       i32.store
       local.get $8
       block $~lib/map/ENTRY_SIZE<f64,i32>|inlined.3 (result i32)
        i32.const 16
       end
       i32.add
       local.set $8
      end
      local.get $6
      block $~lib/map/ENTRY_SIZE<f64,i32>|inlined.4 (result i32)
       i32.const 16
      end
      i32.add
      local.set $6
     end
     br $continue|0
    end
   end
  end
  local.get $0
  local.get $3
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $5
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<f64,i32>#set (; 106 ;) (type $FUNCSIG$vidi) (param $0 i32) (param $1 f64) (param $2 i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/util/hash/HASH<f64>|inlined.1 (result i32)
   local.get $1
   local.set $3
   local.get $3
   i64.reinterpret_f64
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<f64>|inlined.1
  end
  local.set $4
  local.get $0
  local.get $1
  local.get $4
  call $~lib/map/Map<f64,i32>#find
  local.set $5
  local.get $5
  if
   local.get $5
   local.get $2
   i32.store offset=8
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
    f64.convert_i32_s
    f64.const 0.75
    f64.mul
    i32.trunc_f64_s
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
    call $~lib/map/Map<f64,i32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $6
   local.get $6
   block (result i32)
    local.get $0
    local.get $0
    i32.load offset=16
    local.tee $7
    i32.const 1
    i32.add
    i32.store offset=16
    local.get $7
   end
   block $~lib/map/ENTRY_SIZE<f64,i32>|inlined.5 (result i32)
    i32.const 16
   end
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   f64.store
   local.get $5
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $7
   local.get $5
   local.get $7
   i32.load
   i32.store offset=12
   local.get $7
   local.get $5
   i32.store
  end
 )
 (func $~lib/map/Map<f64,i32>#get (; 107 ;) (type $FUNCSIG$iid) (param $0 i32) (param $1 f64) (result i32)
  (local $2 f64)
  (local $3 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<f64>|inlined.3 (result i32)
   local.get $1
   local.set $2
   local.get $2
   i64.reinterpret_f64
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<f64>|inlined.3
  end
  call $~lib/map/Map<f64,i32>#find
  local.set $3
  local.get $3
  if (result i32)
   local.get $3
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $~lib/map/Map<f64,i32>#get:size (; 108 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<f64,i32>#delete (; 109 ;) (type $FUNCSIG$iid) (param $0 i32) (param $1 f64) (result i32)
  (local $2 f64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<f64>|inlined.4 (result i32)
   local.get $1
   local.set $2
   local.get $2
   i64.reinterpret_f64
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<f64>|inlined.4
  end
  call $~lib/map/Map<f64,i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $3
  local.get $3
  i32.load offset=12
  i32.const 1
  i32.or
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.set $4
  local.get $4
  i32.const 1
  i32.add
  i32.const 4
  local.tee $5
  local.get $0
  i32.load offset=20
  local.tee $6
  local.get $5
  local.get $6
  i32.gt_u
  select
  i32.ge_u
  local.tee $5
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   f64.convert_i32_s
   f64.const 0.75
   f64.mul
   i32.trunc_f64_s
   i32.lt_s
  else   
   local.get $5
  end
  if
   local.get $0
   local.get $4
   call $~lib/map/Map<f64,i32>#rehash
  end
  i32.const 1
 )
 (func $std/map/test<f64,i32> (; 110 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 f64)
  i32.const 0
  call $~lib/map/Map<f64,i32>#constructor
  local.set $0
  block $break|0
   f64.const 0
   local.set $1
   loop $repeat|0
    local.get $1
    f64.const 100
    f64.lt
    i32.eqz
    br_if $break|0
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<f64,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 8
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     i32.const 10
     local.get $1
     i32.trunc_f64_s
     i32.add
     call $~lib/map/Map<f64,i32>#set
     local.get $0
     local.get $1
     call $~lib/map/Map<f64,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 10
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<f64,i32>#get
     i32.const 10
     local.get $1
     i32.trunc_f64_s
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 11
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    f64.const 1
    f64.add
    local.set $1
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<f64,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 13
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   f64.const 0
   local.set $1
   loop $repeat|1
    local.get $1
    f64.const 100
    f64.lt
    i32.eqz
    br_if $break|1
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<f64,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 17
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<f64,i32>#get
     i32.const 10
     local.get $1
     i32.trunc_f64_s
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 18
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     i32.const 20
     local.get $1
     i32.trunc_f64_s
     i32.add
     call $~lib/map/Map<f64,i32>#set
     local.get $0
     local.get $1
     call $~lib/map/Map<f64,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 20
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<f64,i32>#get
     i32.const 20
     local.get $1
     i32.trunc_f64_s
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 21
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    f64.const 1
    f64.add
    local.set $1
    br $repeat|1
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<f64,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 23
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   f64.const 0
   local.set $1
   loop $repeat|2
    local.get $1
    f64.const 50
    f64.lt
    i32.eqz
    br_if $break|2
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<f64,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 27
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<f64,i32>#get
     i32.const 20
     local.get $1
     i32.trunc_f64_s
     i32.add
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 28
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<f64,i32>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/map/Map<f64,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 30
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    f64.const 1
    f64.add
    local.set $1
    br $repeat|2
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<f64,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 32
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   f64.const 0
   local.set $1
   loop $repeat|3
    local.get $1
    f64.const 50
    f64.lt
    i32.eqz
    br_if $break|3
    block
     local.get $0
     local.get $1
     call $~lib/map/Map<f64,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 36
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     i32.const 10
     local.get $1
     i32.trunc_f64_s
     i32.add
     call $~lib/map/Map<f64,i32>#set
     local.get $0
     local.get $1
     call $~lib/map/Map<f64,i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 38
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<f64,i32>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/map/Map<f64,i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 104
      i32.const 40
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $1
    f64.const 1
    f64.add
    local.set $1
    br $repeat|3
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/map/Map<f64,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<f64,i32>#clear
  local.get $0
  call $~lib/map/Map<f64,i32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 46
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start:std/map (; 111 ;) (type $FUNCSIG$v)
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
  call $std/map/test<i8,i32>
  call $std/map/test<u8,i32>
  call $std/map/test<i16,i32>
  call $std/map/test<u16,i32>
  call $std/map/test<i32,i32>
  call $std/map/test<u32,i32>
  call $std/map/test<i64,i32>
  call $std/map/test<u64,i32>
  call $std/map/test<f32,i32>
  call $std/map/test<f64,i32>
 )
 (func $start (; 112 ;) (type $FUNCSIG$v)
  call $start:std/map
 )
 (func $null (; 113 ;) (type $FUNCSIG$v)
 )
)
