(module
 (type $v (func))
 (type $i (func (result i32)))
 (type $iFFFFFFFi (func (param i32 f64 f64 f64 f64 f64 f64 f64) (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iFFFi (func (param i32 f64 f64 f64) (result i32)))
 (type $F (func (result f64)))
 (type $iFv (func (param i32 f64)))
 (type $iF (func (param i32) (result f64)))
 (type $iv (func (param i32)))
 (import "env" "memory" (memory $0 1))
 (data (i32.const 8) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 40) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/math/NativeMath.PI f64 (f64.const 3.141592653589793))
 (global $assembly/index/SOLAR_MASS f64 (f64.const 39.47841760435743))
 (global $assembly/index/DAYS_PER_YEAR f64 (f64.const 365.24))
 (global $assembly/index/system (mut i32) (i32.const 0))
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/internal/arraybuffer/MAX_BLENGTH i32 (i32.const 1073741816))
 (global $HEAP_BASE i32 (i32.const 100))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "init" (func $assembly/index/init))
 (export "step" (func $assembly/index/step))
 (export "bench" (func $assembly/index/bench))
 (export "getBody" (func $assembly/index/getBody))
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
 (func $assembly/index/Body#constructor (; 3 ;) (type $iFFFFFFFi) (param $0 i32) (param $1 f64) (param $2 f64) (param $3 f64) (param $4 f64) (param $5 f64) (param $6 f64) (param $7 f64) (result i32)
  (local $8 i32)
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 56
    call $~lib/memory/memory.allocate
    set_local $8
    get_local $8
    get_local $1
    f64.store
    get_local $8
    get_local $2
    f64.store offset=8
    get_local $8
    get_local $3
    f64.store offset=16
    get_local $8
    get_local $4
    f64.store offset=24
    get_local $8
    get_local $5
    f64.store offset=32
    get_local $8
    get_local $6
    f64.store offset=40
    get_local $8
    get_local $7
    f64.store offset=48
    get_local $8
   end
   tee_local $0
  end
  tee_local $0
 )
 (func $assembly/index/Sun (; 4 ;) (type $i) (result i32)
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  get_global $assembly/index/SOLAR_MASS
  call $assembly/index/Body#constructor
 )
 (func $assembly/index/Jupiter (; 5 ;) (type $i) (result i32)
  i32.const 0
  f64.const 4.841431442464721
  f64.const -1.1603200440274284
  f64.const -0.10362204447112311
  f64.const 0.001660076642744037
  get_global $assembly/index/DAYS_PER_YEAR
  f64.mul
  f64.const 0.007699011184197404
  get_global $assembly/index/DAYS_PER_YEAR
  f64.mul
  f64.const -6.90460016972063e-05
  get_global $assembly/index/DAYS_PER_YEAR
  f64.mul
  f64.const 9.547919384243266e-04
  get_global $assembly/index/SOLAR_MASS
  f64.mul
  call $assembly/index/Body#constructor
 )
 (func $assembly/index/Saturn (; 6 ;) (type $i) (result i32)
  i32.const 0
  f64.const 8.34336671824458
  f64.const 4.124798564124305
  f64.const -0.4035234171143214
  f64.const -0.002767425107268624
  get_global $assembly/index/DAYS_PER_YEAR
  f64.mul
  f64.const 0.004998528012349172
  get_global $assembly/index/DAYS_PER_YEAR
  f64.mul
  f64.const 2.3041729757376393e-05
  get_global $assembly/index/DAYS_PER_YEAR
  f64.mul
  f64.const 2.858859806661308e-04
  get_global $assembly/index/SOLAR_MASS
  f64.mul
  call $assembly/index/Body#constructor
 )
 (func $assembly/index/Uranus (; 7 ;) (type $i) (result i32)
  i32.const 0
  f64.const 12.894369562139131
  f64.const -15.111151401698631
  f64.const -0.22330757889265573
  f64.const 0.002964601375647616
  get_global $assembly/index/DAYS_PER_YEAR
  f64.mul
  f64.const 2.3784717395948095e-03
  get_global $assembly/index/DAYS_PER_YEAR
  f64.mul
  f64.const -2.9658956854023756e-05
  get_global $assembly/index/DAYS_PER_YEAR
  f64.mul
  f64.const 4.366244043351563e-05
  get_global $assembly/index/SOLAR_MASS
  f64.mul
  call $assembly/index/Body#constructor
 )
 (func $assembly/index/Neptune (; 8 ;) (type $i) (result i32)
  i32.const 0
  f64.const 15.379697114850917
  f64.const -25.919314609987964
  f64.const 0.17925877295037118
  f64.const 2.6806777249038932e-03
  get_global $assembly/index/DAYS_PER_YEAR
  f64.mul
  f64.const 0.001628241700382423
  get_global $assembly/index/DAYS_PER_YEAR
  f64.mul
  f64.const -9.515922545197159e-05
  get_global $assembly/index/DAYS_PER_YEAR
  f64.mul
  f64.const 5.1513890204661145e-05
  get_global $assembly/index/SOLAR_MASS
  f64.mul
  call $assembly/index/Body#constructor
 )
 (func $~lib/internal/arraybuffer/computeSize (; 9 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 10 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  get_local $0
  get_global $~lib/internal/arraybuffer/MAX_BLENGTH
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 26
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
 (func $~lib/internal/memory/memset (; 11 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/array/Array<Body>#constructor (; 12 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  i32.const 268435454
  i32.gt_u
  if
   i32.const 0
   i32.const 8
   i32.const 45
   i32.const 39
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 2
  i32.shl
  set_local $2
  get_local $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $3
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $4
    get_local $4
    i32.const 0
    i32.store
    get_local $4
    i32.const 0
    i32.store offset=4
    get_local $4
   end
   tee_local $0
  end
  tee_local $0
  get_local $3
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
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
 )
 (func $~lib/array/Array<Body>#__unchecked_set (; 13 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load
  set_local $3
  i32.const 0
  set_local $4
  get_local $3
  get_local $1
  i32.const 2
  i32.shl
  i32.add
  get_local $4
  i32.add
  get_local $2
  i32.store offset=8
 )
 (func $~lib/array/Array<Body>#__unchecked_get (; 14 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  i32.load
  set_local $2
  i32.const 0
  set_local $3
  get_local $2
  get_local $1
  i32.const 2
  i32.shl
  i32.add
  get_local $3
  i32.add
  i32.load offset=8
 )
 (func $~lib/array/Array<Body>#__get (; 15 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $1
  get_local $2
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   i32.const 0
   set_local $3
   get_local $2
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   get_local $3
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $assembly/index/Body#offsetMomentum (; 16 ;) (type $iFFFi) (param $0 i32) (param $1 f64) (param $2 f64) (param $3 f64) (result i32)
  get_local $0
  get_local $1
  f64.neg
  get_global $assembly/index/SOLAR_MASS
  f64.div
  f64.store offset=24
  get_local $0
  get_local $2
  f64.neg
  get_global $assembly/index/SOLAR_MASS
  f64.div
  f64.store offset=32
  get_local $0
  get_local $3
  f64.neg
  get_global $assembly/index/SOLAR_MASS
  f64.div
  f64.store offset=40
  get_local $0
 )
 (func $assembly/index/NBodySystem#constructor (; 17 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 f64)
  (local $3 f64)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f64)
  f64.const 0
  set_local $2
  f64.const 0
  set_local $3
  f64.const 0
  set_local $4
  block $~lib/array/Array<Body>#get:length|inlined.0 (result i32)
   get_local $1
   i32.load offset=4
  end
  set_local $5
  block $break|0
   i32.const 0
   set_local $6
   loop $repeat|0
    get_local $6
    get_local $5
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     get_local $1
     get_local $6
     call $~lib/array/Array<Body>#__unchecked_get
     set_local $7
     get_local $7
     f64.load offset=48
     set_local $8
     get_local $2
     get_local $7
     f64.load offset=24
     get_local $8
     f64.mul
     f64.add
     set_local $2
     get_local $3
     get_local $7
     f64.load offset=32
     get_local $8
     f64.mul
     f64.add
     set_local $3
     get_local $4
     get_local $7
     f64.load offset=40
     get_local $8
     f64.mul
     f64.add
     set_local $4
    end
    get_local $6
    i32.const 1
    i32.add
    set_local $6
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $1
  i32.const 0
  call $~lib/array/Array<Body>#__get
  get_local $2
  get_local $3
  get_local $4
  call $assembly/index/Body#offsetMomentum
  drop
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 4
    call $~lib/memory/memory.allocate
    set_local $6
    get_local $6
    get_local $1
    i32.store
    get_local $6
   end
   tee_local $0
  end
  tee_local $0
 )
 (func $assembly/index/init (; 18 ;) (type $v)
  (local $0 i32)
  i32.const 0
  block (result i32)
   i32.const 0
   i32.const 5
   call $~lib/array/Array<Body>#constructor
   set_local $0
   get_local $0
   i32.const 0
   call $assembly/index/Sun
   call $~lib/array/Array<Body>#__unchecked_set
   get_local $0
   i32.const 1
   call $assembly/index/Jupiter
   call $~lib/array/Array<Body>#__unchecked_set
   get_local $0
   i32.const 2
   call $assembly/index/Saturn
   call $~lib/array/Array<Body>#__unchecked_set
   get_local $0
   i32.const 3
   call $assembly/index/Uranus
   call $~lib/array/Array<Body>#__unchecked_set
   get_local $0
   i32.const 4
   call $assembly/index/Neptune
   call $~lib/array/Array<Body>#__unchecked_set
   get_local $0
  end
  call $assembly/index/NBodySystem#constructor
  set_global $assembly/index/system
 )
 (func $assembly/index/NBodySystem#advance (; 19 ;) (type $iFv) (param $0 i32) (param $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  (local $13 i32)
  (local $14 i32)
  (local $15 f64)
  (local $16 f64)
  (local $17 f64)
  (local $18 f64)
  (local $19 f64)
  (local $20 f64)
  (local $21 f64)
  (local $22 f64)
  get_local $0
  i32.load
  set_local $2
  block $~lib/array/Array<Body>#get:length|inlined.1 (result i32)
   get_local $2
   i32.load offset=4
  end
  set_local $3
  block $break|0
   i32.const 0
   set_local $4
   loop $repeat|0
    get_local $4
    get_local $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    block
     get_local $2
     get_local $4
     call $~lib/array/Array<Body>#__unchecked_get
     set_local $5
     get_local $5
     f64.load
     set_local $6
     get_local $5
     f64.load offset=8
     set_local $7
     get_local $5
     f64.load offset=16
     set_local $8
     get_local $5
     f64.load offset=24
     set_local $9
     get_local $5
     f64.load offset=32
     set_local $10
     get_local $5
     f64.load offset=40
     set_local $11
     get_local $5
     f64.load offset=48
     set_local $12
     block $break|1
      get_local $4
      i32.const 1
      i32.add
      set_local $13
      loop $repeat|1
       get_local $13
       get_local $3
       i32.lt_u
       i32.eqz
       br_if $break|1
       block
        get_local $2
        get_local $13
        call $~lib/array/Array<Body>#__unchecked_get
        set_local $14
        get_local $6
        get_local $14
        f64.load
        f64.sub
        set_local $15
        get_local $7
        get_local $14
        f64.load offset=8
        f64.sub
        set_local $16
        get_local $8
        get_local $14
        f64.load offset=16
        f64.sub
        set_local $17
        get_local $15
        get_local $15
        f64.mul
        get_local $16
        get_local $16
        f64.mul
        f64.add
        get_local $17
        get_local $17
        f64.mul
        f64.add
        set_local $18
        block $~lib/math/NativeMath.sqrt|inlined.0 (result f64)
         get_local $18
         f64.sqrt
        end
        set_local $19
        get_local $1
        get_local $18
        get_local $19
        f64.mul
        f64.div
        set_local $20
        get_local $12
        get_local $20
        f64.mul
        set_local $21
        get_local $14
        f64.load offset=48
        get_local $20
        f64.mul
        set_local $22
        get_local $9
        get_local $15
        get_local $22
        f64.mul
        f64.sub
        set_local $9
        get_local $10
        get_local $16
        get_local $22
        f64.mul
        f64.sub
        set_local $10
        get_local $11
        get_local $17
        get_local $22
        f64.mul
        f64.sub
        set_local $11
        get_local $14
        get_local $14
        f64.load offset=24
        get_local $15
        get_local $21
        f64.mul
        f64.add
        f64.store offset=24
        get_local $14
        get_local $14
        f64.load offset=32
        get_local $16
        get_local $21
        f64.mul
        f64.add
        f64.store offset=32
        get_local $14
        get_local $14
        f64.load offset=40
        get_local $17
        get_local $21
        f64.mul
        f64.add
        f64.store offset=40
       end
       get_local $13
       i32.const 1
       i32.add
       set_local $13
       br $repeat|1
       unreachable
      end
      unreachable
     end
     get_local $5
     get_local $9
     f64.store offset=24
     get_local $5
     get_local $10
     f64.store offset=32
     get_local $5
     get_local $11
     f64.store offset=40
     get_local $5
     get_local $5
     f64.load
     get_local $1
     get_local $9
     f64.mul
     f64.add
     f64.store
     get_local $5
     get_local $5
     f64.load offset=8
     get_local $1
     get_local $10
     f64.mul
     f64.add
     f64.store offset=8
     get_local $5
     get_local $5
     f64.load offset=16
     get_local $1
     get_local $11
     f64.mul
     f64.add
     f64.store offset=16
    end
    get_local $4
    i32.const 1
    i32.add
    set_local $4
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $assembly/index/NBodySystem#energy (; 20 ;) (type $iF) (param $0 i32) (result f64)
  (local $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  (local $13 i32)
  (local $14 i32)
  (local $15 f64)
  (local $16 f64)
  (local $17 f64)
  (local $18 f64)
  f64.const 0
  set_local $1
  get_local $0
  i32.load
  set_local $2
  block $break|0
   block
    i32.const 0
    set_local $3
    block $~lib/array/Array<Body>#get:length|inlined.2 (result i32)
     get_local $2
     i32.load offset=4
    end
    set_local $4
   end
   loop $repeat|0
    get_local $3
    get_local $4
    i32.lt_u
    i32.eqz
    br_if $break|0
    block
     get_local $2
     get_local $3
     call $~lib/array/Array<Body>#__unchecked_get
     set_local $5
     get_local $5
     f64.load
     set_local $6
     get_local $5
     f64.load offset=8
     set_local $7
     get_local $5
     f64.load offset=16
     set_local $8
     get_local $5
     f64.load offset=24
     set_local $9
     get_local $5
     f64.load offset=32
     set_local $10
     get_local $5
     f64.load offset=40
     set_local $11
     get_local $5
     f64.load offset=48
     set_local $12
     get_local $1
     f64.const 0.5
     get_local $12
     f64.mul
     get_local $9
     get_local $9
     f64.mul
     get_local $10
     get_local $10
     f64.mul
     f64.add
     get_local $11
     get_local $11
     f64.mul
     f64.add
     f64.mul
     f64.add
     set_local $1
     block $break|1
      get_local $3
      i32.const 1
      i32.add
      set_local $13
      loop $repeat|1
       get_local $13
       get_local $4
       i32.lt_u
       i32.eqz
       br_if $break|1
       block
        get_local $2
        get_local $13
        call $~lib/array/Array<Body>#__unchecked_get
        set_local $14
        get_local $6
        get_local $14
        f64.load
        f64.sub
        set_local $15
        get_local $7
        get_local $14
        f64.load offset=8
        f64.sub
        set_local $16
        get_local $8
        get_local $14
        f64.load offset=16
        f64.sub
        set_local $17
        block $~lib/math/NativeMath.sqrt|inlined.1 (result f64)
         get_local $15
         get_local $15
         f64.mul
         get_local $16
         get_local $16
         f64.mul
         f64.add
         get_local $17
         get_local $17
         f64.mul
         f64.add
         set_local $18
         get_local $18
         f64.sqrt
        end
        set_local $18
        get_local $1
        get_local $12
        get_local $14
        f64.load offset=48
        f64.mul
        get_local $18
        f64.div
        f64.sub
        set_local $1
       end
       get_local $13
       i32.const 1
       i32.add
       set_local $13
       br $repeat|1
       unreachable
      end
      unreachable
     end
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $1
 )
 (func $assembly/index/step (; 21 ;) (type $F) (result f64)
  get_global $assembly/index/system
  f64.const 0.01
  call $assembly/index/NBodySystem#advance
  get_global $assembly/index/system
  call $assembly/index/NBodySystem#energy
 )
 (func $assembly/index/bench (; 22 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  block $break|0
   i32.const 0
   set_local $1
   loop $repeat|0
    get_local $1
    get_local $0
    i32.lt_u
    i32.eqz
    br_if $break|0
    get_global $assembly/index/system
    f64.const 0.01
    call $assembly/index/NBodySystem#advance
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $assembly/index/getBody (; 23 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_global $assembly/index/system
  i32.load
  set_local $1
  get_local $0
  block $~lib/array/Array<Body>#get:length|inlined.4 (result i32)
   get_local $1
   i32.load offset=4
  end
  i32.lt_u
  if (result i32)
   get_local $1
   get_local $0
   call $~lib/array/Array<Body>#__get
  else   
   i32.const 0
  end
 )
 (func $start (; 24 ;) (type $v)
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
  nop
 )
 (func $null (; 25 ;) (type $v)
 )
)
