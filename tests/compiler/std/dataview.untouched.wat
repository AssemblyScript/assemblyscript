(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$fiii (func (param i32 i32 i32) (result f32)))
 (type $FUNCSIG$diii (func (param i32 i32 i32) (result f64)))
 (type $FUNCSIG$jj (func (param i64) (result i64)))
 (type $FUNCSIG$jiii (func (param i32 i32 i32) (result i64)))
 (type $FUNCSIG$viifi (func (param i32 i32 f32 i32)))
 (type $FUNCSIG$viidi (func (param i32 i32 f64 i32)))
 (type $FUNCSIG$viiji (func (param i32 i32 i64 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 56) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s\00")
 (data (i32.const 96) "\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 144) "\01\00\00\00 \00\00\00~\00l\00i\00b\00/\00d\00a\00t\00a\00v\00i\00e\00w\00.\00t\00s\00")
 (data (i32.const 184) "\01\00\00\00\1e\00\00\00s\00t\00d\00/\00d\00a\00t\00a\00v\00i\00e\00w\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/util/runtime/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/util/runtime/MAX_BYTELENGTH i32 (i32.const 1073741816))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/util/runtime/HEADER_MAGIC i32 (i32.const -1520547049))
 (global $~lib/ASC_NO_ASSERT i32 (i32.const 0))
 (global $std/dataview/array (mut i32) (i32.const 0))
 (global $std/dataview/view (mut i32) (i32.const 0))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 224))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/runtime/runtime.adjust (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/runtime/runtime.allocate (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/runtime/runtime.adjust
  call $~lib/memory/memory.allocate
  local.set $1
  local.get $1
  global.get $~lib/util/runtime/HEADER_MAGIC
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  global.get $~lib/util/runtime/HEADER_SIZE
  i32.add
 )
 (func $~lib/memory/memory.fill (; 5 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/runtime/runtime.register (; 6 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  global.get $~lib/memory/HEAP_BASE
  i32.gt_u
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 107
   i32.const 6
   call $~lib/env/abort
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
   i32.const 64
   i32.const 109
   i32.const 6
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.store
  local.get $0
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 7 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  global.get $~lib/util/runtime/MAX_BYTELENGTH
  i32.gt_u
  if
   i32.const 0
   i32.const 16
   i32.const 54
   i32.const 43
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  call $~lib/runtime/runtime.allocate
  local.set $2
  local.get $2
  i32.const 0
  local.get $1
  call $~lib/memory/memory.fill
  local.get $2
  i32.const 2
  call $~lib/runtime/runtime.register
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 8 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $1
  global.get $~lib/util/runtime/MAX_BYTELENGTH
  local.get $2
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
 (func $~lib/typedarray/Uint8Array#constructor (; 9 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 12
   call $~lib/runtime/runtime.allocate
   i32.const 4
   call $~lib/runtime/runtime.register
  end
  local.get $1
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array#__set (; 10 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 0
   i32.const 104
   i32.const 115
   i32.const 44
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (; 11 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  global.get $~lib/util/runtime/HEADER_SIZE
  i32.sub
  i32.load offset=4
 )
 (func $~lib/dataview/DataView#constructor (; 12 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  global.get $~lib/util/runtime/MAX_BYTELENGTH
  i32.gt_u
  local.get $2
  local.get $3
  i32.add
  local.get $1
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.gt_u
  i32.or
  if
   i32.const 0
   i32.const 152
   i32.const 21
   i32.const 6
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 12
    call $~lib/runtime/runtime.allocate
    i32.const 5
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
  end
  local.get $1
  i32.store
  local.get $1
  local.get $2
  i32.add
  local.set $4
  local.get $0
  local.get $4
  i32.store offset=4
  local.get $0
  local.get $3
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array#get:buffer (; 13 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:byteOffset (; 14 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.sub
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:byteLength (; 15 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
 )
 (func $~lib/polyfills/bswap<u32> (; 16 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const -16711936
  i32.and
  i32.const 8
  i32.rotl
  local.get $0
  i32.const 16711935
  i32.and
  i32.const 8
  i32.rotr
  i32.or
  return
 )
 (func $~lib/dataview/DataView#getFloat32 (; 17 ;) (type $FUNCSIG$fiii) (param $0 i32) (param $1 i32) (param $2 i32) (result f32)
  local.get $1
  i32.const 0
  i32.lt_s
  local.get $1
  i32.const 4
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  i32.or
  if
   i32.const 0
   i32.const 152
   i32.const 44
   i32.const 6
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.ne
  if (result f32)
   local.get $0
   i32.load offset=4
   local.get $1
   i32.add
   f32.load
  else   
   local.get $0
   i32.load offset=4
   local.get $1
   i32.add
   i32.load
   call $~lib/polyfills/bswap<u32>
   f32.reinterpret_i32
  end
 )
 (func $~lib/polyfills/bswap<u64> (; 18 ;) (type $FUNCSIG$jj) (param $0 i64) (result i64)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  local.get $0
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.set $1
  local.get $0
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  local.set $2
  local.get $1
  local.get $2
  i64.or
  local.set $3
  local.get $3
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.set $1
  local.get $3
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  local.set $2
  local.get $1
  local.get $2
  i64.or
  i64.const 32
  i64.rotr
  return
 )
 (func $~lib/dataview/DataView#getFloat64 (; 19 ;) (type $FUNCSIG$diii) (param $0 i32) (param $1 i32) (param $2 i32) (result f64)
  local.get $1
  i32.const 0
  i32.lt_s
  local.get $1
  i32.const 8
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  i32.or
  if
   i32.const 0
   i32.const 152
   i32.const 58
   i32.const 7
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.ne
  if (result f64)
   local.get $0
   i32.load offset=4
   local.get $1
   i32.add
   f64.load
  else   
   local.get $0
   i32.load offset=4
   local.get $1
   i32.add
   i64.load
   call $~lib/polyfills/bswap<u64>
   f64.reinterpret_i64
  end
 )
 (func $~lib/dataview/DataView#getInt8 (; 20 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 0
   i32.const 152
   i32.const 69
   i32.const 49
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_s
 )
 (func $~lib/polyfills/bswap<i16> (; 21 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 8
  i32.shl
  local.get $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 8
  i32.shr_s
  i32.const 255
  i32.and
  i32.or
  return
 )
 (func $~lib/dataview/DataView#getInt16 (; 22 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $1
  i32.const 0
  i32.lt_s
  local.get $1
  i32.const 2
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  i32.or
  if
   i32.const 0
   i32.const 152
   i32.const 77
   i32.const 7
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load16_s
  local.set $3
  local.get $2
  i32.const 0
  i32.ne
  if (result i32)
   local.get $3
  else   
   local.get $3
   call $~lib/polyfills/bswap<i16>
  end
 )
 (func $~lib/polyfills/bswap<i32> (; 23 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const -16711936
  i32.and
  i32.const 8
  i32.rotl
  local.get $0
  i32.const 16711935
  i32.and
  i32.const 8
  i32.rotr
  i32.or
  return
 )
 (func $~lib/dataview/DataView#getInt32 (; 24 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $1
  i32.const 0
  i32.lt_s
  local.get $1
  i32.const 4
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  i32.or
  if
   i32.const 0
   i32.const 152
   i32.const 86
   i32.const 7
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load
  local.set $3
  local.get $2
  i32.const 0
  i32.ne
  if (result i32)
   local.get $3
  else   
   local.get $3
   call $~lib/polyfills/bswap<i32>
  end
 )
 (func $~lib/polyfills/bswap<i64> (; 25 ;) (type $FUNCSIG$jj) (param $0 i64) (result i64)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  local.get $0
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.set $1
  local.get $0
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  local.set $2
  local.get $1
  local.get $2
  i64.or
  local.set $3
  local.get $3
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.set $1
  local.get $3
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  local.set $2
  local.get $1
  local.get $2
  i64.or
  i64.const 32
  i64.rotr
  return
 )
 (func $~lib/dataview/DataView#getInt64 (; 26 ;) (type $FUNCSIG$jiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i64)
  (local $3 i64)
  local.get $1
  i32.const 0
  i32.lt_s
  local.get $1
  i32.const 8
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  i32.or
  if
   i32.const 0
   i32.const 152
   i32.const 180
   i32.const 6
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i64.load
  local.set $3
  local.get $2
  i32.const 0
  i32.ne
  if (result i64)
   local.get $3
  else   
   local.get $3
   call $~lib/polyfills/bswap<i64>
  end
 )
 (func $~lib/dataview/DataView#getUint8 (; 27 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 0
   i32.const 152
   i32.const 92
   i32.const 49
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_u
 )
 (func $~lib/polyfills/bswap<u16> (; 28 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 8
  i32.shl
  local.get $0
  i32.const 65535
  i32.and
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.or
  return
 )
 (func $~lib/dataview/DataView#getUint16 (; 29 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $1
  i32.const 0
  i32.lt_s
  local.get $1
  i32.const 2
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  i32.or
  if
   i32.const 0
   i32.const 152
   i32.const 100
   i32.const 6
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load16_u
  local.set $3
  local.get $2
  i32.const 0
  i32.ne
  if (result i32)
   local.get $3
  else   
   local.get $3
   call $~lib/polyfills/bswap<u16>
  end
 )
 (func $~lib/dataview/DataView#getUint32 (; 30 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $1
  i32.const 0
  i32.lt_s
  local.get $1
  i32.const 4
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  i32.or
  if
   i32.const 0
   i32.const 152
   i32.const 109
   i32.const 6
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load
  local.set $3
  local.get $2
  i32.const 0
  i32.ne
  if (result i32)
   local.get $3
  else   
   local.get $3
   call $~lib/polyfills/bswap<u32>
  end
 )
 (func $~lib/dataview/DataView#getUint64 (; 31 ;) (type $FUNCSIG$jiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i64)
  (local $3 i64)
  local.get $1
  i32.const 0
  i32.lt_s
  local.get $1
  i32.const 8
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  i32.or
  if
   i32.const 0
   i32.const 152
   i32.const 189
   i32.const 6
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i64.load
  local.set $3
  local.get $2
  i32.const 0
  i32.ne
  if (result i64)
   local.get $3
  else   
   local.get $3
   call $~lib/polyfills/bswap<u64>
  end
 )
 (func $~lib/dataview/DataView#setFloat32 (; 32 ;) (type $FUNCSIG$viifi) (param $0 i32) (param $1 i32) (param $2 f32) (param $3 i32)
  local.get $1
  i32.const 0
  i32.lt_s
  local.get $1
  i32.const 4
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  i32.or
  if
   i32.const 0
   i32.const 152
   i32.const 118
   i32.const 6
   call $~lib/env/abort
   unreachable
  end
  local.get $3
  i32.const 0
  i32.ne
  if
   local.get $0
   i32.load offset=4
   local.get $1
   i32.add
   local.get $2
   f32.store
  else   
   local.get $0
   i32.load offset=4
   local.get $1
   i32.add
   local.get $2
   i32.reinterpret_f32
   call $~lib/polyfills/bswap<u32>
   i32.store
  end
 )
 (func $~lib/dataview/DataView#setFloat64 (; 33 ;) (type $FUNCSIG$viidi) (param $0 i32) (param $1 i32) (param $2 f64) (param $3 i32)
  local.get $1
  i32.const 0
  i32.lt_s
  local.get $1
  i32.const 8
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  i32.or
  if
   i32.const 0
   i32.const 152
   i32.const 127
   i32.const 6
   call $~lib/env/abort
   unreachable
  end
  local.get $3
  i32.const 0
  i32.ne
  if
   local.get $0
   i32.load offset=4
   local.get $1
   i32.add
   local.get $2
   f64.store
  else   
   local.get $0
   i32.load offset=4
   local.get $1
   i32.add
   local.get $2
   i64.reinterpret_f64
   call $~lib/polyfills/bswap<u64>
   i64.store
  end
 )
 (func $~lib/dataview/DataView#setInt8 (; 34 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 0
   i32.const 152
   i32.const 133
   i32.const 49
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/dataview/DataView#setInt16 (; 35 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  local.get $1
  i32.const 0
  i32.lt_s
  local.get $1
  i32.const 2
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  i32.or
  if
   i32.const 0
   i32.const 152
   i32.const 141
   i32.const 6
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $3
  i32.const 0
  i32.ne
  if (result i32)
   local.get $2
  else   
   local.get $2
   call $~lib/polyfills/bswap<i16>
  end
  i32.store16
 )
 (func $~lib/dataview/DataView#setInt32 (; 36 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  local.get $1
  i32.const 0
  i32.lt_s
  local.get $1
  i32.const 4
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  i32.or
  if
   i32.const 0
   i32.const 152
   i32.const 149
   i32.const 6
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $3
  i32.const 0
  i32.ne
  if (result i32)
   local.get $2
  else   
   local.get $2
   call $~lib/polyfills/bswap<i32>
  end
  i32.store
 )
 (func $~lib/dataview/DataView#setInt64 (; 37 ;) (type $FUNCSIG$viiji) (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  local.get $1
  i32.const 0
  i32.lt_s
  local.get $1
  i32.const 8
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  i32.or
  if
   i32.const 0
   i32.const 152
   i32.const 198
   i32.const 6
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $3
  i32.const 0
  i32.ne
  if (result i64)
   local.get $2
  else   
   local.get $2
   call $~lib/polyfills/bswap<i64>
  end
  i64.store
 )
 (func $~lib/dataview/DataView#setUint8 (; 38 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 0
   i32.const 152
   i32.const 154
   i32.const 49
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/dataview/DataView#setUint16 (; 39 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  local.get $1
  i32.const 0
  i32.lt_s
  local.get $1
  i32.const 2
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  i32.or
  if
   i32.const 0
   i32.const 152
   i32.const 162
   i32.const 6
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $3
  i32.const 0
  i32.ne
  if (result i32)
   local.get $2
  else   
   local.get $2
   call $~lib/polyfills/bswap<u16>
  end
  i32.store16
 )
 (func $~lib/dataview/DataView#setUint32 (; 40 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  local.get $1
  i32.const 0
  i32.lt_s
  local.get $1
  i32.const 4
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  i32.or
  if
   i32.const 0
   i32.const 152
   i32.const 170
   i32.const 6
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $3
  i32.const 0
  i32.ne
  if (result i32)
   local.get $2
  else   
   local.get $2
   call $~lib/polyfills/bswap<u32>
  end
  i32.store
 )
 (func $~lib/dataview/DataView#setUint64 (; 41 ;) (type $FUNCSIG$viiji) (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  local.get $1
  i32.const 0
  i32.lt_s
  local.get $1
  i32.const 8
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  i32.or
  if
   i32.const 0
   i32.const 152
   i32.const 206
   i32.const 6
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $3
  i32.const 0
  i32.ne
  if (result i64)
   local.get $2
  else   
   local.get $2
   call $~lib/polyfills/bswap<u64>
  end
  i64.store
 )
 (func $~lib/dataview/DataView#constructor|trampoline (; 42 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~lib/argc
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 0
    local.set $2
   end
   local.get $1
   call $~lib/arraybuffer/ArrayBuffer#get:byteLength
   local.set $3
  end
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $~lib/dataview/DataView#constructor
 )
 (func $~lib/dataview/DataView#get:byteOffset (; 43 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.sub
 )
 (func $~lib/dataview/DataView#get:byteLength (; 44 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
 )
 (func $start:std/dataview (; 45 ;) (type $FUNCSIG$v)
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
  i32.const 0
  i32.const 8
  call $~lib/typedarray/Uint8Array#constructor
  global.set $std/dataview/array
  global.get $std/dataview/array
  i32.const 0
  i32.const 246
  call $~lib/typedarray/Uint8Array#__set
  global.get $std/dataview/array
  i32.const 1
  i32.const 224
  call $~lib/typedarray/Uint8Array#__set
  global.get $std/dataview/array
  i32.const 2
  i32.const 88
  call $~lib/typedarray/Uint8Array#__set
  global.get $std/dataview/array
  i32.const 3
  i32.const 159
  call $~lib/typedarray/Uint8Array#__set
  global.get $std/dataview/array
  i32.const 4
  i32.const 130
  call $~lib/typedarray/Uint8Array#__set
  global.get $std/dataview/array
  i32.const 5
  i32.const 101
  call $~lib/typedarray/Uint8Array#__set
  global.get $std/dataview/array
  i32.const 6
  i32.const 67
  call $~lib/typedarray/Uint8Array#__set
  global.get $std/dataview/array
  i32.const 7
  i32.const 95
  call $~lib/typedarray/Uint8Array#__set
  i32.const 0
  global.get $std/dataview/array
  call $~lib/typedarray/Uint8Array#get:buffer
  global.get $std/dataview/array
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  global.get $std/dataview/array
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  call $~lib/dataview/DataView#constructor
  global.set $std/dataview/view
  global.get $std/dataview/view
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getFloat32
  f32.const -4.592586247781397e-20
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 14
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 1
  i32.const 1
  call $~lib/dataview/DataView#getFloat32
  f32.const -2.3413961970849473e-37
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 15
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 2
  i32.const 1
  call $~lib/dataview/DataView#getFloat32
  f32.const 77105877018631129268224
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 16
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 3
  i32.const 1
  call $~lib/dataview/DataView#getFloat32
  f32.const 229.51023864746094
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 17
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 4
  i32.const 1
  call $~lib/dataview/DataView#getFloat32
  f32.const 14079802746555334656
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 18
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getFloat32
  f32.const -2275140518817895515269171e9
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 20
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 1
  i32.const 0
  call $~lib/dataview/DataView#getFloat32
  f32.const -62437351080004157440
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 21
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 2
  i32.const 0
  call $~lib/dataview/DataView#getFloat32
  f32.const 1403059112509440
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 22
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 3
  i32.const 0
  call $~lib/dataview/DataView#getFloat32
  f32.const -5.522466503261712e-20
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 23
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 4
  i32.const 0
  call $~lib/dataview/DataView#getFloat32
  f32.const -1.6843597451835358e-37
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 24
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getFloat64
  f64.const 7936550095674706383278551e126
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 26
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getFloat64
  f64.const -411777475818852546741639e241
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 27
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  call $~lib/dataview/DataView#getInt8
  i32.const -10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 29
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 1
  call $~lib/dataview/DataView#getInt8
  i32.const -32
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 30
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 2
  call $~lib/dataview/DataView#getInt8
  i32.const 88
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 31
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 3
  call $~lib/dataview/DataView#getInt8
  i32.const -97
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 32
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 4
  call $~lib/dataview/DataView#getInt8
  i32.const -126
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 33
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 5
  call $~lib/dataview/DataView#getInt8
  i32.const 101
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 34
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 6
  call $~lib/dataview/DataView#getInt8
  i32.const 67
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 35
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 7
  call $~lib/dataview/DataView#getInt8
  i32.const 95
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 36
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getInt16
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const -7946
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 38
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 1
  i32.const 1
  call $~lib/dataview/DataView#getInt16
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 22752
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 39
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 2
  i32.const 1
  call $~lib/dataview/DataView#getInt16
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const -24744
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 40
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 3
  i32.const 1
  call $~lib/dataview/DataView#getInt16
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const -32097
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 41
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 4
  i32.const 1
  call $~lib/dataview/DataView#getInt16
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 25986
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 42
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 5
  i32.const 1
  call $~lib/dataview/DataView#getInt16
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 17253
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 43
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 6
  i32.const 1
  call $~lib/dataview/DataView#getInt16
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 24387
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 44
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getInt16
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const -2336
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 46
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 1
  i32.const 0
  call $~lib/dataview/DataView#getInt16
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const -8104
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 47
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 2
  i32.const 0
  call $~lib/dataview/DataView#getInt16
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 22687
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 48
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 3
  i32.const 0
  call $~lib/dataview/DataView#getInt16
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const -24702
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 49
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 4
  i32.const 0
  call $~lib/dataview/DataView#getInt16
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const -32155
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 50
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 5
  i32.const 0
  call $~lib/dataview/DataView#getInt16
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 25923
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 51
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 6
  i32.const 0
  call $~lib/dataview/DataView#getInt16
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 17247
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 52
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getInt32
  i32.const -1621565194
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 54
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 1
  i32.const 1
  call $~lib/dataview/DataView#getInt32
  i32.const -2103486240
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 55
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 2
  i32.const 1
  call $~lib/dataview/DataView#getInt32
  i32.const 1703059288
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 56
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 3
  i32.const 1
  call $~lib/dataview/DataView#getInt32
  i32.const 1130726047
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 57
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 4
  i32.const 1
  call $~lib/dataview/DataView#getInt32
  i32.const 1598252418
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 58
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getInt32
  i32.const -153069409
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 60
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 1
  i32.const 0
  call $~lib/dataview/DataView#getInt32
  i32.const -531062910
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 61
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 2
  i32.const 0
  call $~lib/dataview/DataView#getInt32
  i32.const 1486848613
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 62
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 3
  i32.const 0
  call $~lib/dataview/DataView#getInt32
  i32.const -1618844349
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 63
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 4
  i32.const 0
  call $~lib/dataview/DataView#getInt32
  i32.const -2107292833
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 64
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getInt64
  i64.const 6864441868736323830
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 66
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getInt64
  i64.const -657428103485373601
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 67
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  call $~lib/dataview/DataView#getUint8
  i32.const 246
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 69
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 1
  call $~lib/dataview/DataView#getUint8
  i32.const 224
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 70
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 2
  call $~lib/dataview/DataView#getUint8
  i32.const 88
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 71
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 3
  call $~lib/dataview/DataView#getUint8
  i32.const 159
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 72
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 4
  call $~lib/dataview/DataView#getUint8
  i32.const 130
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 73
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 5
  call $~lib/dataview/DataView#getUint8
  i32.const 101
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 74
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 6
  call $~lib/dataview/DataView#getUint8
  i32.const 67
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 75
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 7
  call $~lib/dataview/DataView#getUint8
  i32.const 95
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 76
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 57590
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 78
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 1
  i32.const 1
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 22752
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 79
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 2
  i32.const 1
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 40792
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 80
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 3
  i32.const 1
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 33439
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 81
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 4
  i32.const 1
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 25986
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 82
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 5
  i32.const 1
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 17253
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 83
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 6
  i32.const 1
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 24387
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 84
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 63200
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 86
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 1
  i32.const 0
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 57432
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 87
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 2
  i32.const 0
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 22687
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 88
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 3
  i32.const 0
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 40834
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 89
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 4
  i32.const 0
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 33381
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 90
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 5
  i32.const 0
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 25923
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 91
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 6
  i32.const 0
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 17247
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 92
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getUint32
  i32.const -1621565194
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 94
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 1
  i32.const 1
  call $~lib/dataview/DataView#getUint32
  i32.const -2103486240
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 95
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 2
  i32.const 1
  call $~lib/dataview/DataView#getUint32
  i32.const 1703059288
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 96
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 3
  i32.const 1
  call $~lib/dataview/DataView#getUint32
  i32.const 1130726047
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 97
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 4
  i32.const 1
  call $~lib/dataview/DataView#getUint32
  i32.const 1598252418
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 98
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getUint32
  i32.const -153069409
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 100
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 1
  i32.const 0
  call $~lib/dataview/DataView#getUint32
  i32.const -531062910
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 101
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 2
  i32.const 0
  call $~lib/dataview/DataView#getUint32
  i32.const 1486848613
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 102
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 3
  i32.const 0
  call $~lib/dataview/DataView#getUint32
  i32.const -1618844349
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 103
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 4
  i32.const 0
  call $~lib/dataview/DataView#getUint32
  i32.const -2107292833
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 104
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getUint64
  i64.const 6864441868736323830
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 106
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getUint64
  i64.const -657428103485373601
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 107
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  f32.const 1.5976661625240943e-18
  i32.const 1
  call $~lib/dataview/DataView#setFloat32
  global.get $std/dataview/view
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getFloat32
  f32.const 1.5976661625240943e-18
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 110
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  f32.const 1976281973381696323584
  i32.const 0
  call $~lib/dataview/DataView#setFloat32
  global.get $std/dataview/view
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getFloat32
  f32.const 1976281973381696323584
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 113
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  f64.const -1094252199637739024055454e124
  i32.const 1
  call $~lib/dataview/DataView#setFloat64
  global.get $std/dataview/view
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getFloat64
  f64.const -1094252199637739024055454e124
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 116
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  f64.const 6.022586634778589e-103
  i32.const 0
  call $~lib/dataview/DataView#setFloat64
  global.get $std/dataview/view
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getFloat64
  f64.const 6.022586634778589e-103
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 119
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  i32.const 108
  call $~lib/dataview/DataView#setInt8
  global.get $std/dataview/view
  i32.const 0
  call $~lib/dataview/DataView#getInt8
  i32.const 108
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 122
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  i32.const -13360
  i32.const 1
  call $~lib/dataview/DataView#setInt16
  global.get $std/dataview/view
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getInt16
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const -13360
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 125
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  i32.const 14689
  i32.const 0
  call $~lib/dataview/DataView#setInt16
  global.get $std/dataview/view
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getInt16
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 14689
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 128
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  i32.const 1204680201
  i32.const 1
  call $~lib/dataview/DataView#setInt32
  global.get $std/dataview/view
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getInt32
  i32.const 1204680201
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 131
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  i32.const 660673230
  i32.const 0
  call $~lib/dataview/DataView#setInt32
  global.get $std/dataview/view
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getInt32
  i32.const 660673230
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 134
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  i64.const -3290739641816099749
  i32.const 1
  call $~lib/dataview/DataView#setInt64
  global.get $std/dataview/view
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getInt64
  i64.const -3290739641816099749
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 137
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  i64.const 8178932412950708047
  i32.const 0
  call $~lib/dataview/DataView#setInt64
  global.get $std/dataview/view
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getInt64
  i64.const 8178932412950708047
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 140
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  i32.const 238
  call $~lib/dataview/DataView#setUint8
  global.get $std/dataview/view
  i32.const 0
  call $~lib/dataview/DataView#getUint8
  i32.const 238
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 143
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  i32.const 58856
  i32.const 1
  call $~lib/dataview/DataView#setUint16
  global.get $std/dataview/view
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 58856
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 146
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  i32.const 60400
  i32.const 0
  call $~lib/dataview/DataView#setUint16
  global.get $std/dataview/view
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 60400
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 149
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  i32.const -846805744
  i32.const 1
  call $~lib/dataview/DataView#setUint32
  global.get $std/dataview/view
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getUint32
  i32.const -846805744
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 152
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  i32.const -1510791631
  i32.const 0
  call $~lib/dataview/DataView#setUint32
  global.get $std/dataview/view
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getUint32
  i32.const -1510791631
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 155
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  i64.const 2334704782995986958
  i32.const 1
  call $~lib/dataview/DataView#setUint64
  global.get $std/dataview/view
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getUint64
  i64.const 2334704782995986958
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 158
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  i64.const -7123186897289856329
  i32.const 0
  call $~lib/dataview/DataView#setUint64
  global.get $std/dataview/view
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getUint64
  i64.const -7123186897289856329
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 161
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 1
   global.set $~lib/argc
   i32.const 0
   global.get $std/dataview/array
   call $~lib/typedarray/Uint8Array#get:buffer
   i32.const 0
   i32.const 0
   call $~lib/dataview/DataView#constructor|trampoline
  end
  global.set $std/dataview/view
  global.get $std/dataview/view
  call $~lib/dataview/DataView#get:byteOffset
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 164
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/dataview/view
  call $~lib/dataview/DataView#get:byteLength
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 165
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 46 ;) (type $FUNCSIG$v)
  call $start:std/dataview
 )
 (func $null (; 47 ;) (type $FUNCSIG$v)
 )
)
