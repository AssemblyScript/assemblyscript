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
 (type $ifii (func (param i32 f32 i32) (result i32)))
 (type $ifv (func (param i32 f32)))
 (type $iFi (func (param i32 f64) (result i32)))
 (type $iFii (func (param i32 f64 i32) (result i32)))
 (type $iFv (func (param i32 f64)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\13\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 56) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 120) "\n\00\00\00s\00t\00d\00/\00s\00e\00t\00.\00t\00s")
 (table $0 1 funcref)
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
  local.tee $2
  current_memory
  local.tee $3
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $3
   local.get $2
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $0
   local.get $3
   local.get $0
   i32.gt_s
   select
   grow_memory
   i32.const 0
   i32.lt_s
   if
    local.get $0
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $2
  global.set $~lib/allocator/arena/offset
  local.get $1
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 2 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/internal/memory/memset (; 3 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
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
  local.tee $3
  i32.const 2
  i32.sub
  local.get $1
  i32.store8
  local.get $3
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
  local.get $2
  i32.const 0
  local.get $0
  i32.sub
  i32.const 3
  i32.and
  local.tee $3
  i32.sub
  local.set $2
  local.get $0
  local.get $3
  i32.add
  local.tee $0
  local.get $1
  i32.const 255
  i32.and
  i32.const 16843009
  i32.mul
  local.tee $1
  i32.store
  local.get $2
  i32.const -4
  i32.and
  local.tee $2
  local.get $0
  i32.add
  i32.const 4
  i32.sub
  local.get $1
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
  local.get $1
  i32.store
  local.get $0
  i32.const 8
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $2
  i32.add
  local.tee $3
  i32.const 12
  i32.sub
  local.get $1
  i32.store
  local.get $3
  i32.const 8
  i32.sub
  local.get $1
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
  local.get $1
  i32.store
  local.get $0
  i32.const 16
  i32.add
  local.get $1
  i32.store
  local.get $0
  i32.const 20
  i32.add
  local.get $1
  i32.store
  local.get $0
  i32.const 24
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $2
  i32.add
  local.tee $3
  i32.const 28
  i32.sub
  local.get $1
  i32.store
  local.get $3
  i32.const 24
  i32.sub
  local.get $1
  i32.store
  local.get $3
  i32.const 20
  i32.sub
  local.get $1
  i32.store
  local.get $3
  i32.const 16
  i32.sub
  local.get $1
  i32.store
  local.get $0
  i32.const 4
  i32.and
  i32.const 24
  i32.add
  local.tee $3
  local.get $0
  i32.add
  local.set $0
  local.get $2
  local.get $3
  i32.sub
  local.set $2
  local.get $1
  i64.extend_i32_u
  local.tee $4
  local.get $4
  i64.const 32
  i64.shl
  i64.or
  local.set $4
  loop $continue|0
   local.get $2
   i32.const 32
   i32.ge_u
   if
    local.get $0
    local.get $4
    i64.store
    local.get $0
    i32.const 8
    i32.add
    local.get $4
    i64.store
    local.get $0
    i32.const 16
    i32.add
    local.get $4
    i64.store
    local.get $0
    i32.const 24
    i32.add
    local.get $4
    i64.store
    local.get $2
    i32.const 32
    i32.sub
    local.set $2
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
   i32.const 0
   local.get $0
   call $~lib/internal/memory/memset
  end
  local.get $2
 )
 (func $~lib/set/Set<i8>#clear (; 5 ;) (type $iv) (param $0 i32)
  local.get $0
  i32.const 16
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $0
  i32.const 3
  i32.store offset=4
  local.get $0
  i32.const 32
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
 (func $~lib/set/Set<i8>#constructor (; 6 ;) (type $FUNCSIG$i) (result i32)
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
  call $~lib/set/Set<i8>#clear
  local.get $0
 )
 (func $~lib/set/Set<i8>#find (; 7 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
    i32.load offset=4
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
    i32.load offset=4
    i32.const -2
    i32.and
    local.set $2
    br $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<i8>#has (; 8 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  i32.const 3
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
  i32.const 3
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
    i32.load offset=4
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
     i32.store offset=4
     local.get $8
     local.get $3
     i32.store offset=8
     local.get $3
     i32.const 8
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 8
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
 (func $~lib/set/Set<i8>#add (; 10 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  local.tee $2
  local.set $4
  local.get $0
  local.get $1
  local.get $2
  call $~lib/set/Set<i8>#find
  i32.eqz
  if
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
    call $~lib/set/Set<i8>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $2
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $3
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $2
   i32.const 8
   i32.add
   local.get $3
   i32.const 3
   i32.shl
   i32.add
   local.tee $2
   local.get $1
   i32.store8
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $2
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   local.get $4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $3
   i32.load offset=8
   i32.store offset=4
   local.get $3
   local.get $2
   i32.store offset=8
  end
 )
 (func $~lib/set/Set<i8>#delete (; 11 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/set/Set<i8>#find
  local.tee $1
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $1
  local.get $1
  i32.load offset=4
  i32.const 1
  i32.or
  i32.store offset=4
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
   call $~lib/set/Set<i8>#rehash
  end
  i32.const 1
 )
 (func $std/set/test<i8> (; 12 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  call $~lib/set/Set<i8>#constructor
  local.set $1
  loop $repeat|0
   local.get $0
   i32.const 100
   i32.lt_s
   if
    local.get $1
    local.get $0
    call $~lib/set/Set<i8>#has
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
    call $~lib/set/Set<i8>#add
    local.get $1
    local.get $0
    call $~lib/set/Set<i8>#has
    if
     local.get $0
     i32.const 1
     i32.add
     local.set $0
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
   end
  end
  local.get $1
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
  i32.const 50
  local.set $0
  loop $repeat|1
   local.get $0
   i32.const 100
   i32.lt_s
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/set/Set<i8>#add
    local.get $1
    local.get $0
    call $~lib/set/Set<i8>#has
    if
     local.get $0
     i32.const 1
     i32.add
     local.set $0
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
   end
  end
  local.get $1
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
  i32.const 0
  local.set $0
  loop $repeat|2
   local.get $0
   i32.const 50
   i32.lt_s
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/set/Set<i8>#delete
    drop
    local.get $1
    local.get $0
    call $~lib/set/Set<i8>#has
    if
     i32.const 0
     i32.const 120
     i32.const 26
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
   i32.const 28
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
    call $~lib/set/Set<i8>#has
    if
     i32.const 0
     i32.const 120
     i32.const 32
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/set/Set<i8>#add
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/set/Set<i8>#delete
    drop
    local.get $1
    local.get $0
    call $~lib/set/Set<i8>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
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
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  call $~lib/set/Set<i8>#clear
  local.get $1
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
  local.get $0
  local.get $1
  local.get $1
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
  i32.const 3
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
  i32.const 3
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
    i32.load offset=4
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
     i32.store offset=4
     local.get $8
     local.get $3
     i32.store offset=8
     local.get $3
     i32.const 8
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 8
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
 (func $~lib/set/Set<u8>#add (; 15 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  local.tee $2
  local.set $4
  local.get $0
  local.get $1
  local.get $2
  call $~lib/set/Set<i8>#find
  i32.eqz
  if
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
    call $~lib/set/Set<u8>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $2
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $3
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $2
   i32.const 8
   i32.add
   local.get $3
   i32.const 3
   i32.shl
   i32.add
   local.tee $2
   local.get $1
   i32.store8
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $2
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   local.get $4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $3
   i32.load offset=8
   i32.store offset=4
   local.get $3
   local.get $2
   i32.store offset=8
  end
 )
 (func $~lib/set/Set<u8>#delete (; 16 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/set/Set<i8>#find
  local.tee $1
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $1
  local.get $1
  i32.load offset=4
  i32.const 1
  i32.or
  i32.store offset=4
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
   call $~lib/set/Set<u8>#rehash
  end
  i32.const 1
 )
 (func $std/set/test<u8> (; 17 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  call $~lib/set/Set<i8>#constructor
  local.set $1
  loop $repeat|0
   local.get $0
   i32.const 100
   i32.lt_u
   if
    local.get $1
    local.get $0
    call $~lib/set/Set<u8>#has
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
    call $~lib/set/Set<u8>#add
    local.get $1
    local.get $0
    call $~lib/set/Set<u8>#has
    if
     local.get $0
     i32.const 1
     i32.add
     local.set $0
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
   end
  end
  local.get $1
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
  i32.const 50
  local.set $0
  loop $repeat|1
   local.get $0
   i32.const 100
   i32.lt_u
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/set/Set<u8>#add
    local.get $1
    local.get $0
    call $~lib/set/Set<u8>#has
    if
     local.get $0
     i32.const 1
     i32.add
     local.set $0
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
   end
  end
  local.get $1
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
  i32.const 0
  local.set $0
  loop $repeat|2
   local.get $0
   i32.const 50
   i32.lt_u
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/set/Set<u8>#delete
    drop
    local.get $1
    local.get $0
    call $~lib/set/Set<u8>#has
    if
     i32.const 0
     i32.const 120
     i32.const 26
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
   i32.const 28
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
    call $~lib/set/Set<u8>#has
    if
     i32.const 0
     i32.const 120
     i32.const 32
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/set/Set<u8>#add
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/set/Set<u8>#delete
    drop
    local.get $1
    local.get $0
    call $~lib/set/Set<u8>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
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
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  call $~lib/set/Set<i8>#clear
  local.get $1
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
    i32.load offset=4
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
    i32.load offset=4
    i32.const -2
    i32.and
    local.set $2
    br $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<i16>#has (; 19 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  local.tee $2
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $2
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
  i32.const 3
  i32.shl
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
  i32.const 3
  i32.shl
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
    i32.load offset=4
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
     i32.store offset=4
     local.get $4
     local.get $3
     i32.store offset=8
     local.get $3
     i32.const 8
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 8
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
 (func $~lib/set/Set<i16>#add (; 21 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  local.tee $2
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $2
  i32.const 8
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
  local.tee $2
  local.set $4
  local.get $0
  local.get $1
  local.get $2
  call $~lib/set/Set<i16>#find
  i32.eqz
  if
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
    call $~lib/set/Set<i16>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $2
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $3
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $2
   i32.const 8
   i32.add
   local.get $3
   i32.const 3
   i32.shl
   i32.add
   local.tee $2
   local.get $1
   i32.store16
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $2
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   local.get $4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $3
   i32.load offset=8
   i32.store offset=4
   local.get $3
   local.get $2
   i32.store offset=8
  end
 )
 (func $~lib/set/Set<i16>#delete (; 22 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/set/Set<i16>#find
  local.tee $1
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $1
  local.get $1
  i32.load offset=4
  i32.const 1
  i32.or
  i32.store offset=4
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
   call $~lib/set/Set<i16>#rehash
  end
  i32.const 1
 )
 (func $std/set/test<i16> (; 23 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  call $~lib/set/Set<i8>#constructor
  local.set $1
  loop $repeat|0
   local.get $0
   i32.const 100
   i32.lt_s
   if
    local.get $1
    local.get $0
    call $~lib/set/Set<i16>#has
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
    call $~lib/set/Set<i16>#add
    local.get $1
    local.get $0
    call $~lib/set/Set<i16>#has
    if
     local.get $0
     i32.const 1
     i32.add
     local.set $0
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
   end
  end
  local.get $1
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
  i32.const 50
  local.set $0
  loop $repeat|1
   local.get $0
   i32.const 100
   i32.lt_s
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/set/Set<i16>#add
    local.get $1
    local.get $0
    call $~lib/set/Set<i16>#has
    if
     local.get $0
     i32.const 1
     i32.add
     local.set $0
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
   end
  end
  local.get $1
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
  i32.const 0
  local.set $0
  loop $repeat|2
   local.get $0
   i32.const 50
   i32.lt_s
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/set/Set<i16>#delete
    drop
    local.get $1
    local.get $0
    call $~lib/set/Set<i16>#has
    if
     i32.const 0
     i32.const 120
     i32.const 26
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
   i32.const 28
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
    call $~lib/set/Set<i16>#has
    if
     i32.const 0
     i32.const 120
     i32.const 32
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/set/Set<i16>#add
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/set/Set<i16>#delete
    drop
    local.get $1
    local.get $0
    call $~lib/set/Set<i16>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
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
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  call $~lib/set/Set<i8>#clear
  local.get $1
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
  local.get $0
  local.get $1
  local.get $1
  i32.const 65535
  i32.and
  local.tee $2
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $2
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
  i32.const 3
  i32.shl
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
  i32.const 3
  i32.shl
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
    i32.load offset=4
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
     i32.store offset=4
     local.get $4
     local.get $3
     i32.store offset=8
     local.get $3
     i32.const 8
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 8
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
 (func $~lib/set/Set<u16>#add (; 26 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 65535
  i32.and
  local.tee $2
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $2
  i32.const 8
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
  local.tee $2
  local.set $4
  local.get $0
  local.get $1
  local.get $2
  call $~lib/set/Set<i16>#find
  i32.eqz
  if
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
    call $~lib/set/Set<u16>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $2
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $3
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $2
   i32.const 8
   i32.add
   local.get $3
   i32.const 3
   i32.shl
   i32.add
   local.tee $2
   local.get $1
   i32.store16
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $2
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   local.get $4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $3
   i32.load offset=8
   i32.store offset=4
   local.get $3
   local.get $2
   i32.store offset=8
  end
 )
 (func $~lib/set/Set<u16>#delete (; 27 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/set/Set<i16>#find
  local.tee $1
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $1
  local.get $1
  i32.load offset=4
  i32.const 1
  i32.or
  i32.store offset=4
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
   call $~lib/set/Set<u16>#rehash
  end
  i32.const 1
 )
 (func $std/set/test<u16> (; 28 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  call $~lib/set/Set<i8>#constructor
  local.set $1
  loop $repeat|0
   local.get $0
   i32.const 100
   i32.lt_u
   if
    local.get $1
    local.get $0
    call $~lib/set/Set<u16>#has
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
    call $~lib/set/Set<u16>#add
    local.get $1
    local.get $0
    call $~lib/set/Set<u16>#has
    if
     local.get $0
     i32.const 1
     i32.add
     local.set $0
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
   end
  end
  local.get $1
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
  i32.const 50
  local.set $0
  loop $repeat|1
   local.get $0
   i32.const 100
   i32.lt_u
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/set/Set<u16>#add
    local.get $1
    local.get $0
    call $~lib/set/Set<u16>#has
    if
     local.get $0
     i32.const 1
     i32.add
     local.set $0
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
   end
  end
  local.get $1
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
  i32.const 0
  local.set $0
  loop $repeat|2
   local.get $0
   i32.const 50
   i32.lt_u
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/set/Set<u16>#delete
    drop
    local.get $1
    local.get $0
    call $~lib/set/Set<u16>#has
    if
     i32.const 0
     i32.const 120
     i32.const 26
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
   i32.const 28
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
    call $~lib/set/Set<u16>#has
    if
     i32.const 0
     i32.const 120
     i32.const 32
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/set/Set<u16>#add
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/set/Set<u16>#delete
    drop
    local.get $1
    local.get $0
    call $~lib/set/Set<u16>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
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
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  call $~lib/set/Set<i8>#clear
  local.get $1
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
 (func $~lib/set/Set<i32>#find (; 30 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
    i32.load offset=4
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
    i32.load offset=4
    i32.const -2
    i32.and
    local.set $2
    br $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<i32>#has (; 31 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
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
  i32.const 3
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
  i32.const 3
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
    i32.load offset=4
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
     i32.store offset=4
     local.get $8
     local.get $3
     i32.store offset=8
     local.get $3
     i32.const 8
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 8
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
 (func $~lib/set/Set<i32>#add (; 33 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/internal/hash/hash32
  local.tee $4
  call $~lib/set/Set<i32>#find
  i32.eqz
  if
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
    call $~lib/set/Set<i32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $2
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $3
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $2
   i32.const 8
   i32.add
   local.get $3
   i32.const 3
   i32.shl
   i32.add
   local.tee $2
   local.get $1
   i32.store
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $2
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   local.get $4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $3
   i32.load offset=8
   i32.store offset=4
   local.get $3
   local.get $2
   i32.store offset=8
  end
 )
 (func $~lib/set/Set<i32>#delete (; 34 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/internal/hash/hash32
  call $~lib/set/Set<i32>#find
  local.tee $1
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $1
  local.get $1
  i32.load offset=4
  i32.const 1
  i32.or
  i32.store offset=4
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
   call $~lib/set/Set<i32>#rehash
  end
  i32.const 1
 )
 (func $std/set/test<i32> (; 35 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  call $~lib/set/Set<i8>#constructor
  local.set $1
  loop $repeat|0
   local.get $0
   i32.const 100
   i32.lt_s
   if
    local.get $1
    local.get $0
    call $~lib/set/Set<i32>#has
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
    call $~lib/set/Set<i32>#add
    local.get $1
    local.get $0
    call $~lib/set/Set<i32>#has
    if
     local.get $0
     i32.const 1
     i32.add
     local.set $0
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
   end
  end
  local.get $1
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
  i32.const 50
  local.set $0
  loop $repeat|1
   local.get $0
   i32.const 100
   i32.lt_s
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/set/Set<i32>#add
    local.get $1
    local.get $0
    call $~lib/set/Set<i32>#has
    if
     local.get $0
     i32.const 1
     i32.add
     local.set $0
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
   end
  end
  local.get $1
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
  i32.const 0
  local.set $0
  loop $repeat|2
   local.get $0
   i32.const 50
   i32.lt_s
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/set/Set<i32>#delete
    drop
    local.get $1
    local.get $0
    call $~lib/set/Set<i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 26
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
   i32.const 28
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
    call $~lib/set/Set<i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 32
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/set/Set<i32>#add
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/set/Set<i32>#delete
    drop
    local.get $1
    local.get $0
    call $~lib/set/Set<i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
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
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  call $~lib/set/Set<i8>#clear
  local.get $1
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
  local.set $1
  loop $repeat|0
   local.get $0
   i32.const 100
   i32.lt_u
   if
    local.get $1
    local.get $0
    call $~lib/set/Set<i32>#has
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
    call $~lib/set/Set<i32>#add
    local.get $1
    local.get $0
    call $~lib/set/Set<i32>#has
    if
     local.get $0
     i32.const 1
     i32.add
     local.set $0
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
   end
  end
  local.get $1
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
  i32.const 50
  local.set $0
  loop $repeat|1
   local.get $0
   i32.const 100
   i32.lt_u
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/set/Set<i32>#add
    local.get $1
    local.get $0
    call $~lib/set/Set<i32>#has
    if
     local.get $0
     i32.const 1
     i32.add
     local.set $0
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
   end
  end
  local.get $1
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
  i32.const 0
  local.set $0
  loop $repeat|2
   local.get $0
   i32.const 50
   i32.lt_u
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/set/Set<i32>#delete
    drop
    local.get $1
    local.get $0
    call $~lib/set/Set<i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 26
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
   i32.const 28
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
    call $~lib/set/Set<i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 32
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/set/Set<i32>#add
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/set/Set<i32>#delete
    drop
    local.get $1
    local.get $0
    call $~lib/set/Set<i32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
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
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  call $~lib/set/Set<i8>#clear
  local.get $1
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
 (func $~lib/set/Set<i64>#constructor (; 38 ;) (type $FUNCSIG$i) (result i32)
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
  call $~lib/set/Set<i64>#clear
  local.get $0
 )
 (func $~lib/internal/hash/hash64 (; 39 ;) (type $Ii) (param $0 i64) (result i32)
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
 (func $~lib/set/Set<i64>#find (; 40 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
    i32.load offset=8
    i32.const -2
    i32.and
    local.set $2
    br $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<i64>#has (; 41 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  local.get $0
  local.get $1
  local.get $1
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
    i32.load offset=8
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
     i32.store offset=8
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
 (func $~lib/set/Set<i64>#add (; 43 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/internal/hash/hash64
  local.tee $4
  call $~lib/set/Set<i64>#find
  i32.eqz
  if
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
    call $~lib/set/Set<i64>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $2
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $3
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $2
   i32.const 8
   i32.add
   local.get $3
   i32.const 4
   i32.shl
   i32.add
   local.tee $2
   local.get $1
   i64.store
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $2
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   local.get $4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $3
   i32.load offset=8
   i32.store offset=8
   local.get $3
   local.get $2
   i32.store offset=8
  end
 )
 (func $~lib/set/Set<i64>#delete (; 44 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/internal/hash/hash64
  call $~lib/set/Set<i64>#find
  local.tee $2
  i32.eqz
  if
   i32.const 0
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
   local.set $2
  end
  local.get $2
  if
   local.get $0
   local.get $3
   call $~lib/set/Set<i64>#rehash
  end
  i32.const 1
 )
 (func $std/set/test<i64> (; 45 ;) (type $v)
  (local $0 i64)
  (local $1 i32)
  call $~lib/set/Set<i64>#constructor
  local.set $1
  loop $repeat|0
   local.get $0
   i64.const 100
   i64.lt_s
   if
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#has
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
    call $~lib/set/Set<i64>#add
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#has
    if
     local.get $0
     i64.const 1
     i64.add
     local.set $0
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
   end
  end
  local.get $1
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
  i64.const 50
  local.set $0
  loop $repeat|1
   local.get $0
   i64.const 100
   i64.lt_s
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#add
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#has
    if
     local.get $0
     i64.const 1
     i64.add
     local.set $0
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
   end
  end
  local.get $1
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
  i64.const 0
  local.set $0
  loop $repeat|2
   local.get $0
   i64.const 50
   i64.lt_s
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#delete
    drop
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#has
    if
     i32.const 0
     i32.const 120
     i32.const 26
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
   i32.const 28
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
    call $~lib/set/Set<i64>#has
    if
     i32.const 0
     i32.const 120
     i32.const 32
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#add
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#delete
    drop
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
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
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  call $~lib/set/Set<i64>#clear
  local.get $1
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
  local.set $1
  loop $repeat|0
   local.get $0
   i64.const 100
   i64.lt_u
   if
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#has
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
    call $~lib/set/Set<i64>#add
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#has
    if
     local.get $0
     i64.const 1
     i64.add
     local.set $0
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
   end
  end
  local.get $1
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
  i64.const 50
  local.set $0
  loop $repeat|1
   local.get $0
   i64.const 100
   i64.lt_u
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#add
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#has
    if
     local.get $0
     i64.const 1
     i64.add
     local.set $0
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
   end
  end
  local.get $1
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
  i64.const 0
  local.set $0
  loop $repeat|2
   local.get $0
   i64.const 50
   i64.lt_u
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#delete
    drop
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#has
    if
     i32.const 0
     i32.const 120
     i32.const 26
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
   i32.const 28
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
    call $~lib/set/Set<i64>#has
    if
     i32.const 0
     i32.const 120
     i32.const 32
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#add
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#delete
    drop
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
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
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  call $~lib/set/Set<i64>#clear
  local.get $1
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
 (func $~lib/set/Set<f32>#find (; 47 ;) (type $ifii) (param $0 i32) (param $1 f32) (param $2 i32) (result i32)
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
    i32.load offset=4
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
    i32.load offset=4
    i32.const -2
    i32.and
    local.set $2
    br $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<f32>#has (; 48 ;) (type $ifi) (param $0 i32) (param $1 f32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  i32.reinterpret_f32
  call $~lib/internal/hash/hash32
  call $~lib/set/Set<f32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<f32>#rehash (; 49 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
  i32.const 3
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
  i32.const 3
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
    i32.load offset=4
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
     i32.store offset=4
     local.get $8
     local.get $3
     i32.store offset=8
     local.get $3
     i32.const 8
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 8
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
 (func $~lib/set/Set<f32>#add (; 50 ;) (type $ifv) (param $0 i32) (param $1 f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  local.get $1
  i32.reinterpret_f32
  call $~lib/internal/hash/hash32
  local.tee $4
  call $~lib/set/Set<f32>#find
  i32.eqz
  if
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
    call $~lib/set/Set<f32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $2
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $3
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $2
   i32.const 8
   i32.add
   local.get $3
   i32.const 3
   i32.shl
   i32.add
   local.tee $2
   local.get $1
   f32.store
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $2
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   local.get $4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $3
   i32.load offset=8
   i32.store offset=4
   local.get $3
   local.get $2
   i32.store offset=8
  end
 )
 (func $~lib/set/Set<f32>#delete (; 51 ;) (type $ifi) (param $0 i32) (param $1 f32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  local.get $1
  i32.reinterpret_f32
  call $~lib/internal/hash/hash32
  call $~lib/set/Set<f32>#find
  local.tee $2
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $2
  local.get $2
  i32.load offset=4
  i32.const 1
  i32.or
  i32.store offset=4
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
   local.set $2
  end
  local.get $2
  if
   local.get $0
   local.get $3
   call $~lib/set/Set<f32>#rehash
  end
  i32.const 1
 )
 (func $std/set/test<f32> (; 52 ;) (type $v)
  (local $0 f32)
  (local $1 i32)
  call $~lib/set/Set<i8>#constructor
  local.set $1
  loop $repeat|0
   local.get $0
   f32.const 100
   f32.lt
   if
    local.get $1
    local.get $0
    call $~lib/set/Set<f32>#has
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
    call $~lib/set/Set<f32>#add
    local.get $1
    local.get $0
    call $~lib/set/Set<f32>#has
    if
     local.get $0
     f32.const 1
     f32.add
     local.set $0
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
   end
  end
  local.get $1
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
  f32.const 50
  local.set $0
  loop $repeat|1
   local.get $0
   f32.const 100
   f32.lt
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/set/Set<f32>#add
    local.get $1
    local.get $0
    call $~lib/set/Set<f32>#has
    if
     local.get $0
     f32.const 1
     f32.add
     local.set $0
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
   end
  end
  local.get $1
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
  f32.const 0
  local.set $0
  loop $repeat|2
   local.get $0
   f32.const 50
   f32.lt
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/set/Set<f32>#delete
    drop
    local.get $1
    local.get $0
    call $~lib/set/Set<f32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 26
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
   i32.const 28
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
    call $~lib/set/Set<f32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 32
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/set/Set<f32>#add
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/set/Set<f32>#delete
    drop
    local.get $1
    local.get $0
    call $~lib/set/Set<f32>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
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
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  call $~lib/set/Set<i8>#clear
  local.get $1
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
 (func $~lib/set/Set<f64>#find (; 53 ;) (type $iFii) (param $0 i32) (param $1 f64) (param $2 i32) (result i32)
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
    i32.load offset=8
    i32.const -2
    i32.and
    local.set $2
    br $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<f64>#has (; 54 ;) (type $iFi) (param $0 i32) (param $1 f64) (result i32)
  local.get $0
  local.get $1
  local.get $1
  i64.reinterpret_f64
  call $~lib/internal/hash/hash64
  call $~lib/set/Set<f64>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<f64>#rehash (; 55 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
    i32.load offset=8
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
     i32.store offset=8
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
 (func $~lib/set/Set<f64>#add (; 56 ;) (type $iFv) (param $0 i32) (param $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  local.get $1
  i64.reinterpret_f64
  call $~lib/internal/hash/hash64
  local.tee $4
  call $~lib/set/Set<f64>#find
  i32.eqz
  if
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
    call $~lib/set/Set<f64>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $2
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $3
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $2
   i32.const 8
   i32.add
   local.get $3
   i32.const 4
   i32.shl
   i32.add
   local.tee $2
   local.get $1
   f64.store
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $2
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   local.get $4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $3
   i32.load offset=8
   i32.store offset=8
   local.get $3
   local.get $2
   i32.store offset=8
  end
 )
 (func $~lib/set/Set<f64>#delete (; 57 ;) (type $iFi) (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  local.get $1
  i64.reinterpret_f64
  call $~lib/internal/hash/hash64
  call $~lib/set/Set<f64>#find
  local.tee $2
  i32.eqz
  if
   i32.const 0
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
   local.set $2
  end
  local.get $2
  if
   local.get $0
   local.get $3
   call $~lib/set/Set<f64>#rehash
  end
  i32.const 1
 )
 (func $std/set/test<f64> (; 58 ;) (type $v)
  (local $0 f64)
  (local $1 i32)
  call $~lib/set/Set<i64>#constructor
  local.set $1
  loop $repeat|0
   local.get $0
   f64.const 100
   f64.lt
   if
    local.get $1
    local.get $0
    call $~lib/set/Set<f64>#has
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
    call $~lib/set/Set<f64>#add
    local.get $1
    local.get $0
    call $~lib/set/Set<f64>#has
    if
     local.get $0
     f64.const 1
     f64.add
     local.set $0
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
   end
  end
  local.get $1
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
  f64.const 50
  local.set $0
  loop $repeat|1
   local.get $0
   f64.const 100
   f64.lt
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/set/Set<f64>#add
    local.get $1
    local.get $0
    call $~lib/set/Set<f64>#has
    if
     local.get $0
     f64.const 1
     f64.add
     local.set $0
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
   end
  end
  local.get $1
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
  f64.const 0
  local.set $0
  loop $repeat|2
   local.get $0
   f64.const 50
   f64.lt
   if
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/set/Set<f64>#delete
    drop
    local.get $1
    local.get $0
    call $~lib/set/Set<f64>#has
    if
     i32.const 0
     i32.const 120
     i32.const 26
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
   i32.const 28
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
    call $~lib/set/Set<f64>#has
    if
     i32.const 0
     i32.const 120
     i32.const 32
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/set/Set<f64>#add
    local.get $1
    local.get $0
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
    local.get $1
    local.get $0
    call $~lib/set/Set<f64>#delete
    drop
    local.get $1
    local.get $0
    call $~lib/set/Set<f64>#has
    if
     i32.const 0
     i32.const 120
     i32.const 36
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
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  call $~lib/set/Set<i64>#clear
  local.get $1
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
 (func $start (; 59 ;) (type $v)
  i32.const 144
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
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
 (func $null (; 60 ;) (type $v)
  nop
 )
)
