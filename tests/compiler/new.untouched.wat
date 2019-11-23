(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $new/ref (mut i32) (i32.const 0))
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $new/gen (mut i32) (i32.const 0))
 (global $new/ref2 (mut i32) (i32.const 0))
 (global $~lib/heap/__heap_base i32 (i32.const 8))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/rt/stub/maybeGrowMemory (; 0 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  memory.size
  local.set $1
  local.get $1
  i32.const 16
  i32.shl
  local.set $2
  local.get $0
  local.get $2
  i32.gt_u
  if
   local.get $0
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
   local.get $1
   local.tee $4
   local.get $3
   local.tee $5
   local.get $4
   local.get $5
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
  local.get $0
  global.set $~lib/rt/stub/offset
 )
 (func $~lib/rt/stub/__alloc (; 1 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
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
  local.get $0
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.tee $3
  i32.const 16
  local.tee $4
  local.get $3
  local.get $4
  i32.gt_u
  select
  local.set $5
  local.get $2
  local.get $5
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $2
  i32.const 16
  i32.sub
  local.set $6
  local.get $6
  local.get $5
  i32.store
  local.get $6
  i32.const -1
  i32.store offset=4
  local.get $6
  local.get $1
  i32.store offset=8
  local.get $6
  local.get $0
  i32.store offset=12
  local.get $2
 )
 (func $~lib/rt/stub/__retain (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $new/Ref#constructor (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 3
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
 )
 (func $~lib/rt/stub/__release (; 4 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $new/Ref#get:ref (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/stub/__retain
 )
 (func $new/Gen<i32>#constructor (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 4
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
 )
 (func $new/Gen<i32>#get:gen (; 7 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/stub/__retain
 )
 (func $new/ns.Ref#constructor (; 8 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 5
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
 )
 (func $new/ns.Ref#get:ref (; 9 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/stub/__retain
 )
 (func $start:new (; 10 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
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
  i32.const 0
  call $new/Ref#constructor
  local.set $0
  global.get $new/ref
  call $~lib/rt/stub/__release
  local.get $0
  global.set $new/ref
  i32.const 0
  call $new/Ref#constructor
  local.set $0
  global.get $new/ref
  call $~lib/rt/stub/__release
  local.get $0
  global.set $new/ref
  i32.const 0
  call $new/Ref#constructor
  local.tee $0
  call $new/Ref#get:ref
  local.tee $1
  local.tee $2
  global.get $new/ref
  local.tee $3
  i32.ne
  if
   local.get $2
   call $~lib/rt/stub/__retain
   local.set $2
   local.get $3
   call $~lib/rt/stub/__release
  end
  local.get $2
  global.set $new/ref
  i32.const 0
  call $new/Gen<i32>#constructor
  local.set $3
  global.get $new/gen
  call $~lib/rt/stub/__release
  local.get $3
  global.set $new/gen
  i32.const 0
  call $new/Gen<i32>#constructor
  local.tee $3
  call $new/Gen<i32>#get:gen
  local.tee $2
  local.tee $4
  global.get $new/gen
  local.tee $5
  i32.ne
  if
   local.get $4
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $5
   call $~lib/rt/stub/__release
  end
  local.get $4
  global.set $new/gen
  i32.const 0
  call $new/ns.Ref#constructor
  local.set $5
  global.get $new/ref2
  call $~lib/rt/stub/__release
  local.get $5
  global.set $new/ref2
  i32.const 0
  call $new/ns.Ref#constructor
  local.set $4
  global.get $new/ref2
  call $~lib/rt/stub/__release
  local.get $4
  global.set $new/ref2
  i32.const 0
  call $new/ns.Ref#constructor
  local.tee $4
  call $new/ns.Ref#get:ref
  local.tee $5
  local.tee $6
  global.get $new/ref2
  local.tee $7
  i32.ne
  if
   local.get $6
   call $~lib/rt/stub/__retain
   local.set $6
   local.get $7
   call $~lib/rt/stub/__release
  end
  local.get $6
  global.set $new/ref2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
 )
 (func $start (; 11 ;) (type $FUNCSIG$v)
  call $start:new
 )
 (func $null (; 12 ;) (type $FUNCSIG$v)
 )
)
