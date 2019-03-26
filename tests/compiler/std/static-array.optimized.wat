(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$ji (func (param i32) (result i64)))
 (type $FUNCSIG$fi (func (param i32) (result f32)))
 (type $FUNCSIG$di (func (param i32) (result f64)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\01\00\00\00\08\00\00\00\01\00\00\00\02")
 (data (i32.const 24) "\02\00\00\00\10\00\00\00\10\00\00\00\10\00\00\00\08\00\00\00\02")
 (data (i32.const 48) "\01\00\00\00\10\00\00\00\03\00\00\00\00\00\00\00\04")
 (data (i32.const 72) "\03\00\00\00\10\00\00\008\00\00\008\00\00\00\10\00\00\00\02")
 (data (i32.const 96) "\01\00\00\00\08\00\00\00\00\00\c0?\00\00 @")
 (data (i32.const 112) "\04\00\00\00\10\00\00\00h\00\00\00h\00\00\00\08\00\00\00\02")
 (data (i32.const 136) "\01\00\00\00\10")
 (data (i32.const 150) "\f4?\00\00\00\00\00\00\02@")
 (data (i32.const 160) "\05\00\00\00\10\00\00\00\90\00\00\00\90\00\00\00\10\00\00\00\02")
 (data (i32.const 184) "\06\00\00\00&\00\00\00s\00t\00d\00/\00s\00t\00a\00t\00i\00c\00-\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 232) "\06\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 272) "\06\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/array/Array<i32>#__get (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 40
  i32.load
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 240
   i32.const 98
   i32.const 61
   call $~lib/env/abort
   unreachable
  end
  i32.const 36
  i32.load
  local.get $0
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/memory/memory.fill (; 2 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.eqz
   br_if $~lib/util/memory/memset|inlined.0
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
   br_if $~lib/util/memory/memset|inlined.0
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
   br_if $~lib/util/memory/memset|inlined.0
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
   br_if $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.tee $2
   i32.sub
   local.set $1
   local.get $0
   local.get $2
   i32.add
   local.tee $0
   i32.const 0
   i32.store
   local.get $1
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
   br_if $~lib/util/memory/memset|inlined.0
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
   br_if $~lib/util/memory/memset|inlined.0
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
  end
 )
 (func $~lib/runtime/reallocate (; 3 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 8
  i32.sub
  local.tee $3
  i32.load offset=4
  local.tee $2
  local.get $1
  i32.lt_u
  if
   i32.const 1
   i32.const 32
   local.get $2
   i32.const 7
   i32.add
   i32.clz
   i32.sub
   i32.shl
   i32.const 0
   local.get $0
   i32.const 312
   i32.gt_u
   select
   i32.const 1
   i32.const 32
   local.get $1
   i32.const 7
   i32.add
   i32.clz
   i32.sub
   i32.shl
   i32.lt_u
   if
    unreachable
   else    
    local.get $0
    local.get $2
    i32.add
    local.get $1
    local.get $2
    i32.sub
    call $~lib/memory/memory.fill
   end
  end
  local.get $3
  local.get $1
  i32.store offset=4
  local.get $0
 )
 (func $~lib/array/ensureCapacity (; 4 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1
  local.get $0
  i32.load offset=8
  local.get $1
  i32.shr_u
  i32.gt_u
  if
   i32.const 1
   i32.const 1073741816
   local.get $1
   i32.shr_u
   i32.gt_u
   if
    i32.const 0
    i32.const 240
    i32.const 13
    i32.const 64
    call $~lib/env/abort
    unreachable
   end
   local.get $0
   i32.load
   local.tee $3
   i32.const 1
   local.get $1
   i32.shl
   local.tee $1
   call $~lib/runtime/reallocate
   local.set $2
   local.get $2
   local.get $3
   i32.ne
   if
    local.get $0
    local.get $2
    i32.store
    local.get $0
    local.get $2
    i32.store offset=4
   end
   local.get $0
   local.get $1
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<i32>#__set (; 5 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 44
  i32.load
  local.set $0
  i32.const 32
  i32.const 2
  call $~lib/array/ensureCapacity
  i32.const 36
  i32.load
  i32.const 2
  i32.store
  i32.const 0
  local.get $0
  i32.ge_s
  if
   i32.const 44
   i32.const 1
   i32.store
  end
 )
 (func $~lib/array/Array<i64>#__get (; 6 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i32.const 88
  i32.load
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 240
   i32.const 98
   i32.const 61
   call $~lib/env/abort
   unreachable
  end
  i32.const 84
  i32.load
  local.get $0
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $~lib/array/Array<i64>#__set (; 7 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 92
  i32.load
  local.set $0
  i32.const 80
  i32.const 3
  call $~lib/array/ensureCapacity
  i32.const 84
  i32.load
  i64.const 4
  i64.store
  i32.const 0
  local.get $0
  i32.ge_s
  if
   i32.const 92
   i32.const 1
   i32.store
  end
 )
 (func $~lib/array/Array<f32>#__get (; 8 ;) (type $FUNCSIG$fi) (param $0 i32) (result f32)
  local.get $0
  i32.const 128
  i32.load
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 240
   i32.const 98
   i32.const 61
   call $~lib/env/abort
   unreachable
  end
  i32.const 124
  i32.load
  local.get $0
  i32.const 2
  i32.shl
  i32.add
  f32.load
 )
 (func $~lib/array/Array<f32>#__set (; 9 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 132
  i32.load
  local.set $0
  i32.const 120
  i32.const 2
  call $~lib/array/ensureCapacity
  i32.const 124
  i32.load
  f32.const 2.5
  f32.store
  i32.const 0
  local.get $0
  i32.ge_s
  if
   i32.const 132
   i32.const 1
   i32.store
  end
 )
 (func $~lib/array/Array<f64>#__get (; 10 ;) (type $FUNCSIG$di) (param $0 i32) (result f64)
  local.get $0
  i32.const 176
  i32.load
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 240
   i32.const 98
   i32.const 61
   call $~lib/env/abort
   unreachable
  end
  i32.const 172
  i32.load
  local.get $0
  i32.const 3
  i32.shl
  i32.add
  f64.load
 )
 (func $~lib/array/Array<f64>#__set (; 11 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 180
  i32.load
  local.set $0
  i32.const 168
  i32.const 3
  call $~lib/array/ensureCapacity
  i32.const 172
  i32.load
  f64.const 2.25
  f64.store
  i32.const 0
  local.get $0
  i32.ge_s
  if
   i32.const 180
   i32.const 1
   i32.store
  end
 )
 (func $start:std/static-array (; 12 ;) (type $FUNCSIG$v)
  i32.const 44
  i32.load
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 192
   i32.const 6
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 192
   i32.const 7
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 192
   i32.const 8
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $~lib/array/Array<i32>#__set
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 192
   i32.const 10
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 92
  i32.load
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 192
   i32.const 12
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  call $~lib/array/Array<i64>#__get
  i64.const 3
  i64.ne
  if
   i32.const 0
   i32.const 192
   i32.const 13
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  call $~lib/array/Array<i64>#__get
  i64.const 4
  i64.ne
  if
   i32.const 0
   i32.const 192
   i32.const 14
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $~lib/array/Array<i64>#__set
  i32.const 0
  call $~lib/array/Array<i64>#__get
  i64.const 4
  i64.ne
  if
   i32.const 0
   i32.const 192
   i32.const 16
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 132
  i32.load
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 192
   i32.const 18
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  call $~lib/array/Array<f32>#__get
  f32.const 1.5
  f32.ne
  if
   i32.const 0
   i32.const 192
   i32.const 19
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  call $~lib/array/Array<f32>#__get
  f32.const 2.5
  f32.ne
  if
   i32.const 0
   i32.const 192
   i32.const 20
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $~lib/array/Array<f32>#__set
  i32.const 0
  call $~lib/array/Array<f32>#__get
  f32.const 2.5
  f32.ne
  if
   i32.const 0
   i32.const 192
   i32.const 22
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 180
  i32.load
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 192
   i32.const 24
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  call $~lib/array/Array<f64>#__get
  f64.const 1.25
  f64.ne
  if
   i32.const 0
   i32.const 192
   i32.const 25
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  call $~lib/array/Array<f64>#__get
  f64.const 2.25
  f64.ne
  if
   i32.const 0
   i32.const 192
   i32.const 26
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $~lib/array/Array<f64>#__set
  i32.const 0
  call $~lib/array/Array<f64>#__get
  f64.const 2.25
  f64.ne
  if
   i32.const 0
   i32.const 192
   i32.const 28
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 13 ;) (type $FUNCSIG$v)
  call $start:std/static-array
 )
 (func $null (; 14 ;) (type $FUNCSIG$v)
  nop
 )
)
