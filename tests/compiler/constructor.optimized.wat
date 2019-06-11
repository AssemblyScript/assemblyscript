(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $constructor/emptyCtor (mut i32) (i32.const 0))
 (global $constructor/emptyCtorWithFieldInit (mut i32) (i32.const 0))
 (global $constructor/emptyCtorWithFieldNoInit (mut i32) (i32.const 0))
 (global $constructor/none (mut i32) (i32.const 0))
 (global $constructor/justFieldInit (mut i32) (i32.const 0))
 (global $constructor/justFieldNoInit (mut i32) (i32.const 0))
 (global $constructor/ctorReturns (mut i32) (i32.const 0))
 (global $constructor/b i32 (i32.const 1))
 (global $constructor/ctorConditionallyReturns (mut i32) (i32.const 0))
 (global $constructor/ctorAllocates (mut i32) (i32.const 0))
 (global $constructor/ctorConditionallyAllocates (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/rt/stub/__alloc (; 0 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.tee $3
  local.get $0
  i32.const 1
  local.get $0
  i32.const 1
  i32.gt_u
  select
  i32.add
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $2
  memory.size
  local.tee $4
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $4
   local.get $2
   local.get $3
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $5
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $2
  global.set $~lib/rt/stub/offset
  local.get $3
  i32.const 16
  i32.sub
  local.tee $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  local.get $3
 )
 (func $start:constructor (; 1 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 16
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
  i32.const 0
  i32.const 3
  call $~lib/rt/stub/__alloc
  global.set $constructor/emptyCtor
  i32.const 4
  i32.const 4
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 1
  i32.store
  local.get $0
  global.set $constructor/emptyCtorWithFieldInit
  i32.const 4
  i32.const 5
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  global.set $constructor/emptyCtorWithFieldNoInit
  i32.const 0
  i32.const 6
  call $~lib/rt/stub/__alloc
  global.set $constructor/none
  i32.const 4
  i32.const 7
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 1
  i32.store
  local.get $0
  global.set $constructor/justFieldInit
  i32.const 4
  i32.const 8
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  global.set $constructor/justFieldNoInit
  i32.const 0
  global.set $constructor/ctorReturns
  global.get $constructor/b
  if (result i32)
   i32.const 0
  else   
   i32.const 0
   i32.const 10
   call $~lib/rt/stub/__alloc
  end
  global.set $constructor/ctorConditionallyReturns
  i32.const 0
  i32.const 11
  call $~lib/rt/stub/__alloc
  global.set $constructor/ctorAllocates
  i32.const 0
  local.set $0
  global.get $constructor/b
  if
   i32.const 0
   i32.const 12
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 12
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
  global.set $constructor/ctorConditionallyAllocates
 )
 (func $start (; 2 ;) (type $FUNCSIG$v)
  call $start:constructor
 )
 (func $null (; 3 ;) (type $FUNCSIG$v)
  nop
 )
)
