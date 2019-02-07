(module
 (type $ii (func (param i32) (result i32)))
 (type $_ (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $std/constructor/emptyCtor (mut i32) (i32.const 0))
 (global $std/constructor/emptyCtorWithFieldInit (mut i32) (i32.const 0))
 (global $std/constructor/emptyCtorWithFieldNoInit (mut i32) (i32.const 0))
 (global $std/constructor/none (mut i32) (i32.const 0))
 (global $std/constructor/justFieldInit (mut i32) (i32.const 0))
 (global $std/constructor/justFieldNoInit (mut i32) (i32.const 0))
 (global $std/constructor/ctorReturns (mut i32) (i32.const 0))
 (global $std/constructor/b (mut i32) (i32.const 1))
 (global $std/constructor/ctorConditionallyReturns (mut i32) (i32.const 0))
 (global $std/constructor/ctorAllocates (mut i32) (i32.const 0))
 (global $std/constructor/ctorConditionallyAllocates (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/allocator/arena/__memory_allocate (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  global.get $~lib/internal/allocator/MAX_SIZE_32
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
  global.get $~lib/internal/allocator/AL_MASK
  i32.add
  global.get $~lib/internal/allocator/AL_MASK
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
 (func $~lib/memory/memory.allocate (; 1 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/allocator/arena/__memory_allocate
  return
 )
 (func $std/constructor/EmptyCtor#constructor (; 2 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
 )
 (func $std/constructor/EmptyCtorWithFieldInit#constructor (; 3 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $std/constructor/EmptyCtorWithFieldNoInit#constructor (; 4 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $std/constructor/None#constructor (; 5 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
 )
 (func $std/constructor/JustFieldInit#constructor (; 6 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $std/constructor/JustFieldNoInit#constructor (; 7 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $std/constructor/CtorReturns#constructor (; 8 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  block $~lib/memory/memory.allocate|inlined.0 (result i32)
   i32.const 0
   local.set $1
   local.get $1
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.0
  end
 )
 (func $std/constructor/CtorConditionallyReturns#constructor (; 9 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  global.get $std/constructor/b
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
 (func $std/constructor/CtorAllocates#constructor (; 10 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $std/constructor/CtorConditionallyAllocates#constructor (; 11 ;) (type $ii) (param $0 i32) (result i32)
  global.get $std/constructor/b
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
 (func $start (; 12 ;) (type $_)
  global.get $HEAP_BASE
  global.get $~lib/internal/allocator/AL_MASK
  i32.add
  global.get $~lib/internal/allocator/AL_MASK
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  i32.const 0
  call $std/constructor/EmptyCtor#constructor
  global.set $std/constructor/emptyCtor
  i32.const 0
  call $std/constructor/EmptyCtorWithFieldInit#constructor
  global.set $std/constructor/emptyCtorWithFieldInit
  i32.const 0
  call $std/constructor/EmptyCtorWithFieldNoInit#constructor
  global.set $std/constructor/emptyCtorWithFieldNoInit
  i32.const 0
  call $std/constructor/None#constructor
  global.set $std/constructor/none
  i32.const 0
  call $std/constructor/JustFieldInit#constructor
  global.set $std/constructor/justFieldInit
  i32.const 0
  call $std/constructor/JustFieldNoInit#constructor
  global.set $std/constructor/justFieldNoInit
  i32.const 0
  call $std/constructor/CtorReturns#constructor
  global.set $std/constructor/ctorReturns
  i32.const 0
  call $std/constructor/CtorConditionallyReturns#constructor
  global.set $std/constructor/ctorConditionallyReturns
  i32.const 0
  call $std/constructor/CtorAllocates#constructor
  global.set $std/constructor/ctorAllocates
  i32.const 0
  call $std/constructor/CtorConditionallyAllocates#constructor
  global.set $std/constructor/ctorConditionallyAllocates
 )
 (func $null (; 13 ;) (type $_)
 )
)
