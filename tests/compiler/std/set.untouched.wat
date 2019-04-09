(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$iij (func (param i32 i64) (result i32)))
 (type $FUNCSIG$ij (func (param i64) (result i32)))
 (type $FUNCSIG$iiji (func (param i32 i64 i32) (result i32)))
 (type $FUNCSIG$vij (func (param i32 i64)))
 (type $FUNCSIG$iif (func (param i32 f32) (result i32)))
 (type $FUNCSIG$iifi (func (param i32 f32 i32) (result i32)))
 (type $FUNCSIG$vif (func (param i32 f32)))
 (type $FUNCSIG$iid (func (param i32 f64) (result i32)))
 (type $FUNCSIG$iidi (func (param i32 f64 i32) (result i32)))
 (type $FUNCSIG$vid (func (param i32 f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00(\00\00\00\00\00\00\00\00\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s\00")
 (data (i32.const 64) "\10\00\00\00&\00\00\00\00\00\00\00\00\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 120) "\10\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00s\00t\00d\00/\00s\00e\00t\00.\00t\00s\00")
 (data (i32.const 160) "\1c\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\1a\00\00\00\00\00\00\00\1a\00\00\00\00\00\00\00*\00\00\00\00\00\00\00*\00\00\00\00\00\00\00J\00\00\00\00\00\00\00J\00\00\00\00\00\00\00\8a\00\00\00\00\00\00\00\8a\00\00\00\00\00\00\00J\00\00\00\00\00\00\00\8a\00\00\00\00\00\00\00I\00\00\00\0e\00\00\00\08\00\00\00\00\00\00\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/util/runtime/HEADER_SIZE i32 (i32.const 16))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/util/runtime/HEADER_MAGIC i32 (i32.const -1520547049))
 (global $~lib/ASC_NO_ASSERT i32 (i32.const 0))
 (global $~lib/util/runtime/MAX_BYTELENGTH i32 (i32.const 1073741808))
 (global $~lib/runtime/ROOT (mut i32) (i32.const 0))
 (global $~lib/runtime/RTTI_BASE i32 (i32.const 160))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 392))
 (export "memory" (memory $0))
 (export "$.instanceof" (func $~lib/runtime/runtime.instanceof))
 (export "$.flags" (func $~lib/runtime/runtime.flags))
 (export "$.newObject" (func $~lib/runtime/runtime.newObject))
 (export "$.newString" (func $~lib/runtime/runtime.newString))
 (export "$.newArrayBuffer" (func $~lib/runtime/runtime.newArrayBuffer))
 (export "$.newArray" (func $~lib/runtime/runtime.newArray))
 (export "$.retain" (func $~lib/runtime/runtime.retain))
 (export "$.release" (func $~lib/runtime/runtime.release))
 (export "$.collect" (func $~lib/runtime/runtime.collect))
 (start $start)
 (func $~lib/util/runtime/adjust (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 1
  i32.const 32
  local.get $0
  global.get $~lib/util/runtime/HEADER_SIZE
  i32.add
  i32.const 1
  i32.sub
  i32.clz
  i32.sub
  i32.shl
 )
 (func $~lib/allocator/arena/__mem_allocate (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741824
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/allocator/arena/offset
  local.set $1
  local.get $1
  local.get $0
  local.tee $2
  i32.const 1
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.add
  i32.const 7
  i32.add
  i32.const 7
  i32.const -1
  i32.xor
  i32.and
  local.set $4
  current_memory
  local.set $5
  local.get $4
  local.get $5
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $4
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $2
   local.get $5
   local.tee $3
   local.get $2
   local.tee $6
   local.get $3
   local.get $6
   i32.gt_s
   select
   local.set $3
   local.get $3
   grow_memory
   i32.const 0
   i32.lt_s
   if
    local.get $2
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $4
  global.set $~lib/allocator/arena/offset
  local.get $1
 )
 (func $~lib/memory/memory.allocate (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/allocator/arena/__mem_allocate
  return
 )
 (func $~lib/util/runtime/allocate (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/util/runtime/adjust
  call $~lib/memory/memory.allocate
  local.set $1
  local.get $1
  global.get $~lib/util/runtime/HEADER_MAGIC
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $1
  global.get $~lib/util/runtime/HEADER_SIZE
  i32.add
 )
 (func $~lib/collector/dummy/__ref_register (; 5 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/util/runtime/register (; 6 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  global.get $~lib/memory/HEAP_BASE
  i32.gt_u
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 129
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  global.get $~lib/util/runtime/HEADER_SIZE
  i32.sub
  local.set $2
  local.get $2
  i32.load
  global.get $~lib/util/runtime/HEADER_MAGIC
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 131
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.store
  local.get $0
  call $~lib/collector/dummy/__ref_register
  local.get $0
 )
 (func $~lib/memory/memory.fill (; 7 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
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
   local.set $5
   local.get $0
   local.get $5
   i32.add
   local.set $0
   local.get $2
   local.get $5
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
   local.set $5
   local.get $0
   local.get $5
   i32.add
   local.set $0
   local.get $2
   local.get $5
   i32.sub
   local.set $2
   local.get $4
   i64.extend_i32_u
   local.get $4
   i64.extend_i32_u
   i64.const 32
   i64.shl
   i64.or
   local.set $6
   block $break|0
    loop $continue|0
     local.get $2
     i32.const 32
     i32.ge_u
     if
      block
       local.get $0
       local.get $6
       i64.store
       local.get $0
       i32.const 8
       i32.add
       local.get $6
       i64.store
       local.get $0
       i32.const 16
       i32.add
       local.get $6
       i64.store
       local.get $0
       i32.const 24
       i32.add
       local.get $6
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
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 8 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  global.get $~lib/util/runtime/MAX_BYTELENGTH
  i32.gt_u
  if
   i32.const 0
   i32.const 80
   i32.const 54
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/util/runtime/allocate
  local.set $2
  local.get $2
  i32.const 0
  local.get $1
  call $~lib/memory/memory.fill
  local.get $2
  i32.const 15
  call $~lib/util/runtime/register
 )
 (func $~lib/collector/dummy/__ref_link (; 9 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/collector/dummy/__ref_unlink (; 10 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/set/Set<i8>#clear (; 11 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $2
  local.get $1
  i32.load
  local.tee $3
  i32.ne
  if (result i32)
   local.get $3
   if
    local.get $3
    local.get $1
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $2
   local.get $1
   call $~lib/collector/dummy/__ref_link
   local.get $2
  else   
   local.get $2
  end
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 32
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $3
  local.get $1
  i32.load offset=8
  local.tee $2
  i32.ne
  if (result i32)
   local.get $2
   if
    local.get $2
    local.get $1
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $3
   local.get $1
   call $~lib/collector/dummy/__ref_link
   local.get $3
  else   
   local.get $3
  end
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
 (func $~lib/set/Set<i8>#constructor (; 12 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 24
    call $~lib/util/runtime/allocate
    i32.const 17
    call $~lib/util/runtime/register
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
  call $~lib/set/Set<i8>#clear
  local.get $0
 )
 (func $~lib/util/hash/hash8 (; 13 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const -2128831035
  local.get $0
  i32.xor
  i32.const 16777619
  i32.mul
 )
 (func $~lib/set/Set<i8>#find (; 14 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
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
      i32.load offset=4
      i32.const 1
      i32.and
      i32.eqz
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
       i32.const 0
      end
      if
       local.get $3
       return
      end
      local.get $3
      i32.load offset=4
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
 (func $~lib/set/Set<i8>#has (; 15 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/set/Set<i8>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<i8>#rehash (; 16 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
  block $~lib/set/ENTRY_SIZE<i8>|inlined.1 (result i32)
   i32.const 8
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
  block $~lib/set/ENTRY_SIZE<i8>|inlined.2 (result i32)
   i32.const 8
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
      i32.load offset=4
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
       i32.store offset=4
       local.get $12
       local.get $8
       i32.store
       local.get $8
       block $~lib/set/ENTRY_SIZE<i8>|inlined.3 (result i32)
        i32.const 8
       end
       i32.add
       local.set $8
      end
      local.get $6
      block $~lib/set/ENTRY_SIZE<i8>|inlined.4 (result i32)
       i32.const 8
      end
      i32.add
      local.set $6
     end
     br $continue|0
    end
   end
  end
  local.get $0
  local.tee $9
  local.get $3
  local.tee $12
  local.get $9
  i32.load
  local.tee $11
  i32.ne
  if (result i32)
   local.get $11
   if
    local.get $11
    local.get $9
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $12
   local.get $9
   call $~lib/collector/dummy/__ref_link
   local.get $12
  else   
   local.get $12
  end
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $9
  local.get $5
  local.tee $11
  local.get $9
  i32.load offset=8
  local.tee $12
  i32.ne
  if (result i32)
   local.get $12
   if
    local.get $12
    local.get $9
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $11
   local.get $9
   call $~lib/collector/dummy/__ref_link
   local.get $11
  else   
   local.get $11
  end
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/set/Set<i8>#add (; 17 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/util/hash/HASH<i8>|inlined.1 (result i32)
   local.get $1
   local.set $2
   local.get $2
   i32.const 24
   i32.shl
   i32.const 24
   i32.shr_s
   call $~lib/util/hash/hash8
   br $~lib/util/hash/HASH<i8>|inlined.1
  end
  local.set $3
  local.get $0
  local.get $1
  local.get $3
  call $~lib/set/Set<i8>#find
  local.set $4
  local.get $4
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
    call $~lib/set/Set<i8>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $2
   local.get $2
   block (result i32)
    local.get $0
    local.get $0
    i32.load offset=16
    local.tee $5
    i32.const 1
    i32.add
    i32.store offset=16
    local.get $5
   end
   block $~lib/set/ENTRY_SIZE<i8>|inlined.5 (result i32)
    i32.const 8
   end
   i32.mul
   i32.add
   local.set $4
   local.get $4
   local.get $1
   i32.store8
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $3
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $5
   local.get $4
   local.get $5
   i32.load
   i32.store offset=4
   local.get $5
   local.get $4
   i32.store
  end
 )
 (func $~lib/set/Set<i8>#get:size (; 18 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/set/Set<i8>#delete (; 19 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
  call $~lib/set/Set<i8>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $3
  local.get $3
  i32.load offset=4
  i32.const 1
  i32.or
  i32.store offset=4
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
   i32.const 0
  end
  if
   local.get $0
   local.get $4
   call $~lib/set/Set<i8>#rehash
  end
  i32.const 1
 )
 (func $std/set/testNumeric<i8> (; 20 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  call $~lib/set/Set<i8>#constructor
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
     call $~lib/set/Set<i8>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 8
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i8>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<i8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 10
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<i8>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 12
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|1
   i32.const 50
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
     call $~lib/set/Set<i8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 16
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i8>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<i8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 18
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<i8>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 20
   i32.const 2
   call $~lib/builtins/abort
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
     call $~lib/set/Set<i8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 24
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i8>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<i8>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 26
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<i8>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 28
   i32.const 2
   call $~lib/builtins/abort
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
     call $~lib/set/Set<i8>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 32
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i8>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<i8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 34
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i8>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<i8>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 36
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<i8>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 38
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i8>#clear
  local.get $0
  call $~lib/set/Set<i8>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 42
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/set/Set<u8>#clear (; 21 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $2
  local.get $1
  i32.load
  local.tee $3
  i32.ne
  if (result i32)
   local.get $3
   if
    local.get $3
    local.get $1
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $2
   local.get $1
   call $~lib/collector/dummy/__ref_link
   local.get $2
  else   
   local.get $2
  end
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 32
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $3
  local.get $1
  i32.load offset=8
  local.tee $2
  i32.ne
  if (result i32)
   local.get $2
   if
    local.get $2
    local.get $1
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $3
   local.get $1
   call $~lib/collector/dummy/__ref_link
   local.get $3
  else   
   local.get $3
  end
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
 (func $~lib/set/Set<u8>#constructor (; 22 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 24
    call $~lib/util/runtime/allocate
    i32.const 18
    call $~lib/util/runtime/register
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
  call $~lib/set/Set<u8>#clear
  local.get $0
 )
 (func $~lib/set/Set<u8>#find (; 23 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
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
      i32.load offset=4
      i32.const 1
      i32.and
      i32.eqz
      if (result i32)
       local.get $3
       i32.load8_u
       local.get $1
       i32.const 255
       i32.and
       i32.eq
      else       
       i32.const 0
      end
      if
       local.get $3
       return
      end
      local.get $3
      i32.load offset=4
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
 (func $~lib/set/Set<u8>#has (; 24 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/set/Set<u8>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<u8>#rehash (; 25 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
  block $~lib/set/ENTRY_SIZE<u8>|inlined.1 (result i32)
   i32.const 8
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
  block $~lib/set/ENTRY_SIZE<u8>|inlined.2 (result i32)
   i32.const 8
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
      i32.load offset=4
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
       i32.store offset=4
       local.get $12
       local.get $8
       i32.store
       local.get $8
       block $~lib/set/ENTRY_SIZE<u8>|inlined.3 (result i32)
        i32.const 8
       end
       i32.add
       local.set $8
      end
      local.get $6
      block $~lib/set/ENTRY_SIZE<u8>|inlined.4 (result i32)
       i32.const 8
      end
      i32.add
      local.set $6
     end
     br $continue|0
    end
   end
  end
  local.get $0
  local.tee $9
  local.get $3
  local.tee $12
  local.get $9
  i32.load
  local.tee $11
  i32.ne
  if (result i32)
   local.get $11
   if
    local.get $11
    local.get $9
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $12
   local.get $9
   call $~lib/collector/dummy/__ref_link
   local.get $12
  else   
   local.get $12
  end
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $9
  local.get $5
  local.tee $11
  local.get $9
  i32.load offset=8
  local.tee $12
  i32.ne
  if (result i32)
   local.get $12
   if
    local.get $12
    local.get $9
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $11
   local.get $9
   call $~lib/collector/dummy/__ref_link
   local.get $11
  else   
   local.get $11
  end
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/set/Set<u8>#add (; 26 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/util/hash/HASH<u8>|inlined.1 (result i32)
   local.get $1
   local.set $2
   local.get $2
   i32.const 255
   i32.and
   call $~lib/util/hash/hash8
   br $~lib/util/hash/HASH<u8>|inlined.1
  end
  local.set $3
  local.get $0
  local.get $1
  local.get $3
  call $~lib/set/Set<u8>#find
  local.set $4
  local.get $4
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
    call $~lib/set/Set<u8>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $2
   local.get $2
   block (result i32)
    local.get $0
    local.get $0
    i32.load offset=16
    local.tee $5
    i32.const 1
    i32.add
    i32.store offset=16
    local.get $5
   end
   block $~lib/set/ENTRY_SIZE<u8>|inlined.5 (result i32)
    i32.const 8
   end
   i32.mul
   i32.add
   local.set $4
   local.get $4
   local.get $1
   i32.store8
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $3
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $5
   local.get $4
   local.get $5
   i32.load
   i32.store offset=4
   local.get $5
   local.get $4
   i32.store
  end
 )
 (func $~lib/set/Set<u8>#get:size (; 27 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/set/Set<u8>#delete (; 28 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
  call $~lib/set/Set<u8>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $3
  local.get $3
  i32.load offset=4
  i32.const 1
  i32.or
  i32.store offset=4
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
   i32.const 0
  end
  if
   local.get $0
   local.get $4
   call $~lib/set/Set<u8>#rehash
  end
  i32.const 1
 )
 (func $std/set/testNumeric<u8> (; 29 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  call $~lib/set/Set<u8>#constructor
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
     call $~lib/set/Set<u8>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 8
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u8>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<u8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 10
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<u8>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 12
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|1
   i32.const 50
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
     call $~lib/set/Set<u8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 16
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u8>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<u8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 18
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<u8>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 20
   i32.const 2
   call $~lib/builtins/abort
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
     call $~lib/set/Set<u8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 24
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u8>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<u8>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 26
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<u8>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 28
   i32.const 2
   call $~lib/builtins/abort
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
     call $~lib/set/Set<u8>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 32
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u8>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<u8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 34
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u8>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<u8>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 36
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<u8>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 38
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u8>#clear
  local.get $0
  call $~lib/set/Set<u8>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 42
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/set/Set<i16>#clear (; 30 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $2
  local.get $1
  i32.load
  local.tee $3
  i32.ne
  if (result i32)
   local.get $3
   if
    local.get $3
    local.get $1
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $2
   local.get $1
   call $~lib/collector/dummy/__ref_link
   local.get $2
  else   
   local.get $2
  end
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 32
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $3
  local.get $1
  i32.load offset=8
  local.tee $2
  i32.ne
  if (result i32)
   local.get $2
   if
    local.get $2
    local.get $1
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $3
   local.get $1
   call $~lib/collector/dummy/__ref_link
   local.get $3
  else   
   local.get $3
  end
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
 (func $~lib/set/Set<i16>#constructor (; 31 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 24
    call $~lib/util/runtime/allocate
    i32.const 19
    call $~lib/util/runtime/register
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
  call $~lib/set/Set<i16>#clear
  local.get $0
 )
 (func $~lib/util/hash/hash16 (; 32 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/set/Set<i16>#find (; 33 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
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
      i32.load offset=4
      i32.const 1
      i32.and
      i32.eqz
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
       i32.const 0
      end
      if
       local.get $3
       return
      end
      local.get $3
      i32.load offset=4
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
 (func $~lib/set/Set<i16>#has (; 34 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/set/Set<i16>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<i16>#rehash (; 35 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
  block $~lib/set/ENTRY_SIZE<i16>|inlined.1 (result i32)
   i32.const 8
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
  block $~lib/set/ENTRY_SIZE<i16>|inlined.2 (result i32)
   i32.const 8
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
      i32.load offset=4
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
       i32.store offset=4
       local.get $12
       local.get $8
       i32.store
       local.get $8
       block $~lib/set/ENTRY_SIZE<i16>|inlined.3 (result i32)
        i32.const 8
       end
       i32.add
       local.set $8
      end
      local.get $6
      block $~lib/set/ENTRY_SIZE<i16>|inlined.4 (result i32)
       i32.const 8
      end
      i32.add
      local.set $6
     end
     br $continue|0
    end
   end
  end
  local.get $0
  local.tee $9
  local.get $3
  local.tee $12
  local.get $9
  i32.load
  local.tee $11
  i32.ne
  if (result i32)
   local.get $11
   if
    local.get $11
    local.get $9
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $12
   local.get $9
   call $~lib/collector/dummy/__ref_link
   local.get $12
  else   
   local.get $12
  end
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $9
  local.get $5
  local.tee $11
  local.get $9
  i32.load offset=8
  local.tee $12
  i32.ne
  if (result i32)
   local.get $12
   if
    local.get $12
    local.get $9
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $11
   local.get $9
   call $~lib/collector/dummy/__ref_link
   local.get $11
  else   
   local.get $11
  end
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/set/Set<i16>#add (; 36 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/util/hash/HASH<i16>|inlined.1 (result i32)
   local.get $1
   local.set $2
   local.get $2
   i32.const 16
   i32.shl
   i32.const 16
   i32.shr_s
   call $~lib/util/hash/hash16
   br $~lib/util/hash/HASH<i16>|inlined.1
  end
  local.set $3
  local.get $0
  local.get $1
  local.get $3
  call $~lib/set/Set<i16>#find
  local.set $4
  local.get $4
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
    call $~lib/set/Set<i16>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $2
   local.get $2
   block (result i32)
    local.get $0
    local.get $0
    i32.load offset=16
    local.tee $5
    i32.const 1
    i32.add
    i32.store offset=16
    local.get $5
   end
   block $~lib/set/ENTRY_SIZE<i16>|inlined.5 (result i32)
    i32.const 8
   end
   i32.mul
   i32.add
   local.set $4
   local.get $4
   local.get $1
   i32.store16
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $3
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $5
   local.get $4
   local.get $5
   i32.load
   i32.store offset=4
   local.get $5
   local.get $4
   i32.store
  end
 )
 (func $~lib/set/Set<i16>#get:size (; 37 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/set/Set<i16>#delete (; 38 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
  call $~lib/set/Set<i16>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $3
  local.get $3
  i32.load offset=4
  i32.const 1
  i32.or
  i32.store offset=4
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
   i32.const 0
  end
  if
   local.get $0
   local.get $4
   call $~lib/set/Set<i16>#rehash
  end
  i32.const 1
 )
 (func $std/set/testNumeric<i16> (; 39 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  call $~lib/set/Set<i16>#constructor
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
     call $~lib/set/Set<i16>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 8
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i16>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<i16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 10
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<i16>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 12
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|1
   i32.const 50
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
     call $~lib/set/Set<i16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 16
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i16>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<i16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 18
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<i16>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 20
   i32.const 2
   call $~lib/builtins/abort
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
     call $~lib/set/Set<i16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 24
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i16>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<i16>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 26
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<i16>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 28
   i32.const 2
   call $~lib/builtins/abort
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
     call $~lib/set/Set<i16>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 32
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i16>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<i16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 34
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i16>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<i16>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 36
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<i16>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 38
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i16>#clear
  local.get $0
  call $~lib/set/Set<i16>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 42
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/set/Set<u16>#clear (; 40 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $2
  local.get $1
  i32.load
  local.tee $3
  i32.ne
  if (result i32)
   local.get $3
   if
    local.get $3
    local.get $1
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $2
   local.get $1
   call $~lib/collector/dummy/__ref_link
   local.get $2
  else   
   local.get $2
  end
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 32
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $3
  local.get $1
  i32.load offset=8
  local.tee $2
  i32.ne
  if (result i32)
   local.get $2
   if
    local.get $2
    local.get $1
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $3
   local.get $1
   call $~lib/collector/dummy/__ref_link
   local.get $3
  else   
   local.get $3
  end
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
 (func $~lib/set/Set<u16>#constructor (; 41 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 24
    call $~lib/util/runtime/allocate
    i32.const 20
    call $~lib/util/runtime/register
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
  call $~lib/set/Set<u16>#clear
  local.get $0
 )
 (func $~lib/set/Set<u16>#find (; 42 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
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
      i32.load offset=4
      i32.const 1
      i32.and
      i32.eqz
      if (result i32)
       local.get $3
       i32.load16_u
       local.get $1
       i32.const 65535
       i32.and
       i32.eq
      else       
       i32.const 0
      end
      if
       local.get $3
       return
      end
      local.get $3
      i32.load offset=4
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
 (func $~lib/set/Set<u16>#has (; 43 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/set/Set<u16>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<u16>#rehash (; 44 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
  block $~lib/set/ENTRY_SIZE<u16>|inlined.1 (result i32)
   i32.const 8
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
  block $~lib/set/ENTRY_SIZE<u16>|inlined.2 (result i32)
   i32.const 8
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
      i32.load offset=4
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
       i32.store offset=4
       local.get $12
       local.get $8
       i32.store
       local.get $8
       block $~lib/set/ENTRY_SIZE<u16>|inlined.3 (result i32)
        i32.const 8
       end
       i32.add
       local.set $8
      end
      local.get $6
      block $~lib/set/ENTRY_SIZE<u16>|inlined.4 (result i32)
       i32.const 8
      end
      i32.add
      local.set $6
     end
     br $continue|0
    end
   end
  end
  local.get $0
  local.tee $9
  local.get $3
  local.tee $12
  local.get $9
  i32.load
  local.tee $11
  i32.ne
  if (result i32)
   local.get $11
   if
    local.get $11
    local.get $9
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $12
   local.get $9
   call $~lib/collector/dummy/__ref_link
   local.get $12
  else   
   local.get $12
  end
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $9
  local.get $5
  local.tee $11
  local.get $9
  i32.load offset=8
  local.tee $12
  i32.ne
  if (result i32)
   local.get $12
   if
    local.get $12
    local.get $9
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $11
   local.get $9
   call $~lib/collector/dummy/__ref_link
   local.get $11
  else   
   local.get $11
  end
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/set/Set<u16>#add (; 45 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/util/hash/HASH<u16>|inlined.1 (result i32)
   local.get $1
   local.set $2
   local.get $2
   i32.const 65535
   i32.and
   call $~lib/util/hash/hash16
   br $~lib/util/hash/HASH<u16>|inlined.1
  end
  local.set $3
  local.get $0
  local.get $1
  local.get $3
  call $~lib/set/Set<u16>#find
  local.set $4
  local.get $4
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
    call $~lib/set/Set<u16>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $2
   local.get $2
   block (result i32)
    local.get $0
    local.get $0
    i32.load offset=16
    local.tee $5
    i32.const 1
    i32.add
    i32.store offset=16
    local.get $5
   end
   block $~lib/set/ENTRY_SIZE<u16>|inlined.5 (result i32)
    i32.const 8
   end
   i32.mul
   i32.add
   local.set $4
   local.get $4
   local.get $1
   i32.store16
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $3
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $5
   local.get $4
   local.get $5
   i32.load
   i32.store offset=4
   local.get $5
   local.get $4
   i32.store
  end
 )
 (func $~lib/set/Set<u16>#get:size (; 46 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/set/Set<u16>#delete (; 47 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
  call $~lib/set/Set<u16>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $3
  local.get $3
  i32.load offset=4
  i32.const 1
  i32.or
  i32.store offset=4
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
   i32.const 0
  end
  if
   local.get $0
   local.get $4
   call $~lib/set/Set<u16>#rehash
  end
  i32.const 1
 )
 (func $std/set/testNumeric<u16> (; 48 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  call $~lib/set/Set<u16>#constructor
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
     call $~lib/set/Set<u16>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 8
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u16>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<u16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 10
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<u16>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 12
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|1
   i32.const 50
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
     call $~lib/set/Set<u16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 16
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u16>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<u16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 18
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<u16>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 20
   i32.const 2
   call $~lib/builtins/abort
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
     call $~lib/set/Set<u16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 24
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u16>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<u16>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 26
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<u16>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 28
   i32.const 2
   call $~lib/builtins/abort
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
     call $~lib/set/Set<u16>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 32
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u16>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<u16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 34
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u16>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<u16>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 36
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<u16>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 38
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u16>#clear
  local.get $0
  call $~lib/set/Set<u16>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 42
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/set/Set<i32>#clear (; 49 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $2
  local.get $1
  i32.load
  local.tee $3
  i32.ne
  if (result i32)
   local.get $3
   if
    local.get $3
    local.get $1
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $2
   local.get $1
   call $~lib/collector/dummy/__ref_link
   local.get $2
  else   
   local.get $2
  end
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 32
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $3
  local.get $1
  i32.load offset=8
  local.tee $2
  i32.ne
  if (result i32)
   local.get $2
   if
    local.get $2
    local.get $1
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $3
   local.get $1
   call $~lib/collector/dummy/__ref_link
   local.get $3
  else   
   local.get $3
  end
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
 (func $~lib/set/Set<i32>#constructor (; 50 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 24
    call $~lib/util/runtime/allocate
    i32.const 21
    call $~lib/util/runtime/register
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
  call $~lib/set/Set<i32>#clear
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
 (func $~lib/set/Set<i32>#find (; 52 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
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
      i32.load offset=4
      i32.const 1
      i32.and
      i32.eqz
      if (result i32)
       local.get $3
       i32.load
       local.get $1
       i32.eq
      else       
       i32.const 0
      end
      if
       local.get $3
       return
      end
      local.get $3
      i32.load offset=4
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
 (func $~lib/set/Set<i32>#has (; 53 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/set/Set<i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<i32>#rehash (; 54 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
  block $~lib/set/ENTRY_SIZE<i32>|inlined.1 (result i32)
   i32.const 8
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
  block $~lib/set/ENTRY_SIZE<i32>|inlined.2 (result i32)
   i32.const 8
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
      i32.load offset=4
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
       i32.store offset=4
       local.get $12
       local.get $8
       i32.store
       local.get $8
       block $~lib/set/ENTRY_SIZE<i32>|inlined.3 (result i32)
        i32.const 8
       end
       i32.add
       local.set $8
      end
      local.get $6
      block $~lib/set/ENTRY_SIZE<i32>|inlined.4 (result i32)
       i32.const 8
      end
      i32.add
      local.set $6
     end
     br $continue|0
    end
   end
  end
  local.get $0
  local.tee $9
  local.get $3
  local.tee $12
  local.get $9
  i32.load
  local.tee $11
  i32.ne
  if (result i32)
   local.get $11
   if
    local.get $11
    local.get $9
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $12
   local.get $9
   call $~lib/collector/dummy/__ref_link
   local.get $12
  else   
   local.get $12
  end
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $9
  local.get $5
  local.tee $11
  local.get $9
  i32.load offset=8
  local.tee $12
  i32.ne
  if (result i32)
   local.get $12
   if
    local.get $12
    local.get $9
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $11
   local.get $9
   call $~lib/collector/dummy/__ref_link
   local.get $11
  else   
   local.get $11
  end
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/set/Set<i32>#add (; 55 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/util/hash/HASH<i32>|inlined.1 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<i32>|inlined.1
  end
  local.set $3
  local.get $0
  local.get $1
  local.get $3
  call $~lib/set/Set<i32>#find
  local.set $4
  local.get $4
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
    call $~lib/set/Set<i32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $2
   local.get $2
   block (result i32)
    local.get $0
    local.get $0
    i32.load offset=16
    local.tee $5
    i32.const 1
    i32.add
    i32.store offset=16
    local.get $5
   end
   block $~lib/set/ENTRY_SIZE<i32>|inlined.5 (result i32)
    i32.const 8
   end
   i32.mul
   i32.add
   local.set $4
   local.get $4
   local.get $1
   i32.store
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $3
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $5
   local.get $4
   local.get $5
   i32.load
   i32.store offset=4
   local.get $5
   local.get $4
   i32.store
  end
 )
 (func $~lib/set/Set<i32>#get:size (; 56 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/set/Set<i32>#delete (; 57 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i32>|inlined.3 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<i32>|inlined.3
  end
  call $~lib/set/Set<i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $3
  local.get $3
  i32.load offset=4
  i32.const 1
  i32.or
  i32.store offset=4
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
   i32.const 0
  end
  if
   local.get $0
   local.get $4
   call $~lib/set/Set<i32>#rehash
  end
  i32.const 1
 )
 (func $std/set/testNumeric<i32> (; 58 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  call $~lib/set/Set<i32>#constructor
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
     call $~lib/set/Set<i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 8
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i32>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 10
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 12
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|1
   i32.const 50
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
     call $~lib/set/Set<i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 16
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i32>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 18
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 20
   i32.const 2
   call $~lib/builtins/abort
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
     call $~lib/set/Set<i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 24
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i32>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 26
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 28
   i32.const 2
   call $~lib/builtins/abort
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
     call $~lib/set/Set<i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 32
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i32>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 34
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i32>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 36
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 38
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i32>#clear
  local.get $0
  call $~lib/set/Set<i32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 42
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/set/Set<u32>#clear (; 59 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $2
  local.get $1
  i32.load
  local.tee $3
  i32.ne
  if (result i32)
   local.get $3
   if
    local.get $3
    local.get $1
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $2
   local.get $1
   call $~lib/collector/dummy/__ref_link
   local.get $2
  else   
   local.get $2
  end
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 32
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $3
  local.get $1
  i32.load offset=8
  local.tee $2
  i32.ne
  if (result i32)
   local.get $2
   if
    local.get $2
    local.get $1
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $3
   local.get $1
   call $~lib/collector/dummy/__ref_link
   local.get $3
  else   
   local.get $3
  end
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
 (func $~lib/set/Set<u32>#constructor (; 60 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 24
    call $~lib/util/runtime/allocate
    i32.const 22
    call $~lib/util/runtime/register
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
  call $~lib/set/Set<u32>#clear
  local.get $0
 )
 (func $~lib/set/Set<u32>#find (; 61 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
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
      i32.load offset=4
      i32.const 1
      i32.and
      i32.eqz
      if (result i32)
       local.get $3
       i32.load
       local.get $1
       i32.eq
      else       
       i32.const 0
      end
      if
       local.get $3
       return
      end
      local.get $3
      i32.load offset=4
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
 (func $~lib/set/Set<u32>#has (; 62 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/set/Set<u32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<u32>#rehash (; 63 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
  block $~lib/set/ENTRY_SIZE<u32>|inlined.1 (result i32)
   i32.const 8
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
  block $~lib/set/ENTRY_SIZE<u32>|inlined.2 (result i32)
   i32.const 8
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
      i32.load offset=4
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
       i32.store offset=4
       local.get $12
       local.get $8
       i32.store
       local.get $8
       block $~lib/set/ENTRY_SIZE<u32>|inlined.3 (result i32)
        i32.const 8
       end
       i32.add
       local.set $8
      end
      local.get $6
      block $~lib/set/ENTRY_SIZE<u32>|inlined.4 (result i32)
       i32.const 8
      end
      i32.add
      local.set $6
     end
     br $continue|0
    end
   end
  end
  local.get $0
  local.tee $9
  local.get $3
  local.tee $12
  local.get $9
  i32.load
  local.tee $11
  i32.ne
  if (result i32)
   local.get $11
   if
    local.get $11
    local.get $9
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $12
   local.get $9
   call $~lib/collector/dummy/__ref_link
   local.get $12
  else   
   local.get $12
  end
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $9
  local.get $5
  local.tee $11
  local.get $9
  i32.load offset=8
  local.tee $12
  i32.ne
  if (result i32)
   local.get $12
   if
    local.get $12
    local.get $9
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $11
   local.get $9
   call $~lib/collector/dummy/__ref_link
   local.get $11
  else   
   local.get $11
  end
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/set/Set<u32>#add (; 64 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/util/hash/HASH<u32>|inlined.1 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<u32>|inlined.1
  end
  local.set $3
  local.get $0
  local.get $1
  local.get $3
  call $~lib/set/Set<u32>#find
  local.set $4
  local.get $4
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
    call $~lib/set/Set<u32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $2
   local.get $2
   block (result i32)
    local.get $0
    local.get $0
    i32.load offset=16
    local.tee $5
    i32.const 1
    i32.add
    i32.store offset=16
    local.get $5
   end
   block $~lib/set/ENTRY_SIZE<u32>|inlined.5 (result i32)
    i32.const 8
   end
   i32.mul
   i32.add
   local.set $4
   local.get $4
   local.get $1
   i32.store
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $3
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $5
   local.get $4
   local.get $5
   i32.load
   i32.store offset=4
   local.get $5
   local.get $4
   i32.store
  end
 )
 (func $~lib/set/Set<u32>#get:size (; 65 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/set/Set<u32>#delete (; 66 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u32>|inlined.3 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<u32>|inlined.3
  end
  call $~lib/set/Set<u32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $3
  local.get $3
  i32.load offset=4
  i32.const 1
  i32.or
  i32.store offset=4
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
   i32.const 0
  end
  if
   local.get $0
   local.get $4
   call $~lib/set/Set<u32>#rehash
  end
  i32.const 1
 )
 (func $std/set/testNumeric<u32> (; 67 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  call $~lib/set/Set<u32>#constructor
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
     call $~lib/set/Set<u32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 8
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u32>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<u32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 10
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<u32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 12
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|1
   i32.const 50
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
     call $~lib/set/Set<u32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 16
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u32>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<u32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 18
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<u32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 20
   i32.const 2
   call $~lib/builtins/abort
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
     call $~lib/set/Set<u32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 24
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u32>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<u32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 26
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<u32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 28
   i32.const 2
   call $~lib/builtins/abort
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
     call $~lib/set/Set<u32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 32
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u32>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<u32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 34
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u32>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<u32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 36
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<u32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 38
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u32>#clear
  local.get $0
  call $~lib/set/Set<u32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 42
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/set/Set<i64>#clear (; 68 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $2
  local.get $1
  i32.load
  local.tee $3
  i32.ne
  if (result i32)
   local.get $3
   if
    local.get $3
    local.get $1
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $2
   local.get $1
   call $~lib/collector/dummy/__ref_link
   local.get $2
  else   
   local.get $2
  end
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 64
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $3
  local.get $1
  i32.load offset=8
  local.tee $2
  i32.ne
  if (result i32)
   local.get $2
   if
    local.get $2
    local.get $1
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $3
   local.get $1
   call $~lib/collector/dummy/__ref_link
   local.get $3
  else   
   local.get $3
  end
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
 (func $~lib/set/Set<i64>#constructor (; 69 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 24
    call $~lib/util/runtime/allocate
    i32.const 23
    call $~lib/util/runtime/register
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
  call $~lib/set/Set<i64>#clear
  local.get $0
 )
 (func $~lib/util/hash/hash64 (; 70 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
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
 (func $~lib/set/Set<i64>#find (; 71 ;) (type $FUNCSIG$iiji) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
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
      if (result i32)
       local.get $3
       i64.load
       local.get $1
       i64.eq
      else       
       i32.const 0
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
 (func $~lib/set/Set<i64>#has (; 72 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
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
  call $~lib/set/Set<i64>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<i64>#rehash (; 73 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
  block $~lib/set/ENTRY_SIZE<i64>|inlined.1 (result i32)
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
  block $~lib/set/ENTRY_SIZE<i64>|inlined.2 (result i32)
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
      i32.load offset=8
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
       i32.store offset=8
       local.get $13
       local.get $8
       i32.store
       local.get $8
       block $~lib/set/ENTRY_SIZE<i64>|inlined.3 (result i32)
        i32.const 16
       end
       i32.add
       local.set $8
      end
      local.get $6
      block $~lib/set/ENTRY_SIZE<i64>|inlined.4 (result i32)
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
  local.tee $9
  local.get $3
  local.tee $13
  local.get $9
  i32.load
  local.tee $12
  i32.ne
  if (result i32)
   local.get $12
   if
    local.get $12
    local.get $9
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $13
   local.get $9
   call $~lib/collector/dummy/__ref_link
   local.get $13
  else   
   local.get $13
  end
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $9
  local.get $5
  local.tee $12
  local.get $9
  i32.load offset=8
  local.tee $13
  i32.ne
  if (result i32)
   local.get $13
   if
    local.get $13
    local.get $9
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $12
   local.get $9
   call $~lib/collector/dummy/__ref_link
   local.get $12
  else   
   local.get $12
  end
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/set/Set<i64>#add (; 74 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/hash/HASH<i64>|inlined.1 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<i64>|inlined.1
  end
  local.set $3
  local.get $0
  local.get $1
  local.get $3
  call $~lib/set/Set<i64>#find
  local.set $4
  local.get $4
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
    call $~lib/set/Set<i64>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $5
   local.get $5
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
   block $~lib/set/ENTRY_SIZE<i64>|inlined.5 (result i32)
    i32.const 16
   end
   i32.mul
   i32.add
   local.set $4
   local.get $4
   local.get $1
   i64.store
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $3
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $6
   local.get $4
   local.get $6
   i32.load
   i32.store offset=8
   local.get $6
   local.get $4
   i32.store
  end
 )
 (func $~lib/set/Set<i64>#get:size (; 75 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/set/Set<i64>#delete (; 76 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i64>|inlined.3 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<i64>|inlined.3
  end
  call $~lib/set/Set<i64>#find
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
   i32.const 0
  end
  if
   local.get $0
   local.get $4
   call $~lib/set/Set<i64>#rehash
  end
  i32.const 1
 )
 (func $std/set/testNumeric<i64> (; 77 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i64)
  i32.const 0
  call $~lib/set/Set<i64>#constructor
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
     call $~lib/set/Set<i64>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 8
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i64>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<i64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 10
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<i64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 12
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|1
   i64.const 50
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
     call $~lib/set/Set<i64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 16
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i64>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<i64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 18
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<i64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 20
   i32.const 2
   call $~lib/builtins/abort
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
     call $~lib/set/Set<i64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 24
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i64>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<i64>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 26
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<i64>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 28
   i32.const 2
   call $~lib/builtins/abort
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
     call $~lib/set/Set<i64>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 32
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i64>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<i64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 34
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<i64>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<i64>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 36
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<i64>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 38
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i64>#clear
  local.get $0
  call $~lib/set/Set<i64>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 42
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/set/Set<u64>#clear (; 78 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $2
  local.get $1
  i32.load
  local.tee $3
  i32.ne
  if (result i32)
   local.get $3
   if
    local.get $3
    local.get $1
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $2
   local.get $1
   call $~lib/collector/dummy/__ref_link
   local.get $2
  else   
   local.get $2
  end
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 64
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $3
  local.get $1
  i32.load offset=8
  local.tee $2
  i32.ne
  if (result i32)
   local.get $2
   if
    local.get $2
    local.get $1
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $3
   local.get $1
   call $~lib/collector/dummy/__ref_link
   local.get $3
  else   
   local.get $3
  end
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
 (func $~lib/set/Set<u64>#constructor (; 79 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 24
    call $~lib/util/runtime/allocate
    i32.const 24
    call $~lib/util/runtime/register
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
  call $~lib/set/Set<u64>#clear
  local.get $0
 )
 (func $~lib/set/Set<u64>#find (; 80 ;) (type $FUNCSIG$iiji) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
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
      if (result i32)
       local.get $3
       i64.load
       local.get $1
       i64.eq
      else       
       i32.const 0
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
 (func $~lib/set/Set<u64>#has (; 81 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
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
  call $~lib/set/Set<u64>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<u64>#rehash (; 82 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
  block $~lib/set/ENTRY_SIZE<u64>|inlined.1 (result i32)
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
  block $~lib/set/ENTRY_SIZE<u64>|inlined.2 (result i32)
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
      i32.load offset=8
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
       i32.store offset=8
       local.get $13
       local.get $8
       i32.store
       local.get $8
       block $~lib/set/ENTRY_SIZE<u64>|inlined.3 (result i32)
        i32.const 16
       end
       i32.add
       local.set $8
      end
      local.get $6
      block $~lib/set/ENTRY_SIZE<u64>|inlined.4 (result i32)
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
  local.tee $9
  local.get $3
  local.tee $13
  local.get $9
  i32.load
  local.tee $12
  i32.ne
  if (result i32)
   local.get $12
   if
    local.get $12
    local.get $9
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $13
   local.get $9
   call $~lib/collector/dummy/__ref_link
   local.get $13
  else   
   local.get $13
  end
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $9
  local.get $5
  local.tee $12
  local.get $9
  i32.load offset=8
  local.tee $13
  i32.ne
  if (result i32)
   local.get $13
   if
    local.get $13
    local.get $9
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $12
   local.get $9
   call $~lib/collector/dummy/__ref_link
   local.get $12
  else   
   local.get $12
  end
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/set/Set<u64>#add (; 83 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/hash/HASH<u64>|inlined.1 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<u64>|inlined.1
  end
  local.set $3
  local.get $0
  local.get $1
  local.get $3
  call $~lib/set/Set<u64>#find
  local.set $4
  local.get $4
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
    call $~lib/set/Set<u64>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $5
   local.get $5
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
   block $~lib/set/ENTRY_SIZE<u64>|inlined.5 (result i32)
    i32.const 16
   end
   i32.mul
   i32.add
   local.set $4
   local.get $4
   local.get $1
   i64.store
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $3
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $6
   local.get $4
   local.get $6
   i32.load
   i32.store offset=8
   local.get $6
   local.get $4
   i32.store
  end
 )
 (func $~lib/set/Set<u64>#get:size (; 84 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/set/Set<u64>#delete (; 85 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u64>|inlined.3 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<u64>|inlined.3
  end
  call $~lib/set/Set<u64>#find
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
   i32.const 0
  end
  if
   local.get $0
   local.get $4
   call $~lib/set/Set<u64>#rehash
  end
  i32.const 1
 )
 (func $std/set/testNumeric<u64> (; 86 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i64)
  i32.const 0
  call $~lib/set/Set<u64>#constructor
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
     call $~lib/set/Set<u64>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 8
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u64>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<u64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 10
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<u64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 12
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|1
   i64.const 50
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
     call $~lib/set/Set<u64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 16
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u64>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<u64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 18
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<u64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 20
   i32.const 2
   call $~lib/builtins/abort
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
     call $~lib/set/Set<u64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 24
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u64>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<u64>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 26
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<u64>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 28
   i32.const 2
   call $~lib/builtins/abort
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
     call $~lib/set/Set<u64>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 32
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u64>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<u64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 34
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<u64>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<u64>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 36
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<u64>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 38
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u64>#clear
  local.get $0
  call $~lib/set/Set<u64>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 42
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/set/Set<f32>#clear (; 87 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $2
  local.get $1
  i32.load
  local.tee $3
  i32.ne
  if (result i32)
   local.get $3
   if
    local.get $3
    local.get $1
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $2
   local.get $1
   call $~lib/collector/dummy/__ref_link
   local.get $2
  else   
   local.get $2
  end
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 32
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $3
  local.get $1
  i32.load offset=8
  local.tee $2
  i32.ne
  if (result i32)
   local.get $2
   if
    local.get $2
    local.get $1
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $3
   local.get $1
   call $~lib/collector/dummy/__ref_link
   local.get $3
  else   
   local.get $3
  end
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
 (func $~lib/set/Set<f32>#constructor (; 88 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 24
    call $~lib/util/runtime/allocate
    i32.const 25
    call $~lib/util/runtime/register
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
  call $~lib/set/Set<f32>#clear
  local.get $0
 )
 (func $~lib/set/Set<f32>#find (; 89 ;) (type $FUNCSIG$iifi) (param $0 i32) (param $1 f32) (param $2 i32) (result i32)
  (local $3 i32)
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
      i32.load offset=4
      i32.const 1
      i32.and
      i32.eqz
      if (result i32)
       local.get $3
       f32.load
       local.get $1
       f32.eq
      else       
       i32.const 0
      end
      if
       local.get $3
       return
      end
      local.get $3
      i32.load offset=4
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
 (func $~lib/set/Set<f32>#has (; 90 ;) (type $FUNCSIG$iif) (param $0 i32) (param $1 f32) (result i32)
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
  call $~lib/set/Set<f32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<f32>#rehash (; 91 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
  block $~lib/set/ENTRY_SIZE<f32>|inlined.1 (result i32)
   i32.const 8
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
  block $~lib/set/ENTRY_SIZE<f32>|inlined.2 (result i32)
   i32.const 8
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
      i32.load offset=4
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
       i32.store offset=4
       local.get $13
       local.get $8
       i32.store
       local.get $8
       block $~lib/set/ENTRY_SIZE<f32>|inlined.3 (result i32)
        i32.const 8
       end
       i32.add
       local.set $8
      end
      local.get $6
      block $~lib/set/ENTRY_SIZE<f32>|inlined.4 (result i32)
       i32.const 8
      end
      i32.add
      local.set $6
     end
     br $continue|0
    end
   end
  end
  local.get $0
  local.tee $9
  local.get $3
  local.tee $13
  local.get $9
  i32.load
  local.tee $12
  i32.ne
  if (result i32)
   local.get $12
   if
    local.get $12
    local.get $9
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $13
   local.get $9
   call $~lib/collector/dummy/__ref_link
   local.get $13
  else   
   local.get $13
  end
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $9
  local.get $5
  local.tee $12
  local.get $9
  i32.load offset=8
  local.tee $13
  i32.ne
  if (result i32)
   local.get $13
   if
    local.get $13
    local.get $9
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $12
   local.get $9
   call $~lib/collector/dummy/__ref_link
   local.get $12
  else   
   local.get $12
  end
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/set/Set<f32>#add (; 92 ;) (type $FUNCSIG$vif) (param $0 i32) (param $1 f32)
  (local $2 f32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/hash/HASH<f32>|inlined.1 (result i32)
   local.get $1
   local.set $2
   local.get $2
   i32.reinterpret_f32
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<f32>|inlined.1
  end
  local.set $3
  local.get $0
  local.get $1
  local.get $3
  call $~lib/set/Set<f32>#find
  local.set $4
  local.get $4
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
    call $~lib/set/Set<f32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $5
   local.get $5
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
   block $~lib/set/ENTRY_SIZE<f32>|inlined.5 (result i32)
    i32.const 8
   end
   i32.mul
   i32.add
   local.set $4
   local.get $4
   local.get $1
   f32.store
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $3
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $6
   local.get $4
   local.get $6
   i32.load
   i32.store offset=4
   local.get $6
   local.get $4
   i32.store
  end
 )
 (func $~lib/set/Set<f32>#get:size (; 93 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/set/Set<f32>#delete (; 94 ;) (type $FUNCSIG$iif) (param $0 i32) (param $1 f32) (result i32)
  (local $2 f32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
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
  call $~lib/set/Set<f32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $3
  local.get $3
  i32.load offset=4
  i32.const 1
  i32.or
  i32.store offset=4
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
   i32.const 0
  end
  if
   local.get $0
   local.get $4
   call $~lib/set/Set<f32>#rehash
  end
  i32.const 1
 )
 (func $std/set/testNumeric<f32> (; 95 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 f32)
  i32.const 0
  call $~lib/set/Set<f32>#constructor
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
     call $~lib/set/Set<f32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 8
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<f32>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<f32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 10
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<f32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 12
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|1
   f32.const 50
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
     call $~lib/set/Set<f32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 16
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<f32>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<f32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 18
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<f32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 20
   i32.const 2
   call $~lib/builtins/abort
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
     call $~lib/set/Set<f32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 24
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<f32>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<f32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 26
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<f32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 28
   i32.const 2
   call $~lib/builtins/abort
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
     call $~lib/set/Set<f32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 32
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<f32>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<f32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 34
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<f32>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<f32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 36
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<f32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 38
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<f32>#clear
  local.get $0
  call $~lib/set/Set<f32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 42
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/set/Set<f64>#clear (; 96 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $2
  local.get $1
  i32.load
  local.tee $3
  i32.ne
  if (result i32)
   local.get $3
   if
    local.get $3
    local.get $1
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $2
   local.get $1
   call $~lib/collector/dummy/__ref_link
   local.get $2
  else   
   local.get $2
  end
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 64
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $3
  local.get $1
  i32.load offset=8
  local.tee $2
  i32.ne
  if (result i32)
   local.get $2
   if
    local.get $2
    local.get $1
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $3
   local.get $1
   call $~lib/collector/dummy/__ref_link
   local.get $3
  else   
   local.get $3
  end
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
 (func $~lib/set/Set<f64>#constructor (; 97 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 24
    call $~lib/util/runtime/allocate
    i32.const 26
    call $~lib/util/runtime/register
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
  call $~lib/set/Set<f64>#clear
  local.get $0
 )
 (func $~lib/set/Set<f64>#find (; 98 ;) (type $FUNCSIG$iidi) (param $0 i32) (param $1 f64) (param $2 i32) (result i32)
  (local $3 i32)
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
      if (result i32)
       local.get $3
       f64.load
       local.get $1
       f64.eq
      else       
       i32.const 0
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
 (func $~lib/set/Set<f64>#has (; 99 ;) (type $FUNCSIG$iid) (param $0 i32) (param $1 f64) (result i32)
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
  call $~lib/set/Set<f64>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<f64>#rehash (; 100 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
  block $~lib/set/ENTRY_SIZE<f64>|inlined.1 (result i32)
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
  block $~lib/set/ENTRY_SIZE<f64>|inlined.2 (result i32)
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
      i32.load offset=8
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
       i32.store offset=8
       local.get $13
       local.get $8
       i32.store
       local.get $8
       block $~lib/set/ENTRY_SIZE<f64>|inlined.3 (result i32)
        i32.const 16
       end
       i32.add
       local.set $8
      end
      local.get $6
      block $~lib/set/ENTRY_SIZE<f64>|inlined.4 (result i32)
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
  local.tee $9
  local.get $3
  local.tee $13
  local.get $9
  i32.load
  local.tee $12
  i32.ne
  if (result i32)
   local.get $12
   if
    local.get $12
    local.get $9
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $13
   local.get $9
   call $~lib/collector/dummy/__ref_link
   local.get $13
  else   
   local.get $13
  end
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $9
  local.get $5
  local.tee $12
  local.get $9
  i32.load offset=8
  local.tee $13
  i32.ne
  if (result i32)
   local.get $13
   if
    local.get $13
    local.get $9
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $12
   local.get $9
   call $~lib/collector/dummy/__ref_link
   local.get $12
  else   
   local.get $12
  end
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/set/Set<f64>#add (; 101 ;) (type $FUNCSIG$vid) (param $0 i32) (param $1 f64)
  (local $2 f64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/hash/HASH<f64>|inlined.1 (result i32)
   local.get $1
   local.set $2
   local.get $2
   i64.reinterpret_f64
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<f64>|inlined.1
  end
  local.set $3
  local.get $0
  local.get $1
  local.get $3
  call $~lib/set/Set<f64>#find
  local.set $4
  local.get $4
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
    call $~lib/set/Set<f64>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $5
   local.get $5
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
   block $~lib/set/ENTRY_SIZE<f64>|inlined.5 (result i32)
    i32.const 16
   end
   i32.mul
   i32.add
   local.set $4
   local.get $4
   local.get $1
   f64.store
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $3
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $6
   local.get $4
   local.get $6
   i32.load
   i32.store offset=8
   local.get $6
   local.get $4
   i32.store
  end
 )
 (func $~lib/set/Set<f64>#get:size (; 102 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/set/Set<f64>#delete (; 103 ;) (type $FUNCSIG$iid) (param $0 i32) (param $1 f64) (result i32)
  (local $2 f64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
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
  call $~lib/set/Set<f64>#find
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
   i32.const 0
  end
  if
   local.get $0
   local.get $4
   call $~lib/set/Set<f64>#rehash
  end
  i32.const 1
 )
 (func $std/set/testNumeric<f64> (; 104 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 f64)
  i32.const 0
  call $~lib/set/Set<f64>#constructor
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
     call $~lib/set/Set<f64>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 8
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<f64>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<f64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 10
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<f64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 12
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|1
   f64.const 50
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
     call $~lib/set/Set<f64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 16
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<f64>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<f64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 18
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<f64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 20
   i32.const 2
   call $~lib/builtins/abort
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
     call $~lib/set/Set<f64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 24
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<f64>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<f64>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 26
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<f64>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 28
   i32.const 2
   call $~lib/builtins/abort
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
     call $~lib/set/Set<f64>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 32
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<f64>#add
     local.get $0
     local.get $1
     call $~lib/set/Set<f64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 34
      i32.const 4
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     call $~lib/set/Set<f64>#delete
     drop
     local.get $0
     local.get $1
     call $~lib/set/Set<f64>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 36
      i32.const 4
      call $~lib/builtins/abort
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
  call $~lib/set/Set<f64>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 38
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<f64>#clear
  local.get $0
  call $~lib/set/Set<f64>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 42
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start:std/set (; 105 ;) (type $FUNCSIG$v)
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
  call $std/set/testNumeric<i8>
  call $std/set/testNumeric<u8>
  call $std/set/testNumeric<i16>
  call $std/set/testNumeric<u16>
  call $std/set/testNumeric<i32>
  call $std/set/testNumeric<u32>
  call $std/set/testNumeric<i64>
  call $std/set/testNumeric<u64>
  call $std/set/testNumeric<f32>
  call $std/set/testNumeric<f64>
 )
 (func $~lib/runtime/runtime.instanceof (; 106 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  global.get $~lib/util/runtime/HEADER_SIZE
  i32.sub
  i32.load
  local.set $2
  global.get $~lib/runtime/RTTI_BASE
  local.set $3
  local.get $2
  if (result i32)
   local.get $2
   local.get $3
   i32.load
   i32.le_u
  else   
   i32.const 0
  end
  if
   loop $continue|0
    local.get $2
    local.get $1
    i32.eq
    if
     i32.const 1
     return
    end
    local.get $3
    local.get $2
    i32.const 8
    i32.mul
    i32.add
    i32.load offset=4
    local.tee $2
    br_if $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/runtime/runtime.flags (; 107 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/runtime/RTTI_BASE
  local.set $1
  local.get $0
  i32.eqz
  if (result i32)
   i32.const 1
  else   
   local.get $0
   local.get $1
   i32.load
   i32.gt_u
  end
  if (result i32)
   unreachable
  else   
   local.get $1
   local.get $0
   i32.const 8
   i32.mul
   i32.add
   i32.load
  end
 )
 (func $~lib/runtime/runtime.newObject (; 108 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  call $~lib/util/runtime/allocate
  local.get $1
  call $~lib/util/runtime/register
 )
 (func $~lib/runtime/runtime.newString (; 109 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 1
  i32.shl
  i32.const 16
  call $~lib/runtime/runtime.newObject
 )
 (func $~lib/runtime/runtime.newArrayBuffer (; 110 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 15
  call $~lib/runtime/runtime.newObject
 )
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (; 111 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  global.get $~lib/util/runtime/HEADER_SIZE
  i32.sub
  i32.load offset=4
 )
 (func $~lib/runtime/runtime.newArray (; 112 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/runtime/runtime.flags
  local.set $2
  local.get $2
  i32.const 16
  i32.div_u
  i32.const 31
  i32.and
  local.set $3
  local.get $1
  i32.eqz
  if
   i32.const 0
   local.tee $4
   call $~lib/runtime/runtime.newArrayBuffer
   local.set $1
  else   
   local.get $1
   call $~lib/arraybuffer/ArrayBuffer#get:byteLength
   local.set $4
  end
  local.get $0
  i32.const 16
  call $~lib/runtime/runtime.newObject
  local.set $5
  local.get $5
  local.tee $6
  local.get $1
  local.tee $7
  local.get $6
  i32.load
  local.tee $8
  i32.ne
  if (result i32)
   local.get $8
   if
    local.get $8
    local.get $6
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $7
   local.get $6
   call $~lib/collector/dummy/__ref_link
   local.get $7
  else   
   local.get $7
  end
  i32.store
  local.get $5
  local.get $1
  i32.store offset=4
  local.get $5
  local.get $4
  i32.store offset=8
  local.get $5
  local.get $4
  local.get $3
  i32.shr_u
  i32.store offset=12
  local.get $2
  i32.const 1024
  i32.and
  if
   local.get $1
   local.set $6
   local.get $6
   local.get $4
   i32.add
   local.set $8
   block $break|0
    loop $continue|0
     local.get $6
     local.get $8
     i32.lt_u
     if
      block
       local.get $6
       i32.load
       local.set $7
       local.get $7
       if
        local.get $7
        local.get $5
        call $~lib/collector/dummy/__ref_link
       end
       local.get $6
       i32.const 4
       i32.add
       local.set $6
      end
      br $continue|0
     end
    end
   end
  end
  local.get $5
 )
 (func $~lib/runtime/Root#constructor (; 113 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   call $~lib/util/runtime/allocate
   i32.const 28
   call $~lib/util/runtime/register
   local.set $0
  end
  local.get $0
 )
 (func $~lib/runtime/runtime.retain (; 114 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.get $~lib/runtime/ROOT
  call $~lib/collector/dummy/__ref_link
 )
 (func $~lib/runtime/runtime.release (; 115 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.get $~lib/runtime/ROOT
  call $~lib/collector/dummy/__ref_unlink
 )
 (func $~lib/collector/dummy/__ref_collect (; 116 ;) (type $FUNCSIG$v)
  nop
 )
 (func $~lib/runtime/runtime.collect (; 117 ;) (type $FUNCSIG$v)
  call $~lib/collector/dummy/__ref_collect
 )
 (func $~lib/runtime/runtime#constructor (; 118 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  unreachable
 )
 (func $start (; 119 ;) (type $FUNCSIG$v)
  call $start:std/set
  i32.const 0
  call $~lib/runtime/Root#constructor
  global.set $~lib/runtime/ROOT
 )
 (func $null (; 120 ;) (type $FUNCSIG$v)
 )
)
