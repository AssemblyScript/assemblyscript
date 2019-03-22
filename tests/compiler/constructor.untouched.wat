(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/runtime/GC_IMPLEMENTED i32 (i32.const 0))
 (global $~lib/runtime/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/runtime/HEADER_MAGIC i32 (i32.const -1520547049))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/ASC_NO_ASSERT i32 (i32.const 0))
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
 (global $~lib/memory/HEAP_BASE i32 (i32.const 48))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/runtime/ADJUSTOBLOCK (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 1
  i32.const 32
  local.get $0
  global.get $~lib/runtime/HEADER_SIZE
  i32.add
  i32.const 1
  i32.sub
  i32.clz
  i32.sub
  i32.shl
 )
 (func $~lib/memory/memory.allocate (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/allocator/arena/__memory_allocate|inlined.0 (result i32)
   local.get $0
   local.set $1
   local.get $1
   i32.const 1073741824
   i32.gt_u
   if
    unreachable
   end
   global.get $~lib/allocator/arena/offset
   local.set $2
   local.get $2
   local.get $1
   local.tee $3
   i32.const 1
   local.tee $4
   local.get $3
   local.get $4
   i32.gt_u
   select
   i32.add
   i32.const 7
   i32.add
   i32.const 7
   i32.const -1
   i32.xor
   i32.and
   local.set $3
   current_memory
   local.set $4
   local.get $3
   local.get $4
   i32.const 16
   i32.shl
   i32.gt_u
   if
    local.get $3
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
    local.set $5
    local.get $4
    local.tee $6
    local.get $5
    local.tee $7
    local.get $6
    local.get $7
    i32.gt_s
    select
    local.set $6
    local.get $6
    grow_memory
    i32.const 0
    i32.lt_s
    if
     local.get $5
     grow_memory
     i32.const 0
     i32.lt_s
     if
      unreachable
     end
    end
   end
   local.get $3
   global.set $~lib/allocator/arena/offset
   local.get $2
  end
  return
 )
 (func $~lib/runtime/doAllocate (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/runtime/ADJUSTOBLOCK
  call $~lib/memory/memory.allocate
  local.set $1
  local.get $1
  global.get $~lib/runtime/HEADER_MAGIC
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  global.get $~lib/runtime/HEADER_SIZE
  i32.add
 )
 (func $~lib/runtime/assertUnregistered (; 4 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.get $~lib/memory/HEAP_BASE
  i32.gt_u
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 313
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  global.get $~lib/runtime/HEADER_SIZE
  i32.sub
  i32.load
  global.get $~lib/runtime/HEADER_MAGIC
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 314
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/runtime/doRegister (; 5 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  call $~lib/runtime/assertUnregistered
  local.get $0
  global.get $~lib/runtime/HEADER_SIZE
  i32.sub
  local.get $1
  i32.store
  local.get $0
 )
 (func $constructor/EmptyCtor#constructor (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.eqz
  if
   block $~lib/runtime/REGISTER<EmptyCtor>|inlined.0 (result i32)
    block $~lib/runtime/ALLOCATE|inlined.0 (result i32)
     i32.const 0
     local.set $1
     local.get $1
     call $~lib/runtime/doAllocate
    end
    local.set $1
    local.get $1
    i32.const 1
    call $~lib/runtime/doRegister
   end
   local.set $0
  end
  local.get $0
 )
 (func $constructor/EmptyCtorWithFieldInit#constructor (; 7 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.eqz
  if
   block $~lib/runtime/REGISTER<EmptyCtorWithFieldInit>|inlined.0 (result i32)
    block $~lib/runtime/ALLOCATE|inlined.1 (result i32)
     i32.const 4
     local.set $1
     local.get $1
     call $~lib/runtime/doAllocate
    end
    local.set $1
    local.get $1
    i32.const 3
    call $~lib/runtime/doRegister
   end
   local.set $0
  end
  local.get $0
  i32.const 1
  i32.store
  local.get $0
 )
 (func $constructor/EmptyCtorWithFieldNoInit#constructor (; 8 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.eqz
  if
   block $~lib/runtime/REGISTER<EmptyCtorWithFieldNoInit>|inlined.0 (result i32)
    block $~lib/runtime/ALLOCATE|inlined.2 (result i32)
     i32.const 4
     local.set $1
     local.get $1
     call $~lib/runtime/doAllocate
    end
    local.set $1
    local.get $1
    i32.const 4
    call $~lib/runtime/doRegister
   end
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
 )
 (func $constructor/None#constructor (; 9 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.eqz
  if
   block $~lib/runtime/REGISTER<None>|inlined.0 (result i32)
    block $~lib/runtime/ALLOCATE|inlined.3 (result i32)
     i32.const 0
     local.set $1
     local.get $1
     call $~lib/runtime/doAllocate
    end
    local.set $1
    local.get $1
    i32.const 5
    call $~lib/runtime/doRegister
   end
   local.set $0
  end
  local.get $0
 )
 (func $constructor/JustFieldInit#constructor (; 10 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.eqz
  if
   block $~lib/runtime/REGISTER<JustFieldInit>|inlined.0 (result i32)
    block $~lib/runtime/ALLOCATE|inlined.4 (result i32)
     i32.const 4
     local.set $1
     local.get $1
     call $~lib/runtime/doAllocate
    end
    local.set $1
    local.get $1
    i32.const 6
    call $~lib/runtime/doRegister
   end
   local.set $0
  end
  local.get $0
  i32.const 1
  i32.store
  local.get $0
 )
 (func $constructor/JustFieldNoInit#constructor (; 11 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.eqz
  if
   block $~lib/runtime/REGISTER<JustFieldNoInit>|inlined.0 (result i32)
    block $~lib/runtime/ALLOCATE|inlined.5 (result i32)
     i32.const 4
     local.set $1
     local.get $1
     call $~lib/runtime/doAllocate
    end
    local.set $1
    local.get $1
    i32.const 7
    call $~lib/runtime/doRegister
   end
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
 )
 (func $constructor/CtorReturns#constructor (; 12 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  call $~lib/memory/memory.allocate
 )
 (func $constructor/CtorConditionallyReturns#constructor (; 13 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  global.get $constructor/b
  if
   i32.const 0
   call $~lib/memory/memory.allocate
   return
  end
  local.get $0
  i32.eqz
  if
   block $~lib/runtime/REGISTER<CtorConditionallyReturns>|inlined.0 (result i32)
    block $~lib/runtime/ALLOCATE|inlined.6 (result i32)
     i32.const 0
     local.set $1
     local.get $1
     call $~lib/runtime/doAllocate
    end
    local.set $1
    local.get $1
    i32.const 8
    call $~lib/runtime/doRegister
   end
   local.set $0
  end
  local.get $0
 )
 (func $constructor/CtorAllocates#constructor (; 14 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    block $~lib/runtime/REGISTER<CtorAllocates>|inlined.0 (result i32)
     block $~lib/runtime/ALLOCATE|inlined.7 (result i32)
      i32.const 0
      local.set $1
      local.get $1
      call $~lib/runtime/doAllocate
     end
     local.set $1
     local.get $1
     i32.const 9
     call $~lib/runtime/doRegister
    end
    local.set $0
   end
   local.get $0
  end
  drop
  local.get $0
 )
 (func $constructor/CtorConditionallyAllocates#constructor (; 15 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  global.get $constructor/b
  if
   block (result i32)
    local.get $0
    i32.eqz
    if
     block $~lib/runtime/REGISTER<CtorConditionallyAllocates>|inlined.0 (result i32)
      block $~lib/runtime/ALLOCATE|inlined.8 (result i32)
       i32.const 0
       local.set $1
       local.get $1
       call $~lib/runtime/doAllocate
      end
      local.set $1
      local.get $1
      i32.const 10
      call $~lib/runtime/doRegister
     end
     local.set $0
    end
    local.get $0
   end
   drop
  end
  local.get $0
  i32.eqz
  if
   block $~lib/runtime/REGISTER<CtorConditionallyAllocates>|inlined.1 (result i32)
    block $~lib/runtime/ALLOCATE|inlined.9 (result i32)
     i32.const 0
     local.set $1
     local.get $1
     call $~lib/runtime/doAllocate
    end
    local.set $1
    local.get $1
    i32.const 10
    call $~lib/runtime/doRegister
   end
   local.set $0
  end
  local.get $0
 )
 (func $start:constructor (; 16 ;) (type $FUNCSIG$v)
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
 (func $start (; 17 ;) (type $FUNCSIG$v)
  call $start:constructor
 )
 (func $null (; 18 ;) (type $FUNCSIG$v)
 )
)
