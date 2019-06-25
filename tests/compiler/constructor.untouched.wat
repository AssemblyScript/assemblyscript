(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
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
 (global $~lib/memory/HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start:~lib/allocator/arena (; 0 ;) (type $FUNCSIG$v)
  global.get $~lib/memory/HEAP_BASE
  i32.const 7
  i32.add
  i32.const 7
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
 )
 (func $~lib/allocator/arena/__memory_allocate (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741824
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/allocator/arena/offset
  local.set $1
  local.get $1
  local.get $0
  local.tee $2
  i32.const 1
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.add
  i32.const 7
  i32.add
  i32.const 7
  i32.const -1
  i32.xor
  i32.and
  local.set $4
  current_memory
  local.set $5
  local.get $4
  local.get $5
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $4
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $2
   local.get $5
   local.tee $3
   local.get $2
   local.tee $6
   local.get $3
   local.get $6
   i32.gt_s
   select
   local.set $3
   local.get $3
   grow_memory
   i32.const 0
   i32.lt_s
   if
    local.get $2
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $4
  global.set $~lib/allocator/arena/offset
  local.get $1
 )
 (func $~lib/memory/memory.allocate (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/allocator/arena/__memory_allocate
  return
 )
 (func $constructor/EmptyCtor#constructor (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
 )
 (func $constructor/EmptyCtorWithFieldInit#constructor (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
  i32.const 1
  i32.store
  local.get $0
 )
 (func $constructor/EmptyCtorWithFieldNoInit#constructor (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
 )
 (func $constructor/None#constructor (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
 )
 (func $constructor/JustFieldInit#constructor (; 7 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
  i32.const 1
  i32.store
  local.get $0
 )
 (func $constructor/JustFieldNoInit#constructor (; 8 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
 )
 (func $constructor/CtorReturns#constructor (; 9 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  block $~lib/memory/memory.allocate|inlined.0 (result i32)
   i32.const 0
   local.set $1
   local.get $1
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.0
  end
 )
 (func $constructor/CtorConditionallyReturns#constructor (; 10 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  global.get $constructor/b
  if
   block $~lib/memory/memory.allocate|inlined.1 (result i32)
    i32.const 0
    local.set $1
    local.get $1
    call $~lib/allocator/arena/__memory_allocate
    br $~lib/memory/memory.allocate|inlined.1
   end
   return
  end
  local.get $0
  i32.eqz
  if
   i32.const 0
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
 )
 (func $constructor/CtorAllocates#constructor (; 11 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 0
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
  end
  drop
  local.get $0
 )
 (func $constructor/CtorConditionallyAllocates#constructor (; 12 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  global.get $constructor/b
  if
   block (result i32)
    local.get $0
    i32.eqz
    if
     i32.const 0
     call $~lib/memory/memory.allocate
     local.set $0
    end
    local.get $0
   end
   drop
  end
  local.get $0
  i32.eqz
  if
   i32.const 0
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
 )
 (func $start:constructor (; 13 ;) (type $FUNCSIG$v)
  call $start:~lib/allocator/arena
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
  call $constructor/CtorAllocates#constructor
  global.set $constructor/ctorAllocates
  i32.const 0
  call $constructor/CtorConditionallyAllocates#constructor
  global.set $constructor/ctorConditionallyAllocates
 )
 (func $start (; 14 ;) (type $FUNCSIG$v)
  call $start:constructor
 )
 (func $null (; 15 ;) (type $FUNCSIG$v)
 )
)
