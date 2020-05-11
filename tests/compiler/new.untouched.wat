(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (memory $0 0)
 (table $0 1 funcref)
 (global $new/ref (mut i32) (i32.const 0))
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $new/gen (mut i32) (i32.const 0))
 (global $new/ref2 (mut i32) (i32.const 0))
 (global $~lib/heap/__heap_base i32 (i32.const 8))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/stub/maybeGrowMemory (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
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
   local.set $6
   local.get $6
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
 (func $~lib/rt/stub/__alloc (param $0 i32) (param $1 i32) (result i32)
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
  i32.const 1
  drop
  local.get $6
  i32.const 1
  i32.store offset=4
  local.get $6
  local.get $1
  i32.store offset=8
  local.get $6
  local.get $0
  i32.store offset=12
  local.get $2
 )
 (func $~lib/rt/stub/__retain (param $0 i32) (result i32)
  local.get $0
 )
 (func $new/Ref#constructor (param $0 i32) (result i32)
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
 (func $~lib/rt/stub/__release (param $0 i32)
  nop
 )
 (func $new/Ref#get:ref (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/stub/__retain
 )
 (func $new/Gen<i32>#constructor (param $0 i32) (result i32)
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
 (func $new/Gen<i32>#get:gen (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/stub/__retain
 )
 (func $new/ns.Ref#constructor (param $0 i32) (result i32)
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
 (func $new/ns.Ref#get:ref (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/stub/__retain
 )
 (func $start:new
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
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
  local.set $1
  global.get $new/ref
  call $~lib/rt/stub/__release
  local.get $1
  global.set $new/ref
  i32.const 0
  call $new/Ref#constructor
  local.tee $2
  call $new/Ref#get:ref
  local.tee $3
  local.tee $4
  global.get $new/ref
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
  global.set $new/ref
  i32.const 0
  call $new/Gen<i32>#constructor
  local.set $6
  global.get $new/gen
  call $~lib/rt/stub/__release
  local.get $6
  global.set $new/gen
  i32.const 0
  call $new/Gen<i32>#constructor
  local.tee $7
  call $new/Gen<i32>#get:gen
  local.tee $8
  local.tee $9
  global.get $new/gen
  local.tee $10
  i32.ne
  if
   local.get $9
   call $~lib/rt/stub/__retain
   local.set $9
   local.get $10
   call $~lib/rt/stub/__release
  end
  local.get $9
  global.set $new/gen
  i32.const 0
  call $new/ns.Ref#constructor
  local.set $11
  global.get $new/ref2
  call $~lib/rt/stub/__release
  local.get $11
  global.set $new/ref2
  i32.const 0
  call $new/ns.Ref#constructor
  local.set $12
  global.get $new/ref2
  call $~lib/rt/stub/__release
  local.get $12
  global.set $new/ref2
  i32.const 0
  call $new/ns.Ref#constructor
  local.tee $13
  call $new/ns.Ref#get:ref
  local.tee $14
  local.tee $15
  global.get $new/ref2
  local.tee $16
  i32.ne
  if
   local.get $15
   call $~lib/rt/stub/__retain
   local.set $15
   local.get $16
   call $~lib/rt/stub/__release
  end
  local.get $15
  global.set $new/ref2
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  local.get $8
  call $~lib/rt/stub/__release
  local.get $13
  call $~lib/rt/stub/__release
  local.get $14
  call $~lib/rt/stub/__release
 )
 (func $~start
  call $start:new
 )
)
