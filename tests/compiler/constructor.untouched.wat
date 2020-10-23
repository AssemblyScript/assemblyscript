(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (memory $0 0)
 (table $0 1 funcref)
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $constructor/emptyCtor (mut i32) (i32.const 0))
 (global $constructor/emptyCtorWithFieldInit (mut i32) (i32.const 0))
 (global $constructor/emptyCtorWithFieldNoInit (mut i32) (i32.const 0))
 (global $constructor/emptyCtorWithFieldAccess (mut i32) (i32.const 0))
 (global $constructor/none (mut i32) (i32.const 0))
 (global $constructor/justFieldInit (mut i32) (i32.const 0))
 (global $constructor/justFieldNoInit (mut i32) (i32.const 0))
 (global $constructor/ctorReturns (mut i32) (i32.const 0))
 (global $constructor/b (mut i32) (i32.const 1))
 (global $constructor/ctorConditionallyReturns (mut i32) (i32.const 0))
 (global $constructor/ctorConditionallyReturnsThis (mut i32) (i32.const 0))
 (global $~lib/memory/__heap_base i32 (i32.const 8))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/stub/computeSize (param $0 i32) (result i32)
  local.get $0
  i32.const 4
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  i32.const 4
  i32.sub
 )
 (func $~lib/rt/stub/maybeGrowMemory (param $0 i32)
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
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
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
 (func $~lib/rt/stub/__alloc (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  local.set $1
  global.get $~lib/rt/stub/offset
  i32.const 4
  i32.add
  local.set $2
  local.get $0
  call $~lib/rt/stub/computeSize
  local.set $3
  local.get $2
  local.get $3
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $1
  local.get $3
  i32.store
  local.get $2
 )
 (func $~lib/rt/stub/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741804
  i32.gt_u
  if
   unreachable
  end
  i32.const 16
  local.get $0
  i32.add
  call $~lib/rt/stub/__alloc
  local.set $2
  local.get $2
  i32.const 4
  i32.sub
  local.set $3
  local.get $3
  i32.const 0
  i32.store offset=4
  local.get $3
  i32.const 0
  i32.store offset=8
  local.get $3
  local.get $1
  i32.store offset=12
  local.get $3
  local.get $0
  i32.store offset=16
  local.get $2
  i32.const 16
  i32.add
 )
 (func $~lib/rt/stub/__retain (param $0 i32) (result i32)
  local.get $0
 )
 (func $constructor/EmptyCtor#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 3
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
 )
 (func $constructor/EmptyCtorWithFieldInit#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 4
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 1
  i32.store
  local.get $0
 )
 (func $constructor/EmptyCtorWithFieldNoInit#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 5
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
 )
 (func $constructor/EmptyCtorWithFieldAccess#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 6
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 1
  i32.store
  local.get $0
 )
 (func $constructor/None#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 7
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
 )
 (func $constructor/JustFieldInit#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 8
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 1
  i32.store
  local.get $0
 )
 (func $constructor/JustFieldNoInit#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 9
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
 )
 (func $~lib/rt/stub/__release (param $0 i32)
  nop
 )
 (func $constructor/CtorReturns#constructor (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 0
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $constructor/CtorConditionallyReturns#constructor (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 11
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $0
  end
  global.get $constructor/b
  if
   i32.const 0
   call $~lib/rt/stub/__retain
   local.set $1
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   return
  end
  local.get $0
 )
 (func $constructor/CtorConditionallyReturnsThis#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 12
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $0
  end
  global.get $constructor/b
  if
   local.get $0
   return
  end
  local.get $0
 )
 (func $start:constructor
  global.get $~lib/memory/__heap_base
  i32.const 4
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  i32.const 4
  i32.sub
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
  i32.const 0
  call $constructor/EmptyCtor#constructor
  global.set $constructor/emptyCtor
  i32.const 0
  call $constructor/EmptyCtorWithFieldInit#constructor
  global.set $constructor/emptyCtorWithFieldInit
  i32.const 0
  call $constructor/EmptyCtorWithFieldNoInit#constructor
  global.set $constructor/emptyCtorWithFieldNoInit
  i32.const 0
  call $constructor/EmptyCtorWithFieldAccess#constructor
  global.set $constructor/emptyCtorWithFieldAccess
  i32.const 0
  call $constructor/None#constructor
  global.set $constructor/none
  i32.const 0
  call $constructor/JustFieldInit#constructor
  global.set $constructor/justFieldInit
  i32.const 0
  call $constructor/JustFieldNoInit#constructor
  global.set $constructor/justFieldNoInit
  i32.const 0
  call $constructor/CtorReturns#constructor
  global.set $constructor/ctorReturns
  i32.const 0
  call $constructor/CtorConditionallyReturns#constructor
  global.set $constructor/ctorConditionallyReturns
  i32.const 0
  call $constructor/CtorConditionallyReturnsThis#constructor
  global.set $constructor/ctorConditionallyReturnsThis
 )
 (func $~start
  call $start:constructor
 )
)
