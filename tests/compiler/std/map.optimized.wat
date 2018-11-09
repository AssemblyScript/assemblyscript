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
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$i (func (result i32)))
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
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 2 ;) (type $ii) (param $0 i32) (result i32)
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
  i32.const 1
  i32.const 32
  get_local $0
  i32.const 7
  i32.add
  i32.clz
  i32.sub
  i32.shl
  call $~lib/allocator/arena/__memory_allocate
  tee_local $1
  get_local $0
  i32.store
  get_local $1
 )
 (func $~lib/internal/memory/memset (; 3 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 4 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/map/Map<i8,i32>#clear (; 5 ;) (type $iv) (param $0 i32)
  get_local $0
  i32.const 16
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  get_local $0
  i32.const 3
  i32.store offset=4
  get_local $0
  i32.const 48
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
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
 (func $~lib/map/Map<i8,i32>#constructor (; 6 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  i32.const 24
  call $~lib/allocator/arena/__memory_allocate
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
 (func $~lib/map/Map<i8,i32>#find (; 7 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/map/Map<i8,i32>#has (; 8 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  get_local $1
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  call $~lib/map/Map<i8,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<i8,i32>#rehash (; 9 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
  set_local $4
  get_local $2
  f64.convert_s/i32
  f64.const 2.6666666666666665
  f64.mul
  i32.trunc_s/f64
  tee_local $6
  i32.const 12
  i32.mul
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $5
  get_local $0
  i32.load offset=8
  i32.const 8
  i32.add
  tee_local $2
  get_local $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  set_local $7
  get_local $5
  i32.const 8
  i32.add
  set_local $3
  loop $continue|0
   get_local $2
   get_local $7
   i32.ne
   if
    get_local $2
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     get_local $3
     get_local $2
     i32.load8_s
     i32.store8
     get_local $3
     get_local $2
     i32.load offset=4
     i32.store offset=4
     get_local $3
     get_local $4
     get_local $2
     i32.load8_s
     i32.const -2128831035
     i32.xor
     i32.const 16777619
     i32.mul
     get_local $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     tee_local $8
     i32.load offset=8
     i32.store offset=8
     get_local $8
     get_local $3
     i32.store offset=8
     get_local $3
     i32.const 12
     i32.add
     set_local $3
    end
    get_local $2
    i32.const 12
    i32.add
    set_local $2
    br $continue|0
   end
  end
  get_local $0
  get_local $4
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  get_local $0
  get_local $5
  i32.store offset=8
  get_local $0
  get_local $6
  i32.store offset=12
  get_local $0
  get_local $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<i8,i32>#set (; 10 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  tee_local $3
  set_local $5
  get_local $0
  get_local $1
  get_local $3
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
 (func $~lib/map/Map<i8,i32>#get (; 11 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  get_local $1
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  call $~lib/map/Map<i8,i32>#find
  tee_local $0
  if (result i32)
   get_local $0
   i32.load offset=4
  else   
   unreachable
  end
 )
 (func $~lib/map/Map<i8,i32>#delete (; 12 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  get_local $1
  get_local $1
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  call $~lib/map/Map<i8,i32>#find
  tee_local $1
  i32.eqz
  if
   i32.const 0
   return
  end
  get_local $1
  get_local $1
  i32.load offset=8
  i32.const 1
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
  tee_local $2
  i32.const 1
  i32.add
  i32.const 4
  get_local $0
  i32.load offset=20
  tee_local $1
  i32.const 4
  get_local $1
  i32.gt_u
  select
  i32.ge_u
  tee_local $1
  if
   get_local $0
   i32.load offset=20
   get_local $0
   i32.load offset=12
   f64.convert_s/i32
   f64.const 0.75
   f64.mul
   i32.trunc_s/f64
   i32.lt_s
   set_local $1
  end
  get_local $1
  if
   get_local $0
   get_local $2
   call $~lib/map/Map<i8,i32>#rehash
  end
  i32.const 1
 )
 (func $std/map/test<i8,i32> (; 13 ;) (type $v)
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
  i32.load offset=20
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
  i32.load offset=20
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
  i32.load offset=20
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
  i32.load offset=20
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
  i32.load offset=20
  if
   i32.const 0
   i32.const 120
   i32.const 46
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/map/Map<u8,i32>#has (; 14 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  get_local $1
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  call $~lib/map/Map<i8,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<u8,i32>#rehash (; 15 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
  set_local $4
  get_local $2
  f64.convert_s/i32
  f64.const 2.6666666666666665
  f64.mul
  i32.trunc_s/f64
  tee_local $6
  i32.const 12
  i32.mul
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $5
  get_local $0
  i32.load offset=8
  i32.const 8
  i32.add
  tee_local $2
  get_local $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  set_local $7
  get_local $5
  i32.const 8
  i32.add
  set_local $3
  loop $continue|0
   get_local $2
   get_local $7
   i32.ne
   if
    get_local $2
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     get_local $3
     get_local $2
     i32.load8_u
     i32.store8
     get_local $3
     get_local $2
     i32.load offset=4
     i32.store offset=4
     get_local $3
     get_local $4
     get_local $2
     i32.load8_u
     i32.const -2128831035
     i32.xor
     i32.const 16777619
     i32.mul
     get_local $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     tee_local $8
     i32.load offset=8
     i32.store offset=8
     get_local $8
     get_local $3
     i32.store offset=8
     get_local $3
     i32.const 12
     i32.add
     set_local $3
    end
    get_local $2
    i32.const 12
    i32.add
    set_local $2
    br $continue|0
   end
  end
  get_local $0
  get_local $4
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  get_local $0
  get_local $5
  i32.store offset=8
  get_local $0
  get_local $6
  i32.store offset=12
  get_local $0
  get_local $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<u8,i32>#set (; 16 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  tee_local $3
  set_local $5
  get_local $0
  get_local $1
  get_local $3
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
 (func $~lib/map/Map<u8,i32>#get (; 17 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  get_local $1
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  call $~lib/map/Map<i8,i32>#find
  tee_local $0
  if (result i32)
   get_local $0
   i32.load offset=4
  else   
   unreachable
  end
 )
 (func $~lib/map/Map<u8,i32>#delete (; 18 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  get_local $1
  get_local $1
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  call $~lib/map/Map<i8,i32>#find
  tee_local $1
  i32.eqz
  if
   i32.const 0
   return
  end
  get_local $1
  get_local $1
  i32.load offset=8
  i32.const 1
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
  tee_local $2
  i32.const 1
  i32.add
  i32.const 4
  get_local $0
  i32.load offset=20
  tee_local $1
  i32.const 4
  get_local $1
  i32.gt_u
  select
  i32.ge_u
  tee_local $1
  if
   get_local $0
   i32.load offset=20
   get_local $0
   i32.load offset=12
   f64.convert_s/i32
   f64.const 0.75
   f64.mul
   i32.trunc_s/f64
   i32.lt_s
   set_local $1
  end
  get_local $1
  if
   get_local $0
   get_local $2
   call $~lib/map/Map<u8,i32>#rehash
  end
  i32.const 1
 )
 (func $std/map/test<u8,i32> (; 19 ;) (type $v)
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
  i32.load offset=20
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
  i32.load offset=20
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
  i32.load offset=20
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
  i32.load offset=20
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
  i32.load offset=20
  if
   i32.const 0
   i32.const 120
   i32.const 46
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/map/Map<i16,i32>#find (; 20 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/map/Map<i16,i32>#has (; 21 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  get_local $1
  get_local $1
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  tee_local $2
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  get_local $2
  i32.const 8
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
  call $~lib/map/Map<i16,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<i16,i32>#rehash (; 22 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
  tee_local $2
  get_local $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  set_local $8
  get_local $6
  i32.const 8
  i32.add
  set_local $3
  loop $continue|0
   get_local $2
   get_local $8
   i32.ne
   if
    get_local $2
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     get_local $3
     get_local $2
     i32.load16_s
     i32.store16
     get_local $3
     get_local $2
     i32.load offset=4
     i32.store offset=4
     get_local $3
     get_local $5
     get_local $2
     i32.load16_s
     tee_local $4
     i32.const 255
     i32.and
     i32.const -2128831035
     i32.xor
     i32.const 16777619
     i32.mul
     get_local $4
     i32.const 8
     i32.shr_u
     i32.xor
     i32.const 16777619
     i32.mul
     get_local $1
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
     get_local $3
     i32.const 12
     i32.add
     set_local $3
    end
    get_local $2
    i32.const 12
    i32.add
    set_local $2
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
 (func $~lib/map/Map<i16,i32>#set (; 23 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  tee_local $3
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  get_local $3
  i32.const 8
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
  tee_local $3
  set_local $5
  get_local $0
  get_local $1
  get_local $3
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
 (func $~lib/map/Map<i16,i32>#get (; 24 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  get_local $1
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  tee_local $0
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
 (func $~lib/map/Map<i16,i32>#delete (; 25 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  get_local $1
  get_local $1
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
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
  i32.xor
  i32.const 16777619
  i32.mul
  call $~lib/map/Map<i16,i32>#find
  tee_local $1
  i32.eqz
  if
   i32.const 0
   return
  end
  get_local $1
  get_local $1
  i32.load offset=8
  i32.const 1
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
  tee_local $2
  i32.const 1
  i32.add
  i32.const 4
  get_local $0
  i32.load offset=20
  tee_local $1
  i32.const 4
  get_local $1
  i32.gt_u
  select
  i32.ge_u
  tee_local $1
  if
   get_local $0
   i32.load offset=20
   get_local $0
   i32.load offset=12
   f64.convert_s/i32
   f64.const 0.75
   f64.mul
   i32.trunc_s/f64
   i32.lt_s
   set_local $1
  end
  get_local $1
  if
   get_local $0
   get_local $2
   call $~lib/map/Map<i16,i32>#rehash
  end
  i32.const 1
 )
 (func $std/map/test<i16,i32> (; 26 ;) (type $v)
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
  i32.load offset=20
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
  i32.load offset=20
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
  i32.load offset=20
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
  i32.load offset=20
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
  i32.load offset=20
  if
   i32.const 0
   i32.const 120
   i32.const 46
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/map/Map<u16,i32>#has (; 27 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  get_local $1
  get_local $1
  i32.const 65535
  i32.and
  tee_local $2
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  get_local $2
  i32.const 8
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
  call $~lib/map/Map<i16,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<u16,i32>#rehash (; 28 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
  tee_local $2
  get_local $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  set_local $8
  get_local $6
  i32.const 8
  i32.add
  set_local $3
  loop $continue|0
   get_local $2
   get_local $8
   i32.ne
   if
    get_local $2
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     get_local $3
     get_local $2
     i32.load16_u
     i32.store16
     get_local $3
     get_local $2
     i32.load offset=4
     i32.store offset=4
     get_local $3
     get_local $5
     get_local $2
     i32.load16_u
     tee_local $4
     i32.const 255
     i32.and
     i32.const -2128831035
     i32.xor
     i32.const 16777619
     i32.mul
     get_local $4
     i32.const 8
     i32.shr_u
     i32.xor
     i32.const 16777619
     i32.mul
     get_local $1
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
     get_local $3
     i32.const 12
     i32.add
     set_local $3
    end
    get_local $2
    i32.const 12
    i32.add
    set_local $2
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
 (func $~lib/map/Map<u16,i32>#set (; 29 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  i32.const 65535
  i32.and
  tee_local $3
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  get_local $3
  i32.const 8
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
  tee_local $3
  set_local $5
  get_local $0
  get_local $1
  get_local $3
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
 (func $~lib/map/Map<u16,i32>#get (; 30 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  get_local $1
  i32.const 65535
  i32.and
  tee_local $0
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
 (func $~lib/map/Map<u16,i32>#delete (; 31 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  get_local $1
  get_local $1
  i32.const 65535
  i32.and
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
  i32.xor
  i32.const 16777619
  i32.mul
  call $~lib/map/Map<i16,i32>#find
  tee_local $1
  i32.eqz
  if
   i32.const 0
   return
  end
  get_local $1
  get_local $1
  i32.load offset=8
  i32.const 1
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
  tee_local $2
  i32.const 1
  i32.add
  i32.const 4
  get_local $0
  i32.load offset=20
  tee_local $1
  i32.const 4
  get_local $1
  i32.gt_u
  select
  i32.ge_u
  tee_local $1
  if
   get_local $0
   i32.load offset=20
   get_local $0
   i32.load offset=12
   f64.convert_s/i32
   f64.const 0.75
   f64.mul
   i32.trunc_s/f64
   i32.lt_s
   set_local $1
  end
  get_local $1
  if
   get_local $0
   get_local $2
   call $~lib/map/Map<u16,i32>#rehash
  end
  i32.const 1
 )
 (func $std/map/test<u16,i32> (; 32 ;) (type $v)
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
  i32.load offset=20
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
  i32.load offset=20
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
  i32.load offset=20
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
  i32.load offset=20
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
  i32.load offset=20
  if
   i32.const 0
   i32.const 120
   i32.const 46
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/internal/hash/hash32 (; 33 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/map/Map<i32,i32>#find (; 34 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/map/Map<i32,i32>#has (; 35 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  get_local $1
  call $~lib/internal/hash/hash32
  call $~lib/map/Map<i32,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<i32,i32>#rehash (; 36 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
  set_local $4
  get_local $2
  f64.convert_s/i32
  f64.const 2.6666666666666665
  f64.mul
  i32.trunc_s/f64
  tee_local $6
  i32.const 12
  i32.mul
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $5
  get_local $0
  i32.load offset=8
  i32.const 8
  i32.add
  tee_local $2
  get_local $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  set_local $7
  get_local $5
  i32.const 8
  i32.add
  set_local $3
  loop $continue|0
   get_local $2
   get_local $7
   i32.ne
   if
    get_local $2
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     get_local $3
     get_local $2
     i32.load
     i32.store
     get_local $3
     get_local $2
     i32.load offset=4
     i32.store offset=4
     get_local $3
     get_local $4
     get_local $2
     i32.load
     call $~lib/internal/hash/hash32
     get_local $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     tee_local $8
     i32.load offset=8
     i32.store offset=8
     get_local $8
     get_local $3
     i32.store offset=8
     get_local $3
     i32.const 12
     i32.add
     set_local $3
    end
    get_local $2
    i32.const 12
    i32.add
    set_local $2
    br $continue|0
   end
  end
  get_local $0
  get_local $4
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  get_local $0
  get_local $5
  i32.store offset=8
  get_local $0
  get_local $6
  i32.store offset=12
  get_local $0
  get_local $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<i32,i32>#set (; 37 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  get_local $1
  get_local $1
  call $~lib/internal/hash/hash32
  tee_local $5
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
 (func $~lib/map/Map<i32,i32>#get (; 38 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  get_local $1
  call $~lib/internal/hash/hash32
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
 (func $~lib/map/Map<i32,i32>#delete (; 39 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  get_local $1
  get_local $1
  call $~lib/internal/hash/hash32
  call $~lib/map/Map<i32,i32>#find
  tee_local $1
  i32.eqz
  if
   i32.const 0
   return
  end
  get_local $1
  get_local $1
  i32.load offset=8
  i32.const 1
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
  tee_local $2
  i32.const 1
  i32.add
  i32.const 4
  get_local $0
  i32.load offset=20
  tee_local $1
  i32.const 4
  get_local $1
  i32.gt_u
  select
  i32.ge_u
  tee_local $1
  if
   get_local $0
   i32.load offset=20
   get_local $0
   i32.load offset=12
   f64.convert_s/i32
   f64.const 0.75
   f64.mul
   i32.trunc_s/f64
   i32.lt_s
   set_local $1
  end
  get_local $1
  if
   get_local $0
   get_local $2
   call $~lib/map/Map<i32,i32>#rehash
  end
  i32.const 1
 )
 (func $std/map/test<i32,i32> (; 40 ;) (type $v)
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
  i32.load offset=20
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
  i32.load offset=20
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
  i32.load offset=20
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
  i32.load offset=20
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
  i32.load offset=20
  if
   i32.const 0
   i32.const 120
   i32.const 46
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/map/test<u32,i32> (; 41 ;) (type $v)
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
  i32.load offset=20
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
  i32.load offset=20
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
  i32.load offset=20
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
  i32.load offset=20
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
  i32.load offset=20
  if
   i32.const 0
   i32.const 120
   i32.const 46
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/map/Map<i64,i32>#clear (; 42 ;) (type $iv) (param $0 i32)
  get_local $0
  i32.const 16
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  get_local $0
  i32.const 3
  i32.store offset=4
  get_local $0
  i32.const 64
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
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
 (func $~lib/map/Map<i64,i32>#constructor (; 43 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  i32.const 24
  call $~lib/allocator/arena/__memory_allocate
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
 (func $~lib/internal/hash/hash64 (; 44 ;) (type $Ii) (param $0 i64) (result i32)
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
 (func $~lib/map/Map<i64,i32>#find (; 45 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
 (func $~lib/map/Map<i64,i32>#has (; 46 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  get_local $0
  get_local $1
  get_local $1
  call $~lib/internal/hash/hash64
  call $~lib/map/Map<i64,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<i64,i32>#rehash (; 47 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
  set_local $4
  get_local $2
  f64.convert_s/i32
  f64.const 2.6666666666666665
  f64.mul
  i32.trunc_s/f64
  tee_local $6
  i32.const 4
  i32.shl
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $5
  get_local $0
  i32.load offset=8
  i32.const 8
  i32.add
  tee_local $2
  get_local $0
  i32.load offset=16
  i32.const 4
  i32.shl
  i32.add
  set_local $7
  get_local $5
  i32.const 8
  i32.add
  set_local $3
  loop $continue|0
   get_local $2
   get_local $7
   i32.ne
   if
    get_local $2
    i32.load offset=12
    i32.const 1
    i32.and
    i32.eqz
    if
     get_local $3
     get_local $2
     i64.load
     i64.store
     get_local $3
     get_local $2
     i32.load offset=8
     i32.store offset=8
     get_local $3
     get_local $4
     get_local $2
     i64.load
     call $~lib/internal/hash/hash64
     get_local $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     tee_local $8
     i32.load offset=8
     i32.store offset=12
     get_local $8
     get_local $3
     i32.store offset=8
     get_local $3
     i32.const 16
     i32.add
     set_local $3
    end
    get_local $2
    i32.const 16
    i32.add
    set_local $2
    br $continue|0
   end
  end
  get_local $0
  get_local $4
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  get_local $0
  get_local $5
  i32.store offset=8
  get_local $0
  get_local $6
  i32.store offset=12
  get_local $0
  get_local $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<i64,i32>#set (; 48 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  get_local $1
  get_local $1
  call $~lib/internal/hash/hash64
  tee_local $5
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
 (func $~lib/map/Map<i64,i32>#get (; 49 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  get_local $0
  get_local $1
  get_local $1
  call $~lib/internal/hash/hash64
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
 (func $~lib/map/Map<i64,i32>#delete (; 50 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  get_local $1
  get_local $1
  call $~lib/internal/hash/hash64
  call $~lib/map/Map<i64,i32>#find
  tee_local $2
  i32.eqz
  if
   i32.const 0
   return
  end
  get_local $2
  get_local $2
  i32.load offset=12
  i32.const 1
  i32.or
  i32.store offset=12
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
  tee_local $3
  i32.const 1
  i32.add
  i32.const 4
  get_local $0
  i32.load offset=20
  tee_local $2
  i32.const 4
  get_local $2
  i32.gt_u
  select
  i32.ge_u
  tee_local $2
  if
   get_local $0
   i32.load offset=20
   get_local $0
   i32.load offset=12
   f64.convert_s/i32
   f64.const 0.75
   f64.mul
   i32.trunc_s/f64
   i32.lt_s
   set_local $2
  end
  get_local $2
  if
   get_local $0
   get_local $3
   call $~lib/map/Map<i64,i32>#rehash
  end
  i32.const 1
 )
 (func $std/map/test<i64,i32> (; 51 ;) (type $v)
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
  i32.load offset=20
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
  i32.load offset=20
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
  i32.load offset=20
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
  i32.load offset=20
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
  i32.load offset=20
  if
   i32.const 0
   i32.const 120
   i32.const 46
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/map/test<u64,i32> (; 52 ;) (type $v)
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
  i32.load offset=20
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
  i32.load offset=20
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
  i32.load offset=20
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
  i32.load offset=20
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
  i32.load offset=20
  if
   i32.const 0
   i32.const 120
   i32.const 46
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/map/Map<f32,i32>#find (; 53 ;) (type $ifii) (param $0 i32) (param $1 f32) (param $2 i32) (result i32)
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
 (func $~lib/map/Map<f32,i32>#has (; 54 ;) (type $ifi) (param $0 i32) (param $1 f32) (result i32)
  get_local $0
  get_local $1
  get_local $1
  i32.reinterpret/f32
  call $~lib/internal/hash/hash32
  call $~lib/map/Map<f32,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<f32,i32>#rehash (; 55 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
  set_local $4
  get_local $2
  f64.convert_s/i32
  f64.const 2.6666666666666665
  f64.mul
  i32.trunc_s/f64
  tee_local $6
  i32.const 12
  i32.mul
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $5
  get_local $0
  i32.load offset=8
  i32.const 8
  i32.add
  tee_local $2
  get_local $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  set_local $7
  get_local $5
  i32.const 8
  i32.add
  set_local $3
  loop $continue|0
   get_local $2
   get_local $7
   i32.ne
   if
    get_local $2
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     get_local $3
     get_local $2
     f32.load
     f32.store
     get_local $3
     get_local $2
     i32.load offset=4
     i32.store offset=4
     get_local $3
     get_local $4
     get_local $2
     f32.load
     i32.reinterpret/f32
     call $~lib/internal/hash/hash32
     get_local $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     tee_local $8
     i32.load offset=8
     i32.store offset=8
     get_local $8
     get_local $3
     i32.store offset=8
     get_local $3
     i32.const 12
     i32.add
     set_local $3
    end
    get_local $2
    i32.const 12
    i32.add
    set_local $2
    br $continue|0
   end
  end
  get_local $0
  get_local $4
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  get_local $0
  get_local $5
  i32.store offset=8
  get_local $0
  get_local $6
  i32.store offset=12
  get_local $0
  get_local $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<f32,i32>#set (; 56 ;) (type $ifiv) (param $0 i32) (param $1 f32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  get_local $1
  get_local $1
  i32.reinterpret/f32
  call $~lib/internal/hash/hash32
  tee_local $5
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
 (func $~lib/map/Map<f32,i32>#get (; 57 ;) (type $ifi) (param $0 i32) (param $1 f32) (result i32)
  get_local $0
  get_local $1
  get_local $1
  i32.reinterpret/f32
  call $~lib/internal/hash/hash32
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
 (func $~lib/map/Map<f32,i32>#delete (; 58 ;) (type $ifi) (param $0 i32) (param $1 f32) (result i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  get_local $1
  get_local $1
  i32.reinterpret/f32
  call $~lib/internal/hash/hash32
  call $~lib/map/Map<f32,i32>#find
  tee_local $2
  i32.eqz
  if
   i32.const 0
   return
  end
  get_local $2
  get_local $2
  i32.load offset=8
  i32.const 1
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
  tee_local $3
  i32.const 1
  i32.add
  i32.const 4
  get_local $0
  i32.load offset=20
  tee_local $2
  i32.const 4
  get_local $2
  i32.gt_u
  select
  i32.ge_u
  tee_local $2
  if
   get_local $0
   i32.load offset=20
   get_local $0
   i32.load offset=12
   f64.convert_s/i32
   f64.const 0.75
   f64.mul
   i32.trunc_s/f64
   i32.lt_s
   set_local $2
  end
  get_local $2
  if
   get_local $0
   get_local $3
   call $~lib/map/Map<f32,i32>#rehash
  end
  i32.const 1
 )
 (func $std/map/test<f32,i32> (; 59 ;) (type $v)
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
  i32.load offset=20
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
  i32.load offset=20
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
  i32.load offset=20
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
  i32.load offset=20
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
  i32.load offset=20
  if
   i32.const 0
   i32.const 120
   i32.const 46
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/map/Map<f64,i32>#find (; 60 ;) (type $iFii) (param $0 i32) (param $1 f64) (param $2 i32) (result i32)
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
 (func $~lib/map/Map<f64,i32>#has (; 61 ;) (type $iFi) (param $0 i32) (param $1 f64) (result i32)
  get_local $0
  get_local $1
  get_local $1
  i64.reinterpret/f64
  call $~lib/internal/hash/hash64
  call $~lib/map/Map<f64,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<f64,i32>#rehash (; 62 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
  set_local $4
  get_local $2
  f64.convert_s/i32
  f64.const 2.6666666666666665
  f64.mul
  i32.trunc_s/f64
  tee_local $6
  i32.const 4
  i32.shl
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  set_local $5
  get_local $0
  i32.load offset=8
  i32.const 8
  i32.add
  tee_local $2
  get_local $0
  i32.load offset=16
  i32.const 4
  i32.shl
  i32.add
  set_local $7
  get_local $5
  i32.const 8
  i32.add
  set_local $3
  loop $continue|0
   get_local $2
   get_local $7
   i32.ne
   if
    get_local $2
    i32.load offset=12
    i32.const 1
    i32.and
    i32.eqz
    if
     get_local $3
     get_local $2
     f64.load
     f64.store
     get_local $3
     get_local $2
     i32.load offset=8
     i32.store offset=8
     get_local $3
     get_local $4
     get_local $2
     f64.load
     i64.reinterpret/f64
     call $~lib/internal/hash/hash64
     get_local $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     tee_local $8
     i32.load offset=8
     i32.store offset=12
     get_local $8
     get_local $3
     i32.store offset=8
     get_local $3
     i32.const 16
     i32.add
     set_local $3
    end
    get_local $2
    i32.const 16
    i32.add
    set_local $2
    br $continue|0
   end
  end
  get_local $0
  get_local $4
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  get_local $0
  get_local $5
  i32.store offset=8
  get_local $0
  get_local $6
  i32.store offset=12
  get_local $0
  get_local $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<f64,i32>#set (; 63 ;) (type $iFiv) (param $0 i32) (param $1 f64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  get_local $1
  get_local $1
  i64.reinterpret/f64
  call $~lib/internal/hash/hash64
  tee_local $5
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
 (func $~lib/map/Map<f64,i32>#get (; 64 ;) (type $iFi) (param $0 i32) (param $1 f64) (result i32)
  get_local $0
  get_local $1
  get_local $1
  i64.reinterpret/f64
  call $~lib/internal/hash/hash64
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
 (func $~lib/map/Map<f64,i32>#delete (; 65 ;) (type $iFi) (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  get_local $1
  get_local $1
  i64.reinterpret/f64
  call $~lib/internal/hash/hash64
  call $~lib/map/Map<f64,i32>#find
  tee_local $2
  i32.eqz
  if
   i32.const 0
   return
  end
  get_local $2
  get_local $2
  i32.load offset=12
  i32.const 1
  i32.or
  i32.store offset=12
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
  tee_local $3
  i32.const 1
  i32.add
  i32.const 4
  get_local $0
  i32.load offset=20
  tee_local $2
  i32.const 4
  get_local $2
  i32.gt_u
  select
  i32.ge_u
  tee_local $2
  if
   get_local $0
   i32.load offset=20
   get_local $0
   i32.load offset=12
   f64.convert_s/i32
   f64.const 0.75
   f64.mul
   i32.trunc_s/f64
   i32.lt_s
   set_local $2
  end
  get_local $2
  if
   get_local $0
   get_local $3
   call $~lib/map/Map<f64,i32>#rehash
  end
  i32.const 1
 )
 (func $std/map/test<f64,i32> (; 66 ;) (type $v)
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
  i32.load offset=20
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
  i32.load offset=20
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
  i32.load offset=20
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
  i32.load offset=20
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
  i32.load offset=20
  if
   i32.const 0
   i32.const 120
   i32.const 46
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 67 ;) (type $v)
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
 (func $null (; 68 ;) (type $v)
  nop
 )
)
