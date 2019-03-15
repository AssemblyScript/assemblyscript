(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$i (func (result i32)))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $constructor/emptyCtor (mut i32) (i32.const 0))
 (global $constructor/emptyCtorWithFieldInit (mut i32) (i32.const 0))
 (global $constructor/emptyCtorWithFieldNoInit (mut i32) (i32.const 0))
 (global $constructor/none (mut i32) (i32.const 0))
 (global $constructor/justFieldInit (mut i32) (i32.const 0))
 (global $constructor/justFieldNoInit (mut i32) (i32.const 0))
 (global $constructor/ctorReturns (mut i32) (i32.const 0))
 (global $constructor/b (mut i32) (i32.const 1))
 (global $constructor/ctorConditionallyReturns (mut i32) (i32.const 0))
 (global $constructor/ctorAllocates (mut i32) (i32.const 0))
 (global $constructor/ctorConditionallyAllocates (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/memory/memory.allocate (; 0 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/runtime/ALLOCATE (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 1
  i32.const 32
  local.get $0
  i32.const 7
  i32.add
  i32.clz
  i32.sub
  i32.shl
  call $~lib/memory/memory.allocate
  local.tee $1
  i32.const -1520547049
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  i32.const 8
  i32.add
 )
 (func $constructor/EmptyCtorWithFieldInit#constructor (; 2 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  i32.const 4
  call $~lib/runtime/ALLOCATE
  local.tee $0
  i32.const 1
  i32.store
  local.get $0
 )
 (func $constructor/EmptyCtorWithFieldNoInit#constructor (; 3 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  i32.const 4
  call $~lib/runtime/ALLOCATE
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
 )
 (func $start:constructor (; 4 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 8
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  i32.const 0
  call $~lib/runtime/ALLOCATE
  global.set $constructor/emptyCtor
  call $constructor/EmptyCtorWithFieldInit#constructor
  global.set $constructor/emptyCtorWithFieldInit
  call $constructor/EmptyCtorWithFieldNoInit#constructor
  global.set $constructor/emptyCtorWithFieldNoInit
  i32.const 0
  call $~lib/runtime/ALLOCATE
  global.set $constructor/none
  call $constructor/EmptyCtorWithFieldInit#constructor
  global.set $constructor/justFieldInit
  call $constructor/EmptyCtorWithFieldNoInit#constructor
  global.set $constructor/justFieldNoInit
  i32.const 0
  call $~lib/memory/memory.allocate
  global.set $constructor/ctorReturns
  block $__inlined_func$constructor/CtorConditionallyReturns#constructor (result i32)
   global.get $constructor/b
   if
    i32.const 0
    call $~lib/memory/memory.allocate
    br $__inlined_func$constructor/CtorConditionallyReturns#constructor
   end
   i32.const 0
   call $~lib/runtime/ALLOCATE
  end
  global.set $constructor/ctorConditionallyReturns
  i32.const 0
  call $~lib/runtime/ALLOCATE
  global.set $constructor/ctorAllocates
  block (result i32)
   global.get $constructor/b
   if
    i32.const 0
    call $~lib/runtime/ALLOCATE
    local.set $0
   end
   local.get $0
   i32.eqz
  end
  if (result i32)
   i32.const 0
   call $~lib/runtime/ALLOCATE
  else   
   local.get $0
  end
  global.set $constructor/ctorConditionallyAllocates
 )
 (func $start (; 5 ;) (type $FUNCSIG$v)
  call $start:constructor
 )
 (func $null (; 6 ;) (type $FUNCSIG$v)
  nop
 )
)
