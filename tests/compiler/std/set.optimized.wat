(module
 (type $v (func))
 (type $ii (func (param i32) (result i32)))
 (type $iv (func (param i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
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
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\13\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 56) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 120) "\n\00\00\00s\00t\00d\00/\00s\00e\00t\00.\00t\00s")
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
 (func $~lib/set/Set<i8>#clear (; 5 ;) (type $iv) (param $0 i32)
  get_local $0
  i32.const 16
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  get_local $0
  i32.const 3
  i32.store offset=4
  get_local $0
  i32.const 32
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
 (func $~lib/set/Set<i8>#constructor (; 6 ;) (type $FUNCSIG$i) (result i32)
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
  call $~lib/set/Set<i8>#clear
  get_local $0
 )
 (func $~lib/set/Set<i8>#find (; 7 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
    i32.load offset=4
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
    i32.load offset=4
    i32.const -2
    i32.and
    set_local $2
    br $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<i8>#has (; 8 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/set/Set<i8>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<i8>#rehash (; 9 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
  i32.const 3
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
  i32.const 3
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
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     get_local $3
     get_local $2
     i32.load8_s
     i32.store8
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
     i32.store offset=4
     get_local $8
     get_local $3
     i32.store offset=8
     get_local $3
     i32.const 8
     i32.add
     set_local $3
    end
    get_local $2
    i32.const 8
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
 (func $~lib/set/Set<i8>#add (; 10 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $1
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  tee_local $2
  set_local $4
  get_local $0
  get_local $1
  get_local $2
  call $~lib/set/Set<i8>#find
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
    tee_local $2
    call $~lib/set/Set<i8>#rehash
   end
   get_local $0
   i32.load offset=8
   set_local $2
   get_local $0
   get_local $0
   i32.load offset=16
   tee_local $3
   i32.const 1
   i32.add
   i32.store offset=16
   get_local $2
   i32.const 8
   i32.add
   get_local $3
   i32.const 3
   i32.shl
   i32.add
   tee_local $2
   get_local $1
   i32.store8
   get_local $0
   get_local $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   get_local $2
   get_local $0
   i32.load
   get_local $4
   get_local $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   tee_local $3
   i32.load offset=8
   i32.store offset=4
   get_local $3
   get_local $2
   i32.store offset=8
  end
 )
 (func $~lib/set/Set<i8>#delete (; 11 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/set/Set<i8>#find
  tee_local $1
  i32.eqz
  if
   i32.const 0
   return
  end
  get_local $1
  get_local $1
  i32.load offset=4
  i32.const 1
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
   call $~lib/set/Set<i8>#rehash
  end
  i32.const 1
 )
 (func $std/set/test<i8> (; 12 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  call $~lib/set/Set<i8>#constructor
  set_local $1
  block $break|0
   loop $repeat|0
    get_local $0
    i32.const 100
    i32.ge_s
    br_if $break|0
    get_local $1
    get_local $0
    call $~lib/set/Set<i8>#has
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
    call $~lib/set/Set<i8>#add
    get_local $1
    get_local $0
    call $~lib/set/Set<i8>#has
    if
     get_local $0
     i32.const 1
     i32.add
     set_local $0
     br $repeat|0
    else     
     i32.const 0
     i32.const 120
     i32.const 10
     i32.const 4
     call $~lib/env/abort
     unreachable
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
   i32.const 12
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i32.const 50
   set_local $0
   loop $repeat|1
    get_local $0
    i32.const 100
    i32.ge_s
    br_if $break|1
    get_local $1
    get_local $0
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
    get_local $1
    get_local $0
    call $~lib/set/Set<i8>#add
    get_local $1
    get_local $0
    call $~lib/set/Set<i8>#has
    if
     get_local $0
     i32.const 1
     i32.add
     set_local $0
     br $repeat|1
    else     
     i32.const 0
     i32.const 120
     i32.const 18
     i32.const 4
     call $~lib/env/abort
     unreachable
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
   i32.const 20
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
    get_local $1
    get_local $0
    call $~lib/set/Set<i8>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/set/Set<i8>#has
    if
     i32.const 0
     i32.const 120
     i32.const 26
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
   i32.const 28
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
    call $~lib/set/Set<i8>#has
    if
     i32.const 0
     i32.const 120
     i32.const 32
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/set/Set<i8>#add
    get_local $1
    get_local $0
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
    get_local $1
    get_local $0
    call $~lib/set/Set<i8>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/set/Set<i8>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
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
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  call $~lib/set/Set<i8>#clear
  get_local $1
  i32.load offset=20
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/set/Set<u8>#has (; 13 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  get_local $1
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  call $~lib/set/Set<i8>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<u8>#rehash (; 14 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
  i32.const 3
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
  i32.const 3
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
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     get_local $3
     get_local $2
     i32.load8_u
     i32.store8
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
     i32.store offset=4
     get_local $8
     get_local $3
     i32.store offset=8
     get_local $3
     i32.const 8
     i32.add
     set_local $3
    end
    get_local $2
    i32.const 8
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
 (func $~lib/set/Set<u8>#add (; 15 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $1
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  tee_local $2
  set_local $4
  get_local $0
  get_local $1
  get_local $2
  call $~lib/set/Set<i8>#find
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
    tee_local $2
    call $~lib/set/Set<u8>#rehash
   end
   get_local $0
   i32.load offset=8
   set_local $2
   get_local $0
   get_local $0
   i32.load offset=16
   tee_local $3
   i32.const 1
   i32.add
   i32.store offset=16
   get_local $2
   i32.const 8
   i32.add
   get_local $3
   i32.const 3
   i32.shl
   i32.add
   tee_local $2
   get_local $1
   i32.store8
   get_local $0
   get_local $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   get_local $2
   get_local $0
   i32.load
   get_local $4
   get_local $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   tee_local $3
   i32.load offset=8
   i32.store offset=4
   get_local $3
   get_local $2
   i32.store offset=8
  end
 )
 (func $~lib/set/Set<u8>#delete (; 16 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/set/Set<i8>#find
  tee_local $1
  i32.eqz
  if
   i32.const 0
   return
  end
  get_local $1
  get_local $1
  i32.load offset=4
  i32.const 1
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
   call $~lib/set/Set<u8>#rehash
  end
  i32.const 1
 )
 (func $std/set/test<u8> (; 17 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  call $~lib/set/Set<i8>#constructor
  set_local $1
  block $break|0
   loop $repeat|0
    get_local $0
    i32.const 100
    i32.ge_u
    br_if $break|0
    get_local $1
    get_local $0
    call $~lib/set/Set<u8>#has
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
    call $~lib/set/Set<u8>#add
    get_local $1
    get_local $0
    call $~lib/set/Set<u8>#has
    if
     get_local $0
     i32.const 1
     i32.add
     set_local $0
     br $repeat|0
    else     
     i32.const 0
     i32.const 120
     i32.const 10
     i32.const 4
     call $~lib/env/abort
     unreachable
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
   i32.const 12
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i32.const 50
   set_local $0
   loop $repeat|1
    get_local $0
    i32.const 100
    i32.ge_u
    br_if $break|1
    get_local $1
    get_local $0
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
    get_local $1
    get_local $0
    call $~lib/set/Set<u8>#add
    get_local $1
    get_local $0
    call $~lib/set/Set<u8>#has
    if
     get_local $0
     i32.const 1
     i32.add
     set_local $0
     br $repeat|1
    else     
     i32.const 0
     i32.const 120
     i32.const 18
     i32.const 4
     call $~lib/env/abort
     unreachable
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
   i32.const 20
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
    get_local $1
    get_local $0
    call $~lib/set/Set<u8>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/set/Set<u8>#has
    if
     i32.const 0
     i32.const 120
     i32.const 26
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
   i32.const 28
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
    call $~lib/set/Set<u8>#has
    if
     i32.const 0
     i32.const 120
     i32.const 32
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/set/Set<u8>#add
    get_local $1
    get_local $0
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
    get_local $1
    get_local $0
    call $~lib/set/Set<u8>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/set/Set<u8>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
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
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  call $~lib/set/Set<i8>#clear
  get_local $1
  i32.load offset=20
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/set/Set<i16>#find (; 18 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
    i32.load offset=4
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
    i32.load offset=4
    i32.const -2
    i32.and
    set_local $2
    br $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<i16>#has (; 19 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/set/Set<i16>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<i16>#rehash (; 20 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
  i32.const 3
  i32.shl
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
  i32.const 3
  i32.shl
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
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     get_local $3
     get_local $2
     i32.load16_s
     i32.store16
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
     i32.store offset=4
     get_local $4
     get_local $3
     i32.store offset=8
     get_local $3
     i32.const 8
     i32.add
     set_local $3
    end
    get_local $2
    i32.const 8
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
 (func $~lib/set/Set<i16>#add (; 21 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
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
  tee_local $2
  set_local $4
  get_local $0
  get_local $1
  get_local $2
  call $~lib/set/Set<i16>#find
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
    tee_local $2
    call $~lib/set/Set<i16>#rehash
   end
   get_local $0
   i32.load offset=8
   set_local $2
   get_local $0
   get_local $0
   i32.load offset=16
   tee_local $3
   i32.const 1
   i32.add
   i32.store offset=16
   get_local $2
   i32.const 8
   i32.add
   get_local $3
   i32.const 3
   i32.shl
   i32.add
   tee_local $2
   get_local $1
   i32.store16
   get_local $0
   get_local $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   get_local $2
   get_local $0
   i32.load
   get_local $4
   get_local $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   tee_local $3
   i32.load offset=8
   i32.store offset=4
   get_local $3
   get_local $2
   i32.store offset=8
  end
 )
 (func $~lib/set/Set<i16>#delete (; 22 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/set/Set<i16>#find
  tee_local $1
  i32.eqz
  if
   i32.const 0
   return
  end
  get_local $1
  get_local $1
  i32.load offset=4
  i32.const 1
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
   call $~lib/set/Set<i16>#rehash
  end
  i32.const 1
 )
 (func $std/set/test<i16> (; 23 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  call $~lib/set/Set<i8>#constructor
  set_local $1
  block $break|0
   loop $repeat|0
    get_local $0
    i32.const 100
    i32.ge_s
    br_if $break|0
    get_local $1
    get_local $0
    call $~lib/set/Set<i16>#has
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
    call $~lib/set/Set<i16>#add
    get_local $1
    get_local $0
    call $~lib/set/Set<i16>#has
    if
     get_local $0
     i32.const 1
     i32.add
     set_local $0
     br $repeat|0
    else     
     i32.const 0
     i32.const 120
     i32.const 10
     i32.const 4
     call $~lib/env/abort
     unreachable
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
   i32.const 12
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i32.const 50
   set_local $0
   loop $repeat|1
    get_local $0
    i32.const 100
    i32.ge_s
    br_if $break|1
    get_local $1
    get_local $0
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
    get_local $1
    get_local $0
    call $~lib/set/Set<i16>#add
    get_local $1
    get_local $0
    call $~lib/set/Set<i16>#has
    if
     get_local $0
     i32.const 1
     i32.add
     set_local $0
     br $repeat|1
    else     
     i32.const 0
     i32.const 120
     i32.const 18
     i32.const 4
     call $~lib/env/abort
     unreachable
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
   i32.const 20
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
    get_local $1
    get_local $0
    call $~lib/set/Set<i16>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/set/Set<i16>#has
    if
     i32.const 0
     i32.const 120
     i32.const 26
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
   i32.const 28
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
    call $~lib/set/Set<i16>#has
    if
     i32.const 0
     i32.const 120
     i32.const 32
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/set/Set<i16>#add
    get_local $1
    get_local $0
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
    get_local $1
    get_local $0
    call $~lib/set/Set<i16>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/set/Set<i16>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
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
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  call $~lib/set/Set<i8>#clear
  get_local $1
  i32.load offset=20
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/set/Set<u16>#has (; 24 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/set/Set<i16>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<u16>#rehash (; 25 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
  i32.const 3
  i32.shl
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
  i32.const 3
  i32.shl
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
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     get_local $3
     get_local $2
     i32.load16_u
     i32.store16
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
     i32.store offset=4
     get_local $4
     get_local $3
     i32.store offset=8
     get_local $3
     i32.const 8
     i32.add
     set_local $3
    end
    get_local $2
    i32.const 8
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
 (func $~lib/set/Set<u16>#add (; 26 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
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
  tee_local $2
  set_local $4
  get_local $0
  get_local $1
  get_local $2
  call $~lib/set/Set<i16>#find
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
    tee_local $2
    call $~lib/set/Set<u16>#rehash
   end
   get_local $0
   i32.load offset=8
   set_local $2
   get_local $0
   get_local $0
   i32.load offset=16
   tee_local $3
   i32.const 1
   i32.add
   i32.store offset=16
   get_local $2
   i32.const 8
   i32.add
   get_local $3
   i32.const 3
   i32.shl
   i32.add
   tee_local $2
   get_local $1
   i32.store16
   get_local $0
   get_local $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   get_local $2
   get_local $0
   i32.load
   get_local $4
   get_local $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   tee_local $3
   i32.load offset=8
   i32.store offset=4
   get_local $3
   get_local $2
   i32.store offset=8
  end
 )
 (func $~lib/set/Set<u16>#delete (; 27 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/set/Set<i16>#find
  tee_local $1
  i32.eqz
  if
   i32.const 0
   return
  end
  get_local $1
  get_local $1
  i32.load offset=4
  i32.const 1
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
   call $~lib/set/Set<u16>#rehash
  end
  i32.const 1
 )
 (func $std/set/test<u16> (; 28 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  call $~lib/set/Set<i8>#constructor
  set_local $1
  block $break|0
   loop $repeat|0
    get_local $0
    i32.const 100
    i32.ge_u
    br_if $break|0
    get_local $1
    get_local $0
    call $~lib/set/Set<u16>#has
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
    call $~lib/set/Set<u16>#add
    get_local $1
    get_local $0
    call $~lib/set/Set<u16>#has
    if
     get_local $0
     i32.const 1
     i32.add
     set_local $0
     br $repeat|0
    else     
     i32.const 0
     i32.const 120
     i32.const 10
     i32.const 4
     call $~lib/env/abort
     unreachable
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
   i32.const 12
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i32.const 50
   set_local $0
   loop $repeat|1
    get_local $0
    i32.const 100
    i32.ge_u
    br_if $break|1
    get_local $1
    get_local $0
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
    get_local $1
    get_local $0
    call $~lib/set/Set<u16>#add
    get_local $1
    get_local $0
    call $~lib/set/Set<u16>#has
    if
     get_local $0
     i32.const 1
     i32.add
     set_local $0
     br $repeat|1
    else     
     i32.const 0
     i32.const 120
     i32.const 18
     i32.const 4
     call $~lib/env/abort
     unreachable
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
   i32.const 20
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
    get_local $1
    get_local $0
    call $~lib/set/Set<u16>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/set/Set<u16>#has
    if
     i32.const 0
     i32.const 120
     i32.const 26
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
   i32.const 28
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
    call $~lib/set/Set<u16>#has
    if
     i32.const 0
     i32.const 120
     i32.const 32
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/set/Set<u16>#add
    get_local $1
    get_local $0
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
    get_local $1
    get_local $0
    call $~lib/set/Set<u16>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/set/Set<u16>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
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
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  call $~lib/set/Set<i8>#clear
  get_local $1
  i32.load offset=20
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/internal/hash/hash32 (; 29 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/set/Set<i32>#find (; 30 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
    i32.load offset=4
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
    i32.load offset=4
    i32.const -2
    i32.and
    set_local $2
    br $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<i32>#has (; 31 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  get_local $1
  call $~lib/internal/hash/hash32
  call $~lib/set/Set<i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<i32>#rehash (; 32 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
  i32.const 3
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
  i32.const 3
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
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     get_local $3
     get_local $2
     i32.load
     i32.store
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
     i32.store offset=4
     get_local $8
     get_local $3
     i32.store offset=8
     get_local $3
     i32.const 8
     i32.add
     set_local $3
    end
    get_local $2
    i32.const 8
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
 (func $~lib/set/Set<i32>#add (; 33 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $1
  call $~lib/internal/hash/hash32
  tee_local $2
  set_local $4
  get_local $0
  get_local $1
  get_local $2
  call $~lib/set/Set<i32>#find
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
    tee_local $2
    call $~lib/set/Set<i32>#rehash
   end
   get_local $0
   i32.load offset=8
   set_local $2
   get_local $0
   get_local $0
   i32.load offset=16
   tee_local $3
   i32.const 1
   i32.add
   i32.store offset=16
   get_local $2
   i32.const 8
   i32.add
   get_local $3
   i32.const 3
   i32.shl
   i32.add
   tee_local $2
   get_local $1
   i32.store
   get_local $0
   get_local $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   get_local $2
   get_local $0
   i32.load
   get_local $4
   get_local $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   tee_local $3
   i32.load offset=8
   i32.store offset=4
   get_local $3
   get_local $2
   i32.store offset=8
  end
 )
 (func $~lib/set/Set<i32>#delete (; 34 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  get_local $1
  get_local $1
  call $~lib/internal/hash/hash32
  call $~lib/set/Set<i32>#find
  tee_local $1
  i32.eqz
  if
   i32.const 0
   return
  end
  get_local $1
  get_local $1
  i32.load offset=4
  i32.const 1
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
   call $~lib/set/Set<i32>#rehash
  end
  i32.const 1
 )
 (func $std/set/test<i32> (; 35 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  call $~lib/set/Set<i8>#constructor
  set_local $1
  block $break|0
   loop $repeat|0
    get_local $0
    i32.const 100
    i32.ge_s
    br_if $break|0
    get_local $1
    get_local $0
    call $~lib/set/Set<i32>#has
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
    call $~lib/set/Set<i32>#add
    get_local $1
    get_local $0
    call $~lib/set/Set<i32>#has
    if
     get_local $0
     i32.const 1
     i32.add
     set_local $0
     br $repeat|0
    else     
     i32.const 0
     i32.const 120
     i32.const 10
     i32.const 4
     call $~lib/env/abort
     unreachable
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
   i32.const 12
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i32.const 50
   set_local $0
   loop $repeat|1
    get_local $0
    i32.const 100
    i32.ge_s
    br_if $break|1
    get_local $1
    get_local $0
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
    get_local $1
    get_local $0
    call $~lib/set/Set<i32>#add
    get_local $1
    get_local $0
    call $~lib/set/Set<i32>#has
    if
     get_local $0
     i32.const 1
     i32.add
     set_local $0
     br $repeat|1
    else     
     i32.const 0
     i32.const 120
     i32.const 18
     i32.const 4
     call $~lib/env/abort
     unreachable
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
   i32.const 20
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
    get_local $1
    get_local $0
    call $~lib/set/Set<i32>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/set/Set<i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 26
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
   i32.const 28
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
    call $~lib/set/Set<i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 32
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/set/Set<i32>#add
    get_local $1
    get_local $0
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
    get_local $1
    get_local $0
    call $~lib/set/Set<i32>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/set/Set<i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
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
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  call $~lib/set/Set<i8>#clear
  get_local $1
  i32.load offset=20
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/set/test<u32> (; 36 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  call $~lib/set/Set<i8>#constructor
  set_local $1
  block $break|0
   loop $repeat|0
    get_local $0
    i32.const 100
    i32.ge_u
    br_if $break|0
    get_local $1
    get_local $0
    call $~lib/set/Set<i32>#has
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
    call $~lib/set/Set<i32>#add
    get_local $1
    get_local $0
    call $~lib/set/Set<i32>#has
    if
     get_local $0
     i32.const 1
     i32.add
     set_local $0
     br $repeat|0
    else     
     i32.const 0
     i32.const 120
     i32.const 10
     i32.const 4
     call $~lib/env/abort
     unreachable
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
   i32.const 12
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i32.const 50
   set_local $0
   loop $repeat|1
    get_local $0
    i32.const 100
    i32.ge_u
    br_if $break|1
    get_local $1
    get_local $0
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
    get_local $1
    get_local $0
    call $~lib/set/Set<i32>#add
    get_local $1
    get_local $0
    call $~lib/set/Set<i32>#has
    if
     get_local $0
     i32.const 1
     i32.add
     set_local $0
     br $repeat|1
    else     
     i32.const 0
     i32.const 120
     i32.const 18
     i32.const 4
     call $~lib/env/abort
     unreachable
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
   i32.const 20
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
    get_local $1
    get_local $0
    call $~lib/set/Set<i32>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/set/Set<i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 26
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
   i32.const 28
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
    call $~lib/set/Set<i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 32
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/set/Set<i32>#add
    get_local $1
    get_local $0
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
    get_local $1
    get_local $0
    call $~lib/set/Set<i32>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/set/Set<i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
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
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  call $~lib/set/Set<i8>#clear
  get_local $1
  i32.load offset=20
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/set/Set<i64>#clear (; 37 ;) (type $iv) (param $0 i32)
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
 (func $~lib/set/Set<i64>#constructor (; 38 ;) (type $FUNCSIG$i) (result i32)
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
  call $~lib/set/Set<i64>#clear
  get_local $0
 )
 (func $~lib/internal/hash/hash64 (; 39 ;) (type $Ii) (param $0 i64) (result i32)
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
 (func $~lib/set/Set<i64>#find (; 40 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
    i32.load offset=8
    i32.const -2
    i32.and
    set_local $2
    br $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<i64>#has (; 41 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  get_local $0
  get_local $1
  get_local $1
  call $~lib/internal/hash/hash64
  call $~lib/set/Set<i64>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<i64>#rehash (; 42 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     get_local $3
     get_local $2
     i64.load
     i64.store
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
     i32.store offset=8
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
 (func $~lib/set/Set<i64>#add (; 43 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $1
  call $~lib/internal/hash/hash64
  tee_local $2
  set_local $4
  get_local $0
  get_local $1
  get_local $2
  call $~lib/set/Set<i64>#find
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
    tee_local $2
    call $~lib/set/Set<i64>#rehash
   end
   get_local $0
   i32.load offset=8
   set_local $2
   get_local $0
   get_local $0
   i32.load offset=16
   tee_local $3
   i32.const 1
   i32.add
   i32.store offset=16
   get_local $2
   i32.const 8
   i32.add
   get_local $3
   i32.const 4
   i32.shl
   i32.add
   tee_local $2
   get_local $1
   i64.store
   get_local $0
   get_local $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   get_local $2
   get_local $0
   i32.load
   get_local $4
   get_local $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   tee_local $3
   i32.load offset=8
   i32.store offset=8
   get_local $3
   get_local $2
   i32.store offset=8
  end
 )
 (func $~lib/set/Set<i64>#delete (; 44 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  get_local $1
  get_local $1
  call $~lib/internal/hash/hash64
  call $~lib/set/Set<i64>#find
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
   call $~lib/set/Set<i64>#rehash
  end
  i32.const 1
 )
 (func $std/set/test<i64> (; 45 ;) (type $v)
  (local $0 i64)
  (local $1 i32)
  call $~lib/set/Set<i64>#constructor
  set_local $1
  block $break|0
   loop $repeat|0
    get_local $0
    i64.const 100
    i64.ge_s
    br_if $break|0
    get_local $1
    get_local $0
    call $~lib/set/Set<i64>#has
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
    call $~lib/set/Set<i64>#add
    get_local $1
    get_local $0
    call $~lib/set/Set<i64>#has
    if
     get_local $0
     i64.const 1
     i64.add
     set_local $0
     br $repeat|0
    else     
     i32.const 0
     i32.const 120
     i32.const 10
     i32.const 4
     call $~lib/env/abort
     unreachable
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
   i32.const 12
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i64.const 50
   set_local $0
   loop $repeat|1
    get_local $0
    i64.const 100
    i64.ge_s
    br_if $break|1
    get_local $1
    get_local $0
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
    get_local $1
    get_local $0
    call $~lib/set/Set<i64>#add
    get_local $1
    get_local $0
    call $~lib/set/Set<i64>#has
    if
     get_local $0
     i64.const 1
     i64.add
     set_local $0
     br $repeat|1
    else     
     i32.const 0
     i32.const 120
     i32.const 18
     i32.const 4
     call $~lib/env/abort
     unreachable
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
   i32.const 20
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
    get_local $1
    get_local $0
    call $~lib/set/Set<i64>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/set/Set<i64>#has
    if
     i32.const 0
     i32.const 120
     i32.const 26
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
   i32.const 28
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
    call $~lib/set/Set<i64>#has
    if
     i32.const 0
     i32.const 120
     i32.const 32
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/set/Set<i64>#add
    get_local $1
    get_local $0
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
    get_local $1
    get_local $0
    call $~lib/set/Set<i64>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/set/Set<i64>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
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
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  call $~lib/set/Set<i64>#clear
  get_local $1
  i32.load offset=20
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/set/test<u64> (; 46 ;) (type $v)
  (local $0 i64)
  (local $1 i32)
  call $~lib/set/Set<i64>#constructor
  set_local $1
  block $break|0
   loop $repeat|0
    get_local $0
    i64.const 100
    i64.ge_u
    br_if $break|0
    get_local $1
    get_local $0
    call $~lib/set/Set<i64>#has
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
    call $~lib/set/Set<i64>#add
    get_local $1
    get_local $0
    call $~lib/set/Set<i64>#has
    if
     get_local $0
     i64.const 1
     i64.add
     set_local $0
     br $repeat|0
    else     
     i32.const 0
     i32.const 120
     i32.const 10
     i32.const 4
     call $~lib/env/abort
     unreachable
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
   i32.const 12
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i64.const 50
   set_local $0
   loop $repeat|1
    get_local $0
    i64.const 100
    i64.ge_u
    br_if $break|1
    get_local $1
    get_local $0
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
    get_local $1
    get_local $0
    call $~lib/set/Set<i64>#add
    get_local $1
    get_local $0
    call $~lib/set/Set<i64>#has
    if
     get_local $0
     i64.const 1
     i64.add
     set_local $0
     br $repeat|1
    else     
     i32.const 0
     i32.const 120
     i32.const 18
     i32.const 4
     call $~lib/env/abort
     unreachable
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
   i32.const 20
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
    get_local $1
    get_local $0
    call $~lib/set/Set<i64>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/set/Set<i64>#has
    if
     i32.const 0
     i32.const 120
     i32.const 26
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
   i32.const 28
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
    call $~lib/set/Set<i64>#has
    if
     i32.const 0
     i32.const 120
     i32.const 32
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/set/Set<i64>#add
    get_local $1
    get_local $0
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
    get_local $1
    get_local $0
    call $~lib/set/Set<i64>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/set/Set<i64>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
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
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  call $~lib/set/Set<i64>#clear
  get_local $1
  i32.load offset=20
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/internal/hash/hash<f32> (; 47 ;) (type $fi) (param $0 f32) (result i32)
  get_local $0
  i32.reinterpret/f32
  call $~lib/internal/hash/hash32
 )
 (func $~lib/set/Set<f32>#find (; 48 ;) (type $ifii) (param $0 i32) (param $1 f32) (param $2 i32) (result i32)
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
    i32.load offset=4
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
    i32.load offset=4
    i32.const -2
    i32.and
    set_local $2
    br $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<f32>#has (; 49 ;) (type $ifi) (param $0 i32) (param $1 f32) (result i32)
  get_local $0
  get_local $1
  get_local $1
  call $~lib/internal/hash/hash<f32>
  call $~lib/set/Set<f32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<f32>#rehash (; 50 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
  i32.const 3
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
  i32.const 3
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
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     get_local $3
     get_local $2
     f32.load
     f32.store
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
     i32.store offset=4
     get_local $8
     get_local $3
     i32.store offset=8
     get_local $3
     i32.const 8
     i32.add
     set_local $3
    end
    get_local $2
    i32.const 8
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
 (func $~lib/set/Set<f32>#add (; 51 ;) (type $ifv) (param $0 i32) (param $1 f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  get_local $1
  get_local $1
  call $~lib/internal/hash/hash<f32>
  tee_local $4
  call $~lib/set/Set<f32>#find
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
    tee_local $2
    call $~lib/set/Set<f32>#rehash
   end
   get_local $0
   i32.load offset=8
   set_local $2
   get_local $0
   get_local $0
   i32.load offset=16
   tee_local $3
   i32.const 1
   i32.add
   i32.store offset=16
   get_local $2
   i32.const 8
   i32.add
   get_local $3
   i32.const 3
   i32.shl
   i32.add
   tee_local $2
   get_local $1
   f32.store
   get_local $0
   get_local $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   get_local $2
   get_local $0
   i32.load
   get_local $4
   get_local $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   tee_local $3
   i32.load offset=8
   i32.store offset=4
   get_local $3
   get_local $2
   i32.store offset=8
  end
 )
 (func $~lib/set/Set<f32>#delete (; 52 ;) (type $ifi) (param $0 i32) (param $1 f32) (result i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  get_local $1
  get_local $1
  i32.reinterpret/f32
  call $~lib/internal/hash/hash32
  call $~lib/set/Set<f32>#find
  tee_local $2
  i32.eqz
  if
   i32.const 0
   return
  end
  get_local $2
  get_local $2
  i32.load offset=4
  i32.const 1
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
   call $~lib/set/Set<f32>#rehash
  end
  i32.const 1
 )
 (func $std/set/test<f32> (; 53 ;) (type $v)
  (local $0 f32)
  (local $1 i32)
  call $~lib/set/Set<i8>#constructor
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
    call $~lib/set/Set<f32>#has
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
    call $~lib/set/Set<f32>#add
    get_local $1
    get_local $0
    call $~lib/set/Set<f32>#has
    if
     get_local $0
     f32.const 1
     f32.add
     set_local $0
     br $repeat|0
    else     
     i32.const 0
     i32.const 120
     i32.const 10
     i32.const 4
     call $~lib/env/abort
     unreachable
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
   i32.const 12
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   f32.const 50
   set_local $0
   loop $repeat|1
    get_local $0
    f32.const 100
    f32.lt
    i32.eqz
    br_if $break|1
    get_local $1
    get_local $0
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
    get_local $1
    get_local $0
    call $~lib/set/Set<f32>#add
    get_local $1
    get_local $0
    call $~lib/set/Set<f32>#has
    if
     get_local $0
     f32.const 1
     f32.add
     set_local $0
     br $repeat|1
    else     
     i32.const 0
     i32.const 120
     i32.const 18
     i32.const 4
     call $~lib/env/abort
     unreachable
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
   i32.const 20
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
    get_local $1
    get_local $0
    call $~lib/set/Set<f32>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/set/Set<f32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 26
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
   i32.const 28
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
    call $~lib/set/Set<f32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 32
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/set/Set<f32>#add
    get_local $1
    get_local $0
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
    get_local $1
    get_local $0
    call $~lib/set/Set<f32>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/set/Set<f32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
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
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  call $~lib/set/Set<i8>#clear
  get_local $1
  i32.load offset=20
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/internal/hash/hash<f64> (; 54 ;) (type $Fi) (param $0 f64) (result i32)
  get_local $0
  i64.reinterpret/f64
  call $~lib/internal/hash/hash64
 )
 (func $~lib/set/Set<f64>#find (; 55 ;) (type $iFii) (param $0 i32) (param $1 f64) (param $2 i32) (result i32)
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
    i32.load offset=8
    i32.const -2
    i32.and
    set_local $2
    br $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<f64>#has (; 56 ;) (type $iFi) (param $0 i32) (param $1 f64) (result i32)
  get_local $0
  get_local $1
  get_local $1
  call $~lib/internal/hash/hash<f64>
  call $~lib/set/Set<f64>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<f64>#rehash (; 57 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     get_local $3
     get_local $2
     f64.load
     f64.store
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
     i32.store offset=8
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
 (func $~lib/set/Set<f64>#add (; 58 ;) (type $iFv) (param $0 i32) (param $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  get_local $1
  get_local $1
  call $~lib/internal/hash/hash<f64>
  tee_local $4
  call $~lib/set/Set<f64>#find
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
    tee_local $2
    call $~lib/set/Set<f64>#rehash
   end
   get_local $0
   i32.load offset=8
   set_local $2
   get_local $0
   get_local $0
   i32.load offset=16
   tee_local $3
   i32.const 1
   i32.add
   i32.store offset=16
   get_local $2
   i32.const 8
   i32.add
   get_local $3
   i32.const 4
   i32.shl
   i32.add
   tee_local $2
   get_local $1
   f64.store
   get_local $0
   get_local $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   get_local $2
   get_local $0
   i32.load
   get_local $4
   get_local $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   tee_local $3
   i32.load offset=8
   i32.store offset=8
   get_local $3
   get_local $2
   i32.store offset=8
  end
 )
 (func $~lib/set/Set<f64>#delete (; 59 ;) (type $iFi) (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  get_local $1
  get_local $1
  i64.reinterpret/f64
  call $~lib/internal/hash/hash64
  call $~lib/set/Set<f64>#find
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
   call $~lib/set/Set<f64>#rehash
  end
  i32.const 1
 )
 (func $std/set/test<f64> (; 60 ;) (type $v)
  (local $0 f64)
  (local $1 i32)
  call $~lib/set/Set<i64>#constructor
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
    call $~lib/set/Set<f64>#has
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
    call $~lib/set/Set<f64>#add
    get_local $1
    get_local $0
    call $~lib/set/Set<f64>#has
    if
     get_local $0
     f64.const 1
     f64.add
     set_local $0
     br $repeat|0
    else     
     i32.const 0
     i32.const 120
     i32.const 10
     i32.const 4
     call $~lib/env/abort
     unreachable
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
   i32.const 12
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   f64.const 50
   set_local $0
   loop $repeat|1
    get_local $0
    f64.const 100
    f64.lt
    i32.eqz
    br_if $break|1
    get_local $1
    get_local $0
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
    get_local $1
    get_local $0
    call $~lib/set/Set<f64>#add
    get_local $1
    get_local $0
    call $~lib/set/Set<f64>#has
    if
     get_local $0
     f64.const 1
     f64.add
     set_local $0
     br $repeat|1
    else     
     i32.const 0
     i32.const 120
     i32.const 18
     i32.const 4
     call $~lib/env/abort
     unreachable
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
   i32.const 20
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
    get_local $1
    get_local $0
    call $~lib/set/Set<f64>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/set/Set<f64>#has
    if
     i32.const 0
     i32.const 120
     i32.const 26
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
   i32.const 28
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
    call $~lib/set/Set<f64>#has
    if
     i32.const 0
     i32.const 120
     i32.const 32
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $1
    get_local $0
    call $~lib/set/Set<f64>#add
    get_local $1
    get_local $0
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
    get_local $1
    get_local $0
    call $~lib/set/Set<f64>#delete
    drop
    get_local $1
    get_local $0
    call $~lib/set/Set<f64>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
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
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  call $~lib/set/Set<i64>#clear
  get_local $1
  i32.load offset=20
  if
   i32.const 0
   i32.const 120
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 61 ;) (type $v)
  i32.const 144
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
 (func $null (; 62 ;) (type $v)
  nop
 )
)
