(module
 (type $v (func))
 (type $ii (func (param i32) (result i32)))
 (type $iv (func (param i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $iIi (func (param i32 i64) (result i32)))
 (type $Ii (func (param i64) (result i32)))
 (type $iIii (func (param i32 i64 i32) (result i32)))
 (type $iIv (func (param i32 i64)))
 (type $ifi (func (param i32 f32) (result i32)))
 (type $fi (func (param f32) (result i32)))
 (type $ifii (func (param i32 f32 i32) (result i32)))
 (type $ifv (func (param i32 f32)))
 (type $iFi (func (param i32 f64) (result i32)))
 (type $Fi (func (param f64) (result i32)))
 (type $iFii (func (param i32 f64 i32) (result i32)))
 (type $iFv (func (param i32 f64)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\13\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 56) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 120) "\n\00\00\00s\00t\00d\00/\00s\00e\00t\00.\00t\00s\00")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/set/INITIAL_CAPACITY i32 (i32.const 4))
 (global $~lib/set/BUCKET_SIZE i32 (i32.const 4))
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/internal/arraybuffer/MAX_BLENGTH i32 (i32.const 1073741816))
 (global $~lib/internal/hash/FNV_OFFSET i32 (i32.const -2128831035))
 (global $~lib/internal/hash/FNV_PRIME i32 (i32.const 16777619))
 (global $~lib/set/EMPTY i32 (i32.const 1))
 (global $~lib/set/FREE_FACTOR f64 (f64.const 0.75))
 (global $~lib/set/FILL_FACTOR f64 (f64.const 2.6666666666666665))
 (global $HEAP_BASE i32 (i32.const 144))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/allocator/arena/__memory_allocate (; 1 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/memory/memory.allocate (; 2 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  call $~lib/allocator/arena/__memory_allocate
  return
 )
 (func $~lib/internal/arraybuffer/computeSize (; 3 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  get_local $0
  get_global $~lib/internal/arraybuffer/MAX_BLENGTH
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 56
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
 (func $~lib/internal/memory/memset (; 5 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 6 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  get_global $~lib/internal/arraybuffer/MAX_BLENGTH
  i32.gt_u
  if
   i32.const 0
   i32.const 8
   i32.const 16
   i32.const 40
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $3
  get_local $2
  i32.const 1
  i32.and
  i32.eqz
  if
   get_local $3
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   set_local $4
   i32.const 0
   set_local $5
   get_local $4
   get_local $5
   get_local $1
   call $~lib/internal/memory/memset
  end
  get_local $3
 )
 (func $~lib/set/Set<i8>#clear (; 7 ;) (type $iv) (param $0 i32)
  get_local $0
  i32.const 0
  i32.const 16
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  get_local $0
  get_global $~lib/set/INITIAL_CAPACITY
  i32.const 1
  i32.sub
  i32.store offset=4
  get_local $0
  i32.const 0
  i32.const 32
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  get_local $0
  get_global $~lib/set/INITIAL_CAPACITY
  i32.store offset=12
  get_local $0
  i32.const 0
  i32.store offset=16
  get_local $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/set/Set<i8>#constructor (; 8 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 24
    call $~lib/memory/memory.allocate
    set_local $1
    get_local $1
    i32.const 0
    i32.store
    get_local $1
    i32.const 0
    i32.store offset=4
    get_local $1
    i32.const 0
    i32.store offset=8
    get_local $1
    i32.const 0
    i32.store offset=12
    get_local $1
    i32.const 0
    i32.store offset=16
    get_local $1
    i32.const 0
    i32.store offset=20
    get_local $1
   end
   tee_local $0
  end
  tee_local $0
  call $~lib/set/Set<i8>#clear
  get_local $0
 )
 (func $~lib/internal/hash/hash8 (; 9 ;) (type $ii) (param $0 i32) (result i32)
  get_global $~lib/internal/hash/FNV_OFFSET
  get_local $0
  i32.xor
  get_global $~lib/internal/hash/FNV_PRIME
  i32.mul
 )
 (func $~lib/internal/hash/hash<i8> (; 10 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/internal/hash/hash8
  return
 )
 (func $~lib/set/Set<i8>#find (; 11 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load
  get_local $2
  get_local $0
  i32.load offset=4
  i32.and
  get_global $~lib/set/BUCKET_SIZE
  i32.mul
  i32.add
  i32.load offset=8
  set_local $3
  block $break|0
   loop $continue|0
    get_local $3
    if
     block
      get_local $3
      i32.load offset=4
      get_global $~lib/set/EMPTY
      i32.and
      i32.eqz
      tee_local $4
      if (result i32)
       get_local $3
       i32.load8_s
       get_local $1
       i32.const 24
       i32.shl
       i32.const 24
       i32.shr_s
       i32.eq
      else       
       get_local $4
      end
      if
       get_local $3
       return
      end
      get_local $3
      i32.load offset=4
      get_global $~lib/set/EMPTY
      i32.const -1
      i32.xor
      i32.and
      set_local $3
     end
     br $continue|0
    end
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<i8>#has (; 12 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  get_local $1
  call $~lib/internal/hash/hash<i8>
  call $~lib/set/Set<i8>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<i8>#rehash (; 13 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
  get_local $1
  i32.const 1
  i32.add
  set_local $2
  i32.const 0
  get_local $2
  get_global $~lib/set/BUCKET_SIZE
  i32.mul
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $3
  get_local $2
  f64.convert_s/i32
  get_global $~lib/set/FILL_FACTOR
  f64.mul
  i32.trunc_s/f64
  set_local $4
  i32.const 0
  get_local $4
  block $~lib/set/ENTRY_SIZE<i8>|inlined.1 (result i32)
   i32.const 8
  end
  i32.mul
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $5
  get_local $0
  i32.load offset=8
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $6
  get_local $6
  get_local $0
  i32.load offset=16
  block $~lib/set/ENTRY_SIZE<i8>|inlined.2 (result i32)
   i32.const 8
  end
  i32.mul
  i32.add
  set_local $7
  get_local $5
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $8
  block $break|0
   loop $continue|0
    get_local $6
    get_local $7
    i32.ne
    if
     block
      get_local $6
      set_local $9
      get_local $9
      i32.load offset=4
      get_global $~lib/set/EMPTY
      i32.and
      i32.eqz
      if
       get_local $8
       set_local $10
       get_local $10
       get_local $9
       i32.load8_s
       i32.store8
       block $~lib/internal/hash/hash<i8>|inlined.0 (result i32)
        get_local $9
        i32.load8_s
        set_local $11
        get_local $11
        call $~lib/internal/hash/hash8
        br $~lib/internal/hash/hash<i8>|inlined.0
       end
       get_local $1
       i32.and
       set_local $11
       get_local $3
       get_local $11
       get_global $~lib/set/BUCKET_SIZE
       i32.mul
       i32.add
       set_local $12
       get_local $10
       get_local $12
       i32.load offset=8
       i32.store offset=4
       get_local $12
       get_local $8
       i32.store offset=8
       get_local $8
       block $~lib/set/ENTRY_SIZE<i8>|inlined.3 (result i32)
        i32.const 8
       end
       i32.add
       set_local $8
      end
      get_local $6
      block $~lib/set/ENTRY_SIZE<i8>|inlined.4 (result i32)
       i32.const 8
      end
      i32.add
      set_local $6
     end
     br $continue|0
    end
   end
  end
  get_local $0
  get_local $3
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  get_local $0
  get_local $5
  i32.store offset=8
  get_local $0
  get_local $4
  i32.store offset=12
  get_local $0
  get_local $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/set/Set<i8>#add (; 14 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  call $~lib/internal/hash/hash<i8>
  set_local $2
  get_local $0
  get_local $1
  get_local $2
  call $~lib/set/Set<i8>#find
  set_local $3
  get_local $3
  i32.eqz
  if
   get_local $0
   i32.load offset=16
   get_local $0
   i32.load offset=12
   i32.eq
   if
    get_local $0
    get_local $0
    i32.load offset=20
    get_local $0
    i32.load offset=12
    f64.convert_s/i32
    get_global $~lib/set/FREE_FACTOR
    f64.mul
    i32.trunc_s/f64
    i32.lt_s
    if (result i32)
     get_local $0
     i32.load offset=4
    else     
     get_local $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<i8>#rehash
   end
   get_local $0
   i32.load offset=8
   set_local $4
   get_local $4
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   block (result i32)
    get_local $0
    get_local $0
    i32.load offset=16
    tee_local $5
    i32.const 1
    i32.add
    i32.store offset=16
    get_local $5
   end
   block $~lib/set/ENTRY_SIZE<i8>|inlined.5 (result i32)
    i32.const 8
   end
   i32.mul
   i32.add
   set_local $3
   get_local $3
   get_local $1
   i32.store8
   get_local $0
   get_local $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   get_local $0
   i32.load
   get_local $2
   get_local $0
   i32.load offset=4
   i32.and
   get_global $~lib/set/BUCKET_SIZE
   i32.mul
   i32.add
   set_local $5
   get_local $3
   get_local $5
   i32.load offset=8
   i32.store offset=4
   get_local $5
   get_local $3
   i32.store offset=8
  end
 )
 (func $~lib/set/Set<i8>#get:size (; 15 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load offset=20
 )
 (func $~lib/set/Set<i8>#delete (; 16 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  get_local $1
  block $~lib/internal/hash/hash<i8>|inlined.1 (result i32)
   get_local $1
   i32.const 24
   i32.shl
   i32.const 24
   i32.shr_s
   call $~lib/internal/hash/hash8
   br $~lib/internal/hash/hash<i8>|inlined.1
  end
  call $~lib/set/Set<i8>#find
  set_local $2
  get_local $2
  i32.eqz
  if
   i32.const 0
   return
  end
  get_local $2
  get_local $2
  i32.load offset=4
  get_global $~lib/set/EMPTY
  i32.or
  i32.store offset=4
  get_local $0
  get_local $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  set_local $3
  get_local $3
  i32.const 1
  i32.add
  get_global $~lib/set/INITIAL_CAPACITY
  tee_local $4
  get_local $0
  i32.load offset=20
  tee_local $5
  get_local $4
  get_local $5
  i32.gt_u
  select
  i32.ge_u
  tee_local $4
  if (result i32)
   get_local $0
   i32.load offset=20
   get_local $0
   i32.load offset=12
   f64.convert_s/i32
   get_global $~lib/set/FREE_FACTOR
   f64.mul
   i32.trunc_s/f64
   i32.lt_s
  else   
   get_local $4
  end
  if
   get_local $0
   get_local $3
   call $~lib/set/Set<i8>#rehash
  end
  i32.const 1
 )
 (func $std/set/test<i8> (; 17 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  call $~lib/set/Set<i8>#constructor
  set_local $0
  block $break|0
   i32.const 0
   set_local $1
   loop $repeat|0
    get_local $1
    i32.const 100
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<i8>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 8
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<i8>#add
     get_local $0
     get_local $1
     call $~lib/set/Set<i8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 10
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<i8>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 12
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i32.const 50
   set_local $1
   loop $repeat|1
    get_local $1
    i32.const 100
    i32.lt_s
    i32.eqz
    br_if $break|1
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<i8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 16
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<i8>#add
     get_local $0
     get_local $1
     call $~lib/set/Set<i8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 18
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $repeat|1
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<i8>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 20
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   i32.const 0
   set_local $1
   loop $repeat|2
    get_local $1
    i32.const 50
    i32.lt_s
    i32.eqz
    br_if $break|2
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<i8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 24
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<i8>#delete
     drop
     get_local $0
     get_local $1
     call $~lib/set/Set<i8>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 26
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $repeat|2
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<i8>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 28
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   i32.const 0
   set_local $1
   loop $repeat|3
    get_local $1
    i32.const 50
    i32.lt_s
    i32.eqz
    br_if $break|3
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<i8>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 32
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<i8>#add
     get_local $0
     get_local $1
     call $~lib/set/Set<i8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 34
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<i8>#delete
     drop
     get_local $0
     get_local $1
     call $~lib/set/Set<i8>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 36
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $repeat|3
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<i8>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  call $~lib/set/Set<i8>#clear
  get_local $0
  call $~lib/set/Set<i8>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/set/Set<u8>#clear (; 18 ;) (type $iv) (param $0 i32)
  get_local $0
  i32.const 0
  i32.const 16
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  get_local $0
  get_global $~lib/set/INITIAL_CAPACITY
  i32.const 1
  i32.sub
  i32.store offset=4
  get_local $0
  i32.const 0
  i32.const 32
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  get_local $0
  get_global $~lib/set/INITIAL_CAPACITY
  i32.store offset=12
  get_local $0
  i32.const 0
  i32.store offset=16
  get_local $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/set/Set<u8>#constructor (; 19 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 24
    call $~lib/memory/memory.allocate
    set_local $1
    get_local $1
    i32.const 0
    i32.store
    get_local $1
    i32.const 0
    i32.store offset=4
    get_local $1
    i32.const 0
    i32.store offset=8
    get_local $1
    i32.const 0
    i32.store offset=12
    get_local $1
    i32.const 0
    i32.store offset=16
    get_local $1
    i32.const 0
    i32.store offset=20
    get_local $1
   end
   tee_local $0
  end
  tee_local $0
  call $~lib/set/Set<u8>#clear
  get_local $0
 )
 (func $~lib/internal/hash/hash<u8> (; 20 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const 255
  i32.and
  call $~lib/internal/hash/hash8
  return
 )
 (func $~lib/set/Set<u8>#find (; 21 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load
  get_local $2
  get_local $0
  i32.load offset=4
  i32.and
  get_global $~lib/set/BUCKET_SIZE
  i32.mul
  i32.add
  i32.load offset=8
  set_local $3
  block $break|0
   loop $continue|0
    get_local $3
    if
     block
      get_local $3
      i32.load offset=4
      get_global $~lib/set/EMPTY
      i32.and
      i32.eqz
      tee_local $4
      if (result i32)
       get_local $3
       i32.load8_u
       get_local $1
       i32.const 255
       i32.and
       i32.eq
      else       
       get_local $4
      end
      if
       get_local $3
       return
      end
      get_local $3
      i32.load offset=4
      get_global $~lib/set/EMPTY
      i32.const -1
      i32.xor
      i32.and
      set_local $3
     end
     br $continue|0
    end
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<u8>#has (; 22 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  get_local $1
  call $~lib/internal/hash/hash<u8>
  call $~lib/set/Set<u8>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<u8>#rehash (; 23 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
  get_local $1
  i32.const 1
  i32.add
  set_local $2
  i32.const 0
  get_local $2
  get_global $~lib/set/BUCKET_SIZE
  i32.mul
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $3
  get_local $2
  f64.convert_s/i32
  get_global $~lib/set/FILL_FACTOR
  f64.mul
  i32.trunc_s/f64
  set_local $4
  i32.const 0
  get_local $4
  block $~lib/set/ENTRY_SIZE<u8>|inlined.1 (result i32)
   i32.const 8
  end
  i32.mul
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $5
  get_local $0
  i32.load offset=8
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $6
  get_local $6
  get_local $0
  i32.load offset=16
  block $~lib/set/ENTRY_SIZE<u8>|inlined.2 (result i32)
   i32.const 8
  end
  i32.mul
  i32.add
  set_local $7
  get_local $5
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $8
  block $break|0
   loop $continue|0
    get_local $6
    get_local $7
    i32.ne
    if
     block
      get_local $6
      set_local $9
      get_local $9
      i32.load offset=4
      get_global $~lib/set/EMPTY
      i32.and
      i32.eqz
      if
       get_local $8
       set_local $10
       get_local $10
       get_local $9
       i32.load8_u
       i32.store8
       block $~lib/internal/hash/hash<u8>|inlined.0 (result i32)
        get_local $9
        i32.load8_u
        set_local $11
        get_local $11
        call $~lib/internal/hash/hash8
        br $~lib/internal/hash/hash<u8>|inlined.0
       end
       get_local $1
       i32.and
       set_local $11
       get_local $3
       get_local $11
       get_global $~lib/set/BUCKET_SIZE
       i32.mul
       i32.add
       set_local $12
       get_local $10
       get_local $12
       i32.load offset=8
       i32.store offset=4
       get_local $12
       get_local $8
       i32.store offset=8
       get_local $8
       block $~lib/set/ENTRY_SIZE<u8>|inlined.3 (result i32)
        i32.const 8
       end
       i32.add
       set_local $8
      end
      get_local $6
      block $~lib/set/ENTRY_SIZE<u8>|inlined.4 (result i32)
       i32.const 8
      end
      i32.add
      set_local $6
     end
     br $continue|0
    end
   end
  end
  get_local $0
  get_local $3
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  get_local $0
  get_local $5
  i32.store offset=8
  get_local $0
  get_local $4
  i32.store offset=12
  get_local $0
  get_local $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/set/Set<u8>#add (; 24 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  call $~lib/internal/hash/hash<u8>
  set_local $2
  get_local $0
  get_local $1
  get_local $2
  call $~lib/set/Set<u8>#find
  set_local $3
  get_local $3
  i32.eqz
  if
   get_local $0
   i32.load offset=16
   get_local $0
   i32.load offset=12
   i32.eq
   if
    get_local $0
    get_local $0
    i32.load offset=20
    get_local $0
    i32.load offset=12
    f64.convert_s/i32
    get_global $~lib/set/FREE_FACTOR
    f64.mul
    i32.trunc_s/f64
    i32.lt_s
    if (result i32)
     get_local $0
     i32.load offset=4
    else     
     get_local $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<u8>#rehash
   end
   get_local $0
   i32.load offset=8
   set_local $4
   get_local $4
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   block (result i32)
    get_local $0
    get_local $0
    i32.load offset=16
    tee_local $5
    i32.const 1
    i32.add
    i32.store offset=16
    get_local $5
   end
   block $~lib/set/ENTRY_SIZE<u8>|inlined.5 (result i32)
    i32.const 8
   end
   i32.mul
   i32.add
   set_local $3
   get_local $3
   get_local $1
   i32.store8
   get_local $0
   get_local $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   get_local $0
   i32.load
   get_local $2
   get_local $0
   i32.load offset=4
   i32.and
   get_global $~lib/set/BUCKET_SIZE
   i32.mul
   i32.add
   set_local $5
   get_local $3
   get_local $5
   i32.load offset=8
   i32.store offset=4
   get_local $5
   get_local $3
   i32.store offset=8
  end
 )
 (func $~lib/set/Set<u8>#get:size (; 25 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load offset=20
 )
 (func $~lib/set/Set<u8>#delete (; 26 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  get_local $1
  block $~lib/internal/hash/hash<u8>|inlined.1 (result i32)
   get_local $1
   i32.const 255
   i32.and
   call $~lib/internal/hash/hash8
   br $~lib/internal/hash/hash<u8>|inlined.1
  end
  call $~lib/set/Set<u8>#find
  set_local $2
  get_local $2
  i32.eqz
  if
   i32.const 0
   return
  end
  get_local $2
  get_local $2
  i32.load offset=4
  get_global $~lib/set/EMPTY
  i32.or
  i32.store offset=4
  get_local $0
  get_local $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  set_local $3
  get_local $3
  i32.const 1
  i32.add
  get_global $~lib/set/INITIAL_CAPACITY
  tee_local $4
  get_local $0
  i32.load offset=20
  tee_local $5
  get_local $4
  get_local $5
  i32.gt_u
  select
  i32.ge_u
  tee_local $4
  if (result i32)
   get_local $0
   i32.load offset=20
   get_local $0
   i32.load offset=12
   f64.convert_s/i32
   get_global $~lib/set/FREE_FACTOR
   f64.mul
   i32.trunc_s/f64
   i32.lt_s
  else   
   get_local $4
  end
  if
   get_local $0
   get_local $3
   call $~lib/set/Set<u8>#rehash
  end
  i32.const 1
 )
 (func $std/set/test<u8> (; 27 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  call $~lib/set/Set<u8>#constructor
  set_local $0
  block $break|0
   i32.const 0
   set_local $1
   loop $repeat|0
    get_local $1
    i32.const 100
    i32.lt_u
    i32.eqz
    br_if $break|0
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<u8>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 8
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<u8>#add
     get_local $0
     get_local $1
     call $~lib/set/Set<u8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 10
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<u8>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 12
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i32.const 50
   set_local $1
   loop $repeat|1
    get_local $1
    i32.const 100
    i32.lt_u
    i32.eqz
    br_if $break|1
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<u8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 16
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<u8>#add
     get_local $0
     get_local $1
     call $~lib/set/Set<u8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 18
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $repeat|1
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<u8>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 20
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   i32.const 0
   set_local $1
   loop $repeat|2
    get_local $1
    i32.const 50
    i32.lt_u
    i32.eqz
    br_if $break|2
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<u8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 24
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<u8>#delete
     drop
     get_local $0
     get_local $1
     call $~lib/set/Set<u8>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 26
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $repeat|2
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<u8>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 28
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   i32.const 0
   set_local $1
   loop $repeat|3
    get_local $1
    i32.const 50
    i32.lt_u
    i32.eqz
    br_if $break|3
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<u8>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 32
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<u8>#add
     get_local $0
     get_local $1
     call $~lib/set/Set<u8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 34
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<u8>#delete
     drop
     get_local $0
     get_local $1
     call $~lib/set/Set<u8>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 36
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $repeat|3
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<u8>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  call $~lib/set/Set<u8>#clear
  get_local $0
  call $~lib/set/Set<u8>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/set/Set<i16>#clear (; 28 ;) (type $iv) (param $0 i32)
  get_local $0
  i32.const 0
  i32.const 16
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  get_local $0
  get_global $~lib/set/INITIAL_CAPACITY
  i32.const 1
  i32.sub
  i32.store offset=4
  get_local $0
  i32.const 0
  i32.const 32
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  get_local $0
  get_global $~lib/set/INITIAL_CAPACITY
  i32.store offset=12
  get_local $0
  i32.const 0
  i32.store offset=16
  get_local $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/set/Set<i16>#constructor (; 29 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 24
    call $~lib/memory/memory.allocate
    set_local $1
    get_local $1
    i32.const 0
    i32.store
    get_local $1
    i32.const 0
    i32.store offset=4
    get_local $1
    i32.const 0
    i32.store offset=8
    get_local $1
    i32.const 0
    i32.store offset=12
    get_local $1
    i32.const 0
    i32.store offset=16
    get_local $1
    i32.const 0
    i32.store offset=20
    get_local $1
   end
   tee_local $0
  end
  tee_local $0
  call $~lib/set/Set<i16>#clear
  get_local $0
 )
 (func $~lib/internal/hash/hash16 (; 30 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_global $~lib/internal/hash/FNV_OFFSET
  set_local $1
  get_local $1
  get_local $0
  i32.const 255
  i32.and
  i32.xor
  get_global $~lib/internal/hash/FNV_PRIME
  i32.mul
  set_local $1
  get_local $1
  get_local $0
  i32.const 8
  i32.shr_u
  i32.xor
  get_global $~lib/internal/hash/FNV_PRIME
  i32.mul
  set_local $1
  get_local $1
 )
 (func $~lib/internal/hash/hash<i16> (; 31 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  call $~lib/internal/hash/hash16
  return
 )
 (func $~lib/set/Set<i16>#find (; 32 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load
  get_local $2
  get_local $0
  i32.load offset=4
  i32.and
  get_global $~lib/set/BUCKET_SIZE
  i32.mul
  i32.add
  i32.load offset=8
  set_local $3
  block $break|0
   loop $continue|0
    get_local $3
    if
     block
      get_local $3
      i32.load offset=4
      get_global $~lib/set/EMPTY
      i32.and
      i32.eqz
      tee_local $4
      if (result i32)
       get_local $3
       i32.load16_s
       get_local $1
       i32.const 16
       i32.shl
       i32.const 16
       i32.shr_s
       i32.eq
      else       
       get_local $4
      end
      if
       get_local $3
       return
      end
      get_local $3
      i32.load offset=4
      get_global $~lib/set/EMPTY
      i32.const -1
      i32.xor
      i32.and
      set_local $3
     end
     br $continue|0
    end
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<i16>#has (; 33 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  get_local $1
  call $~lib/internal/hash/hash<i16>
  call $~lib/set/Set<i16>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<i16>#rehash (; 34 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
  get_local $1
  i32.const 1
  i32.add
  set_local $2
  i32.const 0
  get_local $2
  get_global $~lib/set/BUCKET_SIZE
  i32.mul
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $3
  get_local $2
  f64.convert_s/i32
  get_global $~lib/set/FILL_FACTOR
  f64.mul
  i32.trunc_s/f64
  set_local $4
  i32.const 0
  get_local $4
  block $~lib/set/ENTRY_SIZE<i16>|inlined.1 (result i32)
   i32.const 8
  end
  i32.mul
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $5
  get_local $0
  i32.load offset=8
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $6
  get_local $6
  get_local $0
  i32.load offset=16
  block $~lib/set/ENTRY_SIZE<i16>|inlined.2 (result i32)
   i32.const 8
  end
  i32.mul
  i32.add
  set_local $7
  get_local $5
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $8
  block $break|0
   loop $continue|0
    get_local $6
    get_local $7
    i32.ne
    if
     block
      get_local $6
      set_local $9
      get_local $9
      i32.load offset=4
      get_global $~lib/set/EMPTY
      i32.and
      i32.eqz
      if
       get_local $8
       set_local $10
       get_local $10
       get_local $9
       i32.load16_s
       i32.store16
       block $~lib/internal/hash/hash<i16>|inlined.0 (result i32)
        get_local $9
        i32.load16_s
        set_local $11
        get_local $11
        call $~lib/internal/hash/hash16
        br $~lib/internal/hash/hash<i16>|inlined.0
       end
       get_local $1
       i32.and
       set_local $11
       get_local $3
       get_local $11
       get_global $~lib/set/BUCKET_SIZE
       i32.mul
       i32.add
       set_local $12
       get_local $10
       get_local $12
       i32.load offset=8
       i32.store offset=4
       get_local $12
       get_local $8
       i32.store offset=8
       get_local $8
       block $~lib/set/ENTRY_SIZE<i16>|inlined.3 (result i32)
        i32.const 8
       end
       i32.add
       set_local $8
      end
      get_local $6
      block $~lib/set/ENTRY_SIZE<i16>|inlined.4 (result i32)
       i32.const 8
      end
      i32.add
      set_local $6
     end
     br $continue|0
    end
   end
  end
  get_local $0
  get_local $3
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  get_local $0
  get_local $5
  i32.store offset=8
  get_local $0
  get_local $4
  i32.store offset=12
  get_local $0
  get_local $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/set/Set<i16>#add (; 35 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  call $~lib/internal/hash/hash<i16>
  set_local $2
  get_local $0
  get_local $1
  get_local $2
  call $~lib/set/Set<i16>#find
  set_local $3
  get_local $3
  i32.eqz
  if
   get_local $0
   i32.load offset=16
   get_local $0
   i32.load offset=12
   i32.eq
   if
    get_local $0
    get_local $0
    i32.load offset=20
    get_local $0
    i32.load offset=12
    f64.convert_s/i32
    get_global $~lib/set/FREE_FACTOR
    f64.mul
    i32.trunc_s/f64
    i32.lt_s
    if (result i32)
     get_local $0
     i32.load offset=4
    else     
     get_local $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<i16>#rehash
   end
   get_local $0
   i32.load offset=8
   set_local $4
   get_local $4
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   block (result i32)
    get_local $0
    get_local $0
    i32.load offset=16
    tee_local $5
    i32.const 1
    i32.add
    i32.store offset=16
    get_local $5
   end
   block $~lib/set/ENTRY_SIZE<i16>|inlined.5 (result i32)
    i32.const 8
   end
   i32.mul
   i32.add
   set_local $3
   get_local $3
   get_local $1
   i32.store16
   get_local $0
   get_local $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   get_local $0
   i32.load
   get_local $2
   get_local $0
   i32.load offset=4
   i32.and
   get_global $~lib/set/BUCKET_SIZE
   i32.mul
   i32.add
   set_local $5
   get_local $3
   get_local $5
   i32.load offset=8
   i32.store offset=4
   get_local $5
   get_local $3
   i32.store offset=8
  end
 )
 (func $~lib/set/Set<i16>#get:size (; 36 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load offset=20
 )
 (func $~lib/set/Set<i16>#delete (; 37 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  get_local $1
  block $~lib/internal/hash/hash<i16>|inlined.1 (result i32)
   get_local $1
   i32.const 16
   i32.shl
   i32.const 16
   i32.shr_s
   call $~lib/internal/hash/hash16
   br $~lib/internal/hash/hash<i16>|inlined.1
  end
  call $~lib/set/Set<i16>#find
  set_local $2
  get_local $2
  i32.eqz
  if
   i32.const 0
   return
  end
  get_local $2
  get_local $2
  i32.load offset=4
  get_global $~lib/set/EMPTY
  i32.or
  i32.store offset=4
  get_local $0
  get_local $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  set_local $3
  get_local $3
  i32.const 1
  i32.add
  get_global $~lib/set/INITIAL_CAPACITY
  tee_local $4
  get_local $0
  i32.load offset=20
  tee_local $5
  get_local $4
  get_local $5
  i32.gt_u
  select
  i32.ge_u
  tee_local $4
  if (result i32)
   get_local $0
   i32.load offset=20
   get_local $0
   i32.load offset=12
   f64.convert_s/i32
   get_global $~lib/set/FREE_FACTOR
   f64.mul
   i32.trunc_s/f64
   i32.lt_s
  else   
   get_local $4
  end
  if
   get_local $0
   get_local $3
   call $~lib/set/Set<i16>#rehash
  end
  i32.const 1
 )
 (func $std/set/test<i16> (; 38 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  call $~lib/set/Set<i16>#constructor
  set_local $0
  block $break|0
   i32.const 0
   set_local $1
   loop $repeat|0
    get_local $1
    i32.const 100
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<i16>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 8
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<i16>#add
     get_local $0
     get_local $1
     call $~lib/set/Set<i16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 10
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<i16>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 12
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i32.const 50
   set_local $1
   loop $repeat|1
    get_local $1
    i32.const 100
    i32.lt_s
    i32.eqz
    br_if $break|1
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<i16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 16
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<i16>#add
     get_local $0
     get_local $1
     call $~lib/set/Set<i16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 18
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $repeat|1
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<i16>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 20
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   i32.const 0
   set_local $1
   loop $repeat|2
    get_local $1
    i32.const 50
    i32.lt_s
    i32.eqz
    br_if $break|2
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<i16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 24
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<i16>#delete
     drop
     get_local $0
     get_local $1
     call $~lib/set/Set<i16>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 26
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $repeat|2
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<i16>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 28
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   i32.const 0
   set_local $1
   loop $repeat|3
    get_local $1
    i32.const 50
    i32.lt_s
    i32.eqz
    br_if $break|3
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<i16>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 32
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<i16>#add
     get_local $0
     get_local $1
     call $~lib/set/Set<i16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 34
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<i16>#delete
     drop
     get_local $0
     get_local $1
     call $~lib/set/Set<i16>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 36
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $repeat|3
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<i16>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  call $~lib/set/Set<i16>#clear
  get_local $0
  call $~lib/set/Set<i16>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/set/Set<u16>#clear (; 39 ;) (type $iv) (param $0 i32)
  get_local $0
  i32.const 0
  i32.const 16
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  get_local $0
  get_global $~lib/set/INITIAL_CAPACITY
  i32.const 1
  i32.sub
  i32.store offset=4
  get_local $0
  i32.const 0
  i32.const 32
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  get_local $0
  get_global $~lib/set/INITIAL_CAPACITY
  i32.store offset=12
  get_local $0
  i32.const 0
  i32.store offset=16
  get_local $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/set/Set<u16>#constructor (; 40 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 24
    call $~lib/memory/memory.allocate
    set_local $1
    get_local $1
    i32.const 0
    i32.store
    get_local $1
    i32.const 0
    i32.store offset=4
    get_local $1
    i32.const 0
    i32.store offset=8
    get_local $1
    i32.const 0
    i32.store offset=12
    get_local $1
    i32.const 0
    i32.store offset=16
    get_local $1
    i32.const 0
    i32.store offset=20
    get_local $1
   end
   tee_local $0
  end
  tee_local $0
  call $~lib/set/Set<u16>#clear
  get_local $0
 )
 (func $~lib/internal/hash/hash<u16> (; 41 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const 65535
  i32.and
  call $~lib/internal/hash/hash16
  return
 )
 (func $~lib/set/Set<u16>#find (; 42 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load
  get_local $2
  get_local $0
  i32.load offset=4
  i32.and
  get_global $~lib/set/BUCKET_SIZE
  i32.mul
  i32.add
  i32.load offset=8
  set_local $3
  block $break|0
   loop $continue|0
    get_local $3
    if
     block
      get_local $3
      i32.load offset=4
      get_global $~lib/set/EMPTY
      i32.and
      i32.eqz
      tee_local $4
      if (result i32)
       get_local $3
       i32.load16_u
       get_local $1
       i32.const 65535
       i32.and
       i32.eq
      else       
       get_local $4
      end
      if
       get_local $3
       return
      end
      get_local $3
      i32.load offset=4
      get_global $~lib/set/EMPTY
      i32.const -1
      i32.xor
      i32.and
      set_local $3
     end
     br $continue|0
    end
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<u16>#has (; 43 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  get_local $1
  call $~lib/internal/hash/hash<u16>
  call $~lib/set/Set<u16>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<u16>#rehash (; 44 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
  get_local $1
  i32.const 1
  i32.add
  set_local $2
  i32.const 0
  get_local $2
  get_global $~lib/set/BUCKET_SIZE
  i32.mul
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $3
  get_local $2
  f64.convert_s/i32
  get_global $~lib/set/FILL_FACTOR
  f64.mul
  i32.trunc_s/f64
  set_local $4
  i32.const 0
  get_local $4
  block $~lib/set/ENTRY_SIZE<u16>|inlined.1 (result i32)
   i32.const 8
  end
  i32.mul
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $5
  get_local $0
  i32.load offset=8
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $6
  get_local $6
  get_local $0
  i32.load offset=16
  block $~lib/set/ENTRY_SIZE<u16>|inlined.2 (result i32)
   i32.const 8
  end
  i32.mul
  i32.add
  set_local $7
  get_local $5
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $8
  block $break|0
   loop $continue|0
    get_local $6
    get_local $7
    i32.ne
    if
     block
      get_local $6
      set_local $9
      get_local $9
      i32.load offset=4
      get_global $~lib/set/EMPTY
      i32.and
      i32.eqz
      if
       get_local $8
       set_local $10
       get_local $10
       get_local $9
       i32.load16_u
       i32.store16
       block $~lib/internal/hash/hash<u16>|inlined.0 (result i32)
        get_local $9
        i32.load16_u
        set_local $11
        get_local $11
        call $~lib/internal/hash/hash16
        br $~lib/internal/hash/hash<u16>|inlined.0
       end
       get_local $1
       i32.and
       set_local $11
       get_local $3
       get_local $11
       get_global $~lib/set/BUCKET_SIZE
       i32.mul
       i32.add
       set_local $12
       get_local $10
       get_local $12
       i32.load offset=8
       i32.store offset=4
       get_local $12
       get_local $8
       i32.store offset=8
       get_local $8
       block $~lib/set/ENTRY_SIZE<u16>|inlined.3 (result i32)
        i32.const 8
       end
       i32.add
       set_local $8
      end
      get_local $6
      block $~lib/set/ENTRY_SIZE<u16>|inlined.4 (result i32)
       i32.const 8
      end
      i32.add
      set_local $6
     end
     br $continue|0
    end
   end
  end
  get_local $0
  get_local $3
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  get_local $0
  get_local $5
  i32.store offset=8
  get_local $0
  get_local $4
  i32.store offset=12
  get_local $0
  get_local $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/set/Set<u16>#add (; 45 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  call $~lib/internal/hash/hash<u16>
  set_local $2
  get_local $0
  get_local $1
  get_local $2
  call $~lib/set/Set<u16>#find
  set_local $3
  get_local $3
  i32.eqz
  if
   get_local $0
   i32.load offset=16
   get_local $0
   i32.load offset=12
   i32.eq
   if
    get_local $0
    get_local $0
    i32.load offset=20
    get_local $0
    i32.load offset=12
    f64.convert_s/i32
    get_global $~lib/set/FREE_FACTOR
    f64.mul
    i32.trunc_s/f64
    i32.lt_s
    if (result i32)
     get_local $0
     i32.load offset=4
    else     
     get_local $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<u16>#rehash
   end
   get_local $0
   i32.load offset=8
   set_local $4
   get_local $4
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   block (result i32)
    get_local $0
    get_local $0
    i32.load offset=16
    tee_local $5
    i32.const 1
    i32.add
    i32.store offset=16
    get_local $5
   end
   block $~lib/set/ENTRY_SIZE<u16>|inlined.5 (result i32)
    i32.const 8
   end
   i32.mul
   i32.add
   set_local $3
   get_local $3
   get_local $1
   i32.store16
   get_local $0
   get_local $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   get_local $0
   i32.load
   get_local $2
   get_local $0
   i32.load offset=4
   i32.and
   get_global $~lib/set/BUCKET_SIZE
   i32.mul
   i32.add
   set_local $5
   get_local $3
   get_local $5
   i32.load offset=8
   i32.store offset=4
   get_local $5
   get_local $3
   i32.store offset=8
  end
 )
 (func $~lib/set/Set<u16>#get:size (; 46 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load offset=20
 )
 (func $~lib/set/Set<u16>#delete (; 47 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  get_local $1
  block $~lib/internal/hash/hash<u16>|inlined.1 (result i32)
   get_local $1
   i32.const 65535
   i32.and
   call $~lib/internal/hash/hash16
   br $~lib/internal/hash/hash<u16>|inlined.1
  end
  call $~lib/set/Set<u16>#find
  set_local $2
  get_local $2
  i32.eqz
  if
   i32.const 0
   return
  end
  get_local $2
  get_local $2
  i32.load offset=4
  get_global $~lib/set/EMPTY
  i32.or
  i32.store offset=4
  get_local $0
  get_local $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  set_local $3
  get_local $3
  i32.const 1
  i32.add
  get_global $~lib/set/INITIAL_CAPACITY
  tee_local $4
  get_local $0
  i32.load offset=20
  tee_local $5
  get_local $4
  get_local $5
  i32.gt_u
  select
  i32.ge_u
  tee_local $4
  if (result i32)
   get_local $0
   i32.load offset=20
   get_local $0
   i32.load offset=12
   f64.convert_s/i32
   get_global $~lib/set/FREE_FACTOR
   f64.mul
   i32.trunc_s/f64
   i32.lt_s
  else   
   get_local $4
  end
  if
   get_local $0
   get_local $3
   call $~lib/set/Set<u16>#rehash
  end
  i32.const 1
 )
 (func $std/set/test<u16> (; 48 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  call $~lib/set/Set<u16>#constructor
  set_local $0
  block $break|0
   i32.const 0
   set_local $1
   loop $repeat|0
    get_local $1
    i32.const 100
    i32.lt_u
    i32.eqz
    br_if $break|0
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<u16>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 8
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<u16>#add
     get_local $0
     get_local $1
     call $~lib/set/Set<u16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 10
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<u16>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 12
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i32.const 50
   set_local $1
   loop $repeat|1
    get_local $1
    i32.const 100
    i32.lt_u
    i32.eqz
    br_if $break|1
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<u16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 16
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<u16>#add
     get_local $0
     get_local $1
     call $~lib/set/Set<u16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 18
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $repeat|1
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<u16>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 20
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   i32.const 0
   set_local $1
   loop $repeat|2
    get_local $1
    i32.const 50
    i32.lt_u
    i32.eqz
    br_if $break|2
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<u16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 24
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<u16>#delete
     drop
     get_local $0
     get_local $1
     call $~lib/set/Set<u16>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 26
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $repeat|2
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<u16>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 28
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   i32.const 0
   set_local $1
   loop $repeat|3
    get_local $1
    i32.const 50
    i32.lt_u
    i32.eqz
    br_if $break|3
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<u16>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 32
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<u16>#add
     get_local $0
     get_local $1
     call $~lib/set/Set<u16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 34
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<u16>#delete
     drop
     get_local $0
     get_local $1
     call $~lib/set/Set<u16>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 36
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $repeat|3
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<u16>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  call $~lib/set/Set<u16>#clear
  get_local $0
  call $~lib/set/Set<u16>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/set/Set<i32>#clear (; 49 ;) (type $iv) (param $0 i32)
  get_local $0
  i32.const 0
  i32.const 16
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  get_local $0
  get_global $~lib/set/INITIAL_CAPACITY
  i32.const 1
  i32.sub
  i32.store offset=4
  get_local $0
  i32.const 0
  i32.const 32
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  get_local $0
  get_global $~lib/set/INITIAL_CAPACITY
  i32.store offset=12
  get_local $0
  i32.const 0
  i32.store offset=16
  get_local $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/set/Set<i32>#constructor (; 50 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 24
    call $~lib/memory/memory.allocate
    set_local $1
    get_local $1
    i32.const 0
    i32.store
    get_local $1
    i32.const 0
    i32.store offset=4
    get_local $1
    i32.const 0
    i32.store offset=8
    get_local $1
    i32.const 0
    i32.store offset=12
    get_local $1
    i32.const 0
    i32.store offset=16
    get_local $1
    i32.const 0
    i32.store offset=20
    get_local $1
   end
   tee_local $0
  end
  tee_local $0
  call $~lib/set/Set<i32>#clear
  get_local $0
 )
 (func $~lib/internal/hash/hash32 (; 51 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_global $~lib/internal/hash/FNV_OFFSET
  set_local $1
  get_local $1
  get_local $0
  i32.const 255
  i32.and
  i32.xor
  get_global $~lib/internal/hash/FNV_PRIME
  i32.mul
  set_local $1
  get_local $1
  get_local $0
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  get_global $~lib/internal/hash/FNV_PRIME
  i32.mul
  set_local $1
  get_local $1
  get_local $0
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  get_global $~lib/internal/hash/FNV_PRIME
  i32.mul
  set_local $1
  get_local $1
  get_local $0
  i32.const 24
  i32.shr_u
  i32.xor
  get_global $~lib/internal/hash/FNV_PRIME
  i32.mul
  set_local $1
  get_local $1
 )
 (func $~lib/internal/hash/hash<i32> (; 52 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  call $~lib/internal/hash/hash32
  return
 )
 (func $~lib/set/Set<i32>#find (; 53 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load
  get_local $2
  get_local $0
  i32.load offset=4
  i32.and
  get_global $~lib/set/BUCKET_SIZE
  i32.mul
  i32.add
  i32.load offset=8
  set_local $3
  block $break|0
   loop $continue|0
    get_local $3
    if
     block
      get_local $3
      i32.load offset=4
      get_global $~lib/set/EMPTY
      i32.and
      i32.eqz
      tee_local $4
      if (result i32)
       get_local $3
       i32.load
       get_local $1
       i32.eq
      else       
       get_local $4
      end
      if
       get_local $3
       return
      end
      get_local $3
      i32.load offset=4
      get_global $~lib/set/EMPTY
      i32.const -1
      i32.xor
      i32.and
      set_local $3
     end
     br $continue|0
    end
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<i32>#has (; 54 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  get_local $1
  call $~lib/internal/hash/hash<i32>
  call $~lib/set/Set<i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<i32>#rehash (; 55 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
  get_local $1
  i32.const 1
  i32.add
  set_local $2
  i32.const 0
  get_local $2
  get_global $~lib/set/BUCKET_SIZE
  i32.mul
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $3
  get_local $2
  f64.convert_s/i32
  get_global $~lib/set/FILL_FACTOR
  f64.mul
  i32.trunc_s/f64
  set_local $4
  i32.const 0
  get_local $4
  block $~lib/set/ENTRY_SIZE<i32>|inlined.1 (result i32)
   i32.const 8
  end
  i32.mul
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $5
  get_local $0
  i32.load offset=8
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $6
  get_local $6
  get_local $0
  i32.load offset=16
  block $~lib/set/ENTRY_SIZE<i32>|inlined.2 (result i32)
   i32.const 8
  end
  i32.mul
  i32.add
  set_local $7
  get_local $5
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $8
  block $break|0
   loop $continue|0
    get_local $6
    get_local $7
    i32.ne
    if
     block
      get_local $6
      set_local $9
      get_local $9
      i32.load offset=4
      get_global $~lib/set/EMPTY
      i32.and
      i32.eqz
      if
       get_local $8
       set_local $10
       get_local $10
       get_local $9
       i32.load
       i32.store
       block $~lib/internal/hash/hash<i32>|inlined.0 (result i32)
        get_local $9
        i32.load
        set_local $11
        get_local $11
        call $~lib/internal/hash/hash32
        br $~lib/internal/hash/hash<i32>|inlined.0
       end
       get_local $1
       i32.and
       set_local $11
       get_local $3
       get_local $11
       get_global $~lib/set/BUCKET_SIZE
       i32.mul
       i32.add
       set_local $12
       get_local $10
       get_local $12
       i32.load offset=8
       i32.store offset=4
       get_local $12
       get_local $8
       i32.store offset=8
       get_local $8
       block $~lib/set/ENTRY_SIZE<i32>|inlined.3 (result i32)
        i32.const 8
       end
       i32.add
       set_local $8
      end
      get_local $6
      block $~lib/set/ENTRY_SIZE<i32>|inlined.4 (result i32)
       i32.const 8
      end
      i32.add
      set_local $6
     end
     br $continue|0
    end
   end
  end
  get_local $0
  get_local $3
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  get_local $0
  get_local $5
  i32.store offset=8
  get_local $0
  get_local $4
  i32.store offset=12
  get_local $0
  get_local $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/set/Set<i32>#add (; 56 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  call $~lib/internal/hash/hash<i32>
  set_local $2
  get_local $0
  get_local $1
  get_local $2
  call $~lib/set/Set<i32>#find
  set_local $3
  get_local $3
  i32.eqz
  if
   get_local $0
   i32.load offset=16
   get_local $0
   i32.load offset=12
   i32.eq
   if
    get_local $0
    get_local $0
    i32.load offset=20
    get_local $0
    i32.load offset=12
    f64.convert_s/i32
    get_global $~lib/set/FREE_FACTOR
    f64.mul
    i32.trunc_s/f64
    i32.lt_s
    if (result i32)
     get_local $0
     i32.load offset=4
    else     
     get_local $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<i32>#rehash
   end
   get_local $0
   i32.load offset=8
   set_local $4
   get_local $4
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   block (result i32)
    get_local $0
    get_local $0
    i32.load offset=16
    tee_local $5
    i32.const 1
    i32.add
    i32.store offset=16
    get_local $5
   end
   block $~lib/set/ENTRY_SIZE<i32>|inlined.5 (result i32)
    i32.const 8
   end
   i32.mul
   i32.add
   set_local $3
   get_local $3
   get_local $1
   i32.store
   get_local $0
   get_local $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   get_local $0
   i32.load
   get_local $2
   get_local $0
   i32.load offset=4
   i32.and
   get_global $~lib/set/BUCKET_SIZE
   i32.mul
   i32.add
   set_local $5
   get_local $3
   get_local $5
   i32.load offset=8
   i32.store offset=4
   get_local $5
   get_local $3
   i32.store offset=8
  end
 )
 (func $~lib/set/Set<i32>#get:size (; 57 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load offset=20
 )
 (func $~lib/set/Set<i32>#delete (; 58 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  get_local $1
  block $~lib/internal/hash/hash<i32>|inlined.1 (result i32)
   get_local $1
   call $~lib/internal/hash/hash32
   br $~lib/internal/hash/hash<i32>|inlined.1
  end
  call $~lib/set/Set<i32>#find
  set_local $2
  get_local $2
  i32.eqz
  if
   i32.const 0
   return
  end
  get_local $2
  get_local $2
  i32.load offset=4
  get_global $~lib/set/EMPTY
  i32.or
  i32.store offset=4
  get_local $0
  get_local $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  set_local $3
  get_local $3
  i32.const 1
  i32.add
  get_global $~lib/set/INITIAL_CAPACITY
  tee_local $4
  get_local $0
  i32.load offset=20
  tee_local $5
  get_local $4
  get_local $5
  i32.gt_u
  select
  i32.ge_u
  tee_local $4
  if (result i32)
   get_local $0
   i32.load offset=20
   get_local $0
   i32.load offset=12
   f64.convert_s/i32
   get_global $~lib/set/FREE_FACTOR
   f64.mul
   i32.trunc_s/f64
   i32.lt_s
  else   
   get_local $4
  end
  if
   get_local $0
   get_local $3
   call $~lib/set/Set<i32>#rehash
  end
  i32.const 1
 )
 (func $std/set/test<i32> (; 59 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  call $~lib/set/Set<i32>#constructor
  set_local $0
  block $break|0
   i32.const 0
   set_local $1
   loop $repeat|0
    get_local $1
    i32.const 100
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 8
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<i32>#add
     get_local $0
     get_local $1
     call $~lib/set/Set<i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 10
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 12
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i32.const 50
   set_local $1
   loop $repeat|1
    get_local $1
    i32.const 100
    i32.lt_s
    i32.eqz
    br_if $break|1
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 16
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<i32>#add
     get_local $0
     get_local $1
     call $~lib/set/Set<i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 18
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $repeat|1
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 20
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   i32.const 0
   set_local $1
   loop $repeat|2
    get_local $1
    i32.const 50
    i32.lt_s
    i32.eqz
    br_if $break|2
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 24
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<i32>#delete
     drop
     get_local $0
     get_local $1
     call $~lib/set/Set<i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 26
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $repeat|2
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 28
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   i32.const 0
   set_local $1
   loop $repeat|3
    get_local $1
    i32.const 50
    i32.lt_s
    i32.eqz
    br_if $break|3
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 32
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<i32>#add
     get_local $0
     get_local $1
     call $~lib/set/Set<i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 34
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<i32>#delete
     drop
     get_local $0
     get_local $1
     call $~lib/set/Set<i32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 36
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $repeat|3
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  call $~lib/set/Set<i32>#clear
  get_local $0
  call $~lib/set/Set<i32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/set/Set<u32>#clear (; 60 ;) (type $iv) (param $0 i32)
  get_local $0
  i32.const 0
  i32.const 16
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  get_local $0
  get_global $~lib/set/INITIAL_CAPACITY
  i32.const 1
  i32.sub
  i32.store offset=4
  get_local $0
  i32.const 0
  i32.const 32
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  get_local $0
  get_global $~lib/set/INITIAL_CAPACITY
  i32.store offset=12
  get_local $0
  i32.const 0
  i32.store offset=16
  get_local $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/set/Set<u32>#constructor (; 61 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 24
    call $~lib/memory/memory.allocate
    set_local $1
    get_local $1
    i32.const 0
    i32.store
    get_local $1
    i32.const 0
    i32.store offset=4
    get_local $1
    i32.const 0
    i32.store offset=8
    get_local $1
    i32.const 0
    i32.store offset=12
    get_local $1
    i32.const 0
    i32.store offset=16
    get_local $1
    i32.const 0
    i32.store offset=20
    get_local $1
   end
   tee_local $0
  end
  tee_local $0
  call $~lib/set/Set<u32>#clear
  get_local $0
 )
 (func $~lib/internal/hash/hash<u32> (; 62 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  call $~lib/internal/hash/hash32
  return
 )
 (func $~lib/set/Set<u32>#find (; 63 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load
  get_local $2
  get_local $0
  i32.load offset=4
  i32.and
  get_global $~lib/set/BUCKET_SIZE
  i32.mul
  i32.add
  i32.load offset=8
  set_local $3
  block $break|0
   loop $continue|0
    get_local $3
    if
     block
      get_local $3
      i32.load offset=4
      get_global $~lib/set/EMPTY
      i32.and
      i32.eqz
      tee_local $4
      if (result i32)
       get_local $3
       i32.load
       get_local $1
       i32.eq
      else       
       get_local $4
      end
      if
       get_local $3
       return
      end
      get_local $3
      i32.load offset=4
      get_global $~lib/set/EMPTY
      i32.const -1
      i32.xor
      i32.and
      set_local $3
     end
     br $continue|0
    end
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<u32>#has (; 64 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  get_local $1
  call $~lib/internal/hash/hash<u32>
  call $~lib/set/Set<u32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<u32>#rehash (; 65 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
  get_local $1
  i32.const 1
  i32.add
  set_local $2
  i32.const 0
  get_local $2
  get_global $~lib/set/BUCKET_SIZE
  i32.mul
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $3
  get_local $2
  f64.convert_s/i32
  get_global $~lib/set/FILL_FACTOR
  f64.mul
  i32.trunc_s/f64
  set_local $4
  i32.const 0
  get_local $4
  block $~lib/set/ENTRY_SIZE<u32>|inlined.1 (result i32)
   i32.const 8
  end
  i32.mul
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $5
  get_local $0
  i32.load offset=8
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $6
  get_local $6
  get_local $0
  i32.load offset=16
  block $~lib/set/ENTRY_SIZE<u32>|inlined.2 (result i32)
   i32.const 8
  end
  i32.mul
  i32.add
  set_local $7
  get_local $5
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $8
  block $break|0
   loop $continue|0
    get_local $6
    get_local $7
    i32.ne
    if
     block
      get_local $6
      set_local $9
      get_local $9
      i32.load offset=4
      get_global $~lib/set/EMPTY
      i32.and
      i32.eqz
      if
       get_local $8
       set_local $10
       get_local $10
       get_local $9
       i32.load
       i32.store
       block $~lib/internal/hash/hash<u32>|inlined.0 (result i32)
        get_local $9
        i32.load
        set_local $11
        get_local $11
        call $~lib/internal/hash/hash32
        br $~lib/internal/hash/hash<u32>|inlined.0
       end
       get_local $1
       i32.and
       set_local $11
       get_local $3
       get_local $11
       get_global $~lib/set/BUCKET_SIZE
       i32.mul
       i32.add
       set_local $12
       get_local $10
       get_local $12
       i32.load offset=8
       i32.store offset=4
       get_local $12
       get_local $8
       i32.store offset=8
       get_local $8
       block $~lib/set/ENTRY_SIZE<u32>|inlined.3 (result i32)
        i32.const 8
       end
       i32.add
       set_local $8
      end
      get_local $6
      block $~lib/set/ENTRY_SIZE<u32>|inlined.4 (result i32)
       i32.const 8
      end
      i32.add
      set_local $6
     end
     br $continue|0
    end
   end
  end
  get_local $0
  get_local $3
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  get_local $0
  get_local $5
  i32.store offset=8
  get_local $0
  get_local $4
  i32.store offset=12
  get_local $0
  get_local $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/set/Set<u32>#add (; 66 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  call $~lib/internal/hash/hash<u32>
  set_local $2
  get_local $0
  get_local $1
  get_local $2
  call $~lib/set/Set<u32>#find
  set_local $3
  get_local $3
  i32.eqz
  if
   get_local $0
   i32.load offset=16
   get_local $0
   i32.load offset=12
   i32.eq
   if
    get_local $0
    get_local $0
    i32.load offset=20
    get_local $0
    i32.load offset=12
    f64.convert_s/i32
    get_global $~lib/set/FREE_FACTOR
    f64.mul
    i32.trunc_s/f64
    i32.lt_s
    if (result i32)
     get_local $0
     i32.load offset=4
    else     
     get_local $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<u32>#rehash
   end
   get_local $0
   i32.load offset=8
   set_local $4
   get_local $4
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   block (result i32)
    get_local $0
    get_local $0
    i32.load offset=16
    tee_local $5
    i32.const 1
    i32.add
    i32.store offset=16
    get_local $5
   end
   block $~lib/set/ENTRY_SIZE<u32>|inlined.5 (result i32)
    i32.const 8
   end
   i32.mul
   i32.add
   set_local $3
   get_local $3
   get_local $1
   i32.store
   get_local $0
   get_local $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   get_local $0
   i32.load
   get_local $2
   get_local $0
   i32.load offset=4
   i32.and
   get_global $~lib/set/BUCKET_SIZE
   i32.mul
   i32.add
   set_local $5
   get_local $3
   get_local $5
   i32.load offset=8
   i32.store offset=4
   get_local $5
   get_local $3
   i32.store offset=8
  end
 )
 (func $~lib/set/Set<u32>#get:size (; 67 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load offset=20
 )
 (func $~lib/set/Set<u32>#delete (; 68 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  get_local $1
  block $~lib/internal/hash/hash<u32>|inlined.1 (result i32)
   get_local $1
   call $~lib/internal/hash/hash32
   br $~lib/internal/hash/hash<u32>|inlined.1
  end
  call $~lib/set/Set<u32>#find
  set_local $2
  get_local $2
  i32.eqz
  if
   i32.const 0
   return
  end
  get_local $2
  get_local $2
  i32.load offset=4
  get_global $~lib/set/EMPTY
  i32.or
  i32.store offset=4
  get_local $0
  get_local $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  set_local $3
  get_local $3
  i32.const 1
  i32.add
  get_global $~lib/set/INITIAL_CAPACITY
  tee_local $4
  get_local $0
  i32.load offset=20
  tee_local $5
  get_local $4
  get_local $5
  i32.gt_u
  select
  i32.ge_u
  tee_local $4
  if (result i32)
   get_local $0
   i32.load offset=20
   get_local $0
   i32.load offset=12
   f64.convert_s/i32
   get_global $~lib/set/FREE_FACTOR
   f64.mul
   i32.trunc_s/f64
   i32.lt_s
  else   
   get_local $4
  end
  if
   get_local $0
   get_local $3
   call $~lib/set/Set<u32>#rehash
  end
  i32.const 1
 )
 (func $std/set/test<u32> (; 69 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  call $~lib/set/Set<u32>#constructor
  set_local $0
  block $break|0
   i32.const 0
   set_local $1
   loop $repeat|0
    get_local $1
    i32.const 100
    i32.lt_u
    i32.eqz
    br_if $break|0
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<u32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 8
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<u32>#add
     get_local $0
     get_local $1
     call $~lib/set/Set<u32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 10
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<u32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 12
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i32.const 50
   set_local $1
   loop $repeat|1
    get_local $1
    i32.const 100
    i32.lt_u
    i32.eqz
    br_if $break|1
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<u32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 16
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<u32>#add
     get_local $0
     get_local $1
     call $~lib/set/Set<u32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 18
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $repeat|1
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<u32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 20
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   i32.const 0
   set_local $1
   loop $repeat|2
    get_local $1
    i32.const 50
    i32.lt_u
    i32.eqz
    br_if $break|2
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<u32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 24
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<u32>#delete
     drop
     get_local $0
     get_local $1
     call $~lib/set/Set<u32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 26
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $repeat|2
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<u32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 28
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   i32.const 0
   set_local $1
   loop $repeat|3
    get_local $1
    i32.const 50
    i32.lt_u
    i32.eqz
    br_if $break|3
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<u32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 32
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<u32>#add
     get_local $0
     get_local $1
     call $~lib/set/Set<u32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 34
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<u32>#delete
     drop
     get_local $0
     get_local $1
     call $~lib/set/Set<u32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 36
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $repeat|3
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<u32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  call $~lib/set/Set<u32>#clear
  get_local $0
  call $~lib/set/Set<u32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/set/Set<i64>#clear (; 70 ;) (type $iv) (param $0 i32)
  get_local $0
  i32.const 0
  i32.const 16
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  get_local $0
  get_global $~lib/set/INITIAL_CAPACITY
  i32.const 1
  i32.sub
  i32.store offset=4
  get_local $0
  i32.const 0
  i32.const 64
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  get_local $0
  get_global $~lib/set/INITIAL_CAPACITY
  i32.store offset=12
  get_local $0
  i32.const 0
  i32.store offset=16
  get_local $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/set/Set<i64>#constructor (; 71 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 24
    call $~lib/memory/memory.allocate
    set_local $1
    get_local $1
    i32.const 0
    i32.store
    get_local $1
    i32.const 0
    i32.store offset=4
    get_local $1
    i32.const 0
    i32.store offset=8
    get_local $1
    i32.const 0
    i32.store offset=12
    get_local $1
    i32.const 0
    i32.store offset=16
    get_local $1
    i32.const 0
    i32.store offset=20
    get_local $1
   end
   tee_local $0
  end
  tee_local $0
  call $~lib/set/Set<i64>#clear
  get_local $0
 )
 (func $~lib/internal/hash/hash64 (; 72 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  i32.wrap/i64
  set_local $1
  get_local $0
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_local $2
  get_global $~lib/internal/hash/FNV_OFFSET
  set_local $3
  get_local $3
  get_local $1
  i32.const 255
  i32.and
  i32.xor
  get_global $~lib/internal/hash/FNV_PRIME
  i32.mul
  set_local $3
  get_local $3
  get_local $1
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  get_global $~lib/internal/hash/FNV_PRIME
  i32.mul
  set_local $3
  get_local $3
  get_local $1
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  get_global $~lib/internal/hash/FNV_PRIME
  i32.mul
  set_local $3
  get_local $3
  get_local $1
  i32.const 24
  i32.shr_u
  i32.xor
  get_global $~lib/internal/hash/FNV_PRIME
  i32.mul
  set_local $3
  get_local $3
  get_local $2
  i32.const 255
  i32.and
  i32.xor
  get_global $~lib/internal/hash/FNV_PRIME
  i32.mul
  set_local $3
  get_local $3
  get_local $2
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  get_global $~lib/internal/hash/FNV_PRIME
  i32.mul
  set_local $3
  get_local $3
  get_local $2
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  get_global $~lib/internal/hash/FNV_PRIME
  i32.mul
  set_local $3
  get_local $3
  get_local $2
  i32.const 24
  i32.shr_u
  i32.xor
  get_global $~lib/internal/hash/FNV_PRIME
  i32.mul
  set_local $3
  get_local $3
 )
 (func $~lib/internal/hash/hash<i64> (; 73 ;) (type $Ii) (param $0 i64) (result i32)
  get_local $0
  call $~lib/internal/hash/hash64
  return
 )
 (func $~lib/set/Set<i64>#find (; 74 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load
  get_local $2
  get_local $0
  i32.load offset=4
  i32.and
  get_global $~lib/set/BUCKET_SIZE
  i32.mul
  i32.add
  i32.load offset=8
  set_local $3
  block $break|0
   loop $continue|0
    get_local $3
    if
     block
      get_local $3
      i32.load offset=8
      get_global $~lib/set/EMPTY
      i32.and
      i32.eqz
      tee_local $4
      if (result i32)
       get_local $3
       i64.load
       get_local $1
       i64.eq
      else       
       get_local $4
      end
      if
       get_local $3
       return
      end
      get_local $3
      i32.load offset=8
      get_global $~lib/set/EMPTY
      i32.const -1
      i32.xor
      i32.and
      set_local $3
     end
     br $continue|0
    end
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<i64>#has (; 75 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  get_local $0
  get_local $1
  get_local $1
  call $~lib/internal/hash/hash<i64>
  call $~lib/set/Set<i64>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<i64>#rehash (; 76 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
  get_local $1
  i32.const 1
  i32.add
  set_local $2
  i32.const 0
  get_local $2
  get_global $~lib/set/BUCKET_SIZE
  i32.mul
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $3
  get_local $2
  f64.convert_s/i32
  get_global $~lib/set/FILL_FACTOR
  f64.mul
  i32.trunc_s/f64
  set_local $4
  i32.const 0
  get_local $4
  block $~lib/set/ENTRY_SIZE<i64>|inlined.1 (result i32)
   i32.const 16
  end
  i32.mul
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $5
  get_local $0
  i32.load offset=8
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $6
  get_local $6
  get_local $0
  i32.load offset=16
  block $~lib/set/ENTRY_SIZE<i64>|inlined.2 (result i32)
   i32.const 16
  end
  i32.mul
  i32.add
  set_local $7
  get_local $5
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $8
  block $break|0
   loop $continue|0
    get_local $6
    get_local $7
    i32.ne
    if
     block
      get_local $6
      set_local $9
      get_local $9
      i32.load offset=8
      get_global $~lib/set/EMPTY
      i32.and
      i32.eqz
      if
       get_local $8
       set_local $10
       get_local $10
       get_local $9
       i64.load
       i64.store
       block $~lib/internal/hash/hash<i64>|inlined.0 (result i32)
        get_local $9
        i64.load
        set_local $11
        get_local $11
        call $~lib/internal/hash/hash64
        br $~lib/internal/hash/hash<i64>|inlined.0
       end
       get_local $1
       i32.and
       set_local $12
       get_local $3
       get_local $12
       get_global $~lib/set/BUCKET_SIZE
       i32.mul
       i32.add
       set_local $13
       get_local $10
       get_local $13
       i32.load offset=8
       i32.store offset=8
       get_local $13
       get_local $8
       i32.store offset=8
       get_local $8
       block $~lib/set/ENTRY_SIZE<i64>|inlined.3 (result i32)
        i32.const 16
       end
       i32.add
       set_local $8
      end
      get_local $6
      block $~lib/set/ENTRY_SIZE<i64>|inlined.4 (result i32)
       i32.const 16
      end
      i32.add
      set_local $6
     end
     br $continue|0
    end
   end
  end
  get_local $0
  get_local $3
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  get_local $0
  get_local $5
  i32.store offset=8
  get_local $0
  get_local $4
  i32.store offset=12
  get_local $0
  get_local $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/set/Set<i64>#add (; 77 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  call $~lib/internal/hash/hash<i64>
  set_local $2
  get_local $0
  get_local $1
  get_local $2
  call $~lib/set/Set<i64>#find
  set_local $3
  get_local $3
  i32.eqz
  if
   get_local $0
   i32.load offset=16
   get_local $0
   i32.load offset=12
   i32.eq
   if
    get_local $0
    get_local $0
    i32.load offset=20
    get_local $0
    i32.load offset=12
    f64.convert_s/i32
    get_global $~lib/set/FREE_FACTOR
    f64.mul
    i32.trunc_s/f64
    i32.lt_s
    if (result i32)
     get_local $0
     i32.load offset=4
    else     
     get_local $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<i64>#rehash
   end
   get_local $0
   i32.load offset=8
   set_local $4
   get_local $4
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   block (result i32)
    get_local $0
    get_local $0
    i32.load offset=16
    tee_local $5
    i32.const 1
    i32.add
    i32.store offset=16
    get_local $5
   end
   block $~lib/set/ENTRY_SIZE<i64>|inlined.5 (result i32)
    i32.const 16
   end
   i32.mul
   i32.add
   set_local $3
   get_local $3
   get_local $1
   i64.store
   get_local $0
   get_local $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   get_local $0
   i32.load
   get_local $2
   get_local $0
   i32.load offset=4
   i32.and
   get_global $~lib/set/BUCKET_SIZE
   i32.mul
   i32.add
   set_local $5
   get_local $3
   get_local $5
   i32.load offset=8
   i32.store offset=8
   get_local $5
   get_local $3
   i32.store offset=8
  end
 )
 (func $~lib/set/Set<i64>#get:size (; 78 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load offset=20
 )
 (func $~lib/set/Set<i64>#delete (; 79 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  get_local $1
  block $~lib/internal/hash/hash<i64>|inlined.1 (result i32)
   get_local $1
   call $~lib/internal/hash/hash64
   br $~lib/internal/hash/hash<i64>|inlined.1
  end
  call $~lib/set/Set<i64>#find
  set_local $2
  get_local $2
  i32.eqz
  if
   i32.const 0
   return
  end
  get_local $2
  get_local $2
  i32.load offset=8
  get_global $~lib/set/EMPTY
  i32.or
  i32.store offset=8
  get_local $0
  get_local $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  set_local $3
  get_local $3
  i32.const 1
  i32.add
  get_global $~lib/set/INITIAL_CAPACITY
  tee_local $4
  get_local $0
  i32.load offset=20
  tee_local $5
  get_local $4
  get_local $5
  i32.gt_u
  select
  i32.ge_u
  tee_local $4
  if (result i32)
   get_local $0
   i32.load offset=20
   get_local $0
   i32.load offset=12
   f64.convert_s/i32
   get_global $~lib/set/FREE_FACTOR
   f64.mul
   i32.trunc_s/f64
   i32.lt_s
  else   
   get_local $4
  end
  if
   get_local $0
   get_local $3
   call $~lib/set/Set<i64>#rehash
  end
  i32.const 1
 )
 (func $std/set/test<i64> (; 80 ;) (type $v)
  (local $0 i32)
  (local $1 i64)
  i32.const 0
  call $~lib/set/Set<i64>#constructor
  set_local $0
  block $break|0
   i64.const 0
   set_local $1
   loop $repeat|0
    get_local $1
    i64.const 100
    i64.lt_s
    i32.eqz
    br_if $break|0
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<i64>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 8
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<i64>#add
     get_local $0
     get_local $1
     call $~lib/set/Set<i64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 10
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    i64.const 1
    i64.add
    set_local $1
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<i64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 12
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i64.const 50
   set_local $1
   loop $repeat|1
    get_local $1
    i64.const 100
    i64.lt_s
    i32.eqz
    br_if $break|1
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<i64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 16
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<i64>#add
     get_local $0
     get_local $1
     call $~lib/set/Set<i64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 18
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    i64.const 1
    i64.add
    set_local $1
    br $repeat|1
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<i64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 20
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   i64.const 0
   set_local $1
   loop $repeat|2
    get_local $1
    i64.const 50
    i64.lt_s
    i32.eqz
    br_if $break|2
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<i64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 24
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<i64>#delete
     drop
     get_local $0
     get_local $1
     call $~lib/set/Set<i64>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 26
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    i64.const 1
    i64.add
    set_local $1
    br $repeat|2
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<i64>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 28
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   i64.const 0
   set_local $1
   loop $repeat|3
    get_local $1
    i64.const 50
    i64.lt_s
    i32.eqz
    br_if $break|3
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<i64>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 32
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<i64>#add
     get_local $0
     get_local $1
     call $~lib/set/Set<i64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 34
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<i64>#delete
     drop
     get_local $0
     get_local $1
     call $~lib/set/Set<i64>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 36
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    i64.const 1
    i64.add
    set_local $1
    br $repeat|3
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<i64>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  call $~lib/set/Set<i64>#clear
  get_local $0
  call $~lib/set/Set<i64>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/set/Set<u64>#clear (; 81 ;) (type $iv) (param $0 i32)
  get_local $0
  i32.const 0
  i32.const 16
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  get_local $0
  get_global $~lib/set/INITIAL_CAPACITY
  i32.const 1
  i32.sub
  i32.store offset=4
  get_local $0
  i32.const 0
  i32.const 64
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  get_local $0
  get_global $~lib/set/INITIAL_CAPACITY
  i32.store offset=12
  get_local $0
  i32.const 0
  i32.store offset=16
  get_local $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/set/Set<u64>#constructor (; 82 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 24
    call $~lib/memory/memory.allocate
    set_local $1
    get_local $1
    i32.const 0
    i32.store
    get_local $1
    i32.const 0
    i32.store offset=4
    get_local $1
    i32.const 0
    i32.store offset=8
    get_local $1
    i32.const 0
    i32.store offset=12
    get_local $1
    i32.const 0
    i32.store offset=16
    get_local $1
    i32.const 0
    i32.store offset=20
    get_local $1
   end
   tee_local $0
  end
  tee_local $0
  call $~lib/set/Set<u64>#clear
  get_local $0
 )
 (func $~lib/internal/hash/hash<u64> (; 83 ;) (type $Ii) (param $0 i64) (result i32)
  get_local $0
  call $~lib/internal/hash/hash64
  return
 )
 (func $~lib/set/Set<u64>#find (; 84 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load
  get_local $2
  get_local $0
  i32.load offset=4
  i32.and
  get_global $~lib/set/BUCKET_SIZE
  i32.mul
  i32.add
  i32.load offset=8
  set_local $3
  block $break|0
   loop $continue|0
    get_local $3
    if
     block
      get_local $3
      i32.load offset=8
      get_global $~lib/set/EMPTY
      i32.and
      i32.eqz
      tee_local $4
      if (result i32)
       get_local $3
       i64.load
       get_local $1
       i64.eq
      else       
       get_local $4
      end
      if
       get_local $3
       return
      end
      get_local $3
      i32.load offset=8
      get_global $~lib/set/EMPTY
      i32.const -1
      i32.xor
      i32.and
      set_local $3
     end
     br $continue|0
    end
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<u64>#has (; 85 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  get_local $0
  get_local $1
  get_local $1
  call $~lib/internal/hash/hash<u64>
  call $~lib/set/Set<u64>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<u64>#rehash (; 86 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
  get_local $1
  i32.const 1
  i32.add
  set_local $2
  i32.const 0
  get_local $2
  get_global $~lib/set/BUCKET_SIZE
  i32.mul
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $3
  get_local $2
  f64.convert_s/i32
  get_global $~lib/set/FILL_FACTOR
  f64.mul
  i32.trunc_s/f64
  set_local $4
  i32.const 0
  get_local $4
  block $~lib/set/ENTRY_SIZE<u64>|inlined.1 (result i32)
   i32.const 16
  end
  i32.mul
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $5
  get_local $0
  i32.load offset=8
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $6
  get_local $6
  get_local $0
  i32.load offset=16
  block $~lib/set/ENTRY_SIZE<u64>|inlined.2 (result i32)
   i32.const 16
  end
  i32.mul
  i32.add
  set_local $7
  get_local $5
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $8
  block $break|0
   loop $continue|0
    get_local $6
    get_local $7
    i32.ne
    if
     block
      get_local $6
      set_local $9
      get_local $9
      i32.load offset=8
      get_global $~lib/set/EMPTY
      i32.and
      i32.eqz
      if
       get_local $8
       set_local $10
       get_local $10
       get_local $9
       i64.load
       i64.store
       block $~lib/internal/hash/hash<u64>|inlined.0 (result i32)
        get_local $9
        i64.load
        set_local $11
        get_local $11
        call $~lib/internal/hash/hash64
        br $~lib/internal/hash/hash<u64>|inlined.0
       end
       get_local $1
       i32.and
       set_local $12
       get_local $3
       get_local $12
       get_global $~lib/set/BUCKET_SIZE
       i32.mul
       i32.add
       set_local $13
       get_local $10
       get_local $13
       i32.load offset=8
       i32.store offset=8
       get_local $13
       get_local $8
       i32.store offset=8
       get_local $8
       block $~lib/set/ENTRY_SIZE<u64>|inlined.3 (result i32)
        i32.const 16
       end
       i32.add
       set_local $8
      end
      get_local $6
      block $~lib/set/ENTRY_SIZE<u64>|inlined.4 (result i32)
       i32.const 16
      end
      i32.add
      set_local $6
     end
     br $continue|0
    end
   end
  end
  get_local $0
  get_local $3
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  get_local $0
  get_local $5
  i32.store offset=8
  get_local $0
  get_local $4
  i32.store offset=12
  get_local $0
  get_local $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/set/Set<u64>#add (; 87 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  call $~lib/internal/hash/hash<u64>
  set_local $2
  get_local $0
  get_local $1
  get_local $2
  call $~lib/set/Set<u64>#find
  set_local $3
  get_local $3
  i32.eqz
  if
   get_local $0
   i32.load offset=16
   get_local $0
   i32.load offset=12
   i32.eq
   if
    get_local $0
    get_local $0
    i32.load offset=20
    get_local $0
    i32.load offset=12
    f64.convert_s/i32
    get_global $~lib/set/FREE_FACTOR
    f64.mul
    i32.trunc_s/f64
    i32.lt_s
    if (result i32)
     get_local $0
     i32.load offset=4
    else     
     get_local $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<u64>#rehash
   end
   get_local $0
   i32.load offset=8
   set_local $4
   get_local $4
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   block (result i32)
    get_local $0
    get_local $0
    i32.load offset=16
    tee_local $5
    i32.const 1
    i32.add
    i32.store offset=16
    get_local $5
   end
   block $~lib/set/ENTRY_SIZE<u64>|inlined.5 (result i32)
    i32.const 16
   end
   i32.mul
   i32.add
   set_local $3
   get_local $3
   get_local $1
   i64.store
   get_local $0
   get_local $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   get_local $0
   i32.load
   get_local $2
   get_local $0
   i32.load offset=4
   i32.and
   get_global $~lib/set/BUCKET_SIZE
   i32.mul
   i32.add
   set_local $5
   get_local $3
   get_local $5
   i32.load offset=8
   i32.store offset=8
   get_local $5
   get_local $3
   i32.store offset=8
  end
 )
 (func $~lib/set/Set<u64>#get:size (; 88 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load offset=20
 )
 (func $~lib/set/Set<u64>#delete (; 89 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  get_local $1
  block $~lib/internal/hash/hash<u64>|inlined.1 (result i32)
   get_local $1
   call $~lib/internal/hash/hash64
   br $~lib/internal/hash/hash<u64>|inlined.1
  end
  call $~lib/set/Set<u64>#find
  set_local $2
  get_local $2
  i32.eqz
  if
   i32.const 0
   return
  end
  get_local $2
  get_local $2
  i32.load offset=8
  get_global $~lib/set/EMPTY
  i32.or
  i32.store offset=8
  get_local $0
  get_local $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  set_local $3
  get_local $3
  i32.const 1
  i32.add
  get_global $~lib/set/INITIAL_CAPACITY
  tee_local $4
  get_local $0
  i32.load offset=20
  tee_local $5
  get_local $4
  get_local $5
  i32.gt_u
  select
  i32.ge_u
  tee_local $4
  if (result i32)
   get_local $0
   i32.load offset=20
   get_local $0
   i32.load offset=12
   f64.convert_s/i32
   get_global $~lib/set/FREE_FACTOR
   f64.mul
   i32.trunc_s/f64
   i32.lt_s
  else   
   get_local $4
  end
  if
   get_local $0
   get_local $3
   call $~lib/set/Set<u64>#rehash
  end
  i32.const 1
 )
 (func $std/set/test<u64> (; 90 ;) (type $v)
  (local $0 i32)
  (local $1 i64)
  i32.const 0
  call $~lib/set/Set<u64>#constructor
  set_local $0
  block $break|0
   i64.const 0
   set_local $1
   loop $repeat|0
    get_local $1
    i64.const 100
    i64.lt_u
    i32.eqz
    br_if $break|0
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<u64>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 8
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<u64>#add
     get_local $0
     get_local $1
     call $~lib/set/Set<u64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 10
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    i64.const 1
    i64.add
    set_local $1
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<u64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 12
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i64.const 50
   set_local $1
   loop $repeat|1
    get_local $1
    i64.const 100
    i64.lt_u
    i32.eqz
    br_if $break|1
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<u64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 16
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<u64>#add
     get_local $0
     get_local $1
     call $~lib/set/Set<u64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 18
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    i64.const 1
    i64.add
    set_local $1
    br $repeat|1
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<u64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 20
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   i64.const 0
   set_local $1
   loop $repeat|2
    get_local $1
    i64.const 50
    i64.lt_u
    i32.eqz
    br_if $break|2
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<u64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 24
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<u64>#delete
     drop
     get_local $0
     get_local $1
     call $~lib/set/Set<u64>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 26
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    i64.const 1
    i64.add
    set_local $1
    br $repeat|2
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<u64>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 28
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   i64.const 0
   set_local $1
   loop $repeat|3
    get_local $1
    i64.const 50
    i64.lt_u
    i32.eqz
    br_if $break|3
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<u64>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 32
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<u64>#add
     get_local $0
     get_local $1
     call $~lib/set/Set<u64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 34
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<u64>#delete
     drop
     get_local $0
     get_local $1
     call $~lib/set/Set<u64>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 36
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    i64.const 1
    i64.add
    set_local $1
    br $repeat|3
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<u64>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  call $~lib/set/Set<u64>#clear
  get_local $0
  call $~lib/set/Set<u64>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/set/Set<f32>#clear (; 91 ;) (type $iv) (param $0 i32)
  get_local $0
  i32.const 0
  i32.const 16
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  get_local $0
  get_global $~lib/set/INITIAL_CAPACITY
  i32.const 1
  i32.sub
  i32.store offset=4
  get_local $0
  i32.const 0
  i32.const 32
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  get_local $0
  get_global $~lib/set/INITIAL_CAPACITY
  i32.store offset=12
  get_local $0
  i32.const 0
  i32.store offset=16
  get_local $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/set/Set<f32>#constructor (; 92 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 24
    call $~lib/memory/memory.allocate
    set_local $1
    get_local $1
    i32.const 0
    i32.store
    get_local $1
    i32.const 0
    i32.store offset=4
    get_local $1
    i32.const 0
    i32.store offset=8
    get_local $1
    i32.const 0
    i32.store offset=12
    get_local $1
    i32.const 0
    i32.store offset=16
    get_local $1
    i32.const 0
    i32.store offset=20
    get_local $1
   end
   tee_local $0
  end
  tee_local $0
  call $~lib/set/Set<f32>#clear
  get_local $0
 )
 (func $~lib/internal/hash/hash<f32> (; 93 ;) (type $fi) (param $0 f32) (result i32)
  get_local $0
  i32.reinterpret/f32
  call $~lib/internal/hash/hash32
  return
 )
 (func $~lib/set/Set<f32>#find (; 94 ;) (type $ifii) (param $0 i32) (param $1 f32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load
  get_local $2
  get_local $0
  i32.load offset=4
  i32.and
  get_global $~lib/set/BUCKET_SIZE
  i32.mul
  i32.add
  i32.load offset=8
  set_local $3
  block $break|0
   loop $continue|0
    get_local $3
    if
     block
      get_local $3
      i32.load offset=4
      get_global $~lib/set/EMPTY
      i32.and
      i32.eqz
      tee_local $4
      if (result i32)
       get_local $3
       f32.load
       get_local $1
       f32.eq
      else       
       get_local $4
      end
      if
       get_local $3
       return
      end
      get_local $3
      i32.load offset=4
      get_global $~lib/set/EMPTY
      i32.const -1
      i32.xor
      i32.and
      set_local $3
     end
     br $continue|0
    end
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<f32>#has (; 95 ;) (type $ifi) (param $0 i32) (param $1 f32) (result i32)
  get_local $0
  get_local $1
  get_local $1
  call $~lib/internal/hash/hash<f32>
  call $~lib/set/Set<f32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<f32>#rehash (; 96 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
  get_local $1
  i32.const 1
  i32.add
  set_local $2
  i32.const 0
  get_local $2
  get_global $~lib/set/BUCKET_SIZE
  i32.mul
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $3
  get_local $2
  f64.convert_s/i32
  get_global $~lib/set/FILL_FACTOR
  f64.mul
  i32.trunc_s/f64
  set_local $4
  i32.const 0
  get_local $4
  block $~lib/set/ENTRY_SIZE<f32>|inlined.1 (result i32)
   i32.const 8
  end
  i32.mul
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $5
  get_local $0
  i32.load offset=8
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $6
  get_local $6
  get_local $0
  i32.load offset=16
  block $~lib/set/ENTRY_SIZE<f32>|inlined.2 (result i32)
   i32.const 8
  end
  i32.mul
  i32.add
  set_local $7
  get_local $5
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $8
  block $break|0
   loop $continue|0
    get_local $6
    get_local $7
    i32.ne
    if
     block
      get_local $6
      set_local $9
      get_local $9
      i32.load offset=4
      get_global $~lib/set/EMPTY
      i32.and
      i32.eqz
      if
       get_local $8
       set_local $10
       get_local $10
       get_local $9
       f32.load
       f32.store
       block $~lib/internal/hash/hash<f32>|inlined.0 (result i32)
        get_local $9
        f32.load
        set_local $11
        get_local $11
        i32.reinterpret/f32
        call $~lib/internal/hash/hash32
        br $~lib/internal/hash/hash<f32>|inlined.0
       end
       get_local $1
       i32.and
       set_local $12
       get_local $3
       get_local $12
       get_global $~lib/set/BUCKET_SIZE
       i32.mul
       i32.add
       set_local $13
       get_local $10
       get_local $13
       i32.load offset=8
       i32.store offset=4
       get_local $13
       get_local $8
       i32.store offset=8
       get_local $8
       block $~lib/set/ENTRY_SIZE<f32>|inlined.3 (result i32)
        i32.const 8
       end
       i32.add
       set_local $8
      end
      get_local $6
      block $~lib/set/ENTRY_SIZE<f32>|inlined.4 (result i32)
       i32.const 8
      end
      i32.add
      set_local $6
     end
     br $continue|0
    end
   end
  end
  get_local $0
  get_local $3
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  get_local $0
  get_local $5
  i32.store offset=8
  get_local $0
  get_local $4
  i32.store offset=12
  get_local $0
  get_local $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/set/Set<f32>#add (; 97 ;) (type $ifv) (param $0 i32) (param $1 f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  call $~lib/internal/hash/hash<f32>
  set_local $2
  get_local $0
  get_local $1
  get_local $2
  call $~lib/set/Set<f32>#find
  set_local $3
  get_local $3
  i32.eqz
  if
   get_local $0
   i32.load offset=16
   get_local $0
   i32.load offset=12
   i32.eq
   if
    get_local $0
    get_local $0
    i32.load offset=20
    get_local $0
    i32.load offset=12
    f64.convert_s/i32
    get_global $~lib/set/FREE_FACTOR
    f64.mul
    i32.trunc_s/f64
    i32.lt_s
    if (result i32)
     get_local $0
     i32.load offset=4
    else     
     get_local $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<f32>#rehash
   end
   get_local $0
   i32.load offset=8
   set_local $4
   get_local $4
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   block (result i32)
    get_local $0
    get_local $0
    i32.load offset=16
    tee_local $5
    i32.const 1
    i32.add
    i32.store offset=16
    get_local $5
   end
   block $~lib/set/ENTRY_SIZE<f32>|inlined.5 (result i32)
    i32.const 8
   end
   i32.mul
   i32.add
   set_local $3
   get_local $3
   get_local $1
   f32.store
   get_local $0
   get_local $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   get_local $0
   i32.load
   get_local $2
   get_local $0
   i32.load offset=4
   i32.and
   get_global $~lib/set/BUCKET_SIZE
   i32.mul
   i32.add
   set_local $5
   get_local $3
   get_local $5
   i32.load offset=8
   i32.store offset=4
   get_local $5
   get_local $3
   i32.store offset=8
  end
 )
 (func $~lib/set/Set<f32>#get:size (; 98 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load offset=20
 )
 (func $~lib/set/Set<f32>#delete (; 99 ;) (type $ifi) (param $0 i32) (param $1 f32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  get_local $1
  block $~lib/internal/hash/hash<f32>|inlined.1 (result i32)
   get_local $1
   i32.reinterpret/f32
   call $~lib/internal/hash/hash32
   br $~lib/internal/hash/hash<f32>|inlined.1
  end
  call $~lib/set/Set<f32>#find
  set_local $2
  get_local $2
  i32.eqz
  if
   i32.const 0
   return
  end
  get_local $2
  get_local $2
  i32.load offset=4
  get_global $~lib/set/EMPTY
  i32.or
  i32.store offset=4
  get_local $0
  get_local $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  set_local $3
  get_local $3
  i32.const 1
  i32.add
  get_global $~lib/set/INITIAL_CAPACITY
  tee_local $4
  get_local $0
  i32.load offset=20
  tee_local $5
  get_local $4
  get_local $5
  i32.gt_u
  select
  i32.ge_u
  tee_local $4
  if (result i32)
   get_local $0
   i32.load offset=20
   get_local $0
   i32.load offset=12
   f64.convert_s/i32
   get_global $~lib/set/FREE_FACTOR
   f64.mul
   i32.trunc_s/f64
   i32.lt_s
  else   
   get_local $4
  end
  if
   get_local $0
   get_local $3
   call $~lib/set/Set<f32>#rehash
  end
  i32.const 1
 )
 (func $std/set/test<f32> (; 100 ;) (type $v)
  (local $0 i32)
  (local $1 f32)
  i32.const 0
  call $~lib/set/Set<f32>#constructor
  set_local $0
  block $break|0
   f32.const 0
   set_local $1
   loop $repeat|0
    get_local $1
    f32.const 100
    f32.lt
    i32.eqz
    br_if $break|0
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<f32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 8
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<f32>#add
     get_local $0
     get_local $1
     call $~lib/set/Set<f32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 10
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    f32.const 1
    f32.add
    set_local $1
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<f32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 12
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   f32.const 50
   set_local $1
   loop $repeat|1
    get_local $1
    f32.const 100
    f32.lt
    i32.eqz
    br_if $break|1
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<f32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 16
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<f32>#add
     get_local $0
     get_local $1
     call $~lib/set/Set<f32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 18
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    f32.const 1
    f32.add
    set_local $1
    br $repeat|1
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<f32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 20
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   f32.const 0
   set_local $1
   loop $repeat|2
    get_local $1
    f32.const 50
    f32.lt
    i32.eqz
    br_if $break|2
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<f32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 24
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<f32>#delete
     drop
     get_local $0
     get_local $1
     call $~lib/set/Set<f32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 26
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    f32.const 1
    f32.add
    set_local $1
    br $repeat|2
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<f32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 28
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   f32.const 0
   set_local $1
   loop $repeat|3
    get_local $1
    f32.const 50
    f32.lt
    i32.eqz
    br_if $break|3
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<f32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 32
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<f32>#add
     get_local $0
     get_local $1
     call $~lib/set/Set<f32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 34
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<f32>#delete
     drop
     get_local $0
     get_local $1
     call $~lib/set/Set<f32>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 36
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    f32.const 1
    f32.add
    set_local $1
    br $repeat|3
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<f32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  call $~lib/set/Set<f32>#clear
  get_local $0
  call $~lib/set/Set<f32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/set/Set<f64>#clear (; 101 ;) (type $iv) (param $0 i32)
  get_local $0
  i32.const 0
  i32.const 16
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  get_local $0
  get_global $~lib/set/INITIAL_CAPACITY
  i32.const 1
  i32.sub
  i32.store offset=4
  get_local $0
  i32.const 0
  i32.const 64
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  get_local $0
  get_global $~lib/set/INITIAL_CAPACITY
  i32.store offset=12
  get_local $0
  i32.const 0
  i32.store offset=16
  get_local $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/set/Set<f64>#constructor (; 102 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 24
    call $~lib/memory/memory.allocate
    set_local $1
    get_local $1
    i32.const 0
    i32.store
    get_local $1
    i32.const 0
    i32.store offset=4
    get_local $1
    i32.const 0
    i32.store offset=8
    get_local $1
    i32.const 0
    i32.store offset=12
    get_local $1
    i32.const 0
    i32.store offset=16
    get_local $1
    i32.const 0
    i32.store offset=20
    get_local $1
   end
   tee_local $0
  end
  tee_local $0
  call $~lib/set/Set<f64>#clear
  get_local $0
 )
 (func $~lib/internal/hash/hash<f64> (; 103 ;) (type $Fi) (param $0 f64) (result i32)
  get_local $0
  i64.reinterpret/f64
  call $~lib/internal/hash/hash64
  return
 )
 (func $~lib/set/Set<f64>#find (; 104 ;) (type $iFii) (param $0 i32) (param $1 f64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load
  get_local $2
  get_local $0
  i32.load offset=4
  i32.and
  get_global $~lib/set/BUCKET_SIZE
  i32.mul
  i32.add
  i32.load offset=8
  set_local $3
  block $break|0
   loop $continue|0
    get_local $3
    if
     block
      get_local $3
      i32.load offset=8
      get_global $~lib/set/EMPTY
      i32.and
      i32.eqz
      tee_local $4
      if (result i32)
       get_local $3
       f64.load
       get_local $1
       f64.eq
      else       
       get_local $4
      end
      if
       get_local $3
       return
      end
      get_local $3
      i32.load offset=8
      get_global $~lib/set/EMPTY
      i32.const -1
      i32.xor
      i32.and
      set_local $3
     end
     br $continue|0
    end
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<f64>#has (; 105 ;) (type $iFi) (param $0 i32) (param $1 f64) (result i32)
  get_local $0
  get_local $1
  get_local $1
  call $~lib/internal/hash/hash<f64>
  call $~lib/set/Set<f64>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<f64>#rehash (; 106 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
  get_local $1
  i32.const 1
  i32.add
  set_local $2
  i32.const 0
  get_local $2
  get_global $~lib/set/BUCKET_SIZE
  i32.mul
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $3
  get_local $2
  f64.convert_s/i32
  get_global $~lib/set/FILL_FACTOR
  f64.mul
  i32.trunc_s/f64
  set_local $4
  i32.const 0
  get_local $4
  block $~lib/set/ENTRY_SIZE<f64>|inlined.1 (result i32)
   i32.const 16
  end
  i32.mul
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $5
  get_local $0
  i32.load offset=8
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $6
  get_local $6
  get_local $0
  i32.load offset=16
  block $~lib/set/ENTRY_SIZE<f64>|inlined.2 (result i32)
   i32.const 16
  end
  i32.mul
  i32.add
  set_local $7
  get_local $5
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $8
  block $break|0
   loop $continue|0
    get_local $6
    get_local $7
    i32.ne
    if
     block
      get_local $6
      set_local $9
      get_local $9
      i32.load offset=8
      get_global $~lib/set/EMPTY
      i32.and
      i32.eqz
      if
       get_local $8
       set_local $10
       get_local $10
       get_local $9
       f64.load
       f64.store
       block $~lib/internal/hash/hash<f64>|inlined.0 (result i32)
        get_local $9
        f64.load
        set_local $11
        get_local $11
        i64.reinterpret/f64
        call $~lib/internal/hash/hash64
        br $~lib/internal/hash/hash<f64>|inlined.0
       end
       get_local $1
       i32.and
       set_local $12
       get_local $3
       get_local $12
       get_global $~lib/set/BUCKET_SIZE
       i32.mul
       i32.add
       set_local $13
       get_local $10
       get_local $13
       i32.load offset=8
       i32.store offset=8
       get_local $13
       get_local $8
       i32.store offset=8
       get_local $8
       block $~lib/set/ENTRY_SIZE<f64>|inlined.3 (result i32)
        i32.const 16
       end
       i32.add
       set_local $8
      end
      get_local $6
      block $~lib/set/ENTRY_SIZE<f64>|inlined.4 (result i32)
       i32.const 16
      end
      i32.add
      set_local $6
     end
     br $continue|0
    end
   end
  end
  get_local $0
  get_local $3
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  get_local $0
  get_local $5
  i32.store offset=8
  get_local $0
  get_local $4
  i32.store offset=12
  get_local $0
  get_local $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/set/Set<f64>#add (; 107 ;) (type $iFv) (param $0 i32) (param $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  call $~lib/internal/hash/hash<f64>
  set_local $2
  get_local $0
  get_local $1
  get_local $2
  call $~lib/set/Set<f64>#find
  set_local $3
  get_local $3
  i32.eqz
  if
   get_local $0
   i32.load offset=16
   get_local $0
   i32.load offset=12
   i32.eq
   if
    get_local $0
    get_local $0
    i32.load offset=20
    get_local $0
    i32.load offset=12
    f64.convert_s/i32
    get_global $~lib/set/FREE_FACTOR
    f64.mul
    i32.trunc_s/f64
    i32.lt_s
    if (result i32)
     get_local $0
     i32.load offset=4
    else     
     get_local $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<f64>#rehash
   end
   get_local $0
   i32.load offset=8
   set_local $4
   get_local $4
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   block (result i32)
    get_local $0
    get_local $0
    i32.load offset=16
    tee_local $5
    i32.const 1
    i32.add
    i32.store offset=16
    get_local $5
   end
   block $~lib/set/ENTRY_SIZE<f64>|inlined.5 (result i32)
    i32.const 16
   end
   i32.mul
   i32.add
   set_local $3
   get_local $3
   get_local $1
   f64.store
   get_local $0
   get_local $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   get_local $0
   i32.load
   get_local $2
   get_local $0
   i32.load offset=4
   i32.and
   get_global $~lib/set/BUCKET_SIZE
   i32.mul
   i32.add
   set_local $5
   get_local $3
   get_local $5
   i32.load offset=8
   i32.store offset=8
   get_local $5
   get_local $3
   i32.store offset=8
  end
 )
 (func $~lib/set/Set<f64>#get:size (; 108 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load offset=20
 )
 (func $~lib/set/Set<f64>#delete (; 109 ;) (type $iFi) (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  get_local $1
  block $~lib/internal/hash/hash<f64>|inlined.1 (result i32)
   get_local $1
   i64.reinterpret/f64
   call $~lib/internal/hash/hash64
   br $~lib/internal/hash/hash<f64>|inlined.1
  end
  call $~lib/set/Set<f64>#find
  set_local $2
  get_local $2
  i32.eqz
  if
   i32.const 0
   return
  end
  get_local $2
  get_local $2
  i32.load offset=8
  get_global $~lib/set/EMPTY
  i32.or
  i32.store offset=8
  get_local $0
  get_local $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  set_local $3
  get_local $3
  i32.const 1
  i32.add
  get_global $~lib/set/INITIAL_CAPACITY
  tee_local $4
  get_local $0
  i32.load offset=20
  tee_local $5
  get_local $4
  get_local $5
  i32.gt_u
  select
  i32.ge_u
  tee_local $4
  if (result i32)
   get_local $0
   i32.load offset=20
   get_local $0
   i32.load offset=12
   f64.convert_s/i32
   get_global $~lib/set/FREE_FACTOR
   f64.mul
   i32.trunc_s/f64
   i32.lt_s
  else   
   get_local $4
  end
  if
   get_local $0
   get_local $3
   call $~lib/set/Set<f64>#rehash
  end
  i32.const 1
 )
 (func $std/set/test<f64> (; 110 ;) (type $v)
  (local $0 i32)
  (local $1 f64)
  i32.const 0
  call $~lib/set/Set<f64>#constructor
  set_local $0
  block $break|0
   f64.const 0
   set_local $1
   loop $repeat|0
    get_local $1
    f64.const 100
    f64.lt
    i32.eqz
    br_if $break|0
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<f64>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 8
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<f64>#add
     get_local $0
     get_local $1
     call $~lib/set/Set<f64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 10
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    f64.const 1
    f64.add
    set_local $1
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<f64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 12
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   f64.const 50
   set_local $1
   loop $repeat|1
    get_local $1
    f64.const 100
    f64.lt
    i32.eqz
    br_if $break|1
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<f64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 16
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<f64>#add
     get_local $0
     get_local $1
     call $~lib/set/Set<f64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 18
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    f64.const 1
    f64.add
    set_local $1
    br $repeat|1
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<f64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 20
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   f64.const 0
   set_local $1
   loop $repeat|2
    get_local $1
    f64.const 50
    f64.lt
    i32.eqz
    br_if $break|2
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<f64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 24
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<f64>#delete
     drop
     get_local $0
     get_local $1
     call $~lib/set/Set<f64>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 26
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    f64.const 1
    f64.add
    set_local $1
    br $repeat|2
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<f64>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 28
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   f64.const 0
   set_local $1
   loop $repeat|3
    get_local $1
    f64.const 50
    f64.lt
    i32.eqz
    br_if $break|3
    block
     get_local $0
     get_local $1
     call $~lib/set/Set<f64>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 32
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<f64>#add
     get_local $0
     get_local $1
     call $~lib/set/Set<f64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 34
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     get_local $0
     get_local $1
     call $~lib/set/Set<f64>#delete
     drop
     get_local $0
     get_local $1
     call $~lib/set/Set<f64>#has
     i32.eqz
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 36
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
    end
    get_local $1
    f64.const 1
    f64.add
    set_local $1
    br $repeat|3
    unreachable
   end
   unreachable
  end
  get_local $0
  call $~lib/set/Set<f64>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  call $~lib/set/Set<f64>#clear
  get_local $0
  call $~lib/set/Set<f64>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 111 ;) (type $v)
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
  call $std/set/test<i8>
  call $std/set/test<u8>
  call $std/set/test<i16>
  call $std/set/test<u16>
  call $std/set/test<i32>
  call $std/set/test<u32>
  call $std/set/test<i64>
  call $std/set/test<u64>
  call $std/set/test<f32>
  call $std/set/test<f64>
 )
 (func $null (; 112 ;) (type $v)
 )
)
