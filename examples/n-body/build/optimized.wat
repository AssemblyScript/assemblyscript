(module
 (type $v (func))
 (type $ii (func (param i32) (result i32)))
 (type $F (func (result f64)))
 (type $iF (func (param i32) (result f64)))
 (type $iv (func (param i32)))
 (type $FUNCSIG$iddddddd (func (param f64 f64 f64 f64 f64 f64 f64) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (import "env" "memory" (memory $0 1))
 (data (i32.const 8) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $assembly/index/system (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "init" (func $assembly/index/init))
 (export "step" (func $assembly/index/step))
 (export "bench" (func $assembly/index/bench))
 (export "getBody" (func $assembly/index/getBody))
 (start $start)
 (func $~lib/allocator/arena/__memory_allocate (; 0 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $assembly/index/Body#constructor (; 1 ;) (type $FUNCSIG$iddddddd) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 f64) (param $4 f64) (param $5 f64) (param $6 f64) (result i32)
  (local $7 i32)
  i32.const 56
  call $~lib/allocator/arena/__memory_allocate
  tee_local $7
  get_local $0
  f64.store
  get_local $7
  get_local $1
  f64.store offset=8
  get_local $7
  get_local $2
  f64.store offset=16
  get_local $7
  get_local $3
  f64.store offset=24
  get_local $7
  get_local $4
  f64.store offset=32
  get_local $7
  get_local $5
  f64.store offset=40
  get_local $7
  get_local $6
  f64.store offset=48
  get_local $7
 )
 (func $~lib/internal/memory/memset (; 2 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array<Body>#constructor (; 3 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  i32.const 32
  call $~lib/allocator/arena/__memory_allocate
  tee_local $1
  i32.const 20
  i32.store
  i32.const 8
  call $~lib/allocator/arena/__memory_allocate
  tee_local $0
  i32.const 0
  i32.store
  get_local $0
  i32.const 0
  i32.store offset=4
  get_local $0
  get_local $1
  i32.store
  get_local $0
  i32.const 5
  i32.store offset=4
  get_local $1
  i32.const 8
  i32.add
  i32.const 20
  call $~lib/internal/memory/memset
  get_local $0
 )
 (func $assembly/index/NBodySystem#constructor (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 i32)
  get_local $0
  i32.load offset=4
  set_local $7
  block $break|0
   loop $repeat|0
    get_local $1
    get_local $7
    i32.ge_s
    br_if $break|0
    get_local $0
    i32.load
    get_local $1
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
    tee_local $2
    f64.load offset=48
    set_local $3
    get_local $4
    get_local $2
    f64.load offset=24
    get_local $3
    f64.mul
    f64.add
    set_local $4
    get_local $5
    get_local $2
    f64.load offset=32
    get_local $3
    f64.mul
    f64.add
    set_local $5
    get_local $6
    get_local $2
    f64.load offset=40
    get_local $3
    f64.mul
    f64.add
    set_local $6
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 0
  get_local $0
  i32.load
  tee_local $1
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   get_local $1
   i32.load offset=8
  else   
   unreachable
  end
  tee_local $1
  get_local $4
  f64.neg
  f64.const 39.47841760435743
  f64.div
  f64.store offset=24
  get_local $1
  get_local $5
  f64.neg
  f64.const 39.47841760435743
  f64.div
  f64.store offset=32
  get_local $1
  get_local $6
  f64.neg
  f64.const 39.47841760435743
  f64.div
  f64.store offset=40
  i32.const 4
  call $~lib/allocator/arena/__memory_allocate
  tee_local $1
  get_local $0
  i32.store
  get_local $1
 )
 (func $assembly/index/init (; 5 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  call $~lib/array/Array<Body>#constructor
  set_local $1
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 39.47841760435743
  call $assembly/index/Body#constructor
  set_local $0
  get_local $1
  i32.load
  get_local $0
  i32.store offset=8
  f64.const 4.841431442464721
  f64.const -1.1603200440274284
  f64.const -0.10362204447112311
  f64.const 0.606326392995832
  f64.const 2.81198684491626
  f64.const -0.02521836165988763
  f64.const 0.03769367487038949
  call $assembly/index/Body#constructor
  set_local $0
  get_local $1
  i32.load
  i32.const 4
  i32.add
  get_local $0
  i32.store offset=8
  f64.const 8.34336671824458
  f64.const 4.124798564124305
  f64.const -0.4035234171143214
  f64.const -1.0107743461787924
  f64.const 1.8256623712304119
  f64.const 0.008415761376584154
  f64.const 0.011286326131968767
  call $assembly/index/Body#constructor
  set_local $0
  get_local $1
  i32.load
  i32.const 8
  i32.add
  get_local $0
  i32.store offset=8
  f64.const 12.894369562139131
  f64.const -15.111151401698631
  f64.const -0.22330757889265573
  f64.const 1.0827910064415354
  f64.const 0.8687130181696082
  f64.const -0.010832637401363636
  f64.const 1.7237240570597112e-03
  call $assembly/index/Body#constructor
  set_local $0
  get_local $1
  i32.load
  i32.const 12
  i32.add
  get_local $0
  i32.store offset=8
  f64.const 15.379697114850917
  f64.const -25.919314609987964
  f64.const 0.17925877295037118
  f64.const 0.979090732243898
  f64.const 0.5946989986476762
  f64.const -0.034755955504078104
  f64.const 2.0336868699246304e-03
  call $assembly/index/Body#constructor
  set_local $0
  get_local $1
  i32.load
  i32.const 16
  i32.add
  get_local $0
  i32.store offset=8
  get_local $1
  call $assembly/index/NBodySystem#constructor
  set_global $assembly/index/system
 )
 (func $assembly/index/NBodySystem#advance (; 6 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 f64)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 i32)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 i32)
  (local $13 i32)
  (local $14 f64)
  (local $15 f64)
  (local $16 f64)
  (local $17 f64)
  (local $18 f64)
  get_local $0
  i32.load
  tee_local $12
  i32.load offset=4
  set_local $13
  block $break|0
   loop $repeat|0
    get_local $3
    get_local $13
    i32.ge_u
    br_if $break|0
    get_local $12
    i32.load
    get_local $3
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
    tee_local $0
    f64.load
    set_local $14
    get_local $0
    f64.load offset=8
    set_local $15
    get_local $0
    f64.load offset=16
    set_local $16
    get_local $0
    f64.load offset=24
    set_local $4
    get_local $0
    f64.load offset=32
    set_local $5
    get_local $0
    f64.load offset=40
    set_local $6
    get_local $0
    f64.load offset=48
    set_local $17
    block $break|1
     get_local $3
     i32.const 1
     i32.add
     set_local $7
     loop $repeat|1
      get_local $7
      get_local $13
      i32.ge_u
      br_if $break|1
      get_local $14
      get_local $12
      i32.load
      get_local $7
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
      tee_local $1
      f64.load
      f64.sub
      tee_local $18
      tee_local $2
      get_local $2
      f64.mul
      get_local $15
      get_local $1
      f64.load offset=8
      f64.sub
      tee_local $9
      get_local $9
      f64.mul
      f64.add
      get_local $16
      get_local $1
      f64.load offset=16
      f64.sub
      tee_local $10
      get_local $10
      f64.mul
      f64.add
      tee_local $8
      f64.sqrt
      set_local $11
      get_local $4
      get_local $2
      get_local $1
      f64.load offset=48
      f64.const 0.01
      get_local $8
      get_local $11
      f64.mul
      f64.div
      tee_local $11
      f64.mul
      tee_local $8
      f64.mul
      f64.sub
      set_local $4
      get_local $5
      get_local $9
      get_local $8
      f64.mul
      f64.sub
      set_local $5
      get_local $6
      get_local $10
      get_local $8
      f64.mul
      f64.sub
      set_local $6
      get_local $1
      get_local $1
      f64.load offset=24
      get_local $18
      get_local $17
      get_local $11
      f64.mul
      tee_local $2
      f64.mul
      f64.add
      f64.store offset=24
      get_local $1
      get_local $1
      f64.load offset=32
      get_local $9
      get_local $2
      f64.mul
      f64.add
      f64.store offset=32
      get_local $1
      get_local $1
      f64.load offset=40
      get_local $10
      get_local $2
      f64.mul
      f64.add
      f64.store offset=40
      get_local $7
      i32.const 1
      i32.add
      set_local $7
      br $repeat|1
      unreachable
     end
     unreachable
    end
    get_local $0
    get_local $4
    f64.store offset=24
    get_local $0
    get_local $5
    f64.store offset=32
    get_local $0
    get_local $6
    f64.store offset=40
    get_local $0
    get_local $0
    f64.load
    f64.const 0.01
    get_local $4
    f64.mul
    f64.add
    f64.store
    get_local $0
    get_local $0
    f64.load offset=8
    f64.const 0.01
    get_local $5
    f64.mul
    f64.add
    f64.store offset=8
    get_local $0
    get_local $0
    f64.load offset=16
    f64.const 0.01
    get_local $6
    f64.mul
    f64.add
    f64.store offset=16
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $assembly/index/NBodySystem#energy (; 7 ;) (type $iF) (param $0 i32) (result f64)
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
  block $break|0
   get_local $0
   i32.load
   tee_local $4
   i32.load offset=4
   set_local $5
   loop $repeat|0
    get_local $2
    get_local $5
    i32.ge_u
    br_if $break|0
    get_local $4
    i32.load
    get_local $2
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
    tee_local $0
    f64.load
    set_local $7
    get_local $0
    f64.load offset=8
    set_local $8
    get_local $0
    f64.load offset=16
    set_local $9
    get_local $1
    f64.const 0.5
    get_local $0
    f64.load offset=48
    tee_local $10
    f64.mul
    get_local $0
    f64.load offset=24
    tee_local $1
    get_local $1
    f64.mul
    get_local $0
    f64.load offset=32
    tee_local $1
    get_local $1
    f64.mul
    f64.add
    get_local $0
    f64.load offset=40
    tee_local $1
    get_local $1
    f64.mul
    f64.add
    f64.mul
    f64.add
    set_local $1
    block $break|1
     get_local $2
     i32.const 1
     i32.add
     set_local $0
     loop $repeat|1
      get_local $0
      get_local $5
      i32.ge_u
      br_if $break|1
      get_local $7
      get_local $4
      i32.load
      get_local $0
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
      tee_local $3
      f64.load
      f64.sub
      set_local $6
      get_local $1
      get_local $10
      get_local $3
      f64.load offset=48
      f64.mul
      get_local $6
      get_local $6
      f64.mul
      get_local $8
      get_local $3
      f64.load offset=8
      f64.sub
      tee_local $1
      get_local $1
      f64.mul
      f64.add
      get_local $9
      get_local $3
      f64.load offset=16
      f64.sub
      tee_local $1
      get_local $1
      f64.mul
      f64.add
      f64.sqrt
      f64.div
      f64.sub
      set_local $1
      get_local $0
      i32.const 1
      i32.add
      set_local $0
      br $repeat|1
      unreachable
     end
     unreachable
    end
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $1
 )
 (func $assembly/index/step (; 8 ;) (type $F) (result f64)
  get_global $assembly/index/system
  call $assembly/index/NBodySystem#advance
  get_global $assembly/index/system
  call $assembly/index/NBodySystem#energy
 )
 (func $assembly/index/bench (; 9 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  block $break|0
   loop $repeat|0
    get_local $1
    get_local $0
    i32.ge_u
    br_if $break|0
    get_global $assembly/index/system
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
 (func $assembly/index/getBody (; 10 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  get_global $assembly/index/system
  i32.load
  tee_local $1
  i32.load offset=4
  i32.lt_u
  if (result i32)
   get_local $0
   get_local $1
   i32.load
   tee_local $1
   i32.load
   i32.const 2
   i32.shr_u
   i32.lt_u
   if (result i32)
    get_local $1
    get_local $0
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   else    
    unreachable
   end
  else   
   i32.const 0
  end
  tee_local $0
 )
 (func $start (; 11 ;) (type $v)
  i32.const 40
  set_global $~lib/allocator/arena/startOffset
  get_global $~lib/allocator/arena/startOffset
  set_global $~lib/allocator/arena/offset
 )
 (func $null (; 12 ;) (type $v)
  nop
 )
)
