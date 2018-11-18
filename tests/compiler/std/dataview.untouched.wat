(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $iiif (func (param i32 i32 i32) (result f32)))
 (type $iiiF (func (param i32 i32 i32) (result f64)))
 (type $II (func (param i64) (result i64)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiiI (func (param i32 i32 i32) (result i64)))
 (type $iifiv (func (param i32 i32 f32 i32)))
 (type $iiFiv (func (param i32 i32 f64 i32)))
 (type $iiIiv (func (param i32 i32 i64 i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\1b\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 72) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 136) "\10\00\00\00~\00l\00i\00b\00/\00d\00a\00t\00a\00v\00i\00e\00w\00.\00t\00s\00")
 (data (i32.const 176) "\0f\00\00\00s\00t\00d\00/\00d\00a\00t\00a\00v\00i\00e\00w\00.\00t\00s\00")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/internal/arraybuffer/MAX_BLENGTH i32 (i32.const 1073741816))
 (global $std/dataview/array (mut i32) (i32.const 0))
 (global $~lib/builtins/i32.MIN_VALUE i32 (i32.const -2147483648))
 (global $std/dataview/view (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 212))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/internal/arraybuffer/computeSize (; 1 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 1
  i32.const 32
  get_local $0
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  i32.const 1
  i32.sub
  i32.clz
  i32.sub
  i32.shl
 )
 (func $~lib/allocator/arena/__memory_allocate (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $0
  get_global $~lib/internal/allocator/MAX_SIZE_32
  i32.gt_u
  if
   unreachable
  end
  get_global $~lib/allocator/arena/offset
  set_local $1
  get_local $1
  get_local $0
  tee_local $2
  i32.const 1
  tee_local $3
  get_local $2
  get_local $3
  i32.gt_u
  select
  i32.add
  get_global $~lib/internal/allocator/AL_MASK
  i32.add
  get_global $~lib/internal/allocator/AL_MASK
  i32.const -1
  i32.xor
  i32.and
  set_local $4
  current_memory
  set_local $5
  get_local $4
  get_local $5
  i32.const 16
  i32.shl
  i32.gt_u
  if
   get_local $4
   get_local $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   set_local $2
   get_local $5
   tee_local $3
   get_local $2
   tee_local $6
   get_local $3
   get_local $6
   i32.gt_s
   select
   set_local $3
   get_local $3
   grow_memory
   i32.const 0
   i32.lt_s
   if
    get_local $2
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  get_local $4
  set_global $~lib/allocator/arena/offset
  get_local $1
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 3 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  get_local $0
  get_global $~lib/internal/arraybuffer/MAX_BLENGTH
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 23
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $~lib/memory/memory.allocate|inlined.0 (result i32)
   get_local $0
   call $~lib/internal/arraybuffer/computeSize
   set_local $2
   get_local $2
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.0
  end
  set_local $1
  get_local $1
  get_local $0
  i32.store
  get_local $1
 )
 (func $~lib/internal/memory/memset (; 4 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  get_local $2
  i32.eqz
  if
   return
  end
  get_local $0
  get_local $1
  i32.store8
  get_local $0
  get_local $2
  i32.add
  i32.const 1
  i32.sub
  get_local $1
  i32.store8
  get_local $2
  i32.const 2
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 1
  i32.add
  get_local $1
  i32.store8
  get_local $0
  i32.const 2
  i32.add
  get_local $1
  i32.store8
  get_local $0
  get_local $2
  i32.add
  i32.const 2
  i32.sub
  get_local $1
  i32.store8
  get_local $0
  get_local $2
  i32.add
  i32.const 3
  i32.sub
  get_local $1
  i32.store8
  get_local $2
  i32.const 6
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 3
  i32.add
  get_local $1
  i32.store8
  get_local $0
  get_local $2
  i32.add
  i32.const 4
  i32.sub
  get_local $1
  i32.store8
  get_local $2
  i32.const 8
  i32.le_u
  if
   return
  end
  i32.const 0
  get_local $0
  i32.sub
  i32.const 3
  i32.and
  set_local $3
  get_local $0
  get_local $3
  i32.add
  set_local $0
  get_local $2
  get_local $3
  i32.sub
  set_local $2
  get_local $2
  i32.const -4
  i32.and
  set_local $2
  i32.const -1
  i32.const 255
  i32.div_u
  get_local $1
  i32.const 255
  i32.and
  i32.mul
  set_local $4
  get_local $0
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 4
  i32.sub
  get_local $4
  i32.store
  get_local $2
  i32.const 8
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 4
  i32.add
  get_local $4
  i32.store
  get_local $0
  i32.const 8
  i32.add
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 12
  i32.sub
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 8
  i32.sub
  get_local $4
  i32.store
  get_local $2
  i32.const 24
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 12
  i32.add
  get_local $4
  i32.store
  get_local $0
  i32.const 16
  i32.add
  get_local $4
  i32.store
  get_local $0
  i32.const 20
  i32.add
  get_local $4
  i32.store
  get_local $0
  i32.const 24
  i32.add
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 28
  i32.sub
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 24
  i32.sub
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 20
  i32.sub
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 16
  i32.sub
  get_local $4
  i32.store
  i32.const 24
  get_local $0
  i32.const 4
  i32.and
  i32.add
  set_local $3
  get_local $0
  get_local $3
  i32.add
  set_local $0
  get_local $2
  get_local $3
  i32.sub
  set_local $2
  get_local $4
  i64.extend_u/i32
  get_local $4
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  set_local $5
  block $break|0
   loop $continue|0
    get_local $2
    i32.const 32
    i32.ge_u
    if
     block
      get_local $0
      get_local $5
      i64.store
      get_local $0
      i32.const 8
      i32.add
      get_local $5
      i64.store
      get_local $0
      i32.const 16
      i32.add
      get_local $5
      i64.store
      get_local $0
      i32.const 24
      i32.add
      get_local $5
      i64.store
      get_local $2
      i32.const 32
      i32.sub
      set_local $2
      get_local $0
      i32.const 32
      i32.add
      set_local $0
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/memory/memory.allocate (; 5 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  call $~lib/allocator/arena/__memory_allocate
  return
 )
 (func $~lib/internal/typedarray/TypedArray<u8,u32>#constructor (; 6 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  i32.const 1073741816
  i32.gt_u
  if
   i32.const 0
   i32.const 8
   i32.const 24
   i32.const 34
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 0
  i32.shl
  set_local $2
  get_local $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $3
  get_local $3
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $4
  i32.const 0
  set_local $5
  get_local $4
  get_local $5
  get_local $2
  call $~lib/internal/memory/memset
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 12
    call $~lib/memory/memory.allocate
    set_local $5
    get_local $5
    i32.const 0
    i32.store
    get_local $5
    i32.const 0
    i32.store offset=4
    get_local $5
    i32.const 0
    i32.store offset=8
    get_local $5
   end
   tee_local $0
  end
  tee_local $0
  get_local $3
  i32.store
  get_local $0
  i32.const 0
  i32.store offset=4
  get_local $0
  get_local $2
  i32.store offset=8
  get_local $0
 )
 (func $~lib/internal/typedarray/TypedArray<u8,u32>#__set (; 7 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $1
  get_local $0
  i32.load offset=8
  i32.const 0
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 8
   i32.const 51
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  get_local $3
  get_local $4
  i32.add
  get_local $1
  i32.const 0
  i32.shl
  i32.add
  get_local $2
  i32.store8 offset=8
 )
 (func $~lib/dataview/DataView#constructor (; 8 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  get_local $3
  get_global $~lib/builtins/i32.MIN_VALUE
  i32.eq
  if
   get_local $1
   i32.load
   get_local $2
   i32.sub
   set_local $3
  end
  get_local $2
  get_global $~lib/internal/arraybuffer/MAX_BLENGTH
  i32.gt_u
  if
   i32.const 0
   i32.const 136
   i32.const 14
   i32.const 44
   call $~lib/env/abort
   unreachable
  end
  get_local $3
  get_global $~lib/internal/arraybuffer/MAX_BLENGTH
  i32.gt_u
  if
   i32.const 0
   i32.const 136
   i32.const 15
   i32.const 44
   call $~lib/env/abort
   unreachable
  end
  get_local $2
  get_local $3
  i32.add
  get_local $1
  i32.load
  i32.gt_s
  if
   i32.const 0
   i32.const 136
   i32.const 16
   i32.const 53
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 12
    call $~lib/memory/memory.allocate
    set_local $4
    get_local $4
    get_local $1
    i32.store
    get_local $4
    get_local $2
    i32.store offset=4
    get_local $4
    get_local $3
    i32.store offset=8
    get_local $4
   end
   tee_local $0
  end
  tee_local $0
 )
 (func $~lib/polyfills/bswap<u32> (; 9 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const -16711936
  i32.and
  i32.const 8
  i32.rotl
  get_local $0
  i32.const 16711935
  i32.and
  i32.const 8
  i32.rotr
  i32.or
  return
 )
 (func $~lib/dataview/DataView#getFloat32 (; 10 ;) (type $iiif) (param $0 i32) (param $1 i32) (param $2 i32) (result f32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 4
  set_local $3
  get_local $0
  i32.load offset=8
  set_local $4
  get_local $1
  get_global $~lib/internal/arraybuffer/MAX_BLENGTH
  i32.gt_u
  tee_local $5
  if (result i32)
   get_local $5
  else   
   get_local $1
   get_local $3
   i32.add
   get_local $4
   i32.gt_s
  end
  if
   i32.const 0
   i32.const 136
   i32.const 188
   i32.const 73
   call $~lib/env/abort
   unreachable
  end
  get_local $2
  i32.const 1
  i32.and
  if (result f32)
   get_local $0
   i32.load
   get_local $0
   i32.load offset=4
   i32.add
   get_local $1
   i32.add
   f32.load offset=8
  else   
   get_local $0
   i32.load
   get_local $0
   i32.load offset=4
   i32.add
   get_local $1
   i32.add
   i32.load offset=8
   call $~lib/polyfills/bswap<u32>
   f32.reinterpret/i32
  end
 )
 (func $~lib/polyfills/bswap<u64> (; 11 ;) (type $II) (param $0 i64) (result i64)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  get_local $0
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  set_local $1
  get_local $0
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  set_local $2
  get_local $1
  get_local $2
  i64.or
  set_local $3
  get_local $3
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  set_local $1
  get_local $3
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  set_local $2
  get_local $1
  get_local $2
  i64.or
  i64.const 32
  i64.rotr
  return
 )
 (func $~lib/dataview/DataView#getFloat64 (; 12 ;) (type $iiiF) (param $0 i32) (param $1 i32) (param $2 i32) (result f64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 8
  set_local $3
  get_local $0
  i32.load offset=8
  set_local $4
  get_local $1
  get_global $~lib/internal/arraybuffer/MAX_BLENGTH
  i32.gt_u
  tee_local $5
  if (result i32)
   get_local $5
  else   
   get_local $1
   get_local $3
   i32.add
   get_local $4
   i32.gt_s
  end
  if
   i32.const 0
   i32.const 136
   i32.const 188
   i32.const 73
   call $~lib/env/abort
   unreachable
  end
  get_local $2
  i32.const 1
  i32.and
  if (result f64)
   get_local $0
   i32.load
   get_local $0
   i32.load offset=4
   i32.add
   get_local $1
   i32.add
   f64.load offset=8
  else   
   get_local $0
   i32.load
   get_local $0
   i32.load offset=4
   i32.add
   get_local $1
   i32.add
   i64.load offset=8
   call $~lib/polyfills/bswap<u64>
   f64.reinterpret/i64
  end
 )
 (func $~lib/dataview/DataView#getInt8 (; 13 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 1
  set_local $2
  get_local $0
  i32.load offset=8
  set_local $3
  get_local $1
  get_global $~lib/internal/arraybuffer/MAX_BLENGTH
  i32.gt_u
  tee_local $4
  if (result i32)
   get_local $4
  else   
   get_local $1
   get_local $2
   i32.add
   get_local $3
   i32.gt_s
  end
  if
   i32.const 0
   i32.const 136
   i32.const 188
   i32.const 73
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load
  get_local $0
  i32.load offset=4
  i32.add
  get_local $1
  i32.add
  i32.load8_s offset=8
 )
 (func $~lib/polyfills/bswap<i16> (; 14 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const 8
  i32.shl
  get_local $0
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
 (func $~lib/dataview/DataView#getInt16 (; 15 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 2
  set_local $3
  get_local $0
  i32.load offset=8
  set_local $4
  get_local $1
  get_global $~lib/internal/arraybuffer/MAX_BLENGTH
  i32.gt_u
  tee_local $5
  if (result i32)
   get_local $5
  else   
   get_local $1
   get_local $3
   i32.add
   get_local $4
   i32.gt_s
  end
  if
   i32.const 0
   i32.const 136
   i32.const 188
   i32.const 73
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load
  get_local $0
  i32.load offset=4
  i32.add
  get_local $1
  i32.add
  i32.load16_s offset=8
  set_local $6
  get_local $2
  i32.const 1
  i32.and
  if (result i32)
   get_local $6
  else   
   get_local $6
   call $~lib/polyfills/bswap<i16>
  end
 )
 (func $~lib/polyfills/bswap<i32> (; 16 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const -16711936
  i32.and
  i32.const 8
  i32.rotl
  get_local $0
  i32.const 16711935
  i32.and
  i32.const 8
  i32.rotr
  i32.or
  return
 )
 (func $~lib/dataview/DataView#getInt32 (; 17 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 4
  set_local $3
  get_local $0
  i32.load offset=8
  set_local $4
  get_local $1
  get_global $~lib/internal/arraybuffer/MAX_BLENGTH
  i32.gt_u
  tee_local $5
  if (result i32)
   get_local $5
  else   
   get_local $1
   get_local $3
   i32.add
   get_local $4
   i32.gt_s
  end
  if
   i32.const 0
   i32.const 136
   i32.const 188
   i32.const 73
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load
  get_local $0
  i32.load offset=4
  i32.add
  get_local $1
  i32.add
  i32.load offset=8
  set_local $6
  get_local $2
  i32.const 1
  i32.and
  if (result i32)
   get_local $6
  else   
   get_local $6
   call $~lib/polyfills/bswap<i32>
  end
 )
 (func $~lib/polyfills/bswap<i64> (; 18 ;) (type $II) (param $0 i64) (result i64)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  get_local $0
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  set_local $1
  get_local $0
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  set_local $2
  get_local $1
  get_local $2
  i64.or
  set_local $3
  get_local $3
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  set_local $1
  get_local $3
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  set_local $2
  get_local $1
  get_local $2
  i64.or
  i64.const 32
  i64.rotr
  return
 )
 (func $~lib/dataview/DataView#getInt64 (; 19 ;) (type $iiiI) (param $0 i32) (param $1 i32) (param $2 i32) (result i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  i32.const 8
  set_local $3
  get_local $0
  i32.load offset=8
  set_local $4
  get_local $1
  get_global $~lib/internal/arraybuffer/MAX_BLENGTH
  i32.gt_u
  tee_local $5
  if (result i32)
   get_local $5
  else   
   get_local $1
   get_local $3
   i32.add
   get_local $4
   i32.gt_s
  end
  if
   i32.const 0
   i32.const 136
   i32.const 188
   i32.const 73
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load
  get_local $0
  i32.load offset=4
  i32.add
  get_local $1
  i32.add
  i64.load offset=8
  set_local $6
  get_local $2
  i32.const 1
  i32.and
  if (result i64)
   get_local $6
  else   
   get_local $6
   call $~lib/polyfills/bswap<i64>
  end
 )
 (func $~lib/dataview/DataView#getUint8 (; 20 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 1
  set_local $2
  get_local $0
  i32.load offset=8
  set_local $3
  get_local $1
  get_global $~lib/internal/arraybuffer/MAX_BLENGTH
  i32.gt_u
  tee_local $4
  if (result i32)
   get_local $4
  else   
   get_local $1
   get_local $2
   i32.add
   get_local $3
   i32.gt_s
  end
  if
   i32.const 0
   i32.const 136
   i32.const 188
   i32.const 73
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load
  get_local $0
  i32.load offset=4
  i32.add
  get_local $1
  i32.add
  i32.load8_u offset=8
 )
 (func $~lib/polyfills/bswap<u16> (; 21 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const 8
  i32.shl
  get_local $0
  i32.const 65535
  i32.and
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.or
  return
 )
 (func $~lib/dataview/DataView#getUint16 (; 22 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 2
  set_local $3
  get_local $0
  i32.load offset=8
  set_local $4
  get_local $1
  get_global $~lib/internal/arraybuffer/MAX_BLENGTH
  i32.gt_u
  tee_local $5
  if (result i32)
   get_local $5
  else   
   get_local $1
   get_local $3
   i32.add
   get_local $4
   i32.gt_s
  end
  if
   i32.const 0
   i32.const 136
   i32.const 188
   i32.const 73
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load
  get_local $0
  i32.load offset=4
  i32.add
  get_local $1
  i32.add
  i32.load16_u offset=8
  set_local $6
  get_local $2
  i32.const 1
  i32.and
  if (result i32)
   get_local $6
  else   
   get_local $6
   call $~lib/polyfills/bswap<u16>
  end
 )
 (func $~lib/dataview/DataView#getUint32 (; 23 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 4
  set_local $3
  get_local $0
  i32.load offset=8
  set_local $4
  get_local $1
  get_global $~lib/internal/arraybuffer/MAX_BLENGTH
  i32.gt_u
  tee_local $5
  if (result i32)
   get_local $5
  else   
   get_local $1
   get_local $3
   i32.add
   get_local $4
   i32.gt_s
  end
  if
   i32.const 0
   i32.const 136
   i32.const 188
   i32.const 73
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load
  get_local $0
  i32.load offset=4
  i32.add
  get_local $1
  i32.add
  i32.load offset=8
  set_local $6
  get_local $2
  i32.const 1
  i32.and
  if (result i32)
   get_local $6
  else   
   get_local $6
   call $~lib/polyfills/bswap<u32>
  end
 )
 (func $~lib/dataview/DataView#getUint64 (; 24 ;) (type $iiiI) (param $0 i32) (param $1 i32) (param $2 i32) (result i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  i32.const 8
  set_local $3
  get_local $0
  i32.load offset=8
  set_local $4
  get_local $1
  get_global $~lib/internal/arraybuffer/MAX_BLENGTH
  i32.gt_u
  tee_local $5
  if (result i32)
   get_local $5
  else   
   get_local $1
   get_local $3
   i32.add
   get_local $4
   i32.gt_s
  end
  if
   i32.const 0
   i32.const 136
   i32.const 188
   i32.const 73
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load
  get_local $0
  i32.load offset=4
  i32.add
  get_local $1
  i32.add
  i64.load offset=8
  set_local $6
  get_local $2
  i32.const 1
  i32.and
  if (result i64)
   get_local $6
  else   
   get_local $6
   call $~lib/polyfills/bswap<u64>
  end
 )
 (func $~lib/dataview/DataView#setFloat32 (; 25 ;) (type $iifiv) (param $0 i32) (param $1 i32) (param $2 f32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 4
  set_local $4
  get_local $0
  i32.load offset=8
  set_local $5
  get_local $1
  get_global $~lib/internal/arraybuffer/MAX_BLENGTH
  i32.gt_u
  tee_local $6
  if (result i32)
   get_local $6
  else   
   get_local $1
   get_local $4
   i32.add
   get_local $5
   i32.gt_s
  end
  if
   i32.const 0
   i32.const 136
   i32.const 188
   i32.const 73
   call $~lib/env/abort
   unreachable
  end
  get_local $3
  i32.const 1
  i32.and
  if
   get_local $0
   i32.load
   get_local $0
   i32.load offset=4
   i32.add
   get_local $1
   i32.add
   get_local $2
   f32.store offset=8
  else   
   get_local $0
   i32.load
   get_local $0
   i32.load offset=4
   i32.add
   get_local $1
   i32.add
   get_local $2
   i32.reinterpret/f32
   call $~lib/polyfills/bswap<u32>
   i32.store offset=8
  end
 )
 (func $~lib/dataview/DataView#setFloat64 (; 26 ;) (type $iiFiv) (param $0 i32) (param $1 i32) (param $2 f64) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 8
  set_local $4
  get_local $0
  i32.load offset=8
  set_local $5
  get_local $1
  get_global $~lib/internal/arraybuffer/MAX_BLENGTH
  i32.gt_u
  tee_local $6
  if (result i32)
   get_local $6
  else   
   get_local $1
   get_local $4
   i32.add
   get_local $5
   i32.gt_s
  end
  if
   i32.const 0
   i32.const 136
   i32.const 188
   i32.const 73
   call $~lib/env/abort
   unreachable
  end
  get_local $3
  i32.const 1
  i32.and
  if
   get_local $0
   i32.load
   get_local $0
   i32.load offset=4
   i32.add
   get_local $1
   i32.add
   get_local $2
   f64.store offset=8
  else   
   get_local $0
   i32.load
   get_local $0
   i32.load offset=4
   i32.add
   get_local $1
   i32.add
   get_local $2
   i64.reinterpret/f64
   call $~lib/polyfills/bswap<u64>
   i64.store offset=8
  end
 )
 (func $~lib/dataview/DataView#setInt8 (; 27 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  set_local $3
  get_local $0
  i32.load offset=8
  set_local $4
  get_local $1
  get_global $~lib/internal/arraybuffer/MAX_BLENGTH
  i32.gt_u
  tee_local $5
  if (result i32)
   get_local $5
  else   
   get_local $1
   get_local $3
   i32.add
   get_local $4
   i32.gt_s
  end
  if
   i32.const 0
   i32.const 136
   i32.const 188
   i32.const 73
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load
  get_local $0
  i32.load offset=4
  i32.add
  get_local $1
  i32.add
  get_local $2
  i32.store8 offset=8
 )
 (func $~lib/dataview/DataView#setInt16 (; 28 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 2
  set_local $4
  get_local $0
  i32.load offset=8
  set_local $5
  get_local $1
  get_global $~lib/internal/arraybuffer/MAX_BLENGTH
  i32.gt_u
  tee_local $6
  if (result i32)
   get_local $6
  else   
   get_local $1
   get_local $4
   i32.add
   get_local $5
   i32.gt_s
  end
  if
   i32.const 0
   i32.const 136
   i32.const 188
   i32.const 73
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load
  get_local $0
  i32.load offset=4
  i32.add
  get_local $1
  i32.add
  get_local $3
  i32.const 1
  i32.and
  if (result i32)
   get_local $2
  else   
   get_local $2
   call $~lib/polyfills/bswap<i16>
  end
  i32.store16 offset=8
 )
 (func $~lib/dataview/DataView#setInt32 (; 29 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 4
  set_local $4
  get_local $0
  i32.load offset=8
  set_local $5
  get_local $1
  get_global $~lib/internal/arraybuffer/MAX_BLENGTH
  i32.gt_u
  tee_local $6
  if (result i32)
   get_local $6
  else   
   get_local $1
   get_local $4
   i32.add
   get_local $5
   i32.gt_s
  end
  if
   i32.const 0
   i32.const 136
   i32.const 188
   i32.const 73
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load
  get_local $0
  i32.load offset=4
  i32.add
  get_local $1
  i32.add
  get_local $3
  i32.const 1
  i32.and
  if (result i32)
   get_local $2
  else   
   get_local $2
   call $~lib/polyfills/bswap<i32>
  end
  i32.store offset=8
 )
 (func $~lib/dataview/DataView#setInt64 (; 30 ;) (type $iiIiv) (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 8
  set_local $4
  get_local $0
  i32.load offset=8
  set_local $5
  get_local $1
  get_global $~lib/internal/arraybuffer/MAX_BLENGTH
  i32.gt_u
  tee_local $6
  if (result i32)
   get_local $6
  else   
   get_local $1
   get_local $4
   i32.add
   get_local $5
   i32.gt_s
  end
  if
   i32.const 0
   i32.const 136
   i32.const 188
   i32.const 73
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load
  get_local $0
  i32.load offset=4
  i32.add
  get_local $1
  i32.add
  get_local $3
  i32.const 1
  i32.and
  if (result i64)
   get_local $2
  else   
   get_local $2
   call $~lib/polyfills/bswap<i64>
  end
  i64.store offset=8
 )
 (func $~lib/dataview/DataView#setUint8 (; 31 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  set_local $3
  get_local $0
  i32.load offset=8
  set_local $4
  get_local $1
  get_global $~lib/internal/arraybuffer/MAX_BLENGTH
  i32.gt_u
  tee_local $5
  if (result i32)
   get_local $5
  else   
   get_local $1
   get_local $3
   i32.add
   get_local $4
   i32.gt_s
  end
  if
   i32.const 0
   i32.const 136
   i32.const 188
   i32.const 73
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load
  get_local $0
  i32.load offset=4
  i32.add
  get_local $1
  i32.add
  get_local $2
  i32.store8 offset=8
 )
 (func $~lib/dataview/DataView#setUint16 (; 32 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 2
  set_local $4
  get_local $0
  i32.load offset=8
  set_local $5
  get_local $1
  get_global $~lib/internal/arraybuffer/MAX_BLENGTH
  i32.gt_u
  tee_local $6
  if (result i32)
   get_local $6
  else   
   get_local $1
   get_local $4
   i32.add
   get_local $5
   i32.gt_s
  end
  if
   i32.const 0
   i32.const 136
   i32.const 188
   i32.const 73
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load
  get_local $0
  i32.load offset=4
  i32.add
  get_local $1
  i32.add
  get_local $3
  i32.const 1
  i32.and
  if (result i32)
   get_local $2
  else   
   get_local $2
   call $~lib/polyfills/bswap<u16>
  end
  i32.store16 offset=8
 )
 (func $~lib/dataview/DataView#setUint32 (; 33 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 4
  set_local $4
  get_local $0
  i32.load offset=8
  set_local $5
  get_local $1
  get_global $~lib/internal/arraybuffer/MAX_BLENGTH
  i32.gt_u
  tee_local $6
  if (result i32)
   get_local $6
  else   
   get_local $1
   get_local $4
   i32.add
   get_local $5
   i32.gt_s
  end
  if
   i32.const 0
   i32.const 136
   i32.const 188
   i32.const 73
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load
  get_local $0
  i32.load offset=4
  i32.add
  get_local $1
  i32.add
  get_local $3
  i32.const 1
  i32.and
  if (result i32)
   get_local $2
  else   
   get_local $2
   call $~lib/polyfills/bswap<u32>
  end
  i32.store offset=8
 )
 (func $~lib/dataview/DataView#setUint64 (; 34 ;) (type $iiIiv) (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 8
  set_local $4
  get_local $0
  i32.load offset=8
  set_local $5
  get_local $1
  get_global $~lib/internal/arraybuffer/MAX_BLENGTH
  i32.gt_u
  tee_local $6
  if (result i32)
   get_local $6
  else   
   get_local $1
   get_local $4
   i32.add
   get_local $5
   i32.gt_s
  end
  if
   i32.const 0
   i32.const 136
   i32.const 188
   i32.const 73
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load
  get_local $0
  i32.load offset=4
  i32.add
  get_local $1
  i32.add
  get_local $3
  i32.const 1
  i32.and
  if (result i64)
   get_local $2
  else   
   get_local $2
   call $~lib/polyfills/bswap<u64>
  end
  i64.store offset=8
 )
 (func $start (; 35 ;) (type $v)
  get_global $HEAP_BASE
  get_global $~lib/internal/allocator/AL_MASK
  i32.add
  get_global $~lib/internal/allocator/AL_MASK
  i32.const -1
  i32.xor
  i32.and
  set_global $~lib/allocator/arena/startOffset
  get_global $~lib/allocator/arena/startOffset
  set_global $~lib/allocator/arena/offset
  i32.const 0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<u8,u32>#constructor
  set_global $std/dataview/array
  get_global $std/dataview/array
  i32.const 0
  i32.const 246
  call $~lib/internal/typedarray/TypedArray<u8,u32>#__set
  get_global $std/dataview/array
  i32.const 1
  i32.const 224
  call $~lib/internal/typedarray/TypedArray<u8,u32>#__set
  get_global $std/dataview/array
  i32.const 2
  i32.const 88
  call $~lib/internal/typedarray/TypedArray<u8,u32>#__set
  get_global $std/dataview/array
  i32.const 3
  i32.const 159
  call $~lib/internal/typedarray/TypedArray<u8,u32>#__set
  get_global $std/dataview/array
  i32.const 4
  i32.const 130
  call $~lib/internal/typedarray/TypedArray<u8,u32>#__set
  get_global $std/dataview/array
  i32.const 5
  i32.const 101
  call $~lib/internal/typedarray/TypedArray<u8,u32>#__set
  get_global $std/dataview/array
  i32.const 6
  i32.const 67
  call $~lib/internal/typedarray/TypedArray<u8,u32>#__set
  get_global $std/dataview/array
  i32.const 7
  i32.const 95
  call $~lib/internal/typedarray/TypedArray<u8,u32>#__set
  i32.const 0
  get_global $std/dataview/array
  i32.load
  get_global $std/dataview/array
  i32.load offset=4
  get_global $std/dataview/array
  i32.load offset=8
  call $~lib/dataview/DataView#constructor
  set_global $std/dataview/view
  get_global $std/dataview/view
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getFloat32
  f32.const -4.592586247781397e-20
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 16
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 1
  i32.const 1
  call $~lib/dataview/DataView#getFloat32
  f32.const -2.3413961970849473e-37
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 17
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 2
  i32.const 1
  call $~lib/dataview/DataView#getFloat32
  f32.const 77105877018631129268224
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 18
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 3
  i32.const 1
  call $~lib/dataview/DataView#getFloat32
  f32.const 229.51023864746094
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 19
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 4
  i32.const 1
  call $~lib/dataview/DataView#getFloat32
  f32.const 14079802746555334656
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 20
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getFloat32
  f32.const -2275140518817895515269171e9
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 22
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 1
  i32.const 0
  call $~lib/dataview/DataView#getFloat32
  f32.const -62437351080004157440
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 23
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 2
  i32.const 0
  call $~lib/dataview/DataView#getFloat32
  f32.const 1403059112509440
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 24
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 3
  i32.const 0
  call $~lib/dataview/DataView#getFloat32
  f32.const -5.522466503261712e-20
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 25
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 4
  i32.const 0
  call $~lib/dataview/DataView#getFloat32
  f32.const -1.6843597451835358e-37
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 26
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getFloat64
  f64.const 7936550095674706383278551e126
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 28
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getFloat64
  f64.const -411777475818852546741639e241
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 29
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 0
  call $~lib/dataview/DataView#getInt8
  i32.const -10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 31
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 1
  call $~lib/dataview/DataView#getInt8
  i32.const -32
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 32
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 2
  call $~lib/dataview/DataView#getInt8
  i32.const 88
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 33
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 3
  call $~lib/dataview/DataView#getInt8
  i32.const -97
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 34
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 4
  call $~lib/dataview/DataView#getInt8
  i32.const -126
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 35
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 5
  call $~lib/dataview/DataView#getInt8
  i32.const 101
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 36
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 6
  call $~lib/dataview/DataView#getInt8
  i32.const 67
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 37
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 7
  call $~lib/dataview/DataView#getInt8
  i32.const 95
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 38
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
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
   i32.const 176
   i32.const 40
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
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
   i32.const 176
   i32.const 41
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
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
   i32.const 176
   i32.const 42
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
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
   i32.const 176
   i32.const 43
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
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
   i32.const 176
   i32.const 44
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
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
   i32.const 176
   i32.const 45
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
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
   i32.const 176
   i32.const 46
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
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
   i32.const 176
   i32.const 48
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
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
   i32.const 176
   i32.const 49
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
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
   i32.const 176
   i32.const 50
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
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
   i32.const 176
   i32.const 51
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
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
   i32.const 176
   i32.const 52
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
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
   i32.const 176
   i32.const 53
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
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
   i32.const 176
   i32.const 54
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getInt32
  i32.const -1621565194
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 56
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 1
  i32.const 1
  call $~lib/dataview/DataView#getInt32
  i32.const -2103486240
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 57
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 2
  i32.const 1
  call $~lib/dataview/DataView#getInt32
  i32.const 1703059288
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 58
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 3
  i32.const 1
  call $~lib/dataview/DataView#getInt32
  i32.const 1130726047
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 59
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 4
  i32.const 1
  call $~lib/dataview/DataView#getInt32
  i32.const 1598252418
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 60
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getInt32
  i32.const -153069409
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 62
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 1
  i32.const 0
  call $~lib/dataview/DataView#getInt32
  i32.const -531062910
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 63
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 2
  i32.const 0
  call $~lib/dataview/DataView#getInt32
  i32.const 1486848613
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 64
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 3
  i32.const 0
  call $~lib/dataview/DataView#getInt32
  i32.const -1618844349
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 65
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 4
  i32.const 0
  call $~lib/dataview/DataView#getInt32
  i32.const -2107292833
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 66
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getInt64
  i64.const 6864441868736323830
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 68
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getInt64
  i64.const -657428103485373601
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 69
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 0
  call $~lib/dataview/DataView#getUint8
  i32.const 246
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 71
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 1
  call $~lib/dataview/DataView#getUint8
  i32.const 224
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 72
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 2
  call $~lib/dataview/DataView#getUint8
  i32.const 88
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 73
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 3
  call $~lib/dataview/DataView#getUint8
  i32.const 159
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 74
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 4
  call $~lib/dataview/DataView#getUint8
  i32.const 130
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 75
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 5
  call $~lib/dataview/DataView#getUint8
  i32.const 101
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 76
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 6
  call $~lib/dataview/DataView#getUint8
  i32.const 67
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 77
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 7
  call $~lib/dataview/DataView#getUint8
  i32.const 95
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 78
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
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
   i32.const 176
   i32.const 80
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
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
   i32.const 176
   i32.const 81
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
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
   i32.const 176
   i32.const 82
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
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
   i32.const 176
   i32.const 83
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
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
   i32.const 176
   i32.const 84
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
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
   i32.const 176
   i32.const 85
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
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
   i32.const 176
   i32.const 86
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
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
   i32.const 176
   i32.const 88
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
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
   i32.const 176
   i32.const 89
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
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
   i32.const 176
   i32.const 90
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
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
   i32.const 176
   i32.const 91
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
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
   i32.const 176
   i32.const 92
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
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
   i32.const 176
   i32.const 93
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
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
   i32.const 176
   i32.const 94
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getUint32
  i32.const -1621565194
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 96
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 1
  i32.const 1
  call $~lib/dataview/DataView#getUint32
  i32.const -2103486240
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 97
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 2
  i32.const 1
  call $~lib/dataview/DataView#getUint32
  i32.const 1703059288
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 98
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 3
  i32.const 1
  call $~lib/dataview/DataView#getUint32
  i32.const 1130726047
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 99
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 4
  i32.const 1
  call $~lib/dataview/DataView#getUint32
  i32.const 1598252418
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 100
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getUint32
  i32.const -153069409
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 102
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 1
  i32.const 0
  call $~lib/dataview/DataView#getUint32
  i32.const -531062910
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 103
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 2
  i32.const 0
  call $~lib/dataview/DataView#getUint32
  i32.const 1486848613
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 104
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 3
  i32.const 0
  call $~lib/dataview/DataView#getUint32
  i32.const -1618844349
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 105
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 4
  i32.const 0
  call $~lib/dataview/DataView#getUint32
  i32.const -2107292833
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 106
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getUint64
  i64.const 6864441868736323830
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 108
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getUint64
  i64.const -657428103485373601
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 109
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 0
  f32.const 1.5976661625240943e-18
  i32.const 1
  call $~lib/dataview/DataView#setFloat32
  get_global $std/dataview/view
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getFloat32
  f32.const 1.5976661625240943e-18
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 112
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 0
  f32.const 1976281973381696323584
  i32.const 0
  call $~lib/dataview/DataView#setFloat32
  get_global $std/dataview/view
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getFloat32
  f32.const 1976281973381696323584
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 115
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 0
  f64.const -1094252199637739024055454e124
  i32.const 1
  call $~lib/dataview/DataView#setFloat64
  get_global $std/dataview/view
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getFloat64
  f64.const -1094252199637739024055454e124
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 118
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 0
  f64.const 6.022586634778589e-103
  i32.const 0
  call $~lib/dataview/DataView#setFloat64
  get_global $std/dataview/view
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getFloat64
  f64.const 6.022586634778589e-103
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 121
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 0
  i32.const 108
  call $~lib/dataview/DataView#setInt8
  get_global $std/dataview/view
  i32.const 0
  call $~lib/dataview/DataView#getInt8
  i32.const 108
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 124
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 0
  i32.const -13360
  i32.const 1
  call $~lib/dataview/DataView#setInt16
  get_global $std/dataview/view
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
   i32.const 176
   i32.const 127
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 0
  i32.const 14689
  i32.const 0
  call $~lib/dataview/DataView#setInt16
  get_global $std/dataview/view
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
   i32.const 176
   i32.const 130
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 0
  i32.const 1204680201
  i32.const 1
  call $~lib/dataview/DataView#setInt32
  get_global $std/dataview/view
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getInt32
  i32.const 1204680201
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 133
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 0
  i32.const 660673230
  i32.const 0
  call $~lib/dataview/DataView#setInt32
  get_global $std/dataview/view
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getInt32
  i32.const 660673230
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 136
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 0
  i64.const -3290739641816099749
  i32.const 1
  call $~lib/dataview/DataView#setInt64
  get_global $std/dataview/view
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getInt64
  i64.const -3290739641816099749
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 139
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 0
  i64.const 8178932412950708047
  i32.const 0
  call $~lib/dataview/DataView#setInt64
  get_global $std/dataview/view
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getInt64
  i64.const 8178932412950708047
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 142
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 0
  i32.const 238
  call $~lib/dataview/DataView#setUint8
  get_global $std/dataview/view
  i32.const 0
  call $~lib/dataview/DataView#getUint8
  i32.const 238
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 145
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 0
  i32.const 58856
  i32.const 1
  call $~lib/dataview/DataView#setUint16
  get_global $std/dataview/view
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
   i32.const 176
   i32.const 148
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 0
  i32.const 60400
  i32.const 0
  call $~lib/dataview/DataView#setUint16
  get_global $std/dataview/view
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
   i32.const 176
   i32.const 151
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 0
  i32.const -846805744
  i32.const 1
  call $~lib/dataview/DataView#setUint32
  get_global $std/dataview/view
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getUint32
  i32.const -846805744
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 154
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 0
  i32.const -1510791631
  i32.const 0
  call $~lib/dataview/DataView#setUint32
  get_global $std/dataview/view
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getUint32
  i32.const -1510791631
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 157
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 0
  i64.const 2334704782995986958
  i32.const 1
  call $~lib/dataview/DataView#setUint64
  get_global $std/dataview/view
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getUint64
  i64.const 2334704782995986958
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 160
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/dataview/view
  i32.const 0
  i64.const -7123186897289856329
  i32.const 0
  call $~lib/dataview/DataView#setUint64
  get_global $std/dataview/view
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getUint64
  i64.const -7123186897289856329
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 163
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $null (; 36 ;) (type $v)
 )
)
