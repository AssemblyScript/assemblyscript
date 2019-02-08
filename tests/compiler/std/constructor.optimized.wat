(module
 (type $ii (func (param i32) (result i32)))
 (type $_ (func))
 (type $FUNCSIG$i (func (result i32)))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
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
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/allocator/arena/__memory_allocate (; 0 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $std/constructor/EmptyCtorWithFieldInit#constructor (; 1 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  i32.const 4
  call $~lib/allocator/arena/__memory_allocate
  local.tee $0
  i32.const 1
  i32.store
  local.get $0
 )
 (func $std/constructor/EmptyCtorWithFieldNoInit#constructor (; 2 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  i32.const 4
  call $~lib/allocator/arena/__memory_allocate
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
 )
 (func $start (; 3 ;) (type $_)
  (local $0 i32)
  i32.const 8
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  i32.const 0
  call $~lib/allocator/arena/__memory_allocate
  global.set $std/constructor/emptyCtor
  call $std/constructor/EmptyCtorWithFieldInit#constructor
  global.set $std/constructor/emptyCtorWithFieldInit
  call $std/constructor/EmptyCtorWithFieldNoInit#constructor
  global.set $std/constructor/emptyCtorWithFieldNoInit
  i32.const 0
  call $~lib/allocator/arena/__memory_allocate
  global.set $std/constructor/none
  call $std/constructor/EmptyCtorWithFieldInit#constructor
  global.set $std/constructor/justFieldInit
  call $std/constructor/EmptyCtorWithFieldNoInit#constructor
  global.set $std/constructor/justFieldNoInit
  i32.const 0
  call $~lib/allocator/arena/__memory_allocate
  global.set $std/constructor/ctorReturns
  block $__inlined_func$std/constructor/CtorConditionallyReturns#constructor (result i32)
   global.get $std/constructor/b
   if
    i32.const 0
    call $~lib/allocator/arena/__memory_allocate
    br $__inlined_func$std/constructor/CtorConditionallyReturns#constructor
   end
   i32.const 0
   call $~lib/allocator/arena/__memory_allocate
  end
  global.set $std/constructor/ctorConditionallyReturns
  i32.const 0
  call $~lib/allocator/arena/__memory_allocate
  global.set $std/constructor/ctorAllocates
  block (result i32)
   global.get $std/constructor/b
   if
    i32.const 0
    call $~lib/allocator/arena/__memory_allocate
    local.set $0
   end
   local.get $0
   i32.eqz
  end
  if
   i32.const 0
   call $~lib/allocator/arena/__memory_allocate
   local.set $0
  end
  local.get $0
  global.set $std/constructor/ctorConditionallyAllocates
 )
 (func $null (; 4 ;) (type $_)
  nop
 )
)
