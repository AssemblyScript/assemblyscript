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
 (type $iIiv (func (param i32 i64 i32)))
 (type $ifi (func (param i32 f32) (result i32)))
 (type $ifii (func (param i32 f32 i32) (result i32)))
 (type $ifiv (func (param i32 f32 i32)))
 (type $iFi (func (param i32 f64) (result i32)))
 (type $iFii (func (param i32 f64 i32) (result i32)))
 (type $iFiv (func (param i32 f64 i32)))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\13\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 56) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 120) "\n\00\00\00s\00t\00d\00/\00m\00a\00p\00.\00t\00s")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/allocator/arena/__memory_allocate (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  i32.const 1073741824
  i32.gt_u
  if
   unreachable
  end
  get_global $~lib/allocator/arena/offset
  tee_local $1
  get_local $0
  i32.const 1
  get_local $0
  i32.const 1
  i32.gt_u
  select
  i32.add
  i32.const 7
  i32.add
  i32.const -8
  i32.and
  tee_local $2
  current_memory
  tee_local $3
  i32.const 16
  i32.shl
  i32.gt_u
  if
   get_local $3
   get_local $2
   get_local $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   tee_local $0
   get_local $3
   get_local $0
   i32.gt_s
   select
   grow_memory
   i32.const 0
   i32.lt_s
   if
    get_local $0
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  get_local $2
  set_global $~lib/allocator/arena/offset
  get_local $1
 )
 (func $~lib/memory/memory.allocate (; 2 ;) (type $FUNCSIG$i) (result i32)
  i32.const 24
  call $~lib/allocator/arena/__memory_allocate
 )
 (func $~lib/internal/arraybuffer/computeSize (; 3 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 1
  i32.const 32
  get_local $0
  i32.const 7
  i32.add
  i32.clz
  i32.sub
  i32.shl
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  i32.const 1073741816
  i32.gt_u
  if
   i32.const 0
   i32.const 56
   i32.const 23
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  call $~lib/internal/arraybuffer/computeSize
  call $~lib/allocator/arena/__memory_allocate
  tee_local $1
  get_local $0
  i32.store
  get_local $1
 )
 (func $~lib/internal/memory/memset (; 5 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  get_local $1
  i32.eqz
  if
   return
  end
  get_local $0
  i32.const 0
  i32.store8
  get_local $0
  get_local $1
  i32.add
  i32.const 1
  i32.sub
  i32.const 0
  i32.store8
  get_local $1
  i32.const 2
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 1
  i32.add
  i32.const 0
  i32.store8
  get_local $0
  i32.const 2
  i32.add
  i32.const 0
  i32.store8
  get_local $0
  get_local $1
  i32.add
  tee_local $2
  i32.const 2
  i32.sub
  i32.const 0
  i32.store8
  get_local $2
  i32.const 3
  i32.sub
  i32.const 0
  i32.store8
  get_local $1
  i32.const 6
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 3
  i32.add
  i32.const 0
  i32.store8
  get_local $0
  get_local $1
  i32.add
  i32.const 4
  i32.sub
  i32.const 0
  i32.store8
  get_local $1
  i32.const 8
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 0
  get_local $0
  i32.sub
  i32.const 3
  i32.and
  tee_local $2
  i32.add
  tee_local $0
  i32.const 0
  i32.store
  get_local $0
  get_local $1
  get_local $2
  i32.sub
  i32.const -4
  i32.and
  tee_local $1
  i32.add
  i32.const 4
  i32.sub
  i32.const 0
  i32.store
  get_local $1
  i32.const 8
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 4
  i32.add
  i32.const 0
  i32.store
  get_local $0
  i32.const 8
  i32.add
  i32.const 0
  i32.store
  get_local $0
  get_local $1
  i32.add
  tee_local $2
  i32.const 12
  i32.sub
  i32.const 0
  i32.store
  get_local $2
  i32.const 8
  i32.sub
  i32.const 0
  i32.store
  get_local $1
  i32.const 24
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 12
  i32.add
  i32.const 0
  i32.store
  get_local $0
  i32.const 16
  i32.add
  i32.const 0
  i32.store
  get_local $0
  i32.const 20
  i32.add
  i32.const 0
  i32.store
  get_local $0
  i32.const 24
  i32.add
  i32.const 0
  i32.store
  get_local $0
  get_local $1
  i32.add
  tee_local $2
  i32.const 28
  i32.sub
  i32.const 0
  i32.store
  get_local $2
  i32.const 24
  i32.sub
  i32.const 0
  i32.store
  get_local $2
  i32.const 20
  i32.sub
  i32.const 0
  i32.store
  get_local $2
  i32.const 16
  i32.sub
  i32.const 0
  i32.store
  get_local $0
  get_local $0
  i32.const 4
  i32.and
  i32.const 24
  i32.add
  tee_local $2
  i32.add
  set_local $0
  get_local $1
  get_local $2
  i32.sub
  set_local $1
  loop $continue|0
   get_local $1
   i32.const 32
   i32.ge_u
   if
    get_local $0
    i64.const 0
    i64.store
    get_local $0
    i32.const 8
    i32.add
    i64.const 0
    i64.store
    get_local $0
    i32.const 16
    i32.add
    i64.const 0
    i64.store
    get_local $0
    i32.const 24
    i32.add
    i64.const 0
    i64.store
    get_local $1
    i32.const 32
    i32.sub
    set_local $1
    get_local $0
    i32.const 32
    i32.add
    set_local $0
    br $continue|0
   end
  end
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 6 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i32.const 1073741816
  i32.gt_u
  if
   i32.const 0
   i32.const 8
   i32.const 16
   i32.const 40
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $2
  get_local $1
  i32.const 1
  i32.and
  i32.eqz
  if
   get_local $2
   i32.const 8
   i32.add
   get_local $0
   call $~lib/internal/memory/memset
  end
  get_local $2
 )
 (func $~lib/map/Map<i8,i32>#clear (; 7 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  i32.const 16
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $1
  get_local $0
  get_local $1
  i32.store
  get_local $0
  i32.const 3
  i32.store offset=4
  i32.const 48
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $1
  get_local $0
  get_local $1
  i32.store offset=8
  get_local $0
  i32.const 4
  i32.store offset=12
  get_local $0
  i32.const 0
  i32.store offset=16
  get_local $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/map/Map<i8,i32>#constructor (; 8 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  call $~lib/memory/memory.allocate
  tee_local $0
  i32.const 0
  i32.store
  get_local $0
  i32.const 0
  i32.store offset=4
  get_local $0
  i32.const 0
  i32.store offset=8
  get_local $0
  i32.const 0
  i32.store offset=12
  get_local $0
  i32.const 0
  i32.store offset=16
  get_local $0
  i32.const 0
  i32.store offset=20
  get_local $0
  call $~lib/map/Map<i8,i32>#clear
  get_local $0
 )
 (func $~lib/internal/hash/hash8 (; 9 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
 )
 (func $~lib/map/Map<i8,i32>#find (; 10 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.load
  get_local $2
  get_local $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=8
  set_local $2
  loop $continue|0
   get_local $2
   if
    get_local $2
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    tee_local $0
    if
     get_local $2
     i32.load8_u
     get_local $1
     i32.const 255
     i32.and
     i32.eq
     set_local $0
    end
    get_local $0
    if
     get_local $2
     return
    end
    get_local $2
    i32.load offset=8
    i32.const -2
    i32.and
    set_local $2
    br $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<i8,i32>#has (; 11 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $1
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/internal/hash/hash8
  set_local $2
  get_local $0
  get_local $1
  get_local $2
  call $~lib/map/Map<i8,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<i8,i32>#rehash (; 12 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  get_local $1
  i32.const 1
  i32.add
  tee_local $2
  i32.const 2
  i32.shl
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $5
  get_local $2
  f64.convert_s/i32
  f64.const 2.6666666666666665
  f64.mul
  i32.trunc_s/f64
  tee_local $7
  i32.const 12
  i32.mul
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $6
  get_local $0
  i32.load offset=8
  i32.const 8
  i32.add
  tee_local $3
  get_local $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  set_local $8
  get_local $6
  i32.const 8
  i32.add
  set_local $2
  loop $continue|0
   get_local $3
   get_local $8
   i32.ne
   if
    get_local $3
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     get_local $2
     get_local $3
     i32.load8_s
     i32.store8
     get_local $2
     get_local $3
     i32.load offset=4
     i32.store offset=4
     get_local $3
     i32.load8_s
     call $~lib/internal/hash/hash8
     set_local $4
     get_local $2
     get_local $5
     get_local $4
     get_local $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     tee_local $4
     i32.load offset=8
     i32.store offset=8
     get_local $4
     get_local $2
     i32.store offset=8
     get_local $2
     i32.const 12
     i32.add
     set_local $2
    end
    get_local $3
    i32.const 12
    i32.add
    set_local $3
    br $continue|0
   end
  end
  get_local $0
  get_local $5
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  get_local $0
  get_local $6
  i32.store offset=8
  get_local $0
  get_local $7
  i32.store offset=12
  get_local $0
  get_local $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<i8,i32>#set (; 13 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/internal/hash/hash8
  set_local $5
  get_local $0
  get_local $1
  get_local $5
  call $~lib/map/Map<i8,i32>#find
  tee_local $3
  if
   get_local $3
   get_local $2
   i32.store offset=4
  else   
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
    f64.const 0.75
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
    tee_local $3
    call $~lib/map/Map<i8,i32>#rehash
   end
   get_local $0
   i32.load offset=8
   set_local $3
   get_local $0
   get_local $0
   i32.load offset=16
   tee_local $4
   i32.const 1
   i32.add
   i32.store offset=16
   get_local $3
   i32.const 8
   i32.add
   get_local $4
   i32.const 12
   i32.mul
   i32.add
   tee_local $3
   get_local $1
   i32.store8
   get_local $3
   get_local $2
   i32.store offset=4
   get_local $0
   get_local $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   get_local $3
   get_local $0
   i32.load
   get_local $5
   get_local $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   tee_local $4
   i32.load offset=8
   i32.store offset=8
   get_local $4
   get_local $3
   i32.store offset=8
  end
 )
 (func $~lib/map/Map<i8,i32>#get (; 14 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $1
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/internal/hash/hash8
  set_local $2
  get_local $0
  get_local $1
  get_local $2
  call $~lib/map/Map<i8,i32>#find
  tee_local $0
  if (result i32)
   get_local $0
   i32.load offset=4
  else   
   unreachable
  end
  tee_local $0
 )
 (func $~lib/map/Map<i8,i32>#get:size (; 15 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load offset=20
 )
 (func $~lib/map/Map<i8,i32>#delete (; 16 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  set_local $2
  get_local $1
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/internal/hash/hash8
  set_local $0
  get_local $2
  get_local $1
  get_local $0
  call $~lib/map/Map<i8,i32>#find
  tee_local $0
  i32.eqz
  if
   i32.const 0
   return
  end
  get_local $0
  get_local $0
  i32.load offset=8
  i32.const 1
  i32.or
  i32.store offset=8
  get_local $2
  get_local $2
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  get_local $2
  i32.load offset=4
  i32.const 1
  i32.shr_u
  tee_local $1
  i32.const 1
  i32.add
  i32.const 4
  get_local $2
  i32.load offset=20
  tee_local $0
  i32.const 4
  get_local $0
  i32.gt_u
  select
  i32.ge_u
  tee_local $0
  if
   get_local $2
   i32.load offset=20
   get_local $2
   i32.load offset=12
   f64.convert_s/i32
   f64.const 0.75
   f64.mul
   i32.trunc_s/f64
   i32.lt_s
   set_local $0
  end
  get_local $0
  if
   get_local $2
   get_local $1
   call $~lib/map/Map<i8,i32>#rehash
  end
  i32.const 1
 )
 (func $std/map/test<i8,i32> (; 17 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  call $~lib/map/Map<i8,i32>#constructor
  set_local $1
  block $break|0
   loop $repeat|0
    get_local $0
    i32.const 100
    i32.ge_s
    br_if $break|0
    get_local $1
    get_local $0
    call $~lib/map/Map<i8,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 8
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    get_local $0
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.const 10
    i32.add
    call $~lib/map/Map<i8,i32>#set
    get_local $1
    get_local $0
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 10
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<i8,i32>#get
    get_local $0
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 11
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     i32.const 1
     i32.add
     set_local $0
     br $repeat|0
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 13
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i32.const 0
   set_local $0
   loop $repeat|1
    get_local $0
    i32.const 100
    i32.ge_s
    br_if $break|1
    get_local $1
    get_local $0
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 17
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<i8,i32>#get
    get_local $0
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 18
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    get_local $0
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.const 20
    i32.add
    call $~lib/map/Map<i8,i32>#set
    get_local $1
    get_local $0
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 20
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<i8,i32>#get
    get_local $0
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 21
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     i32.const 1
     i32.add
     set_local $0
     br $repeat|1
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 23
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   i32.const 0
   set_local $0
   loop $repeat|2
    get_local $0
    i32.const 50
    i32.ge_s
    br_if $break|2
    get_local $1
    get_local $0
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 27
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<i8,i32>#get
    get_local $0
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 28
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<i8,i32>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/map/Map<i8,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 30
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     i32.const 1
     i32.add
     set_local $0
     br $repeat|2
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 32
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   i32.const 0
   set_local $0
   loop $repeat|3
    get_local $0
    i32.const 50
    i32.ge_s
    br_if $break|3
    get_local $1
    get_local $0
    call $~lib/map/Map<i8,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    get_local $0
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.const 10
    i32.add
    call $~lib/map/Map<i8,i32>#set
    get_local $1
    get_local $0
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 38
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<i8,i32>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/map/Map<i8,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 40
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     i32.const 1
     i32.add
     set_local $0
     br $repeat|3
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#clear
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  if
   i32.const 0
   i32.const 120
   i32.const 46
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/map/Map<u8,i32>#has (; 18 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $1
  i32.const 255
  i32.and
  call $~lib/internal/hash/hash8
  set_local $2
  get_local $0
  get_local $1
  get_local $2
  call $~lib/map/Map<i8,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<u8,i32>#rehash (; 19 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  get_local $1
  i32.const 1
  i32.add
  tee_local $2
  i32.const 2
  i32.shl
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $5
  get_local $2
  f64.convert_s/i32
  f64.const 2.6666666666666665
  f64.mul
  i32.trunc_s/f64
  tee_local $7
  i32.const 12
  i32.mul
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $6
  get_local $0
  i32.load offset=8
  i32.const 8
  i32.add
  tee_local $3
  get_local $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  set_local $8
  get_local $6
  i32.const 8
  i32.add
  set_local $2
  loop $continue|0
   get_local $3
   get_local $8
   i32.ne
   if
    get_local $3
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     get_local $2
     get_local $3
     i32.load8_u
     i32.store8
     get_local $2
     get_local $3
     i32.load offset=4
     i32.store offset=4
     get_local $3
     i32.load8_u
     call $~lib/internal/hash/hash8
     set_local $4
     get_local $2
     get_local $5
     get_local $4
     get_local $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     tee_local $4
     i32.load offset=8
     i32.store offset=8
     get_local $4
     get_local $2
     i32.store offset=8
     get_local $2
     i32.const 12
     i32.add
     set_local $2
    end
    get_local $3
    i32.const 12
    i32.add
    set_local $3
    br $continue|0
   end
  end
  get_local $0
  get_local $5
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  get_local $0
  get_local $6
  i32.store offset=8
  get_local $0
  get_local $7
  i32.store offset=12
  get_local $0
  get_local $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<u8,i32>#set (; 20 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  i32.const 255
  i32.and
  call $~lib/internal/hash/hash8
  set_local $5
  get_local $0
  get_local $1
  get_local $5
  call $~lib/map/Map<i8,i32>#find
  tee_local $3
  if
   get_local $3
   get_local $2
   i32.store offset=4
  else   
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
    f64.const 0.75
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
    tee_local $3
    call $~lib/map/Map<u8,i32>#rehash
   end
   get_local $0
   i32.load offset=8
   set_local $3
   get_local $0
   get_local $0
   i32.load offset=16
   tee_local $4
   i32.const 1
   i32.add
   i32.store offset=16
   get_local $3
   i32.const 8
   i32.add
   get_local $4
   i32.const 12
   i32.mul
   i32.add
   tee_local $3
   get_local $1
   i32.store8
   get_local $3
   get_local $2
   i32.store offset=4
   get_local $0
   get_local $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   get_local $3
   get_local $0
   i32.load
   get_local $5
   get_local $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   tee_local $4
   i32.load offset=8
   i32.store offset=8
   get_local $4
   get_local $3
   i32.store offset=8
  end
 )
 (func $~lib/map/Map<u8,i32>#get (; 21 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $1
  i32.const 255
  i32.and
  call $~lib/internal/hash/hash8
  set_local $2
  get_local $0
  get_local $1
  get_local $2
  call $~lib/map/Map<i8,i32>#find
  tee_local $0
  if (result i32)
   get_local $0
   i32.load offset=4
  else   
   unreachable
  end
  tee_local $0
 )
 (func $~lib/map/Map<u8,i32>#delete (; 22 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  set_local $2
  get_local $1
  i32.const 255
  i32.and
  call $~lib/internal/hash/hash8
  set_local $0
  get_local $2
  get_local $1
  get_local $0
  call $~lib/map/Map<i8,i32>#find
  tee_local $0
  i32.eqz
  if
   i32.const 0
   return
  end
  get_local $0
  get_local $0
  i32.load offset=8
  i32.const 1
  i32.or
  i32.store offset=8
  get_local $2
  get_local $2
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  get_local $2
  i32.load offset=4
  i32.const 1
  i32.shr_u
  tee_local $1
  i32.const 1
  i32.add
  i32.const 4
  get_local $2
  i32.load offset=20
  tee_local $0
  i32.const 4
  get_local $0
  i32.gt_u
  select
  i32.ge_u
  tee_local $0
  if
   get_local $2
   i32.load offset=20
   get_local $2
   i32.load offset=12
   f64.convert_s/i32
   f64.const 0.75
   f64.mul
   i32.trunc_s/f64
   i32.lt_s
   set_local $0
  end
  get_local $0
  if
   get_local $2
   get_local $1
   call $~lib/map/Map<u8,i32>#rehash
  end
  i32.const 1
 )
 (func $std/map/test<u8,i32> (; 23 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  call $~lib/map/Map<i8,i32>#constructor
  set_local $1
  block $break|0
   loop $repeat|0
    get_local $0
    i32.const 100
    i32.ge_u
    br_if $break|0
    get_local $1
    get_local $0
    call $~lib/map/Map<u8,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 8
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    get_local $0
    i32.const 255
    i32.and
    i32.const 10
    i32.add
    call $~lib/map/Map<u8,i32>#set
    get_local $1
    get_local $0
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 10
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<u8,i32>#get
    get_local $0
    i32.const 255
    i32.and
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 11
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     i32.const 1
     i32.add
     set_local $0
     br $repeat|0
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 13
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i32.const 0
   set_local $0
   loop $repeat|1
    get_local $0
    i32.const 100
    i32.ge_u
    br_if $break|1
    get_local $1
    get_local $0
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 17
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<u8,i32>#get
    get_local $0
    i32.const 255
    i32.and
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 18
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    get_local $0
    i32.const 255
    i32.and
    i32.const 20
    i32.add
    call $~lib/map/Map<u8,i32>#set
    get_local $1
    get_local $0
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 20
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<u8,i32>#get
    get_local $0
    i32.const 255
    i32.and
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 21
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     i32.const 1
     i32.add
     set_local $0
     br $repeat|1
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 23
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   i32.const 0
   set_local $0
   loop $repeat|2
    get_local $0
    i32.const 50
    i32.ge_u
    br_if $break|2
    get_local $1
    get_local $0
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 27
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<u8,i32>#get
    get_local $0
    i32.const 255
    i32.and
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 28
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<u8,i32>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/map/Map<u8,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 30
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     i32.const 1
     i32.add
     set_local $0
     br $repeat|2
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 32
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   i32.const 0
   set_local $0
   loop $repeat|3
    get_local $0
    i32.const 50
    i32.ge_u
    br_if $break|3
    get_local $1
    get_local $0
    call $~lib/map/Map<u8,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    get_local $0
    i32.const 255
    i32.and
    i32.const 10
    i32.add
    call $~lib/map/Map<u8,i32>#set
    get_local $1
    get_local $0
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 38
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<u8,i32>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/map/Map<u8,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 40
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     i32.const 1
     i32.add
     set_local $0
     br $repeat|3
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#clear
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  if
   i32.const 0
   i32.const 120
   i32.const 46
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/internal/hash/hash16 (; 24 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  get_local $0
  i32.const 8
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
 )
 (func $~lib/map/Map<i16,i32>#find (; 25 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.load
  get_local $2
  get_local $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=8
  set_local $2
  loop $continue|0
   get_local $2
   if
    get_local $2
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    tee_local $0
    if
     get_local $2
     i32.load16_u
     get_local $1
     i32.const 65535
     i32.and
     i32.eq
     set_local $0
    end
    get_local $0
    if
     get_local $2
     return
    end
    get_local $2
    i32.load offset=8
    i32.const -2
    i32.and
    set_local $2
    br $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<i16,i32>#has (; 26 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $1
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  call $~lib/internal/hash/hash16
  set_local $2
  get_local $0
  get_local $1
  get_local $2
  call $~lib/map/Map<i16,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<i16,i32>#rehash (; 27 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  get_local $1
  i32.const 1
  i32.add
  tee_local $2
  i32.const 2
  i32.shl
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $5
  get_local $2
  f64.convert_s/i32
  f64.const 2.6666666666666665
  f64.mul
  i32.trunc_s/f64
  tee_local $7
  i32.const 12
  i32.mul
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $6
  get_local $0
  i32.load offset=8
  i32.const 8
  i32.add
  tee_local $3
  get_local $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  set_local $8
  get_local $6
  i32.const 8
  i32.add
  set_local $2
  loop $continue|0
   get_local $3
   get_local $8
   i32.ne
   if
    get_local $3
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     get_local $2
     get_local $3
     i32.load16_s
     i32.store16
     get_local $2
     get_local $3
     i32.load offset=4
     i32.store offset=4
     get_local $3
     i32.load16_s
     call $~lib/internal/hash/hash16
     set_local $4
     get_local $2
     get_local $5
     get_local $4
     get_local $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     tee_local $4
     i32.load offset=8
     i32.store offset=8
     get_local $4
     get_local $2
     i32.store offset=8
     get_local $2
     i32.const 12
     i32.add
     set_local $2
    end
    get_local $3
    i32.const 12
    i32.add
    set_local $3
    br $continue|0
   end
  end
  get_local $0
  get_local $5
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  get_local $0
  get_local $6
  i32.store offset=8
  get_local $0
  get_local $7
  i32.store offset=12
  get_local $0
  get_local $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<i16,i32>#set (; 28 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  call $~lib/internal/hash/hash16
  set_local $5
  get_local $0
  get_local $1
  get_local $5
  call $~lib/map/Map<i16,i32>#find
  tee_local $3
  if
   get_local $3
   get_local $2
   i32.store offset=4
  else   
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
    f64.const 0.75
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
    tee_local $3
    call $~lib/map/Map<i16,i32>#rehash
   end
   get_local $0
   i32.load offset=8
   set_local $3
   get_local $0
   get_local $0
   i32.load offset=16
   tee_local $4
   i32.const 1
   i32.add
   i32.store offset=16
   get_local $3
   i32.const 8
   i32.add
   get_local $4
   i32.const 12
   i32.mul
   i32.add
   tee_local $3
   get_local $1
   i32.store16
   get_local $3
   get_local $2
   i32.store offset=4
   get_local $0
   get_local $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   get_local $3
   get_local $0
   i32.load
   get_local $5
   get_local $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   tee_local $4
   i32.load offset=8
   i32.store offset=8
   get_local $4
   get_local $3
   i32.store offset=8
  end
 )
 (func $~lib/map/Map<i16,i32>#get (; 29 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $1
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  call $~lib/internal/hash/hash16
  set_local $2
  get_local $0
  get_local $1
  get_local $2
  call $~lib/map/Map<i16,i32>#find
  tee_local $0
  if (result i32)
   get_local $0
   i32.load offset=4
  else   
   unreachable
  end
  tee_local $0
 )
 (func $~lib/map/Map<i16,i32>#delete (; 30 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  set_local $2
  get_local $1
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  call $~lib/internal/hash/hash16
  set_local $0
  get_local $2
  get_local $1
  get_local $0
  call $~lib/map/Map<i16,i32>#find
  tee_local $0
  i32.eqz
  if
   i32.const 0
   return
  end
  get_local $0
  get_local $0
  i32.load offset=8
  i32.const 1
  i32.or
  i32.store offset=8
  get_local $2
  get_local $2
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  get_local $2
  i32.load offset=4
  i32.const 1
  i32.shr_u
  tee_local $1
  i32.const 1
  i32.add
  i32.const 4
  get_local $2
  i32.load offset=20
  tee_local $0
  i32.const 4
  get_local $0
  i32.gt_u
  select
  i32.ge_u
  tee_local $0
  if
   get_local $2
   i32.load offset=20
   get_local $2
   i32.load offset=12
   f64.convert_s/i32
   f64.const 0.75
   f64.mul
   i32.trunc_s/f64
   i32.lt_s
   set_local $0
  end
  get_local $0
  if
   get_local $2
   get_local $1
   call $~lib/map/Map<i16,i32>#rehash
  end
  i32.const 1
 )
 (func $std/map/test<i16,i32> (; 31 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  call $~lib/map/Map<i8,i32>#constructor
  set_local $1
  block $break|0
   loop $repeat|0
    get_local $0
    i32.const 100
    i32.ge_s
    br_if $break|0
    get_local $1
    get_local $0
    call $~lib/map/Map<i16,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 8
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    get_local $0
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    i32.const 10
    i32.add
    call $~lib/map/Map<i16,i32>#set
    get_local $1
    get_local $0
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 10
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<i16,i32>#get
    get_local $0
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 11
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     i32.const 1
     i32.add
     set_local $0
     br $repeat|0
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 13
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i32.const 0
   set_local $0
   loop $repeat|1
    get_local $0
    i32.const 100
    i32.ge_s
    br_if $break|1
    get_local $1
    get_local $0
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 17
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<i16,i32>#get
    get_local $0
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 18
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    get_local $0
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    i32.const 20
    i32.add
    call $~lib/map/Map<i16,i32>#set
    get_local $1
    get_local $0
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 20
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<i16,i32>#get
    get_local $0
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 21
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     i32.const 1
     i32.add
     set_local $0
     br $repeat|1
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 23
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   i32.const 0
   set_local $0
   loop $repeat|2
    get_local $0
    i32.const 50
    i32.ge_s
    br_if $break|2
    get_local $1
    get_local $0
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 27
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<i16,i32>#get
    get_local $0
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 28
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<i16,i32>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/map/Map<i16,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 30
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     i32.const 1
     i32.add
     set_local $0
     br $repeat|2
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 32
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   i32.const 0
   set_local $0
   loop $repeat|3
    get_local $0
    i32.const 50
    i32.ge_s
    br_if $break|3
    get_local $1
    get_local $0
    call $~lib/map/Map<i16,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    get_local $0
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    i32.const 10
    i32.add
    call $~lib/map/Map<i16,i32>#set
    get_local $1
    get_local $0
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 38
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<i16,i32>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/map/Map<i16,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 40
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     i32.const 1
     i32.add
     set_local $0
     br $repeat|3
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#clear
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  if
   i32.const 0
   i32.const 120
   i32.const 46
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/map/Map<u16,i32>#has (; 32 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $1
  i32.const 65535
  i32.and
  call $~lib/internal/hash/hash16
  set_local $2
  get_local $0
  get_local $1
  get_local $2
  call $~lib/map/Map<i16,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<u16,i32>#rehash (; 33 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  get_local $1
  i32.const 1
  i32.add
  tee_local $2
  i32.const 2
  i32.shl
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $5
  get_local $2
  f64.convert_s/i32
  f64.const 2.6666666666666665
  f64.mul
  i32.trunc_s/f64
  tee_local $7
  i32.const 12
  i32.mul
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $6
  get_local $0
  i32.load offset=8
  i32.const 8
  i32.add
  tee_local $3
  get_local $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  set_local $8
  get_local $6
  i32.const 8
  i32.add
  set_local $2
  loop $continue|0
   get_local $3
   get_local $8
   i32.ne
   if
    get_local $3
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     get_local $2
     get_local $3
     i32.load16_u
     i32.store16
     get_local $2
     get_local $3
     i32.load offset=4
     i32.store offset=4
     get_local $3
     i32.load16_u
     call $~lib/internal/hash/hash16
     set_local $4
     get_local $2
     get_local $5
     get_local $4
     get_local $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     tee_local $4
     i32.load offset=8
     i32.store offset=8
     get_local $4
     get_local $2
     i32.store offset=8
     get_local $2
     i32.const 12
     i32.add
     set_local $2
    end
    get_local $3
    i32.const 12
    i32.add
    set_local $3
    br $continue|0
   end
  end
  get_local $0
  get_local $5
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  get_local $0
  get_local $6
  i32.store offset=8
  get_local $0
  get_local $7
  i32.store offset=12
  get_local $0
  get_local $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<u16,i32>#set (; 34 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  i32.const 65535
  i32.and
  call $~lib/internal/hash/hash16
  set_local $5
  get_local $0
  get_local $1
  get_local $5
  call $~lib/map/Map<i16,i32>#find
  tee_local $3
  if
   get_local $3
   get_local $2
   i32.store offset=4
  else   
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
    f64.const 0.75
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
    tee_local $3
    call $~lib/map/Map<u16,i32>#rehash
   end
   get_local $0
   i32.load offset=8
   set_local $3
   get_local $0
   get_local $0
   i32.load offset=16
   tee_local $4
   i32.const 1
   i32.add
   i32.store offset=16
   get_local $3
   i32.const 8
   i32.add
   get_local $4
   i32.const 12
   i32.mul
   i32.add
   tee_local $3
   get_local $1
   i32.store16
   get_local $3
   get_local $2
   i32.store offset=4
   get_local $0
   get_local $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   get_local $3
   get_local $0
   i32.load
   get_local $5
   get_local $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   tee_local $4
   i32.load offset=8
   i32.store offset=8
   get_local $4
   get_local $3
   i32.store offset=8
  end
 )
 (func $~lib/map/Map<u16,i32>#get (; 35 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $1
  i32.const 65535
  i32.and
  call $~lib/internal/hash/hash16
  set_local $2
  get_local $0
  get_local $1
  get_local $2
  call $~lib/map/Map<i16,i32>#find
  tee_local $0
  if (result i32)
   get_local $0
   i32.load offset=4
  else   
   unreachable
  end
  tee_local $0
 )
 (func $~lib/map/Map<u16,i32>#delete (; 36 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  set_local $2
  get_local $1
  i32.const 65535
  i32.and
  call $~lib/internal/hash/hash16
  set_local $0
  get_local $2
  get_local $1
  get_local $0
  call $~lib/map/Map<i16,i32>#find
  tee_local $0
  i32.eqz
  if
   i32.const 0
   return
  end
  get_local $0
  get_local $0
  i32.load offset=8
  i32.const 1
  i32.or
  i32.store offset=8
  get_local $2
  get_local $2
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  get_local $2
  i32.load offset=4
  i32.const 1
  i32.shr_u
  tee_local $1
  i32.const 1
  i32.add
  i32.const 4
  get_local $2
  i32.load offset=20
  tee_local $0
  i32.const 4
  get_local $0
  i32.gt_u
  select
  i32.ge_u
  tee_local $0
  if
   get_local $2
   i32.load offset=20
   get_local $2
   i32.load offset=12
   f64.convert_s/i32
   f64.const 0.75
   f64.mul
   i32.trunc_s/f64
   i32.lt_s
   set_local $0
  end
  get_local $0
  if
   get_local $2
   get_local $1
   call $~lib/map/Map<u16,i32>#rehash
  end
  i32.const 1
 )
 (func $std/map/test<u16,i32> (; 37 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  call $~lib/map/Map<i8,i32>#constructor
  set_local $1
  block $break|0
   loop $repeat|0
    get_local $0
    i32.const 100
    i32.ge_u
    br_if $break|0
    get_local $1
    get_local $0
    call $~lib/map/Map<u16,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 8
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    get_local $0
    i32.const 65535
    i32.and
    i32.const 10
    i32.add
    call $~lib/map/Map<u16,i32>#set
    get_local $1
    get_local $0
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 10
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<u16,i32>#get
    get_local $0
    i32.const 65535
    i32.and
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 11
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     i32.const 1
     i32.add
     set_local $0
     br $repeat|0
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 13
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i32.const 0
   set_local $0
   loop $repeat|1
    get_local $0
    i32.const 100
    i32.ge_u
    br_if $break|1
    get_local $1
    get_local $0
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 17
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<u16,i32>#get
    get_local $0
    i32.const 65535
    i32.and
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 18
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    get_local $0
    i32.const 65535
    i32.and
    i32.const 20
    i32.add
    call $~lib/map/Map<u16,i32>#set
    get_local $1
    get_local $0
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 20
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<u16,i32>#get
    get_local $0
    i32.const 65535
    i32.and
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 21
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     i32.const 1
     i32.add
     set_local $0
     br $repeat|1
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 23
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   i32.const 0
   set_local $0
   loop $repeat|2
    get_local $0
    i32.const 50
    i32.ge_u
    br_if $break|2
    get_local $1
    get_local $0
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 27
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<u16,i32>#get
    get_local $0
    i32.const 65535
    i32.and
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 28
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<u16,i32>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/map/Map<u16,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 30
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     i32.const 1
     i32.add
     set_local $0
     br $repeat|2
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 32
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   i32.const 0
   set_local $0
   loop $repeat|3
    get_local $0
    i32.const 50
    i32.ge_u
    br_if $break|3
    get_local $1
    get_local $0
    call $~lib/map/Map<u16,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    get_local $0
    i32.const 65535
    i32.and
    i32.const 10
    i32.add
    call $~lib/map/Map<u16,i32>#set
    get_local $1
    get_local $0
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 38
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<u16,i32>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/map/Map<u16,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 40
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     i32.const 1
     i32.add
     set_local $0
     br $repeat|3
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#clear
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  if
   i32.const 0
   i32.const 120
   i32.const 46
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/internal/hash/hash32 (; 38 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  get_local $0
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  get_local $0
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  get_local $0
  i32.const 24
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
 )
 (func $~lib/map/Map<i32,i32>#find (; 39 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.load
  get_local $2
  get_local $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=8
  set_local $2
  loop $continue|0
   get_local $2
   if
    get_local $2
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    tee_local $0
    if
     get_local $2
     i32.load
     get_local $1
     i32.eq
     set_local $0
    end
    get_local $0
    if
     get_local $2
     return
    end
    get_local $2
    i32.load offset=8
    i32.const -2
    i32.and
    set_local $2
    br $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<i32,i32>#has (; 40 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $1
  call $~lib/internal/hash/hash32
  set_local $2
  get_local $0
  get_local $1
  get_local $2
  call $~lib/map/Map<i32,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<i32,i32>#rehash (; 41 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  get_local $1
  i32.const 1
  i32.add
  tee_local $2
  i32.const 2
  i32.shl
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $5
  get_local $2
  f64.convert_s/i32
  f64.const 2.6666666666666665
  f64.mul
  i32.trunc_s/f64
  tee_local $7
  i32.const 12
  i32.mul
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $6
  get_local $0
  i32.load offset=8
  i32.const 8
  i32.add
  tee_local $3
  get_local $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  set_local $8
  get_local $6
  i32.const 8
  i32.add
  set_local $2
  loop $continue|0
   get_local $3
   get_local $8
   i32.ne
   if
    get_local $3
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     get_local $2
     get_local $3
     i32.load
     i32.store
     get_local $2
     get_local $3
     i32.load offset=4
     i32.store offset=4
     get_local $3
     i32.load
     call $~lib/internal/hash/hash32
     set_local $4
     get_local $2
     get_local $5
     get_local $4
     get_local $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     tee_local $4
     i32.load offset=8
     i32.store offset=8
     get_local $4
     get_local $2
     i32.store offset=8
     get_local $2
     i32.const 12
     i32.add
     set_local $2
    end
    get_local $3
    i32.const 12
    i32.add
    set_local $3
    br $continue|0
   end
  end
  get_local $0
  get_local $5
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  get_local $0
  get_local $6
  i32.store offset=8
  get_local $0
  get_local $7
  i32.store offset=12
  get_local $0
  get_local $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<i32,i32>#set (; 42 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  call $~lib/internal/hash/hash32
  set_local $5
  get_local $0
  get_local $1
  get_local $5
  call $~lib/map/Map<i32,i32>#find
  tee_local $3
  if
   get_local $3
   get_local $2
   i32.store offset=4
  else   
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
    f64.const 0.75
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
    tee_local $3
    call $~lib/map/Map<i32,i32>#rehash
   end
   get_local $0
   i32.load offset=8
   set_local $3
   get_local $0
   get_local $0
   i32.load offset=16
   tee_local $4
   i32.const 1
   i32.add
   i32.store offset=16
   get_local $3
   i32.const 8
   i32.add
   get_local $4
   i32.const 12
   i32.mul
   i32.add
   tee_local $3
   get_local $1
   i32.store
   get_local $3
   get_local $2
   i32.store offset=4
   get_local $0
   get_local $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   get_local $3
   get_local $0
   i32.load
   get_local $5
   get_local $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   tee_local $4
   i32.load offset=8
   i32.store offset=8
   get_local $4
   get_local $3
   i32.store offset=8
  end
 )
 (func $~lib/map/Map<i32,i32>#get (; 43 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $1
  call $~lib/internal/hash/hash32
  set_local $2
  get_local $0
  get_local $1
  get_local $2
  call $~lib/map/Map<i32,i32>#find
  tee_local $0
  if (result i32)
   get_local $0
   i32.load offset=4
  else   
   unreachable
  end
  tee_local $0
 )
 (func $~lib/map/Map<i32,i32>#delete (; 44 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  set_local $2
  get_local $1
  call $~lib/internal/hash/hash32
  set_local $0
  get_local $2
  get_local $1
  get_local $0
  call $~lib/map/Map<i32,i32>#find
  tee_local $0
  i32.eqz
  if
   i32.const 0
   return
  end
  get_local $0
  get_local $0
  i32.load offset=8
  i32.const 1
  i32.or
  i32.store offset=8
  get_local $2
  get_local $2
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  get_local $2
  i32.load offset=4
  i32.const 1
  i32.shr_u
  tee_local $1
  i32.const 1
  i32.add
  i32.const 4
  get_local $2
  i32.load offset=20
  tee_local $0
  i32.const 4
  get_local $0
  i32.gt_u
  select
  i32.ge_u
  tee_local $0
  if
   get_local $2
   i32.load offset=20
   get_local $2
   i32.load offset=12
   f64.convert_s/i32
   f64.const 0.75
   f64.mul
   i32.trunc_s/f64
   i32.lt_s
   set_local $0
  end
  get_local $0
  if
   get_local $2
   get_local $1
   call $~lib/map/Map<i32,i32>#rehash
  end
  i32.const 1
 )
 (func $std/map/test<i32,i32> (; 45 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  call $~lib/map/Map<i8,i32>#constructor
  set_local $1
  block $break|0
   loop $repeat|0
    get_local $0
    i32.const 100
    i32.ge_s
    br_if $break|0
    get_local $1
    get_local $0
    call $~lib/map/Map<i32,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 8
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    get_local $0
    i32.const 10
    i32.add
    call $~lib/map/Map<i32,i32>#set
    get_local $1
    get_local $0
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 10
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<i32,i32>#get
    get_local $0
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 11
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     i32.const 1
     i32.add
     set_local $0
     br $repeat|0
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 13
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i32.const 0
   set_local $0
   loop $repeat|1
    get_local $0
    i32.const 100
    i32.ge_s
    br_if $break|1
    get_local $1
    get_local $0
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 17
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<i32,i32>#get
    get_local $0
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 18
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    get_local $0
    i32.const 20
    i32.add
    call $~lib/map/Map<i32,i32>#set
    get_local $1
    get_local $0
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 20
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<i32,i32>#get
    get_local $0
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 21
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     i32.const 1
     i32.add
     set_local $0
     br $repeat|1
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 23
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   i32.const 0
   set_local $0
   loop $repeat|2
    get_local $0
    i32.const 50
    i32.ge_s
    br_if $break|2
    get_local $1
    get_local $0
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 27
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<i32,i32>#get
    get_local $0
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 28
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<i32,i32>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/map/Map<i32,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 30
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     i32.const 1
     i32.add
     set_local $0
     br $repeat|2
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 32
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   i32.const 0
   set_local $0
   loop $repeat|3
    get_local $0
    i32.const 50
    i32.ge_s
    br_if $break|3
    get_local $1
    get_local $0
    call $~lib/map/Map<i32,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    get_local $0
    i32.const 10
    i32.add
    call $~lib/map/Map<i32,i32>#set
    get_local $1
    get_local $0
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 38
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<i32,i32>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/map/Map<i32,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 40
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     i32.const 1
     i32.add
     set_local $0
     br $repeat|3
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#clear
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  if
   i32.const 0
   i32.const 120
   i32.const 46
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/map/test<u32,i32> (; 46 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  call $~lib/map/Map<i8,i32>#constructor
  set_local $1
  block $break|0
   loop $repeat|0
    get_local $0
    i32.const 100
    i32.ge_u
    br_if $break|0
    get_local $1
    get_local $0
    call $~lib/map/Map<i32,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 8
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    get_local $0
    i32.const 10
    i32.add
    call $~lib/map/Map<i32,i32>#set
    get_local $1
    get_local $0
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 10
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<i32,i32>#get
    get_local $0
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 11
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     i32.const 1
     i32.add
     set_local $0
     br $repeat|0
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 13
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i32.const 0
   set_local $0
   loop $repeat|1
    get_local $0
    i32.const 100
    i32.ge_u
    br_if $break|1
    get_local $1
    get_local $0
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 17
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<i32,i32>#get
    get_local $0
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 18
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    get_local $0
    i32.const 20
    i32.add
    call $~lib/map/Map<i32,i32>#set
    get_local $1
    get_local $0
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 20
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<i32,i32>#get
    get_local $0
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 21
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     i32.const 1
     i32.add
     set_local $0
     br $repeat|1
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 23
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   i32.const 0
   set_local $0
   loop $repeat|2
    get_local $0
    i32.const 50
    i32.ge_u
    br_if $break|2
    get_local $1
    get_local $0
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 27
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<i32,i32>#get
    get_local $0
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 28
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<i32,i32>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/map/Map<i32,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 30
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     i32.const 1
     i32.add
     set_local $0
     br $repeat|2
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 32
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   i32.const 0
   set_local $0
   loop $repeat|3
    get_local $0
    i32.const 50
    i32.ge_u
    br_if $break|3
    get_local $1
    get_local $0
    call $~lib/map/Map<i32,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    get_local $0
    i32.const 10
    i32.add
    call $~lib/map/Map<i32,i32>#set
    get_local $1
    get_local $0
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 38
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<i32,i32>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/map/Map<i32,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 40
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     i32.const 1
     i32.add
     set_local $0
     br $repeat|3
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#clear
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  if
   i32.const 0
   i32.const 120
   i32.const 46
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/map/Map<i64,i32>#clear (; 47 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  i32.const 16
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $1
  get_local $0
  get_local $1
  i32.store
  get_local $0
  i32.const 3
  i32.store offset=4
  i32.const 64
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $1
  get_local $0
  get_local $1
  i32.store offset=8
  get_local $0
  i32.const 4
  i32.store offset=12
  get_local $0
  i32.const 0
  i32.store offset=16
  get_local $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/map/Map<i64,i32>#constructor (; 48 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  call $~lib/memory/memory.allocate
  tee_local $0
  i32.const 0
  i32.store
  get_local $0
  i32.const 0
  i32.store offset=4
  get_local $0
  i32.const 0
  i32.store offset=8
  get_local $0
  i32.const 0
  i32.store offset=12
  get_local $0
  i32.const 0
  i32.store offset=16
  get_local $0
  i32.const 0
  i32.store offset=20
  get_local $0
  call $~lib/map/Map<i64,i32>#clear
  get_local $0
 )
 (func $~lib/internal/hash/hash64 (; 49 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  get_local $0
  i32.wrap/i64
  tee_local $1
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  get_local $1
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  get_local $1
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  get_local $1
  i32.const 24
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
  get_local $0
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  tee_local $1
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  get_local $1
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  get_local $1
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  get_local $1
  i32.const 24
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
 )
 (func $~lib/map/Map<i64,i32>#find (; 50 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  get_local $0
  i32.load
  get_local $2
  get_local $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=8
  set_local $2
  loop $continue|0
   get_local $2
   if
    get_local $2
    i32.load offset=12
    i32.const 1
    i32.and
    i32.eqz
    tee_local $0
    if
     get_local $2
     i64.load
     get_local $1
     i64.eq
     set_local $0
    end
    get_local $0
    if
     get_local $2
     return
    end
    get_local $2
    i32.load offset=12
    i32.const -2
    i32.and
    set_local $2
    br $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<i64,i32>#has (; 51 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  get_local $1
  call $~lib/internal/hash/hash64
  set_local $2
  get_local $0
  get_local $1
  get_local $2
  call $~lib/map/Map<i64,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<i64,i32>#rehash (; 52 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  get_local $1
  i32.const 1
  i32.add
  tee_local $2
  i32.const 2
  i32.shl
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $5
  get_local $2
  f64.convert_s/i32
  f64.const 2.6666666666666665
  f64.mul
  i32.trunc_s/f64
  tee_local $7
  i32.const 4
  i32.shl
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $6
  get_local $0
  i32.load offset=8
  i32.const 8
  i32.add
  tee_local $3
  get_local $0
  i32.load offset=16
  i32.const 4
  i32.shl
  i32.add
  set_local $8
  get_local $6
  i32.const 8
  i32.add
  set_local $2
  loop $continue|0
   get_local $3
   get_local $8
   i32.ne
   if
    get_local $3
    i32.load offset=12
    i32.const 1
    i32.and
    i32.eqz
    if
     get_local $2
     get_local $3
     i64.load
     i64.store
     get_local $2
     get_local $3
     i32.load offset=8
     i32.store offset=8
     get_local $3
     i64.load
     call $~lib/internal/hash/hash64
     set_local $4
     get_local $2
     get_local $5
     get_local $4
     get_local $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     tee_local $4
     i32.load offset=8
     i32.store offset=12
     get_local $4
     get_local $2
     i32.store offset=8
     get_local $2
     i32.const 16
     i32.add
     set_local $2
    end
    get_local $3
    i32.const 16
    i32.add
    set_local $3
    br $continue|0
   end
  end
  get_local $0
  get_local $5
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  get_local $0
  get_local $6
  i32.store offset=8
  get_local $0
  get_local $7
  i32.store offset=12
  get_local $0
  get_local $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<i64,i32>#set (; 53 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  call $~lib/internal/hash/hash64
  set_local $5
  get_local $0
  get_local $1
  get_local $5
  call $~lib/map/Map<i64,i32>#find
  tee_local $3
  if
   get_local $3
   get_local $2
   i32.store offset=8
  else   
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
    f64.const 0.75
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
    tee_local $3
    call $~lib/map/Map<i64,i32>#rehash
   end
   get_local $0
   i32.load offset=8
   set_local $3
   get_local $0
   get_local $0
   i32.load offset=16
   tee_local $4
   i32.const 1
   i32.add
   i32.store offset=16
   get_local $3
   i32.const 8
   i32.add
   get_local $4
   i32.const 4
   i32.shl
   i32.add
   tee_local $3
   get_local $1
   i64.store
   get_local $3
   get_local $2
   i32.store offset=8
   get_local $0
   get_local $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   get_local $3
   get_local $0
   i32.load
   get_local $5
   get_local $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   tee_local $4
   i32.load offset=8
   i32.store offset=12
   get_local $4
   get_local $3
   i32.store offset=8
  end
 )
 (func $~lib/map/Map<i64,i32>#get (; 54 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  get_local $1
  call $~lib/internal/hash/hash64
  set_local $2
  get_local $0
  get_local $1
  get_local $2
  call $~lib/map/Map<i64,i32>#find
  tee_local $0
  if (result i32)
   get_local $0
   i32.load offset=8
  else   
   unreachable
  end
  tee_local $0
 )
 (func $~lib/map/Map<i64,i32>#delete (; 55 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  set_local $2
  get_local $1
  call $~lib/internal/hash/hash64
  set_local $0
  get_local $2
  get_local $1
  get_local $0
  call $~lib/map/Map<i64,i32>#find
  tee_local $0
  i32.eqz
  if
   i32.const 0
   return
  end
  get_local $0
  get_local $0
  i32.load offset=12
  i32.const 1
  i32.or
  i32.store offset=12
  get_local $2
  get_local $2
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  get_local $2
  i32.load offset=4
  i32.const 1
  i32.shr_u
  tee_local $3
  i32.const 1
  i32.add
  i32.const 4
  get_local $2
  i32.load offset=20
  tee_local $0
  i32.const 4
  get_local $0
  i32.gt_u
  select
  i32.ge_u
  tee_local $0
  if
   get_local $2
   i32.load offset=20
   get_local $2
   i32.load offset=12
   f64.convert_s/i32
   f64.const 0.75
   f64.mul
   i32.trunc_s/f64
   i32.lt_s
   set_local $0
  end
  get_local $0
  if
   get_local $2
   get_local $3
   call $~lib/map/Map<i64,i32>#rehash
  end
  i32.const 1
 )
 (func $std/map/test<i64,i32> (; 56 ;) (type $v)
  (local $0 i64)
  (local $1 i32)
  call $~lib/map/Map<i64,i32>#constructor
  set_local $1
  block $break|0
   loop $repeat|0
    get_local $0
    i64.const 100
    i64.ge_s
    br_if $break|0
    get_local $1
    get_local $0
    call $~lib/map/Map<i64,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 8
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    get_local $0
    i32.wrap/i64
    i32.const 10
    i32.add
    call $~lib/map/Map<i64,i32>#set
    get_local $1
    get_local $0
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 10
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<i64,i32>#get
    get_local $0
    i32.wrap/i64
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 11
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     i64.const 1
     i64.add
     set_local $0
     br $repeat|0
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 13
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i64.const 0
   set_local $0
   loop $repeat|1
    get_local $0
    i64.const 100
    i64.ge_s
    br_if $break|1
    get_local $1
    get_local $0
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 17
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<i64,i32>#get
    get_local $0
    i32.wrap/i64
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 18
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    get_local $0
    i32.wrap/i64
    i32.const 20
    i32.add
    call $~lib/map/Map<i64,i32>#set
    get_local $1
    get_local $0
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 20
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<i64,i32>#get
    get_local $0
    i32.wrap/i64
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 21
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     i64.const 1
     i64.add
     set_local $0
     br $repeat|1
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 23
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   i64.const 0
   set_local $0
   loop $repeat|2
    get_local $0
    i64.const 50
    i64.ge_s
    br_if $break|2
    get_local $1
    get_local $0
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 27
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<i64,i32>#get
    get_local $0
    i32.wrap/i64
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 28
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<i64,i32>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/map/Map<i64,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 30
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     i64.const 1
     i64.add
     set_local $0
     br $repeat|2
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 32
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   i64.const 0
   set_local $0
   loop $repeat|3
    get_local $0
    i64.const 50
    i64.ge_s
    br_if $break|3
    get_local $1
    get_local $0
    call $~lib/map/Map<i64,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    get_local $0
    i32.wrap/i64
    i32.const 10
    i32.add
    call $~lib/map/Map<i64,i32>#set
    get_local $1
    get_local $0
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 38
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<i64,i32>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/map/Map<i64,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 40
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     i64.const 1
     i64.add
     set_local $0
     br $repeat|3
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i64,i32>#clear
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  if
   i32.const 0
   i32.const 120
   i32.const 46
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/map/test<u64,i32> (; 57 ;) (type $v)
  (local $0 i64)
  (local $1 i32)
  call $~lib/map/Map<i64,i32>#constructor
  set_local $1
  block $break|0
   loop $repeat|0
    get_local $0
    i64.const 100
    i64.ge_u
    br_if $break|0
    get_local $1
    get_local $0
    call $~lib/map/Map<i64,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 8
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    get_local $0
    i32.wrap/i64
    i32.const 10
    i32.add
    call $~lib/map/Map<i64,i32>#set
    get_local $1
    get_local $0
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 10
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<i64,i32>#get
    get_local $0
    i32.wrap/i64
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 11
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     i64.const 1
     i64.add
     set_local $0
     br $repeat|0
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 13
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i64.const 0
   set_local $0
   loop $repeat|1
    get_local $0
    i64.const 100
    i64.ge_u
    br_if $break|1
    get_local $1
    get_local $0
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 17
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<i64,i32>#get
    get_local $0
    i32.wrap/i64
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 18
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    get_local $0
    i32.wrap/i64
    i32.const 20
    i32.add
    call $~lib/map/Map<i64,i32>#set
    get_local $1
    get_local $0
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 20
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<i64,i32>#get
    get_local $0
    i32.wrap/i64
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 21
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     i64.const 1
     i64.add
     set_local $0
     br $repeat|1
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 23
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   i64.const 0
   set_local $0
   loop $repeat|2
    get_local $0
    i64.const 50
    i64.ge_u
    br_if $break|2
    get_local $1
    get_local $0
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 27
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<i64,i32>#get
    get_local $0
    i32.wrap/i64
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 28
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<i64,i32>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/map/Map<i64,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 30
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     i64.const 1
     i64.add
     set_local $0
     br $repeat|2
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 32
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   i64.const 0
   set_local $0
   loop $repeat|3
    get_local $0
    i64.const 50
    i64.ge_u
    br_if $break|3
    get_local $1
    get_local $0
    call $~lib/map/Map<i64,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    get_local $0
    i32.wrap/i64
    i32.const 10
    i32.add
    call $~lib/map/Map<i64,i32>#set
    get_local $1
    get_local $0
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 38
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<i64,i32>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/map/Map<i64,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 40
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     i64.const 1
     i64.add
     set_local $0
     br $repeat|3
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i64,i32>#clear
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  if
   i32.const 0
   i32.const 120
   i32.const 46
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/map/Map<f32,i32>#find (; 58 ;) (type $ifii) (param $0 i32) (param $1 f32) (param $2 i32) (result i32)
  get_local $0
  i32.load
  get_local $2
  get_local $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=8
  set_local $2
  loop $continue|0
   get_local $2
   if
    get_local $2
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    tee_local $0
    if
     get_local $2
     f32.load
     get_local $1
     f32.eq
     set_local $0
    end
    get_local $0
    if
     get_local $2
     return
    end
    get_local $2
    i32.load offset=8
    i32.const -2
    i32.and
    set_local $2
    br $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<f32,i32>#has (; 59 ;) (type $ifi) (param $0 i32) (param $1 f32) (result i32)
  (local $2 i32)
  get_local $1
  i32.reinterpret/f32
  call $~lib/internal/hash/hash32
  set_local $2
  get_local $0
  get_local $1
  get_local $2
  call $~lib/map/Map<f32,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<f32,i32>#rehash (; 60 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  get_local $1
  i32.const 1
  i32.add
  tee_local $2
  i32.const 2
  i32.shl
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $5
  get_local $2
  f64.convert_s/i32
  f64.const 2.6666666666666665
  f64.mul
  i32.trunc_s/f64
  tee_local $7
  i32.const 12
  i32.mul
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $6
  get_local $0
  i32.load offset=8
  i32.const 8
  i32.add
  tee_local $3
  get_local $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  set_local $8
  get_local $6
  i32.const 8
  i32.add
  set_local $2
  loop $continue|0
   get_local $3
   get_local $8
   i32.ne
   if
    get_local $3
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     get_local $2
     get_local $3
     f32.load
     f32.store
     get_local $2
     get_local $3
     i32.load offset=4
     i32.store offset=4
     get_local $3
     f32.load
     i32.reinterpret/f32
     call $~lib/internal/hash/hash32
     set_local $4
     get_local $2
     get_local $5
     get_local $4
     get_local $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     tee_local $4
     i32.load offset=8
     i32.store offset=8
     get_local $4
     get_local $2
     i32.store offset=8
     get_local $2
     i32.const 12
     i32.add
     set_local $2
    end
    get_local $3
    i32.const 12
    i32.add
    set_local $3
    br $continue|0
   end
  end
  get_local $0
  get_local $5
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  get_local $0
  get_local $6
  i32.store offset=8
  get_local $0
  get_local $7
  i32.store offset=12
  get_local $0
  get_local $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<f32,i32>#set (; 61 ;) (type $ifiv) (param $0 i32) (param $1 f32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  i32.reinterpret/f32
  call $~lib/internal/hash/hash32
  set_local $5
  get_local $0
  get_local $1
  get_local $5
  call $~lib/map/Map<f32,i32>#find
  tee_local $3
  if
   get_local $3
   get_local $2
   i32.store offset=4
  else   
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
    f64.const 0.75
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
    tee_local $3
    call $~lib/map/Map<f32,i32>#rehash
   end
   get_local $0
   i32.load offset=8
   set_local $3
   get_local $0
   get_local $0
   i32.load offset=16
   tee_local $4
   i32.const 1
   i32.add
   i32.store offset=16
   get_local $3
   i32.const 8
   i32.add
   get_local $4
   i32.const 12
   i32.mul
   i32.add
   tee_local $3
   get_local $1
   f32.store
   get_local $3
   get_local $2
   i32.store offset=4
   get_local $0
   get_local $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   get_local $3
   get_local $0
   i32.load
   get_local $5
   get_local $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   tee_local $4
   i32.load offset=8
   i32.store offset=8
   get_local $4
   get_local $3
   i32.store offset=8
  end
 )
 (func $~lib/map/Map<f32,i32>#get (; 62 ;) (type $ifi) (param $0 i32) (param $1 f32) (result i32)
  (local $2 i32)
  get_local $1
  i32.reinterpret/f32
  call $~lib/internal/hash/hash32
  set_local $2
  get_local $0
  get_local $1
  get_local $2
  call $~lib/map/Map<f32,i32>#find
  tee_local $0
  if (result i32)
   get_local $0
   i32.load offset=4
  else   
   unreachable
  end
  tee_local $0
 )
 (func $~lib/map/Map<f32,i32>#delete (; 63 ;) (type $ifi) (param $0 i32) (param $1 f32) (result i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  set_local $2
  get_local $1
  i32.reinterpret/f32
  call $~lib/internal/hash/hash32
  set_local $0
  get_local $2
  get_local $1
  get_local $0
  call $~lib/map/Map<f32,i32>#find
  tee_local $0
  i32.eqz
  if
   i32.const 0
   return
  end
  get_local $0
  get_local $0
  i32.load offset=8
  i32.const 1
  i32.or
  i32.store offset=8
  get_local $2
  get_local $2
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  get_local $2
  i32.load offset=4
  i32.const 1
  i32.shr_u
  tee_local $3
  i32.const 1
  i32.add
  i32.const 4
  get_local $2
  i32.load offset=20
  tee_local $0
  i32.const 4
  get_local $0
  i32.gt_u
  select
  i32.ge_u
  tee_local $0
  if
   get_local $2
   i32.load offset=20
   get_local $2
   i32.load offset=12
   f64.convert_s/i32
   f64.const 0.75
   f64.mul
   i32.trunc_s/f64
   i32.lt_s
   set_local $0
  end
  get_local $0
  if
   get_local $2
   get_local $3
   call $~lib/map/Map<f32,i32>#rehash
  end
  i32.const 1
 )
 (func $std/map/test<f32,i32> (; 64 ;) (type $v)
  (local $0 f32)
  (local $1 i32)
  call $~lib/map/Map<i8,i32>#constructor
  set_local $1
  block $break|0
   loop $repeat|0
    get_local $0
    f32.const 100
    f32.lt
    i32.eqz
    br_if $break|0
    get_local $1
    get_local $0
    call $~lib/map/Map<f32,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 8
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    get_local $0
    i32.trunc_s/f32
    i32.const 10
    i32.add
    call $~lib/map/Map<f32,i32>#set
    get_local $1
    get_local $0
    call $~lib/map/Map<f32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 10
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<f32,i32>#get
    get_local $0
    i32.trunc_s/f32
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 11
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     f32.const 1
     f32.add
     set_local $0
     br $repeat|0
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 13
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   f32.const 0
   set_local $0
   loop $repeat|1
    get_local $0
    f32.const 100
    f32.lt
    i32.eqz
    br_if $break|1
    get_local $1
    get_local $0
    call $~lib/map/Map<f32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 17
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<f32,i32>#get
    get_local $0
    i32.trunc_s/f32
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 18
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    get_local $0
    i32.trunc_s/f32
    i32.const 20
    i32.add
    call $~lib/map/Map<f32,i32>#set
    get_local $1
    get_local $0
    call $~lib/map/Map<f32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 20
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<f32,i32>#get
    get_local $0
    i32.trunc_s/f32
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 21
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     f32.const 1
     f32.add
     set_local $0
     br $repeat|1
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 23
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   f32.const 0
   set_local $0
   loop $repeat|2
    get_local $0
    f32.const 50
    f32.lt
    i32.eqz
    br_if $break|2
    get_local $1
    get_local $0
    call $~lib/map/Map<f32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 27
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<f32,i32>#get
    get_local $0
    i32.trunc_s/f32
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 28
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<f32,i32>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/map/Map<f32,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 30
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     f32.const 1
     f32.add
     set_local $0
     br $repeat|2
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 32
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   f32.const 0
   set_local $0
   loop $repeat|3
    get_local $0
    f32.const 50
    f32.lt
    i32.eqz
    br_if $break|3
    get_local $1
    get_local $0
    call $~lib/map/Map<f32,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    get_local $0
    i32.trunc_s/f32
    i32.const 10
    i32.add
    call $~lib/map/Map<f32,i32>#set
    get_local $1
    get_local $0
    call $~lib/map/Map<f32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 38
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<f32,i32>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/map/Map<f32,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 40
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     f32.const 1
     f32.add
     set_local $0
     br $repeat|3
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#clear
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  if
   i32.const 0
   i32.const 120
   i32.const 46
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/map/Map<f64,i32>#find (; 65 ;) (type $iFii) (param $0 i32) (param $1 f64) (param $2 i32) (result i32)
  get_local $0
  i32.load
  get_local $2
  get_local $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=8
  set_local $2
  loop $continue|0
   get_local $2
   if
    get_local $2
    i32.load offset=12
    i32.const 1
    i32.and
    i32.eqz
    tee_local $0
    if
     get_local $2
     f64.load
     get_local $1
     f64.eq
     set_local $0
    end
    get_local $0
    if
     get_local $2
     return
    end
    get_local $2
    i32.load offset=12
    i32.const -2
    i32.and
    set_local $2
    br $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<f64,i32>#has (; 66 ;) (type $iFi) (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
  get_local $1
  i64.reinterpret/f64
  call $~lib/internal/hash/hash64
  set_local $2
  get_local $0
  get_local $1
  get_local $2
  call $~lib/map/Map<f64,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<f64,i32>#rehash (; 67 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  get_local $1
  i32.const 1
  i32.add
  tee_local $2
  i32.const 2
  i32.shl
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $5
  get_local $2
  f64.convert_s/i32
  f64.const 2.6666666666666665
  f64.mul
  i32.trunc_s/f64
  tee_local $7
  i32.const 4
  i32.shl
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $6
  get_local $0
  i32.load offset=8
  i32.const 8
  i32.add
  tee_local $3
  get_local $0
  i32.load offset=16
  i32.const 4
  i32.shl
  i32.add
  set_local $8
  get_local $6
  i32.const 8
  i32.add
  set_local $2
  loop $continue|0
   get_local $3
   get_local $8
   i32.ne
   if
    get_local $3
    i32.load offset=12
    i32.const 1
    i32.and
    i32.eqz
    if
     get_local $2
     get_local $3
     f64.load
     f64.store
     get_local $2
     get_local $3
     i32.load offset=8
     i32.store offset=8
     get_local $3
     f64.load
     i64.reinterpret/f64
     call $~lib/internal/hash/hash64
     set_local $4
     get_local $2
     get_local $5
     get_local $4
     get_local $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     tee_local $4
     i32.load offset=8
     i32.store offset=12
     get_local $4
     get_local $2
     i32.store offset=8
     get_local $2
     i32.const 16
     i32.add
     set_local $2
    end
    get_local $3
    i32.const 16
    i32.add
    set_local $3
    br $continue|0
   end
  end
  get_local $0
  get_local $5
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  get_local $0
  get_local $6
  i32.store offset=8
  get_local $0
  get_local $7
  i32.store offset=12
  get_local $0
  get_local $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<f64,i32>#set (; 68 ;) (type $iFiv) (param $0 i32) (param $1 f64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  i64.reinterpret/f64
  call $~lib/internal/hash/hash64
  set_local $5
  get_local $0
  get_local $1
  get_local $5
  call $~lib/map/Map<f64,i32>#find
  tee_local $3
  if
   get_local $3
   get_local $2
   i32.store offset=8
  else   
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
    f64.const 0.75
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
    tee_local $3
    call $~lib/map/Map<f64,i32>#rehash
   end
   get_local $0
   i32.load offset=8
   set_local $3
   get_local $0
   get_local $0
   i32.load offset=16
   tee_local $4
   i32.const 1
   i32.add
   i32.store offset=16
   get_local $3
   i32.const 8
   i32.add
   get_local $4
   i32.const 4
   i32.shl
   i32.add
   tee_local $3
   get_local $1
   f64.store
   get_local $3
   get_local $2
   i32.store offset=8
   get_local $0
   get_local $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   get_local $3
   get_local $0
   i32.load
   get_local $5
   get_local $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   tee_local $4
   i32.load offset=8
   i32.store offset=12
   get_local $4
   get_local $3
   i32.store offset=8
  end
 )
 (func $~lib/map/Map<f64,i32>#get (; 69 ;) (type $iFi) (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
  get_local $1
  i64.reinterpret/f64
  call $~lib/internal/hash/hash64
  set_local $2
  get_local $0
  get_local $1
  get_local $2
  call $~lib/map/Map<f64,i32>#find
  tee_local $0
  if (result i32)
   get_local $0
   i32.load offset=8
  else   
   unreachable
  end
  tee_local $0
 )
 (func $~lib/map/Map<f64,i32>#delete (; 70 ;) (type $iFi) (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  set_local $2
  get_local $1
  i64.reinterpret/f64
  call $~lib/internal/hash/hash64
  set_local $0
  get_local $2
  get_local $1
  get_local $0
  call $~lib/map/Map<f64,i32>#find
  tee_local $0
  i32.eqz
  if
   i32.const 0
   return
  end
  get_local $0
  get_local $0
  i32.load offset=12
  i32.const 1
  i32.or
  i32.store offset=12
  get_local $2
  get_local $2
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  get_local $2
  i32.load offset=4
  i32.const 1
  i32.shr_u
  tee_local $3
  i32.const 1
  i32.add
  i32.const 4
  get_local $2
  i32.load offset=20
  tee_local $0
  i32.const 4
  get_local $0
  i32.gt_u
  select
  i32.ge_u
  tee_local $0
  if
   get_local $2
   i32.load offset=20
   get_local $2
   i32.load offset=12
   f64.convert_s/i32
   f64.const 0.75
   f64.mul
   i32.trunc_s/f64
   i32.lt_s
   set_local $0
  end
  get_local $0
  if
   get_local $2
   get_local $3
   call $~lib/map/Map<f64,i32>#rehash
  end
  i32.const 1
 )
 (func $std/map/test<f64,i32> (; 71 ;) (type $v)
  (local $0 f64)
  (local $1 i32)
  call $~lib/map/Map<i64,i32>#constructor
  set_local $1
  block $break|0
   loop $repeat|0
    get_local $0
    f64.const 100
    f64.lt
    i32.eqz
    br_if $break|0
    get_local $1
    get_local $0
    call $~lib/map/Map<f64,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 8
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    get_local $0
    i32.trunc_s/f64
    i32.const 10
    i32.add
    call $~lib/map/Map<f64,i32>#set
    get_local $1
    get_local $0
    call $~lib/map/Map<f64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 10
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<f64,i32>#get
    get_local $0
    i32.trunc_s/f64
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 11
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     f64.const 1
     f64.add
     set_local $0
     br $repeat|0
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 13
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   f64.const 0
   set_local $0
   loop $repeat|1
    get_local $0
    f64.const 100
    f64.lt
    i32.eqz
    br_if $break|1
    get_local $1
    get_local $0
    call $~lib/map/Map<f64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 17
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<f64,i32>#get
    get_local $0
    i32.trunc_s/f64
    i32.const 10
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 18
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    get_local $0
    i32.trunc_s/f64
    i32.const 20
    i32.add
    call $~lib/map/Map<f64,i32>#set
    get_local $1
    get_local $0
    call $~lib/map/Map<f64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 20
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<f64,i32>#get
    get_local $0
    i32.trunc_s/f64
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 21
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     f64.const 1
     f64.add
     set_local $0
     br $repeat|1
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 23
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|2
   f64.const 0
   set_local $0
   loop $repeat|2
    get_local $0
    f64.const 50
    f64.lt
    i32.eqz
    br_if $break|2
    get_local $1
    get_local $0
    call $~lib/map/Map<f64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 27
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<f64,i32>#get
    get_local $0
    i32.trunc_s/f64
    i32.const 20
    i32.add
    i32.ne
    if
     i32.const 0
     i32.const 120
     i32.const 28
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<f64,i32>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/map/Map<f64,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 30
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     f64.const 1
     f64.add
     set_local $0
     br $repeat|2
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 32
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   f64.const 0
   set_local $0
   loop $repeat|3
    get_local $0
    f64.const 50
    f64.lt
    i32.eqz
    br_if $break|3
    get_local $1
    get_local $0
    call $~lib/map/Map<f64,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    get_local $0
    i32.trunc_s/f64
    i32.const 10
    i32.add
    call $~lib/map/Map<f64,i32>#set
    get_local $1
    get_local $0
    call $~lib/map/Map<f64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 120
     i32.const 38
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/map/Map<f64,i32>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/map/Map<f64,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 40
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     f64.const 1
     f64.add
     set_local $0
     br $repeat|3
    end
    unreachable
    unreachable
   end
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  call $~lib/map/Map<i64,i32>#clear
  get_local $1
  call $~lib/map/Map<i8,i32>#get:size
  if
   i32.const 0
   i32.const 120
   i32.const 46
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 72 ;) (type $v)
  i32.const 144
  set_global $~lib/allocator/arena/startOffset
  get_global $~lib/allocator/arena/startOffset
  set_global $~lib/allocator/arena/offset
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
 (func $null (; 73 ;) (type $v)
  nop
 )
)
