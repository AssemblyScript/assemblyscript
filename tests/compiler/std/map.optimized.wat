(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$iij (func (param i32 i64) (result i32)))
 (type $FUNCSIG$ij (func (param i64) (result i32)))
 (type $FUNCSIG$iiji (func (param i32 i64 i32) (result i32)))
 (type $FUNCSIG$viji (func (param i32 i64 i32)))
 (type $FUNCSIG$iif (func (param i32 f32) (result i32)))
 (type $FUNCSIG$iifi (func (param i32 f32 i32) (result i32)))
 (type $FUNCSIG$vifi (func (param i32 f32 i32)))
 (type $FUNCSIG$iid (func (param i32 f64) (result i32)))
 (type $FUNCSIG$iidi (func (param i32 f64 i32) (result i32)))
 (type $FUNCSIG$vidi (func (param i32 f64 i32)))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$vij (func (param i32 i64)))
 (type $FUNCSIG$vif (func (param i32 f32)))
 (type $FUNCSIG$vid (func (param i32 f64)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\13\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 56) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 120) "\n\00\00\00s\00t\00d\00/\00m\00a\00p\00.\00t\00s")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/allocator/arena/__memory_allocate (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741824
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/allocator/arena/offset
  local.tee $1
  local.get $0
  i32.const 1
  local.get $0
  i32.const 1
  i32.gt_u
  select
  i32.add
  i32.const 7
  i32.add
  i32.const -8
  i32.and
  local.tee $0
  current_memory
  local.tee $2
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $2
   local.get $0
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $3
   local.get $2
   local.get $3
   i32.gt_s
   select
   grow_memory
   i32.const 0
   i32.lt_s
   if
    local.get $3
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $0
  global.set $~lib/allocator/arena/offset
  local.get $1
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 1073741816
  i32.gt_u
  if
   i32.const 0
   i32.const 56
   i32.const 26
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.const 32
  local.get $0
  i32.const 7
  i32.add
  i32.clz
  i32.sub
  i32.shl
  call $~lib/allocator/arena/__memory_allocate
  local.tee $1
  local.get $0
  i32.store
  local.get $1
 )
 (func $~lib/internal/memory/memset (; 3 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 0
  i32.store8
  local.get $0
  local.get $1
  i32.add
  i32.const 1
  i32.sub
  i32.const 0
  i32.store8
  local.get $1
  i32.const 2
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 1
  i32.add
  i32.const 0
  i32.store8
  local.get $0
  i32.const 2
  i32.add
  i32.const 0
  i32.store8
  local.get $0
  local.get $1
  i32.add
  local.tee $2
  i32.const 2
  i32.sub
  i32.const 0
  i32.store8
  local.get $2
  i32.const 3
  i32.sub
  i32.const 0
  i32.store8
  local.get $1
  i32.const 6
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 3
  i32.add
  i32.const 0
  i32.store8
  local.get $0
  local.get $1
  i32.add
  i32.const 4
  i32.sub
  i32.const 0
  i32.store8
  local.get $1
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
  local.tee $2
  local.get $0
  i32.add
  local.tee $0
  i32.const 0
  i32.store
  local.get $1
  local.get $2
  i32.sub
  i32.const -4
  i32.and
  local.tee $1
  local.get $0
  i32.add
  i32.const 4
  i32.sub
  i32.const 0
  i32.store
  local.get $1
  i32.const 8
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 4
  i32.add
  i32.const 0
  i32.store
  local.get $0
  i32.const 8
  i32.add
  i32.const 0
  i32.store
  local.get $0
  local.get $1
  i32.add
  local.tee $2
  i32.const 12
  i32.sub
  i32.const 0
  i32.store
  local.get $2
  i32.const 8
  i32.sub
  i32.const 0
  i32.store
  local.get $1
  i32.const 24
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 12
  i32.add
  i32.const 0
  i32.store
  local.get $0
  i32.const 16
  i32.add
  i32.const 0
  i32.store
  local.get $0
  i32.const 20
  i32.add
  i32.const 0
  i32.store
  local.get $0
  i32.const 24
  i32.add
  i32.const 0
  i32.store
  local.get $0
  local.get $1
  i32.add
  local.tee $2
  i32.const 28
  i32.sub
  i32.const 0
  i32.store
  local.get $2
  i32.const 24
  i32.sub
  i32.const 0
  i32.store
  local.get $2
  i32.const 20
  i32.sub
  i32.const 0
  i32.store
  local.get $2
  i32.const 16
  i32.sub
  i32.const 0
  i32.store
  local.get $0
  i32.const 4
  i32.and
  i32.const 24
  i32.add
  local.tee $2
  local.get $0
  i32.add
  local.set $0
  local.get $1
  local.get $2
  i32.sub
  local.set $1
  loop $continue|0
   local.get $1
   i32.const 32
   i32.ge_u
   if
    local.get $0
    i64.const 0
    i64.store
    local.get $0
    i32.const 8
    i32.add
    i64.const 0
    i64.store
    local.get $0
    i32.const 16
    i32.add
    i64.const 0
    i64.store
    local.get $0
    i32.const 24
    i32.add
    i64.const 0
    i64.store
    local.get $1
    i32.const 32
    i32.sub
    local.set $1
    local.get $0
    i32.const 32
    i32.add
    local.set $0
    br $continue|0
   end
  end
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 4 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741816
  i32.gt_u
  if
   i32.const 0
   i32.const 8
   i32.const 47
   i32.const 40
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.set $2
  local.get $1
  i32.eqz
  if
   local.get $2
   i32.const 8
   i32.add
   local.get $0
   call $~lib/internal/memory/memset
  end
  local.get $2
 )
 (func $~lib/map/Map<i8,i32>#clear (; 5 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 16
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $0
  i32.const 3
  i32.store offset=4
  local.get $0
  i32.const 48
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/map/Map<i8,i32>#constructor (; 6 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  i32.const 24
  call $~lib/allocator/arena/__memory_allocate
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
  local.get $0
  call $~lib/map/Map<i8,i32>#clear
  local.get $0
 )
 (func $~lib/map/Map<i8,i32>#find (; 7 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  local.get $2
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=8
  local.set $2
  loop $continue|0
   local.get $2
   if
    local.get $2
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    local.tee $0
    if
     local.get $2
     i32.load8_u
     local.get $1
     i32.const 255
     i32.and
     i32.eq
     local.set $0
    end
    local.get $0
    if
     local.get $2
     return
    end
    local.get $2
    i32.load offset=8
    i32.const -2
    i32.and
    local.set $2
    br $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<i8,i32>#has (; 8 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
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
 (func $~lib/map/Map<i8,i32>#rehash (; 9 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
  i32.shl
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $4
  local.get $2
  f64.convert_i32_s
  f64.const 2.6666666666666665
  f64.mul
  i32.trunc_f64_s
  local.tee $6
  i32.const 12
  i32.mul
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  i32.const 8
  i32.add
  local.tee $2
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $7
  local.get $5
  i32.const 8
  i32.add
  local.set $3
  loop $continue|0
   local.get $2
   local.get $7
   i32.ne
   if
    local.get $2
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $2
     i32.load8_s
     i32.store8
     local.get $3
     local.get $2
     i32.load offset=4
     i32.store offset=4
     local.get $3
     local.get $2
     i32.load8_s
     i32.const -2128831035
     i32.xor
     i32.const 16777619
     i32.mul
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     local.get $4
     i32.add
     local.tee $8
     i32.load offset=8
     i32.store offset=8
     local.get $8
     local.get $3
     i32.store offset=8
     local.get $3
     i32.const 12
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 12
    i32.add
    local.set $2
    br $continue|0
   end
  end
  local.get $0
  local.get $4
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $5
  i32.store offset=8
  local.get $0
  local.get $6
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<i8,i32>#set (; 10 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  local.tee $3
  local.set $4
  local.get $0
  local.get $1
  local.get $3
  call $~lib/map/Map<i8,i32>#find
  local.tee $3
  if
   local.get $3
   local.get $2
   i32.store offset=4
  else   
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    f64.convert_i32_s
    f64.const 0.75
    f64.mul
    i32.trunc_f64_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else     
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<i8,i32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $3
   i32.const 8
   i32.add
   local.get $5
   i32.const 12
   i32.mul
   i32.add
   local.tee $3
   local.get $1
   i32.store8
   local.get $3
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $3
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   local.get $4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load offset=8
   i32.store offset=8
   local.get $0
   local.get $3
   i32.store offset=8
  end
 )
 (func $~lib/map/Map<i8,i32>#get (; 11 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  call $~lib/map/Map<i8,i32>#find
  local.tee $0
  if (result i32)
   local.get $0
   i32.load offset=4
  else   
   unreachable
  end
 )
 (func $~lib/map/Map<i8,i32>#delete (; 12 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  call $~lib/map/Map<i8,i32>#find
  local.tee $1
  i32.eqz
  if
   return
  end
  local.get $1
  local.get $1
  i32.load offset=8
  i32.const 1
  i32.or
  i32.store offset=8
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.tee $2
  i32.const 1
  i32.add
  i32.const 4
  local.get $0
  i32.load offset=20
  local.tee $1
  i32.const 4
  local.get $1
  i32.gt_u
  select
  i32.ge_u
  local.tee $1
  if
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   f64.convert_i32_s
   f64.const 0.75
   f64.mul
   i32.trunc_f64_s
   i32.lt_s
   local.set $1
  end
  local.get $1
  if
   local.get $0
   local.get $2
   call $~lib/map/Map<i8,i32>#rehash
  end
 )
 (func $std/map/test<i8,i32> (; 13 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  call $~lib/map/Map<i8,i32>#constructor
  local.set $1
  loop $repeat|0
   local.get $0
   i32.const 100
   i32.lt_s
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<i8,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 8
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.const 10
    i32.add
    call $~lib/map/Map<i8,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i8,i32>#get
    local.get $0
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
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|0
    end
    unreachable
   end
  end
  local.get $1
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
  i32.const 0
  local.set $0
  loop $repeat|1
   local.get $0
   i32.const 100
   i32.lt_s
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i8,i32>#get
    local.get $0
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
    local.get $1
    local.get $0
    local.get $0
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.const 20
    i32.add
    call $~lib/map/Map<i8,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i8,i32>#get
    local.get $0
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
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|1
    end
    unreachable
   end
  end
  local.get $1
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
  i32.const 0
  local.set $0
  loop $repeat|2
   local.get $0
   i32.const 50
   i32.lt_s
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i8,i32>#get
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i8,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<i8,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 30
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|2
    end
    unreachable
   end
  end
  local.get $1
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
  i32.const 0
  local.set $0
  loop $repeat|3
   local.get $0
   i32.const 50
   i32.lt_s
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<i8,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.const 10
    i32.add
    call $~lib/map/Map<i8,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i8,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<i8,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 40
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|3
    end
    unreachable
   end
  end
  local.get $1
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
  local.get $1
  call $~lib/map/Map<i8,i32>#clear
  local.get $1
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
 (func $~lib/map/Map<u8,i32>#has (; 14 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
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
 (func $~lib/map/Map<u8,i32>#rehash (; 15 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
  i32.shl
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $4
  local.get $2
  f64.convert_i32_s
  f64.const 2.6666666666666665
  f64.mul
  i32.trunc_f64_s
  local.tee $6
  i32.const 12
  i32.mul
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  i32.const 8
  i32.add
  local.tee $2
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $7
  local.get $5
  i32.const 8
  i32.add
  local.set $3
  loop $continue|0
   local.get $2
   local.get $7
   i32.ne
   if
    local.get $2
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $2
     i32.load8_u
     i32.store8
     local.get $3
     local.get $2
     i32.load offset=4
     i32.store offset=4
     local.get $3
     local.get $2
     i32.load8_u
     i32.const -2128831035
     i32.xor
     i32.const 16777619
     i32.mul
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     local.get $4
     i32.add
     local.tee $8
     i32.load offset=8
     i32.store offset=8
     local.get $8
     local.get $3
     i32.store offset=8
     local.get $3
     i32.const 12
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 12
    i32.add
    local.set $2
    br $continue|0
   end
  end
  local.get $0
  local.get $4
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $5
  i32.store offset=8
  local.get $0
  local.get $6
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<u8,i32>#set (; 16 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  local.tee $3
  local.set $4
  local.get $0
  local.get $1
  local.get $3
  call $~lib/map/Map<i8,i32>#find
  local.tee $3
  if
   local.get $3
   local.get $2
   i32.store offset=4
  else   
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    f64.convert_i32_s
    f64.const 0.75
    f64.mul
    i32.trunc_f64_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else     
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<u8,i32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $3
   i32.const 8
   i32.add
   local.get $5
   i32.const 12
   i32.mul
   i32.add
   local.tee $3
   local.get $1
   i32.store8
   local.get $3
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $3
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   local.get $4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load offset=8
   i32.store offset=8
   local.get $0
   local.get $3
   i32.store offset=8
  end
 )
 (func $~lib/map/Map<u8,i32>#get (; 17 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  call $~lib/map/Map<i8,i32>#find
  local.tee $0
  if (result i32)
   local.get $0
   i32.load offset=4
  else   
   unreachable
  end
 )
 (func $~lib/map/Map<u8,i32>#delete (; 18 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  call $~lib/map/Map<i8,i32>#find
  local.tee $1
  i32.eqz
  if
   return
  end
  local.get $1
  local.get $1
  i32.load offset=8
  i32.const 1
  i32.or
  i32.store offset=8
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.tee $2
  i32.const 1
  i32.add
  i32.const 4
  local.get $0
  i32.load offset=20
  local.tee $1
  i32.const 4
  local.get $1
  i32.gt_u
  select
  i32.ge_u
  local.tee $1
  if
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   f64.convert_i32_s
   f64.const 0.75
   f64.mul
   i32.trunc_f64_s
   i32.lt_s
   local.set $1
  end
  local.get $1
  if
   local.get $0
   local.get $2
   call $~lib/map/Map<u8,i32>#rehash
  end
 )
 (func $std/map/test<u8,i32> (; 19 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  call $~lib/map/Map<i8,i32>#constructor
  local.set $1
  loop $repeat|0
   local.get $0
   i32.const 100
   i32.lt_u
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<u8,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 8
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.const 255
    i32.and
    i32.const 10
    i32.add
    call $~lib/map/Map<u8,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<u8,i32>#get
    local.get $0
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
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|0
    end
    unreachable
   end
  end
  local.get $1
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
  i32.const 0
  local.set $0
  loop $repeat|1
   local.get $0
   i32.const 100
   i32.lt_u
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<u8,i32>#get
    local.get $0
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
    local.get $1
    local.get $0
    local.get $0
    i32.const 255
    i32.and
    i32.const 20
    i32.add
    call $~lib/map/Map<u8,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<u8,i32>#get
    local.get $0
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
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|1
    end
    unreachable
   end
  end
  local.get $1
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
  i32.const 0
  local.set $0
  loop $repeat|2
   local.get $0
   i32.const 50
   i32.lt_u
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<u8,i32>#get
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<u8,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<u8,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 30
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|2
    end
    unreachable
   end
  end
  local.get $1
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
  i32.const 0
  local.set $0
  loop $repeat|3
   local.get $0
   i32.const 50
   i32.lt_u
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<u8,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.const 255
    i32.and
    i32.const 10
    i32.add
    call $~lib/map/Map<u8,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<u8,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<u8,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 40
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|3
    end
    unreachable
   end
  end
  local.get $1
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
  local.get $1
  call $~lib/map/Map<i8,i32>#clear
  local.get $1
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
 (func $~lib/map/Map<i16,i32>#find (; 20 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  local.get $2
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=8
  local.set $2
  loop $continue|0
   local.get $2
   if
    local.get $2
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    local.tee $0
    if
     local.get $2
     i32.load16_u
     local.get $1
     i32.const 65535
     i32.and
     i32.eq
     local.set $0
    end
    local.get $0
    if
     local.get $2
     return
    end
    local.get $2
    i32.load offset=8
    i32.const -2
    i32.and
    local.set $2
    br $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<i16,i32>#has (; 21 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  local.tee $0
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $0
  i32.const 8
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
  call $~lib/map/Map<i16,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<i16,i32>#rehash (; 22 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
  i32.shl
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $2
  f64.convert_i32_s
  f64.const 2.6666666666666665
  f64.mul
  i32.trunc_f64_s
  local.tee $7
  i32.const 12
  i32.mul
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $6
  local.get $0
  i32.load offset=8
  i32.const 8
  i32.add
  local.tee $2
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $8
  local.get $6
  i32.const 8
  i32.add
  local.set $3
  loop $continue|0
   local.get $2
   local.get $8
   i32.ne
   if
    local.get $2
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $2
     i32.load16_s
     i32.store16
     local.get $3
     local.get $2
     i32.load offset=4
     i32.store offset=4
     local.get $3
     local.get $2
     i32.load16_s
     local.tee $4
     i32.const 255
     i32.and
     i32.const -2128831035
     i32.xor
     i32.const 16777619
     i32.mul
     local.get $4
     i32.const 8
     i32.shr_u
     i32.xor
     i32.const 16777619
     i32.mul
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     local.get $5
     i32.add
     local.tee $4
     i32.load offset=8
     i32.store offset=8
     local.get $4
     local.get $3
     i32.store offset=8
     local.get $3
     i32.const 12
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 12
    i32.add
    local.set $2
    br $continue|0
   end
  end
  local.get $0
  local.get $5
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $6
  i32.store offset=8
  local.get $0
  local.get $7
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<i16,i32>#set (; 23 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  local.tee $3
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $3
  i32.const 8
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
  local.tee $3
  local.set $4
  local.get $0
  local.get $1
  local.get $3
  call $~lib/map/Map<i16,i32>#find
  local.tee $3
  if
   local.get $3
   local.get $2
   i32.store offset=4
  else   
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    f64.convert_i32_s
    f64.const 0.75
    f64.mul
    i32.trunc_f64_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else     
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<i16,i32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $3
   i32.const 8
   i32.add
   local.get $5
   i32.const 12
   i32.mul
   i32.add
   local.tee $3
   local.get $1
   i32.store16
   local.get $3
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $3
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   local.get $4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load offset=8
   i32.store offset=8
   local.get $0
   local.get $3
   i32.store offset=8
  end
 )
 (func $~lib/map/Map<i16,i32>#get (; 24 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  local.tee $0
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $0
  i32.const 8
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
  call $~lib/map/Map<i16,i32>#find
  local.tee $0
  if (result i32)
   local.get $0
   i32.load offset=4
  else   
   unreachable
  end
 )
 (func $~lib/map/Map<i16,i32>#delete (; 25 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  local.tee $1
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $1
  i32.const 8
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
  call $~lib/map/Map<i16,i32>#find
  local.tee $1
  i32.eqz
  if
   return
  end
  local.get $1
  local.get $1
  i32.load offset=8
  i32.const 1
  i32.or
  i32.store offset=8
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.tee $2
  i32.const 1
  i32.add
  i32.const 4
  local.get $0
  i32.load offset=20
  local.tee $1
  i32.const 4
  local.get $1
  i32.gt_u
  select
  i32.ge_u
  local.tee $1
  if
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   f64.convert_i32_s
   f64.const 0.75
   f64.mul
   i32.trunc_f64_s
   i32.lt_s
   local.set $1
  end
  local.get $1
  if
   local.get $0
   local.get $2
   call $~lib/map/Map<i16,i32>#rehash
  end
 )
 (func $std/map/test<i16,i32> (; 26 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  call $~lib/map/Map<i8,i32>#constructor
  local.set $1
  loop $repeat|0
   local.get $0
   i32.const 100
   i32.lt_s
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<i16,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 8
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    i32.const 10
    i32.add
    call $~lib/map/Map<i16,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i16,i32>#get
    local.get $0
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
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|0
    end
    unreachable
   end
  end
  local.get $1
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
  i32.const 0
  local.set $0
  loop $repeat|1
   local.get $0
   i32.const 100
   i32.lt_s
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i16,i32>#get
    local.get $0
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
    local.get $1
    local.get $0
    local.get $0
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    i32.const 20
    i32.add
    call $~lib/map/Map<i16,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i16,i32>#get
    local.get $0
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
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|1
    end
    unreachable
   end
  end
  local.get $1
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
  i32.const 0
  local.set $0
  loop $repeat|2
   local.get $0
   i32.const 50
   i32.lt_s
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i16,i32>#get
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i16,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<i16,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 30
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|2
    end
    unreachable
   end
  end
  local.get $1
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
  i32.const 0
  local.set $0
  loop $repeat|3
   local.get $0
   i32.const 50
   i32.lt_s
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<i16,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    i32.const 10
    i32.add
    call $~lib/map/Map<i16,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i16,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<i16,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 40
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|3
    end
    unreachable
   end
  end
  local.get $1
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
  local.get $1
  call $~lib/map/Map<i8,i32>#clear
  local.get $1
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
 (func $~lib/map/Map<u16,i32>#has (; 27 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 65535
  i32.and
  local.tee $0
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $0
  i32.const 8
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
  call $~lib/map/Map<i16,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<u16,i32>#rehash (; 28 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
  i32.shl
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $2
  f64.convert_i32_s
  f64.const 2.6666666666666665
  f64.mul
  i32.trunc_f64_s
  local.tee $7
  i32.const 12
  i32.mul
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $6
  local.get $0
  i32.load offset=8
  i32.const 8
  i32.add
  local.tee $2
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $8
  local.get $6
  i32.const 8
  i32.add
  local.set $3
  loop $continue|0
   local.get $2
   local.get $8
   i32.ne
   if
    local.get $2
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $2
     i32.load16_u
     i32.store16
     local.get $3
     local.get $2
     i32.load offset=4
     i32.store offset=4
     local.get $3
     local.get $2
     i32.load16_u
     local.tee $4
     i32.const 255
     i32.and
     i32.const -2128831035
     i32.xor
     i32.const 16777619
     i32.mul
     local.get $4
     i32.const 8
     i32.shr_u
     i32.xor
     i32.const 16777619
     i32.mul
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     local.get $5
     i32.add
     local.tee $4
     i32.load offset=8
     i32.store offset=8
     local.get $4
     local.get $3
     i32.store offset=8
     local.get $3
     i32.const 12
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 12
    i32.add
    local.set $2
    br $continue|0
   end
  end
  local.get $0
  local.get $5
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $6
  i32.store offset=8
  local.get $0
  local.get $7
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<u16,i32>#set (; 29 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.const 65535
  i32.and
  local.tee $3
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $3
  i32.const 8
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
  local.tee $3
  local.set $4
  local.get $0
  local.get $1
  local.get $3
  call $~lib/map/Map<i16,i32>#find
  local.tee $3
  if
   local.get $3
   local.get $2
   i32.store offset=4
  else   
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    f64.convert_i32_s
    f64.const 0.75
    f64.mul
    i32.trunc_f64_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else     
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<u16,i32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $3
   i32.const 8
   i32.add
   local.get $5
   i32.const 12
   i32.mul
   i32.add
   local.tee $3
   local.get $1
   i32.store16
   local.get $3
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $3
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   local.get $4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load offset=8
   i32.store offset=8
   local.get $0
   local.get $3
   i32.store offset=8
  end
 )
 (func $~lib/map/Map<u16,i32>#get (; 30 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 65535
  i32.and
  local.tee $0
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $0
  i32.const 8
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
  call $~lib/map/Map<i16,i32>#find
  local.tee $0
  if (result i32)
   local.get $0
   i32.load offset=4
  else   
   unreachable
  end
 )
 (func $~lib/map/Map<u16,i32>#delete (; 31 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 65535
  i32.and
  local.tee $1
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $1
  i32.const 8
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
  call $~lib/map/Map<i16,i32>#find
  local.tee $1
  i32.eqz
  if
   return
  end
  local.get $1
  local.get $1
  i32.load offset=8
  i32.const 1
  i32.or
  i32.store offset=8
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.tee $2
  i32.const 1
  i32.add
  i32.const 4
  local.get $0
  i32.load offset=20
  local.tee $1
  i32.const 4
  local.get $1
  i32.gt_u
  select
  i32.ge_u
  local.tee $1
  if
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   f64.convert_i32_s
   f64.const 0.75
   f64.mul
   i32.trunc_f64_s
   i32.lt_s
   local.set $1
  end
  local.get $1
  if
   local.get $0
   local.get $2
   call $~lib/map/Map<u16,i32>#rehash
  end
 )
 (func $std/map/test<u16,i32> (; 32 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  call $~lib/map/Map<i8,i32>#constructor
  local.set $1
  loop $repeat|0
   local.get $0
   i32.const 100
   i32.lt_u
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<u16,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 8
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.const 65535
    i32.and
    i32.const 10
    i32.add
    call $~lib/map/Map<u16,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<u16,i32>#get
    local.get $0
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
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|0
    end
    unreachable
   end
  end
  local.get $1
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
  i32.const 0
  local.set $0
  loop $repeat|1
   local.get $0
   i32.const 100
   i32.lt_u
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<u16,i32>#get
    local.get $0
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
    local.get $1
    local.get $0
    local.get $0
    i32.const 65535
    i32.and
    i32.const 20
    i32.add
    call $~lib/map/Map<u16,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<u16,i32>#get
    local.get $0
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
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|1
    end
    unreachable
   end
  end
  local.get $1
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
  i32.const 0
  local.set $0
  loop $repeat|2
   local.get $0
   i32.const 50
   i32.lt_u
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<u16,i32>#get
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<u16,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<u16,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 30
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|2
    end
    unreachable
   end
  end
  local.get $1
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
  i32.const 0
  local.set $0
  loop $repeat|3
   local.get $0
   i32.const 50
   i32.lt_u
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<u16,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.const 65535
    i32.and
    i32.const 10
    i32.add
    call $~lib/map/Map<u16,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<u16,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<u16,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 40
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|3
    end
    unreachable
   end
  end
  local.get $1
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
  local.get $1
  call $~lib/map/Map<i8,i32>#clear
  local.get $1
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
 (func $~lib/internal/hash/hash32 (; 33 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $0
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $0
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $0
  i32.const 24
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
 )
 (func $~lib/map/Map<i32,i32>#find (; 34 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  local.get $2
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=8
  local.set $2
  loop $continue|0
   local.get $2
   if
    local.get $2
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    local.tee $0
    if
     local.get $2
     i32.load
     local.get $1
     i32.eq
     local.set $0
    end
    local.get $0
    if
     local.get $2
     return
    end
    local.get $2
    i32.load offset=8
    i32.const -2
    i32.and
    local.set $2
    br $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<i32,i32>#has (; 35 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/internal/hash/hash32
  call $~lib/map/Map<i32,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<i32,i32>#rehash (; 36 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
  i32.shl
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $4
  local.get $2
  f64.convert_i32_s
  f64.const 2.6666666666666665
  f64.mul
  i32.trunc_f64_s
  local.tee $6
  i32.const 12
  i32.mul
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  i32.const 8
  i32.add
  local.tee $2
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $7
  local.get $5
  i32.const 8
  i32.add
  local.set $3
  loop $continue|0
   local.get $2
   local.get $7
   i32.ne
   if
    local.get $2
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $2
     i32.load
     i32.store
     local.get $3
     local.get $2
     i32.load offset=4
     i32.store offset=4
     local.get $3
     local.get $2
     i32.load
     call $~lib/internal/hash/hash32
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     local.get $4
     i32.add
     local.tee $8
     i32.load offset=8
     i32.store offset=8
     local.get $8
     local.get $3
     i32.store offset=8
     local.get $3
     i32.const 12
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 12
    i32.add
    local.set $2
    br $continue|0
   end
  end
  local.get $0
  local.get $4
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $5
  i32.store offset=8
  local.get $0
  local.get $6
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<i32,i32>#set (; 37 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/internal/hash/hash32
  local.tee $4
  call $~lib/map/Map<i32,i32>#find
  local.tee $3
  if
   local.get $3
   local.get $2
   i32.store offset=4
  else   
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    f64.convert_i32_s
    f64.const 0.75
    f64.mul
    i32.trunc_f64_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else     
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<i32,i32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $3
   i32.const 8
   i32.add
   local.get $5
   i32.const 12
   i32.mul
   i32.add
   local.tee $3
   local.get $1
   i32.store
   local.get $3
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $3
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   local.get $4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load offset=8
   i32.store offset=8
   local.get $0
   local.get $3
   i32.store offset=8
  end
 )
 (func $~lib/map/Map<i32,i32>#get (; 38 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/internal/hash/hash32
  call $~lib/map/Map<i32,i32>#find
  local.tee $0
  if (result i32)
   local.get $0
   i32.load offset=4
  else   
   unreachable
  end
 )
 (func $~lib/map/Map<i32,i32>#delete (; 39 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/internal/hash/hash32
  call $~lib/map/Map<i32,i32>#find
  local.tee $1
  i32.eqz
  if
   return
  end
  local.get $1
  local.get $1
  i32.load offset=8
  i32.const 1
  i32.or
  i32.store offset=8
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.tee $2
  i32.const 1
  i32.add
  i32.const 4
  local.get $0
  i32.load offset=20
  local.tee $1
  i32.const 4
  local.get $1
  i32.gt_u
  select
  i32.ge_u
  local.tee $1
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   f64.convert_i32_s
   f64.const 0.75
   f64.mul
   i32.trunc_f64_s
   i32.lt_s
  else   
   local.get $1
  end
  if
   local.get $0
   local.get $2
   call $~lib/map/Map<i32,i32>#rehash
  end
 )
 (func $std/map/test<i32,i32> (; 40 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  call $~lib/map/Map<i8,i32>#constructor
  local.set $1
  loop $repeat|0
   local.get $0
   i32.const 100
   i32.lt_s
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 8
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.const 10
    i32.add
    call $~lib/map/Map<i32,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#get
    local.get $0
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
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|0
    end
    unreachable
   end
  end
  local.get $1
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
  i32.const 0
  local.set $0
  loop $repeat|1
   local.get $0
   i32.const 100
   i32.lt_s
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#get
    local.get $0
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
    local.get $1
    local.get $0
    local.get $0
    i32.const 20
    i32.add
    call $~lib/map/Map<i32,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#get
    local.get $0
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
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|1
    end
    unreachable
   end
  end
  local.get $1
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
  i32.const 0
  local.set $0
  loop $repeat|2
   local.get $0
   i32.const 50
   i32.lt_s
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#get
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 30
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|2
    end
    unreachable
   end
  end
  local.get $1
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
  i32.const 0
  local.set $0
  loop $repeat|3
   local.get $0
   i32.const 50
   i32.lt_s
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.const 10
    i32.add
    call $~lib/map/Map<i32,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 40
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|3
    end
    unreachable
   end
  end
  local.get $1
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
  local.get $1
  call $~lib/map/Map<i8,i32>#clear
  local.get $1
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
 (func $std/map/test<u32,i32> (; 41 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  call $~lib/map/Map<i8,i32>#constructor
  local.set $1
  loop $repeat|0
   local.get $0
   i32.const 100
   i32.lt_u
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 8
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.const 10
    i32.add
    call $~lib/map/Map<i32,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#get
    local.get $0
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
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|0
    end
    unreachable
   end
  end
  local.get $1
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
  i32.const 0
  local.set $0
  loop $repeat|1
   local.get $0
   i32.const 100
   i32.lt_u
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#get
    local.get $0
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
    local.get $1
    local.get $0
    local.get $0
    i32.const 20
    i32.add
    call $~lib/map/Map<i32,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#get
    local.get $0
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
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|1
    end
    unreachable
   end
  end
  local.get $1
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
  i32.const 0
  local.set $0
  loop $repeat|2
   local.get $0
   i32.const 50
   i32.lt_u
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#get
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 30
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|2
    end
    unreachable
   end
  end
  local.get $1
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
  i32.const 0
  local.set $0
  loop $repeat|3
   local.get $0
   i32.const 50
   i32.lt_u
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.const 10
    i32.add
    call $~lib/map/Map<i32,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<i32,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 40
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|3
    end
    unreachable
   end
  end
  local.get $1
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
  local.get $1
  call $~lib/map/Map<i8,i32>#clear
  local.get $1
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
 (func $~lib/map/Map<i64,i32>#clear (; 42 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 16
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $0
  i32.const 3
  i32.store offset=4
  local.get $0
  i32.const 64
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/map/Map<i64,i32>#constructor (; 43 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  i32.const 24
  call $~lib/allocator/arena/__memory_allocate
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
  local.get $0
  call $~lib/map/Map<i64,i32>#clear
  local.get $0
 )
 (func $~lib/internal/hash/hash64 (; 44 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (local $1 i32)
  local.get $0
  i32.wrap_i64
  local.tee $1
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $1
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $1
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $1
  i32.const 24
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $0
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.tee $1
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $1
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $1
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $1
  i32.const 24
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
 )
 (func $~lib/map/Map<i64,i32>#find (; 45 ;) (type $FUNCSIG$iiji) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  local.get $2
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=8
  local.set $2
  loop $continue|0
   local.get $2
   if
    local.get $2
    i32.load offset=12
    i32.const 1
    i32.and
    i32.eqz
    local.tee $0
    if
     local.get $2
     i64.load
     local.get $1
     i64.eq
     local.set $0
    end
    local.get $0
    if
     local.get $2
     return
    end
    local.get $2
    i32.load offset=12
    i32.const -2
    i32.and
    local.set $2
    br $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<i64,i32>#has (; 46 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/internal/hash/hash64
  call $~lib/map/Map<i64,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<i64,i32>#rehash (; 47 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
  i32.shl
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $4
  local.get $2
  f64.convert_i32_s
  f64.const 2.6666666666666665
  f64.mul
  i32.trunc_f64_s
  local.tee $6
  i32.const 4
  i32.shl
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  i32.const 8
  i32.add
  local.tee $2
  local.get $0
  i32.load offset=16
  i32.const 4
  i32.shl
  i32.add
  local.set $7
  local.get $5
  i32.const 8
  i32.add
  local.set $3
  loop $continue|0
   local.get $2
   local.get $7
   i32.ne
   if
    local.get $2
    i32.load offset=12
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $2
     i64.load
     i64.store
     local.get $3
     local.get $2
     i32.load offset=8
     i32.store offset=8
     local.get $3
     local.get $2
     i64.load
     call $~lib/internal/hash/hash64
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     local.get $4
     i32.add
     local.tee $8
     i32.load offset=8
     i32.store offset=12
     local.get $8
     local.get $3
     i32.store offset=8
     local.get $3
     i32.const 16
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 16
    i32.add
    local.set $2
    br $continue|0
   end
  end
  local.get $0
  local.get $4
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $5
  i32.store offset=8
  local.get $0
  local.get $6
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<i64,i32>#set (; 48 ;) (type $FUNCSIG$viji) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/internal/hash/hash64
  local.tee $4
  call $~lib/map/Map<i64,i32>#find
  local.tee $3
  if
   local.get $3
   local.get $2
   i32.store offset=8
  else   
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    f64.convert_i32_s
    f64.const 0.75
    f64.mul
    i32.trunc_f64_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else     
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<i64,i32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $3
   i32.const 8
   i32.add
   local.get $5
   i32.const 4
   i32.shl
   i32.add
   local.tee $3
   local.get $1
   i64.store
   local.get $3
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $3
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   local.get $4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load offset=8
   i32.store offset=12
   local.get $0
   local.get $3
   i32.store offset=8
  end
 )
 (func $~lib/map/Map<i64,i32>#get (; 49 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/internal/hash/hash64
  call $~lib/map/Map<i64,i32>#find
  local.tee $0
  if (result i32)
   local.get $0
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $~lib/map/Map<i64,i32>#delete (; 50 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/internal/hash/hash64
  call $~lib/map/Map<i64,i32>#find
  local.tee $2
  i32.eqz
  if
   return
  end
  local.get $2
  local.get $2
  i32.load offset=12
  i32.const 1
  i32.or
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.tee $3
  i32.const 1
  i32.add
  i32.const 4
  local.get $0
  i32.load offset=20
  local.tee $2
  i32.const 4
  local.get $2
  i32.gt_u
  select
  i32.ge_u
  local.tee $2
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   f64.convert_i32_s
   f64.const 0.75
   f64.mul
   i32.trunc_f64_s
   i32.lt_s
  else   
   local.get $2
  end
  if
   local.get $0
   local.get $3
   call $~lib/map/Map<i64,i32>#rehash
  end
 )
 (func $std/map/test<i64,i32> (; 51 ;) (type $FUNCSIG$v)
  (local $0 i64)
  (local $1 i32)
  call $~lib/map/Map<i64,i32>#constructor
  local.set $1
  loop $repeat|0
   local.get $0
   i64.const 100
   i64.lt_s
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 8
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.wrap_i64
    i32.const 10
    i32.add
    call $~lib/map/Map<i64,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#get
    local.get $0
    i32.wrap_i64
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
     local.get $0
     i64.const 1
     i64.add
     local.set $0
     br $repeat|0
    end
    unreachable
   end
  end
  local.get $1
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
  i64.const 0
  local.set $0
  loop $repeat|1
   local.get $0
   i64.const 100
   i64.lt_s
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#get
    local.get $0
    i32.wrap_i64
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
    local.get $1
    local.get $0
    local.get $0
    i32.wrap_i64
    i32.const 20
    i32.add
    call $~lib/map/Map<i64,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#get
    local.get $0
    i32.wrap_i64
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
     local.get $0
     i64.const 1
     i64.add
     local.set $0
     br $repeat|1
    end
    unreachable
   end
  end
  local.get $1
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
  i64.const 0
  local.set $0
  loop $repeat|2
   local.get $0
   i64.const 50
   i64.lt_s
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#get
    local.get $0
    i32.wrap_i64
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 30
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     local.get $0
     i64.const 1
     i64.add
     local.set $0
     br $repeat|2
    end
    unreachable
   end
  end
  local.get $1
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
  i64.const 0
  local.set $0
  loop $repeat|3
   local.get $0
   i64.const 50
   i64.lt_s
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.wrap_i64
    i32.const 10
    i32.add
    call $~lib/map/Map<i64,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 40
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     local.get $0
     i64.const 1
     i64.add
     local.set $0
     br $repeat|3
    end
    unreachable
   end
  end
  local.get $1
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
  local.get $1
  call $~lib/map/Map<i64,i32>#clear
  local.get $1
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
 (func $std/map/test<u64,i32> (; 52 ;) (type $FUNCSIG$v)
  (local $0 i64)
  (local $1 i32)
  call $~lib/map/Map<i64,i32>#constructor
  local.set $1
  loop $repeat|0
   local.get $0
   i64.const 100
   i64.lt_u
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 8
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.wrap_i64
    i32.const 10
    i32.add
    call $~lib/map/Map<i64,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#get
    local.get $0
    i32.wrap_i64
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
     local.get $0
     i64.const 1
     i64.add
     local.set $0
     br $repeat|0
    end
    unreachable
   end
  end
  local.get $1
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
  i64.const 0
  local.set $0
  loop $repeat|1
   local.get $0
   i64.const 100
   i64.lt_u
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#get
    local.get $0
    i32.wrap_i64
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
    local.get $1
    local.get $0
    local.get $0
    i32.wrap_i64
    i32.const 20
    i32.add
    call $~lib/map/Map<i64,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#get
    local.get $0
    i32.wrap_i64
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
     local.get $0
     i64.const 1
     i64.add
     local.set $0
     br $repeat|1
    end
    unreachable
   end
  end
  local.get $1
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
  i64.const 0
  local.set $0
  loop $repeat|2
   local.get $0
   i64.const 50
   i64.lt_u
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#get
    local.get $0
    i32.wrap_i64
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 30
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     local.get $0
     i64.const 1
     i64.add
     local.set $0
     br $repeat|2
    end
    unreachable
   end
  end
  local.get $1
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
  i64.const 0
  local.set $0
  loop $repeat|3
   local.get $0
   i64.const 50
   i64.lt_u
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.wrap_i64
    i32.const 10
    i32.add
    call $~lib/map/Map<i64,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<i64,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 40
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     local.get $0
     i64.const 1
     i64.add
     local.set $0
     br $repeat|3
    end
    unreachable
   end
  end
  local.get $1
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
  local.get $1
  call $~lib/map/Map<i64,i32>#clear
  local.get $1
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
 (func $~lib/map/Map<f32,i32>#find (; 53 ;) (type $FUNCSIG$iifi) (param $0 i32) (param $1 f32) (param $2 i32) (result i32)
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  local.get $2
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=8
  local.set $2
  loop $continue|0
   local.get $2
   if
    local.get $2
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    local.tee $0
    if
     local.get $2
     f32.load
     local.get $1
     f32.eq
     local.set $0
    end
    local.get $0
    if
     local.get $2
     return
    end
    local.get $2
    i32.load offset=8
    i32.const -2
    i32.and
    local.set $2
    br $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<f32,i32>#has (; 54 ;) (type $FUNCSIG$iif) (param $0 i32) (param $1 f32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  i32.reinterpret_f32
  call $~lib/internal/hash/hash32
  call $~lib/map/Map<f32,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<f32,i32>#rehash (; 55 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
  i32.shl
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $4
  local.get $2
  f64.convert_i32_s
  f64.const 2.6666666666666665
  f64.mul
  i32.trunc_f64_s
  local.tee $6
  i32.const 12
  i32.mul
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  i32.const 8
  i32.add
  local.tee $2
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $7
  local.get $5
  i32.const 8
  i32.add
  local.set $3
  loop $continue|0
   local.get $2
   local.get $7
   i32.ne
   if
    local.get $2
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $2
     f32.load
     f32.store
     local.get $3
     local.get $2
     i32.load offset=4
     i32.store offset=4
     local.get $3
     local.get $2
     f32.load
     i32.reinterpret_f32
     call $~lib/internal/hash/hash32
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     local.get $4
     i32.add
     local.tee $8
     i32.load offset=8
     i32.store offset=8
     local.get $8
     local.get $3
     i32.store offset=8
     local.get $3
     i32.const 12
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 12
    i32.add
    local.set $2
    br $continue|0
   end
  end
  local.get $0
  local.get $4
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $5
  i32.store offset=8
  local.get $0
  local.get $6
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<f32,i32>#set (; 56 ;) (type $FUNCSIG$vifi) (param $0 i32) (param $1 f32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  local.get $1
  i32.reinterpret_f32
  call $~lib/internal/hash/hash32
  local.tee $4
  call $~lib/map/Map<f32,i32>#find
  local.tee $3
  if
   local.get $3
   local.get $2
   i32.store offset=4
  else   
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    f64.convert_i32_s
    f64.const 0.75
    f64.mul
    i32.trunc_f64_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else     
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<f32,i32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $3
   i32.const 8
   i32.add
   local.get $5
   i32.const 12
   i32.mul
   i32.add
   local.tee $3
   local.get $1
   f32.store
   local.get $3
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $3
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   local.get $4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load offset=8
   i32.store offset=8
   local.get $0
   local.get $3
   i32.store offset=8
  end
 )
 (func $~lib/map/Map<f32,i32>#get (; 57 ;) (type $FUNCSIG$iif) (param $0 i32) (param $1 f32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  i32.reinterpret_f32
  call $~lib/internal/hash/hash32
  call $~lib/map/Map<f32,i32>#find
  local.tee $0
  if (result i32)
   local.get $0
   i32.load offset=4
  else   
   unreachable
  end
 )
 (func $~lib/map/Map<f32,i32>#delete (; 58 ;) (type $FUNCSIG$vif) (param $0 i32) (param $1 f32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  local.get $1
  i32.reinterpret_f32
  call $~lib/internal/hash/hash32
  call $~lib/map/Map<f32,i32>#find
  local.tee $2
  i32.eqz
  if
   return
  end
  local.get $2
  local.get $2
  i32.load offset=8
  i32.const 1
  i32.or
  i32.store offset=8
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.tee $3
  i32.const 1
  i32.add
  i32.const 4
  local.get $0
  i32.load offset=20
  local.tee $2
  i32.const 4
  local.get $2
  i32.gt_u
  select
  i32.ge_u
  local.tee $2
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   f64.convert_i32_s
   f64.const 0.75
   f64.mul
   i32.trunc_f64_s
   i32.lt_s
  else   
   local.get $2
  end
  if
   local.get $0
   local.get $3
   call $~lib/map/Map<f32,i32>#rehash
  end
 )
 (func $std/map/test<f32,i32> (; 59 ;) (type $FUNCSIG$v)
  (local $0 f32)
  (local $1 i32)
  call $~lib/map/Map<i8,i32>#constructor
  local.set $1
  loop $repeat|0
   local.get $0
   f32.const 100
   f32.lt
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<f32,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 8
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.trunc_f32_s
    i32.const 10
    i32.add
    call $~lib/map/Map<f32,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<f32,i32>#get
    local.get $0
    i32.trunc_f32_s
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
     local.get $0
     f32.const 1
     f32.add
     local.set $0
     br $repeat|0
    end
    unreachable
   end
  end
  local.get $1
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
  f32.const 0
  local.set $0
  loop $repeat|1
   local.get $0
   f32.const 100
   f32.lt
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<f32,i32>#get
    local.get $0
    i32.trunc_f32_s
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
    local.get $1
    local.get $0
    local.get $0
    i32.trunc_f32_s
    i32.const 20
    i32.add
    call $~lib/map/Map<f32,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<f32,i32>#get
    local.get $0
    i32.trunc_f32_s
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
     local.get $0
     f32.const 1
     f32.add
     local.set $0
     br $repeat|1
    end
    unreachable
   end
  end
  local.get $1
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
  f32.const 0
  local.set $0
  loop $repeat|2
   local.get $0
   f32.const 50
   f32.lt
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<f32,i32>#get
    local.get $0
    i32.trunc_f32_s
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
    local.get $1
    local.get $0
    call $~lib/map/Map<f32,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<f32,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 30
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     local.get $0
     f32.const 1
     f32.add
     local.set $0
     br $repeat|2
    end
    unreachable
   end
  end
  local.get $1
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
  f32.const 0
  local.set $0
  loop $repeat|3
   local.get $0
   f32.const 50
   f32.lt
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<f32,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.trunc_f32_s
    i32.const 10
    i32.add
    call $~lib/map/Map<f32,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<f32,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<f32,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 40
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     local.get $0
     f32.const 1
     f32.add
     local.set $0
     br $repeat|3
    end
    unreachable
   end
  end
  local.get $1
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
  local.get $1
  call $~lib/map/Map<i8,i32>#clear
  local.get $1
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
 (func $~lib/map/Map<f64,i32>#find (; 60 ;) (type $FUNCSIG$iidi) (param $0 i32) (param $1 f64) (param $2 i32) (result i32)
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  local.get $2
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=8
  local.set $2
  loop $continue|0
   local.get $2
   if
    local.get $2
    i32.load offset=12
    i32.const 1
    i32.and
    i32.eqz
    local.tee $0
    if
     local.get $2
     f64.load
     local.get $1
     f64.eq
     local.set $0
    end
    local.get $0
    if
     local.get $2
     return
    end
    local.get $2
    i32.load offset=12
    i32.const -2
    i32.and
    local.set $2
    br $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<f64,i32>#has (; 61 ;) (type $FUNCSIG$iid) (param $0 i32) (param $1 f64) (result i32)
  local.get $0
  local.get $1
  local.get $1
  i64.reinterpret_f64
  call $~lib/internal/hash/hash64
  call $~lib/map/Map<f64,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<f64,i32>#rehash (; 62 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
  i32.shl
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $4
  local.get $2
  f64.convert_i32_s
  f64.const 2.6666666666666665
  f64.mul
  i32.trunc_f64_s
  local.tee $6
  i32.const 4
  i32.shl
  i32.const 1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  i32.const 8
  i32.add
  local.tee $2
  local.get $0
  i32.load offset=16
  i32.const 4
  i32.shl
  i32.add
  local.set $7
  local.get $5
  i32.const 8
  i32.add
  local.set $3
  loop $continue|0
   local.get $2
   local.get $7
   i32.ne
   if
    local.get $2
    i32.load offset=12
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $2
     f64.load
     f64.store
     local.get $3
     local.get $2
     i32.load offset=8
     i32.store offset=8
     local.get $3
     local.get $2
     f64.load
     i64.reinterpret_f64
     call $~lib/internal/hash/hash64
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     local.get $4
     i32.add
     local.tee $8
     i32.load offset=8
     i32.store offset=12
     local.get $8
     local.get $3
     i32.store offset=8
     local.get $3
     i32.const 16
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 16
    i32.add
    local.set $2
    br $continue|0
   end
  end
  local.get $0
  local.get $4
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $5
  i32.store offset=8
  local.get $0
  local.get $6
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<f64,i32>#set (; 63 ;) (type $FUNCSIG$vidi) (param $0 i32) (param $1 f64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  local.get $1
  i64.reinterpret_f64
  call $~lib/internal/hash/hash64
  local.tee $4
  call $~lib/map/Map<f64,i32>#find
  local.tee $3
  if
   local.get $3
   local.get $2
   i32.store offset=8
  else   
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    f64.convert_i32_s
    f64.const 0.75
    f64.mul
    i32.trunc_f64_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else     
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<f64,i32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $3
   i32.const 8
   i32.add
   local.get $5
   i32.const 4
   i32.shl
   i32.add
   local.tee $3
   local.get $1
   f64.store
   local.get $3
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $3
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   local.get $4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load offset=8
   i32.store offset=12
   local.get $0
   local.get $3
   i32.store offset=8
  end
 )
 (func $~lib/map/Map<f64,i32>#get (; 64 ;) (type $FUNCSIG$iid) (param $0 i32) (param $1 f64) (result i32)
  local.get $0
  local.get $1
  local.get $1
  i64.reinterpret_f64
  call $~lib/internal/hash/hash64
  call $~lib/map/Map<f64,i32>#find
  local.tee $0
  if (result i32)
   local.get $0
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $~lib/map/Map<f64,i32>#delete (; 65 ;) (type $FUNCSIG$vid) (param $0 i32) (param $1 f64)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  local.get $1
  i64.reinterpret_f64
  call $~lib/internal/hash/hash64
  call $~lib/map/Map<f64,i32>#find
  local.tee $2
  i32.eqz
  if
   return
  end
  local.get $2
  local.get $2
  i32.load offset=12
  i32.const 1
  i32.or
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.tee $3
  i32.const 1
  i32.add
  i32.const 4
  local.get $0
  i32.load offset=20
  local.tee $2
  i32.const 4
  local.get $2
  i32.gt_u
  select
  i32.ge_u
  local.tee $2
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   f64.convert_i32_s
   f64.const 0.75
   f64.mul
   i32.trunc_f64_s
   i32.lt_s
  else   
   local.get $2
  end
  if
   local.get $0
   local.get $3
   call $~lib/map/Map<f64,i32>#rehash
  end
 )
 (func $std/map/test<f64,i32> (; 66 ;) (type $FUNCSIG$v)
  (local $0 f64)
  (local $1 i32)
  call $~lib/map/Map<i64,i32>#constructor
  local.set $1
  loop $repeat|0
   local.get $0
   f64.const 100
   f64.lt
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<f64,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 8
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.trunc_f64_s
    i32.const 10
    i32.add
    call $~lib/map/Map<f64,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<f64,i32>#get
    local.get $0
    i32.trunc_f64_s
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
     local.get $0
     f64.const 1
     f64.add
     local.set $0
     br $repeat|0
    end
    unreachable
   end
  end
  local.get $1
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
  f64.const 0
  local.set $0
  loop $repeat|1
   local.get $0
   f64.const 100
   f64.lt
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<f64,i32>#get
    local.get $0
    i32.trunc_f64_s
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
    local.get $1
    local.get $0
    local.get $0
    i32.trunc_f64_s
    i32.const 20
    i32.add
    call $~lib/map/Map<f64,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<f64,i32>#get
    local.get $0
    i32.trunc_f64_s
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
     local.get $0
     f64.const 1
     f64.add
     local.set $0
     br $repeat|1
    end
    unreachable
   end
  end
  local.get $1
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
  f64.const 0
  local.set $0
  loop $repeat|2
   local.get $0
   f64.const 50
   f64.lt
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<f64,i32>#get
    local.get $0
    i32.trunc_f64_s
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
    local.get $1
    local.get $0
    call $~lib/map/Map<f64,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<f64,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 30
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     local.get $0
     f64.const 1
     f64.add
     local.set $0
     br $repeat|2
    end
    unreachable
   end
  end
  local.get $1
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
  f64.const 0
  local.set $0
  loop $repeat|3
   local.get $0
   f64.const 50
   f64.lt
   if
    local.get $1
    local.get $0
    call $~lib/map/Map<f64,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    local.get $1
    local.get $0
    local.get $0
    i32.trunc_f64_s
    i32.const 10
    i32.add
    call $~lib/map/Map<f64,i32>#set
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/map/Map<f64,i32>#delete
    local.get $1
    local.get $0
    call $~lib/map/Map<f64,i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 40
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     local.get $0
     f64.const 1
     f64.add
     local.set $0
     br $repeat|3
    end
    unreachable
   end
  end
  local.get $1
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
  local.get $1
  call $~lib/map/Map<i64,i32>#clear
  local.get $1
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
 (func $start (; 67 ;) (type $FUNCSIG$v)
  i32.const 144
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
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
 (func $null (; 68 ;) (type $FUNCSIG$v)
  nop
 )
)
