(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$iiddd (func (param i32 f64 f64 f64) (result i32)))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$iiddddddd (func (param i32 f64 f64 f64 f64 f64 f64 f64) (result i32)))
 (type $FUNCSIG$iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$d (func (result f64)))
 (type $FUNCSIG$vid (func (param i32 f64)))
 (type $FUNCSIG$di (func (param i32) (result f64)))
 (import "env" "memory" (memory $0 0))
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/math/NativeMath.PI f64 (f64.const 3.141592653589793))
 (global $assembly/index/SOLAR_MASS f64 (f64.const 39.47841760435743))
 (global $assembly/index/DAYS_PER_YEAR f64 (f64.const 365.24))
 (global $assembly/index/system (mut i32) (i32.const 0))
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/heap/__heap_base i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "init" (func $assembly/index/init))
 (export "step" (func $assembly/index/step))
 (export "bench" (func $assembly/index/bench))
 (export "getBody" (func $assembly/index/getBody))
 (start $start)
 (func $~lib/rt/stub/__retain (; 0 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/array/Array<assembly/index/Body>#get:length (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<assembly/index/Body>#__unchecked_get (; 2 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $~lib/rt/stub/__release (; 3 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $assembly/index/Body#offsetMomentum (; 4 ;) (type $FUNCSIG$iiddd) (param $0 i32) (param $1 f64) (param $2 f64) (param $3 f64) (result i32)
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
  call $~lib/rt/stub/__retain
 )
 (func $~lib/rt/stub/__alloc (; 5 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.set $2
  local.get $2
  local.get $0
  local.tee $3
  i32.const 1
  local.tee $4
  local.get $3
  local.get $4
  i32.gt_u
  select
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $5
  memory.size
  local.set $6
  local.get $5
  local.get $6
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $5
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
   local.set $3
   local.get $6
   local.tee $4
   local.get $3
   local.tee $7
   local.get $4
   local.get $7
   i32.gt_s
   select
   local.set $4
   local.get $4
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $5
  global.set $~lib/rt/stub/offset
  local.get $2
  i32.const 16
  i32.sub
  local.set $8
  local.get $8
  local.get $1
  i32.store offset=8
  local.get $8
  local.get $0
  i32.store offset=12
  local.get $2
 )
 (func $assembly/index/NBodySystem#constructor (; 6 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 f64)
  (local $3 f64)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f64)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  f64.const 0
  local.set $2
  f64.const 0
  local.set $3
  f64.const 0
  local.set $4
  local.get $1
  call $~lib/array/Array<assembly/index/Body>#get:length
  local.set $5
  block $break|0
   i32.const 0
   local.set $6
   loop $loop|0
    local.get $6
    local.get $5
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $6
    call $~lib/array/Array<assembly/index/Body>#__unchecked_get
    local.tee $7
    call $~lib/rt/stub/__retain
    local.set $8
    local.get $8
    f64.load offset=48
    local.set $9
    local.get $2
    local.get $8
    f64.load offset=24
    local.get $9
    f64.mul
    f64.add
    local.set $2
    local.get $3
    local.get $8
    f64.load offset=32
    local.get $9
    f64.mul
    f64.add
    local.set $3
    local.get $4
    local.get $8
    f64.load offset=40
    local.get $9
    f64.mul
    f64.add
    local.set $4
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    local.get $7
    call $~lib/rt/stub/__release
    local.get $8
    call $~lib/rt/stub/__release
    br $loop|0
   end
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/array/Array<assembly/index/Body>#__unchecked_get
  local.tee $8
  local.get $2
  local.get $3
  local.get $4
  call $assembly/index/Body#offsetMomentum
  call $~lib/rt/stub/__release
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 3
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  i32.store
  local.get $8
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $assembly/index/Body#constructor (; 7 ;) (type $FUNCSIG$iiddddddd) (param $0 i32) (param $1 f64) (param $2 f64) (param $3 f64) (param $4 f64) (param $5 f64) (param $6 f64) (param $7 f64) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 56
   i32.const 4
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
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
 (func $assembly/index/Sun (; 8 ;) (type $FUNCSIG$i) (result i32)
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
 (func $assembly/index/Jupiter (; 9 ;) (type $FUNCSIG$i) (result i32)
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
 (func $assembly/index/Saturn (; 10 ;) (type $FUNCSIG$i) (result i32)
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
 (func $assembly/index/Uranus (; 11 ;) (type $FUNCSIG$i) (result i32)
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
 (func $assembly/index/Neptune (; 12 ;) (type $FUNCSIG$i) (result i32)
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
 (func $~lib/util/memory/memcpy (; 13 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $break|0
   loop $continue|0
    local.get $2
    if (result i32)
     local.get $1
     i32.const 3
     i32.and
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $continue|0
   end
   unreachable
  end
  local.get $0
  i32.const 3
  i32.and
  i32.const 0
  i32.eq
  if
   block $break|1
    loop $continue|1
     local.get $2
     i32.const 16
     i32.ge_u
     i32.eqz
     br_if $break|1
     local.get $0
     local.get $1
     i32.load
     i32.store
     local.get $0
     i32.const 4
     i32.add
     local.get $1
     i32.const 4
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 8
     i32.add
     local.get $1
     i32.const 8
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 12
     i32.add
     local.get $1
     i32.const 12
     i32.add
     i32.load
     i32.store
     local.get $1
     i32.const 16
     i32.add
     local.set $1
     local.get $0
     i32.const 16
     i32.add
     local.set $0
     local.get $2
     i32.const 16
     i32.sub
     local.set $2
     br $continue|1
    end
    unreachable
   end
   local.get $2
   i32.const 8
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.get $1
    i32.const 4
    i32.add
    i32.load
    i32.store
    local.get $0
    i32.const 8
    i32.add
    local.set $0
    local.get $1
    i32.const 8
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    local.get $1
    i32.const 4
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 1
   i32.and
   if
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
   end
   return
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       local.get $0
       i32.const 3
       i32.and
       local.set $5
       local.get $5
       i32.const 1
       i32.eq
       br_if $case0|2
       local.get $5
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $5
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      local.get $1
      i32.load
      local.set $3
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      block $break|3
       loop $continue|3
        local.get $2
        i32.const 17
        i32.ge_u
        i32.eqz
        br_if $break|3
        local.get $1
        i32.const 1
        i32.add
        i32.load
        local.set $4
        local.get $0
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $4
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 5
        i32.add
        i32.load
        local.set $3
        local.get $0
        i32.const 4
        i32.add
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 9
        i32.add
        i32.load
        local.set $4
        local.get $0
        i32.const 8
        i32.add
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $4
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 13
        i32.add
        i32.load
        local.set $3
        local.get $0
        i32.const 12
        i32.add
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 16
        i32.add
        local.set $1
        local.get $0
        i32.const 16
        i32.add
        local.set $0
        local.get $2
        i32.const 16
        i32.sub
        local.set $2
        br $continue|3
       end
       unreachable
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $3
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.load8_u
     i32.store8
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.load8_u
     i32.store8
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     block $break|4
      loop $continue|4
       local.get $2
       i32.const 18
       i32.ge_u
       i32.eqz
       br_if $break|4
       local.get $1
       i32.const 2
       i32.add
       i32.load
       local.set $4
       local.get $0
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $4
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 6
       i32.add
       i32.load
       local.set $3
       local.get $0
       i32.const 4
       i32.add
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 10
       i32.add
       i32.load
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $4
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 14
       i32.add
       i32.load
       local.set $3
       local.get $0
       i32.const 12
       i32.add
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 16
       i32.add
       local.set $1
       local.get $0
       i32.const 16
       i32.add
       local.set $0
       local.get $2
       i32.const 16
       i32.sub
       local.set $2
       br $continue|4
      end
      unreachable
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $3
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    block $break|5
     loop $continue|5
      local.get $2
      i32.const 19
      i32.ge_u
      i32.eqz
      br_if $break|5
      local.get $1
      i32.const 3
      i32.add
      i32.load
      local.set $4
      local.get $0
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $4
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 7
      i32.add
      i32.load
      local.set $3
      local.get $0
      i32.const 4
      i32.add
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 11
      i32.add
      i32.load
      local.set $4
      local.get $0
      i32.const 8
      i32.add
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $4
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 15
      i32.add
      i32.load
      local.set $3
      local.get $0
      i32.const 12
      i32.add
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      local.get $0
      i32.const 16
      i32.add
      local.set $0
      local.get $2
      i32.const 16
      i32.sub
      local.set $2
      br $continue|5
     end
     unreachable
    end
    br $break|2
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (; 14 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $5
   local.get $4
   i32.eq
   if
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $4
   local.get $3
   i32.add
   local.get $5
   i32.le_u
   if (result i32)
    i32.const 1
   else    
    local.get $5
    local.get $3
    i32.add
    local.get $4
    i32.le_u
   end
   if
    local.get $5
    local.get $4
    local.get $3
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $5
   local.get $4
   i32.lt_u
   if
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     block $break|0
      loop $continue|0
       local.get $5
       i32.const 7
       i32.and
       i32.eqz
       br_if $break|0
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       local.get $5
       local.tee $6
       i32.const 1
       i32.add
       local.set $5
       local.get $6
       local.get $4
       local.tee $6
       i32.const 1
       i32.add
       local.set $4
       local.get $6
       i32.load8_u
       i32.store8
       br $continue|0
      end
      unreachable
     end
     block $break|1
      loop $continue|1
       local.get $3
       i32.const 8
       i32.ge_u
       i32.eqz
       br_if $break|1
       local.get $5
       local.get $4
       i64.load
       i64.store
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       i32.const 8
       i32.add
       local.set $5
       local.get $4
       i32.const 8
       i32.add
       local.set $4
       br $continue|1
      end
      unreachable
     end
    end
    block $break|2
     loop $continue|2
      local.get $3
      i32.eqz
      br_if $break|2
      local.get $5
      local.tee $6
      i32.const 1
      i32.add
      local.set $5
      local.get $6
      local.get $4
      local.tee $6
      i32.const 1
      i32.add
      local.set $4
      local.get $6
      i32.load8_u
      i32.store8
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
      br $continue|2
     end
     unreachable
    end
   else    
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     block $break|3
      loop $continue|3
       local.get $5
       local.get $3
       i32.add
       i32.const 7
       i32.and
       i32.eqz
       br_if $break|3
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $5
       local.get $3
       i32.const 1
       i32.sub
       local.tee $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i32.load8_u
       i32.store8
       br $continue|3
      end
      unreachable
     end
     block $break|4
      loop $continue|4
       local.get $3
       i32.const 8
       i32.ge_u
       i32.eqz
       br_if $break|4
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       local.get $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i64.load
       i64.store
       br $continue|4
      end
      unreachable
     end
    end
    block $break|5
     loop $continue|5
      local.get $3
      i32.eqz
      br_if $break|5
      local.get $5
      local.get $3
      i32.const 1
      i32.sub
      local.tee $3
      i32.add
      local.get $4
      local.get $3
      i32.add
      i32.load8_u
      i32.store8
      br $continue|5
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/rt/__allocArray (; 15 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 16
  local.get $2
  call $~lib/rt/stub/__alloc
  local.set $4
  local.get $0
  local.get $1
  i32.shl
  local.set $5
  local.get $5
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.set $6
  local.get $4
  local.get $6
  call $~lib/rt/stub/__retain
  i32.store
  local.get $4
  local.get $6
  i32.store offset=4
  local.get $4
  local.get $5
  i32.store offset=8
  local.get $4
  local.get $0
  i32.store offset=12
  local.get $3
  if
   local.get $6
   local.get $3
   local.get $5
   call $~lib/memory/memory.copy
  end
  local.get $4
 )
 (func $assembly/index/init (; 16 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 0
  i32.const 5
  i32.const 2
  i32.const 5
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $0
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  call $assembly/index/Sun
  local.tee $2
  call $~lib/rt/stub/__retain
  i32.store
  local.get $1
  call $assembly/index/Jupiter
  local.tee $3
  call $~lib/rt/stub/__retain
  i32.store offset=4
  local.get $1
  call $assembly/index/Saturn
  local.tee $4
  call $~lib/rt/stub/__retain
  i32.store offset=8
  local.get $1
  call $assembly/index/Uranus
  local.tee $5
  call $~lib/rt/stub/__retain
  i32.store offset=12
  local.get $1
  call $assembly/index/Neptune
  local.tee $6
  call $~lib/rt/stub/__retain
  i32.store offset=16
  local.get $0
  call $assembly/index/NBodySystem#constructor
  local.set $0
  global.get $assembly/index/system
  call $~lib/rt/stub/__release
  local.get $0
  global.set $assembly/index/system
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
 )
 (func $assembly/index/NBodySystem#advance (; 17 ;) (type $FUNCSIG$vid) (param $0 i32) (param $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f64)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  (local $13 f64)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 f64)
  (local $18 f64)
  (local $19 f64)
  (local $20 f64)
  (local $21 f64)
  (local $22 f64)
  (local $23 f64)
  (local $24 f64)
  local.get $0
  i32.load
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $2
  call $~lib/array/Array<assembly/index/Body>#get:length
  local.set $3
  block $break|0
   i32.const 0
   local.set $4
   loop $loop|0
    local.get $4
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    local.get $4
    call $~lib/array/Array<assembly/index/Body>#__unchecked_get
    local.tee $5
    call $~lib/rt/stub/__retain
    local.set $6
    local.get $6
    f64.load
    local.set $7
    local.get $6
    f64.load offset=8
    local.set $8
    local.get $6
    f64.load offset=16
    local.set $9
    local.get $6
    f64.load offset=24
    local.set $10
    local.get $6
    f64.load offset=32
    local.set $11
    local.get $6
    f64.load offset=40
    local.set $12
    local.get $6
    f64.load offset=48
    local.set $13
    block $break|1
     local.get $4
     i32.const 1
     i32.add
     local.set $14
     loop $loop|1
      local.get $14
      local.get $3
      i32.lt_u
      i32.eqz
      br_if $break|1
      local.get $2
      local.get $14
      call $~lib/array/Array<assembly/index/Body>#__unchecked_get
      local.tee $15
      call $~lib/rt/stub/__retain
      local.set $16
      local.get $7
      local.get $16
      f64.load
      f64.sub
      local.set $17
      local.get $8
      local.get $16
      f64.load offset=8
      f64.sub
      local.set $18
      local.get $9
      local.get $16
      f64.load offset=16
      f64.sub
      local.set $19
      local.get $17
      local.get $17
      f64.mul
      local.get $18
      local.get $18
      f64.mul
      f64.add
      local.get $19
      local.get $19
      f64.mul
      f64.add
      local.set $20
      local.get $20
      local.set $21
      local.get $21
      f64.sqrt
      local.set $21
      local.get $1
      local.get $20
      local.get $21
      f64.mul
      f64.div
      local.set $22
      local.get $13
      local.get $22
      f64.mul
      local.set $23
      local.get $16
      f64.load offset=48
      local.get $22
      f64.mul
      local.set $24
      local.get $10
      local.get $17
      local.get $24
      f64.mul
      f64.sub
      local.set $10
      local.get $11
      local.get $18
      local.get $24
      f64.mul
      f64.sub
      local.set $11
      local.get $12
      local.get $19
      local.get $24
      f64.mul
      f64.sub
      local.set $12
      local.get $16
      local.get $16
      f64.load offset=24
      local.get $17
      local.get $23
      f64.mul
      f64.add
      f64.store offset=24
      local.get $16
      local.get $16
      f64.load offset=32
      local.get $18
      local.get $23
      f64.mul
      f64.add
      f64.store offset=32
      local.get $16
      local.get $16
      f64.load offset=40
      local.get $19
      local.get $23
      f64.mul
      f64.add
      f64.store offset=40
      local.get $14
      i32.const 1
      i32.add
      local.set $14
      local.get $15
      call $~lib/rt/stub/__release
      local.get $16
      call $~lib/rt/stub/__release
      br $loop|1
     end
     unreachable
    end
    local.get $6
    local.get $10
    f64.store offset=24
    local.get $6
    local.get $11
    f64.store offset=32
    local.get $6
    local.get $12
    f64.store offset=40
    local.get $6
    local.get $6
    f64.load
    local.get $1
    local.get $10
    f64.mul
    f64.add
    f64.store
    local.get $6
    local.get $6
    f64.load offset=8
    local.get $1
    local.get $11
    f64.mul
    f64.add
    f64.store offset=8
    local.get $6
    local.get $6
    f64.load offset=16
    local.get $1
    local.get $12
    f64.mul
    f64.add
    f64.store offset=16
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    local.get $5
    call $~lib/rt/stub/__release
    local.get $6
    call $~lib/rt/stub/__release
    br $loop|0
   end
   unreachable
  end
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $assembly/index/NBodySystem#energy (; 18 ;) (type $FUNCSIG$di) (param $0 i32) (result f64)
  (local $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f64)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  (local $13 f64)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 f64)
  (local $18 f64)
  (local $19 f64)
  (local $20 f64)
  f64.const 0
  local.set $1
  local.get $0
  i32.load
  call $~lib/rt/stub/__retain
  local.set $2
  block $break|0
   i32.const 0
   local.set $3
   local.get $2
   call $~lib/array/Array<assembly/index/Body>#get:length
   local.set $4
   loop $loop|0
    local.get $3
    local.get $4
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    local.get $3
    call $~lib/array/Array<assembly/index/Body>#__unchecked_get
    local.tee $5
    call $~lib/rt/stub/__retain
    local.set $6
    local.get $6
    f64.load
    local.set $7
    local.get $6
    f64.load offset=8
    local.set $8
    local.get $6
    f64.load offset=16
    local.set $9
    local.get $6
    f64.load offset=24
    local.set $10
    local.get $6
    f64.load offset=32
    local.set $11
    local.get $6
    f64.load offset=40
    local.set $12
    local.get $6
    f64.load offset=48
    local.set $13
    local.get $1
    f64.const 0.5
    local.get $13
    f64.mul
    local.get $10
    local.get $10
    f64.mul
    local.get $11
    local.get $11
    f64.mul
    f64.add
    local.get $12
    local.get $12
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.set $1
    block $break|1
     local.get $3
     i32.const 1
     i32.add
     local.set $14
     loop $loop|1
      local.get $14
      local.get $4
      i32.lt_u
      i32.eqz
      br_if $break|1
      local.get $2
      local.get $14
      call $~lib/array/Array<assembly/index/Body>#__unchecked_get
      local.tee $15
      call $~lib/rt/stub/__retain
      local.set $16
      local.get $7
      local.get $16
      f64.load
      f64.sub
      local.set $17
      local.get $8
      local.get $16
      f64.load offset=8
      f64.sub
      local.set $18
      local.get $9
      local.get $16
      f64.load offset=16
      f64.sub
      local.set $19
      local.get $17
      local.get $17
      f64.mul
      local.get $18
      local.get $18
      f64.mul
      f64.add
      local.get $19
      local.get $19
      f64.mul
      f64.add
      local.set $20
      local.get $20
      f64.sqrt
      local.set $20
      local.get $1
      local.get $13
      local.get $16
      f64.load offset=48
      f64.mul
      local.get $20
      f64.div
      f64.sub
      local.set $1
      local.get $14
      i32.const 1
      i32.add
      local.set $14
      local.get $15
      call $~lib/rt/stub/__release
      local.get $16
      call $~lib/rt/stub/__release
      br $loop|1
     end
     unreachable
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    local.get $5
    call $~lib/rt/stub/__release
    local.get $6
    call $~lib/rt/stub/__release
    br $loop|0
   end
   unreachable
  end
  local.get $1
  local.set $13
  local.get $2
  call $~lib/rt/stub/__release
  local.get $13
 )
 (func $assembly/index/step (; 19 ;) (type $FUNCSIG$d) (result f64)
  global.get $assembly/index/system
  f64.const 0.01
  call $assembly/index/NBodySystem#advance
  global.get $assembly/index/system
  call $assembly/index/NBodySystem#energy
 )
 (func $assembly/index/bench (; 20 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  block $break|0
   i32.const 0
   local.set $1
   loop $loop|0
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
    br $loop|0
   end
   unreachable
  end
 )
 (func $assembly/index/getBody (; 21 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $assembly/index/system
  i32.load
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  local.get $1
  call $~lib/array/Array<assembly/index/Body>#get:length
  i32.lt_u
  if (result i32)
   local.get $1
   local.get $0
   call $~lib/array/Array<assembly/index/Body>#__unchecked_get
   local.tee $2
   local.tee $3
  else   
   i32.const 0
   call $~lib/rt/stub/__retain
   local.tee $4
  end
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $start (; 22 ;) (type $FUNCSIG$v)
  global.get $~lib/heap/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
 )
 (func $null (; 23 ;) (type $FUNCSIG$v)
 )
)
