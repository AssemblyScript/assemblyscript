(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$iiddd (func (param i32 f64 f64 f64) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$iiddddddd (func (param i32 f64 f64 f64 f64 f64 f64 f64) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$d (func (result f64)))
 (type $FUNCSIG$vid (func (param i32 f64)))
 (type $FUNCSIG$di (func (param i32) (result f64)))
 (type $FUNCSIG$vi (func (param i32)))
 (import "env" "memory" (memory $0 1))
 (data (i32.const 8) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 40) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/math/NativeMath.PI f64 (f64.const 3.141592653589793))
 (global $assembly/index/SOLAR_MASS f64 (f64.const 39.47841760435743))
 (global $assembly/index/DAYS_PER_YEAR f64 (f64.const 365.24))
 (global $assembly/index/system (mut i32) (i32.const 0))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 100))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "init" (func $assembly/index/init))
 (export "step" (func $assembly/index/step))
 (export "bench" (func $assembly/index/bench))
 (export "getBody" (func $assembly/index/getBody))
 (start $start)
 (func $start:~lib/allocator/arena (; 1 ;) (type $FUNCSIG$v)
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
 )
 (func $start:assembly/index (; 2 ;) (type $FUNCSIG$v)
  call $start:~lib/allocator/arena
 )
 (func $~lib/array/Array<Body>#__unchecked_get (; 3 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load
  local.set $2
  local.get $1
  local.set $3
  i32.const 0
  local.set $4
  local.get $2
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  local.get $4
  i32.add
  i32.load offset=8
 )
 (func $~lib/array/Array<Body>#__get (; 4 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.set $2
  local.get $1
  local.get $2
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $2
   local.set $3
   local.get $1
   local.set $4
   i32.const 0
   local.set $5
   local.get $3
   local.get $4
   i32.const 2
   i32.shl
   i32.add
   local.get $5
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $assembly/index/Body#offsetMomentum (; 5 ;) (type $FUNCSIG$iiddd) (param $0 i32) (param $1 f64) (param $2 f64) (param $3 f64) (result i32)
  local.get $0
  local.get $1
  f64.neg
  global.get $assembly/index/SOLAR_MASS
  f64.div
  f64.store offset=24
  local.get $0
  local.get $2
  f64.neg
  global.get $assembly/index/SOLAR_MASS
  f64.div
  f64.store offset=32
  local.get $0
  local.get $3
  f64.neg
  global.get $assembly/index/SOLAR_MASS
  f64.div
  f64.store offset=40
  local.get $0
 )
 (func $~lib/allocator/arena/__memory_allocate (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/memory/memory.allocate (; 7 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/allocator/arena/__memory_allocate
  return
 )
 (func $assembly/index/NBodySystem#constructor (; 8 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 f64)
  (local $3 f64)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f64)
  f64.const 0
  local.set $2
  f64.const 0
  local.set $3
  f64.const 0
  local.set $4
  block $~lib/array/Array<Body>#get:length|inlined.0 (result i32)
   local.get $1
   local.set $5
   local.get $5
   i32.load offset=4
  end
  local.set $6
  block $break|0
   i32.const 0
   local.set $5
   loop $repeat|0
    local.get $5
    local.get $6
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     local.get $1
     local.get $5
     call $~lib/array/Array<Body>#__unchecked_get
     local.set $7
     local.get $7
     f64.load offset=48
     local.set $8
     local.get $2
     local.get $7
     f64.load offset=24
     local.get $8
     f64.mul
     f64.add
     local.set $2
     local.get $3
     local.get $7
     f64.load offset=32
     local.get $8
     f64.mul
     f64.add
     local.set $3
     local.get $4
     local.get $7
     f64.load offset=40
     local.get $8
     f64.mul
     f64.add
     local.set $4
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/array/Array<Body>#__get
  local.get $2
  local.get $3
  local.get $4
  call $assembly/index/Body#offsetMomentum
  drop
  local.get $0
  i32.eqz
  if
   i32.const 4
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
  local.get $1
  i32.store
  local.get $0
 )
 (func $assembly/index/Body#constructor (; 9 ;) (type $FUNCSIG$iiddddddd) (param $0 i32) (param $1 f64) (param $2 f64) (param $3 f64) (param $4 f64) (param $5 f64) (param $6 f64) (param $7 f64) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 56
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
  local.get $1
  f64.store
  local.get $0
  local.get $2
  f64.store offset=8
  local.get $0
  local.get $3
  f64.store offset=16
  local.get $0
  local.get $4
  f64.store offset=24
  local.get $0
  local.get $5
  f64.store offset=32
  local.get $0
  local.get $6
  f64.store offset=40
  local.get $0
  local.get $7
  f64.store offset=48
  local.get $0
 )
 (func $assembly/index/Sun (; 10 ;) (type $FUNCSIG$i) (result i32)
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  global.get $assembly/index/SOLAR_MASS
  call $assembly/index/Body#constructor
 )
 (func $assembly/index/Jupiter (; 11 ;) (type $FUNCSIG$i) (result i32)
  i32.const 0
  f64.const 4.841431442464721
  f64.const -1.1603200440274284
  f64.const -0.10362204447112311
  f64.const 0.001660076642744037
  global.get $assembly/index/DAYS_PER_YEAR
  f64.mul
  f64.const 0.007699011184197404
  global.get $assembly/index/DAYS_PER_YEAR
  f64.mul
  f64.const -6.90460016972063e-05
  global.get $assembly/index/DAYS_PER_YEAR
  f64.mul
  f64.const 9.547919384243266e-04
  global.get $assembly/index/SOLAR_MASS
  f64.mul
  call $assembly/index/Body#constructor
 )
 (func $assembly/index/Saturn (; 12 ;) (type $FUNCSIG$i) (result i32)
  i32.const 0
  f64.const 8.34336671824458
  f64.const 4.124798564124305
  f64.const -0.4035234171143214
  f64.const -0.002767425107268624
  global.get $assembly/index/DAYS_PER_YEAR
  f64.mul
  f64.const 0.004998528012349172
  global.get $assembly/index/DAYS_PER_YEAR
  f64.mul
  f64.const 2.3041729757376393e-05
  global.get $assembly/index/DAYS_PER_YEAR
  f64.mul
  f64.const 2.858859806661308e-04
  global.get $assembly/index/SOLAR_MASS
  f64.mul
  call $assembly/index/Body#constructor
 )
 (func $assembly/index/Uranus (; 13 ;) (type $FUNCSIG$i) (result i32)
  i32.const 0
  f64.const 12.894369562139131
  f64.const -15.111151401698631
  f64.const -0.22330757889265573
  f64.const 0.002964601375647616
  global.get $assembly/index/DAYS_PER_YEAR
  f64.mul
  f64.const 2.3784717395948095e-03
  global.get $assembly/index/DAYS_PER_YEAR
  f64.mul
  f64.const -2.9658956854023756e-05
  global.get $assembly/index/DAYS_PER_YEAR
  f64.mul
  f64.const 4.366244043351563e-05
  global.get $assembly/index/SOLAR_MASS
  f64.mul
  call $assembly/index/Body#constructor
 )
 (func $assembly/index/Neptune (; 14 ;) (type $FUNCSIG$i) (result i32)
  i32.const 0
  f64.const 15.379697114850917
  f64.const -25.919314609987964
  f64.const 0.17925877295037118
  f64.const 2.6806777249038932e-03
  global.get $assembly/index/DAYS_PER_YEAR
  f64.mul
  f64.const 0.001628241700382423
  global.get $assembly/index/DAYS_PER_YEAR
  f64.mul
  f64.const -9.515922545197159e-05
  global.get $assembly/index/DAYS_PER_YEAR
  f64.mul
  f64.const 5.1513890204661145e-05
  global.get $assembly/index/SOLAR_MASS
  f64.mul
  call $assembly/index/Body#constructor
 )
 (func $~lib/internal/arraybuffer/computeSize (; 15 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 1
  i32.const 32
  local.get $0
  i32.const 8
  i32.add
  i32.const 1
  i32.sub
  i32.clz
  i32.sub
  i32.shl
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 16 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741816
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
   local.get $0
   call $~lib/internal/arraybuffer/computeSize
   local.set $2
   local.get $2
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.0
  end
  local.set $1
  local.get $1
  local.get $0
  i32.store
  local.get $1
 )
 (func $~lib/internal/memory/memset (; 17 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  local.get $2
  i32.eqz
  if
   return
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
   return
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
   return
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
   return
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
   return
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
   return
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
 )
 (func $~lib/array/Array<Body>#constructor (; 18 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
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
  local.get $1
  i32.const 2
  i32.shl
  local.set $2
  local.get $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.set $3
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 8
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
  end
  local.get $3
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  block $~lib/memory/memory.fill|inlined.0
   local.get $3
   i32.const 8
   i32.add
   local.set $4
   i32.const 0
   local.set $5
   local.get $2
   local.set $6
   local.get $4
   local.get $5
   local.get $6
   call $~lib/internal/memory/memset
  end
  local.get $0
 )
 (func $~lib/array/Array<Body>#__unchecked_set (; 19 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load
  local.set $3
  local.get $1
  local.set $4
  local.get $2
  local.set $5
  i32.const 0
  local.set $6
  local.get $3
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  local.get $6
  i32.add
  local.get $5
  i32.store offset=8
 )
 (func $assembly/index/init (; 20 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  block (result i32)
   i32.const 0
   i32.const 5
   call $~lib/array/Array<Body>#constructor
   local.set $0
   local.get $0
   i32.const 0
   call $assembly/index/Sun
   call $~lib/array/Array<Body>#__unchecked_set
   local.get $0
   i32.const 1
   call $assembly/index/Jupiter
   call $~lib/array/Array<Body>#__unchecked_set
   local.get $0
   i32.const 2
   call $assembly/index/Saturn
   call $~lib/array/Array<Body>#__unchecked_set
   local.get $0
   i32.const 3
   call $assembly/index/Uranus
   call $~lib/array/Array<Body>#__unchecked_set
   local.get $0
   i32.const 4
   call $assembly/index/Neptune
   call $~lib/array/Array<Body>#__unchecked_set
   local.get $0
  end
  call $assembly/index/NBodySystem#constructor
  global.set $assembly/index/system
 )
 (func $assembly/index/NBodySystem#advance (; 21 ;) (type $FUNCSIG$vid) (param $0 i32) (param $1 f64)
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
  local.get $0
  i32.load
  local.set $2
  block $~lib/array/Array<Body>#get:length|inlined.1 (result i32)
   local.get $2
   local.set $3
   local.get $3
   i32.load offset=4
  end
  local.set $4
  block $break|0
   i32.const 0
   local.set $3
   loop $repeat|0
    local.get $3
    local.get $4
    i32.lt_u
    i32.eqz
    br_if $break|0
    block
     local.get $2
     local.get $3
     call $~lib/array/Array<Body>#__unchecked_get
     local.set $5
     local.get $5
     f64.load
     local.set $6
     local.get $5
     f64.load offset=8
     local.set $7
     local.get $5
     f64.load offset=16
     local.set $8
     local.get $5
     f64.load offset=24
     local.set $9
     local.get $5
     f64.load offset=32
     local.set $10
     local.get $5
     f64.load offset=40
     local.set $11
     local.get $5
     f64.load offset=48
     local.set $12
     block $break|1
      local.get $3
      i32.const 1
      i32.add
      local.set $13
      loop $repeat|1
       local.get $13
       local.get $4
       i32.lt_u
       i32.eqz
       br_if $break|1
       block
        local.get $2
        local.get $13
        call $~lib/array/Array<Body>#__unchecked_get
        local.set $14
        local.get $6
        local.get $14
        f64.load
        f64.sub
        local.set $15
        local.get $7
        local.get $14
        f64.load offset=8
        f64.sub
        local.set $16
        local.get $8
        local.get $14
        f64.load offset=16
        f64.sub
        local.set $17
        local.get $15
        local.get $15
        f64.mul
        local.get $16
        local.get $16
        f64.mul
        f64.add
        local.get $17
        local.get $17
        f64.mul
        f64.add
        local.set $18
        block $~lib/math/NativeMath.sqrt|inlined.0 (result f64)
         local.get $18
         local.set $19
         local.get $19
         f64.sqrt
        end
        local.set $19
        local.get $1
        local.get $18
        local.get $19
        f64.mul
        f64.div
        local.set $20
        local.get $12
        local.get $20
        f64.mul
        local.set $21
        local.get $14
        f64.load offset=48
        local.get $20
        f64.mul
        local.set $22
        local.get $9
        local.get $15
        local.get $22
        f64.mul
        f64.sub
        local.set $9
        local.get $10
        local.get $16
        local.get $22
        f64.mul
        f64.sub
        local.set $10
        local.get $11
        local.get $17
        local.get $22
        f64.mul
        f64.sub
        local.set $11
        local.get $14
        local.get $14
        f64.load offset=24
        local.get $15
        local.get $21
        f64.mul
        f64.add
        f64.store offset=24
        local.get $14
        local.get $14
        f64.load offset=32
        local.get $16
        local.get $21
        f64.mul
        f64.add
        f64.store offset=32
        local.get $14
        local.get $14
        f64.load offset=40
        local.get $17
        local.get $21
        f64.mul
        f64.add
        f64.store offset=40
       end
       local.get $13
       i32.const 1
       i32.add
       local.set $13
       br $repeat|1
       unreachable
      end
      unreachable
     end
     local.get $5
     local.get $9
     f64.store offset=24
     local.get $5
     local.get $10
     f64.store offset=32
     local.get $5
     local.get $11
     f64.store offset=40
     local.get $5
     local.get $5
     f64.load
     local.get $1
     local.get $9
     f64.mul
     f64.add
     f64.store
     local.get $5
     local.get $5
     f64.load offset=8
     local.get $1
     local.get $10
     f64.mul
     f64.add
     f64.store offset=8
     local.get $5
     local.get $5
     f64.load offset=16
     local.get $1
     local.get $11
     f64.mul
     f64.add
     f64.store offset=16
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $assembly/index/NBodySystem#energy (; 22 ;) (type $FUNCSIG$di) (param $0 i32) (result f64)
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
  local.set $1
  local.get $0
  i32.load
  local.set $2
  block $break|0
   block
    i32.const 0
    local.set $3
    block $~lib/array/Array<Body>#get:length|inlined.2 (result i32)
     local.get $2
     local.set $4
     local.get $4
     i32.load offset=4
    end
    local.set $4
   end
   loop $repeat|0
    local.get $3
    local.get $4
    i32.lt_u
    i32.eqz
    br_if $break|0
    block
     local.get $2
     local.get $3
     call $~lib/array/Array<Body>#__unchecked_get
     local.set $5
     local.get $5
     f64.load
     local.set $6
     local.get $5
     f64.load offset=8
     local.set $7
     local.get $5
     f64.load offset=16
     local.set $8
     local.get $5
     f64.load offset=24
     local.set $9
     local.get $5
     f64.load offset=32
     local.set $10
     local.get $5
     f64.load offset=40
     local.set $11
     local.get $5
     f64.load offset=48
     local.set $12
     local.get $1
     f64.const 0.5
     local.get $12
     f64.mul
     local.get $9
     local.get $9
     f64.mul
     local.get $10
     local.get $10
     f64.mul
     f64.add
     local.get $11
     local.get $11
     f64.mul
     f64.add
     f64.mul
     f64.add
     local.set $1
     block $break|1
      local.get $3
      i32.const 1
      i32.add
      local.set $13
      loop $repeat|1
       local.get $13
       local.get $4
       i32.lt_u
       i32.eqz
       br_if $break|1
       block
        local.get $2
        local.get $13
        call $~lib/array/Array<Body>#__unchecked_get
        local.set $14
        local.get $6
        local.get $14
        f64.load
        f64.sub
        local.set $15
        local.get $7
        local.get $14
        f64.load offset=8
        f64.sub
        local.set $16
        local.get $8
        local.get $14
        f64.load offset=16
        f64.sub
        local.set $17
        block $~lib/math/NativeMath.sqrt|inlined.1 (result f64)
         local.get $15
         local.get $15
         f64.mul
         local.get $16
         local.get $16
         f64.mul
         f64.add
         local.get $17
         local.get $17
         f64.mul
         f64.add
         local.set $18
         local.get $18
         f64.sqrt
        end
        local.set $18
        local.get $1
        local.get $12
        local.get $14
        f64.load offset=48
        f64.mul
        local.get $18
        f64.div
        f64.sub
        local.set $1
       end
       local.get $13
       i32.const 1
       i32.add
       local.set $13
       br $repeat|1
       unreachable
      end
      unreachable
     end
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $1
 )
 (func $assembly/index/step (; 23 ;) (type $FUNCSIG$d) (result f64)
  global.get $assembly/index/system
  f64.const 0.01
  call $assembly/index/NBodySystem#advance
  global.get $assembly/index/system
  call $assembly/index/NBodySystem#energy
 )
 (func $assembly/index/bench (; 24 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  block $break|0
   i32.const 0
   local.set $1
   loop $repeat|0
    local.get $1
    local.get $0
    i32.lt_u
    i32.eqz
    br_if $break|0
    global.get $assembly/index/system
    f64.const 0.01
    call $assembly/index/NBodySystem#advance
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $assembly/index/getBody (; 25 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $assembly/index/system
  i32.load
  local.set $1
  local.get $0
  block $~lib/array/Array<Body>#get:length|inlined.4 (result i32)
   local.get $1
   local.set $2
   local.get $2
   i32.load offset=4
  end
  i32.lt_u
  if (result i32)
   local.get $1
   local.get $0
   call $~lib/array/Array<Body>#__get
  else   
   i32.const 0
  end
 )
 (func $start (; 26 ;) (type $FUNCSIG$v)
  call $start:assembly/index
 )
 (func $null (; 27 ;) (type $FUNCSIG$v)
 )
)
