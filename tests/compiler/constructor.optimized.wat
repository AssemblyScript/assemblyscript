(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s")
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
 (func $~lib/memory/memory.allocate (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/runtime/doAllocate (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/runtime/assertUnregistered (; 3 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 48
  i32.le_u
  if
   i32.const 0
   i32.const 16
   i32.const 188
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const -1520547049
  i32.ne
  if
   i32.const 0
   i32.const 16
   i32.const 189
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/runtime/doRegister (; 4 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  call $~lib/runtime/assertUnregistered
  local.get $0
  i32.const 8
  i32.sub
  local.get $1
  i32.store
  local.get $0
 )
 (func $constructor/CtorConditionallyAllocates#constructor (; 5 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  block (result i32)
   global.get $constructor/b
   if
    i32.const 0
    call $~lib/runtime/doAllocate
    i32.const 10
    call $~lib/runtime/doRegister
    local.set $0
   end
   local.get $0
   i32.eqz
  end
  if (result i32)
   i32.const 0
   call $~lib/runtime/doAllocate
   i32.const 10
   call $~lib/runtime/doRegister
  else   
   local.get $0
  end
 )
 (func $start:constructor (; 6 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 48
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  i32.const 0
  call $~lib/runtime/doAllocate
  i32.const 1
  call $~lib/runtime/doRegister
  global.set $constructor/emptyCtor
  i32.const 4
  call $~lib/runtime/doAllocate
  i32.const 3
  call $~lib/runtime/doRegister
  local.tee $0
  i32.const 1
  i32.store
  local.get $0
  global.set $constructor/emptyCtorWithFieldInit
  i32.const 4
  call $~lib/runtime/doAllocate
  i32.const 4
  call $~lib/runtime/doRegister
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  global.set $constructor/emptyCtorWithFieldNoInit
  i32.const 0
  call $~lib/runtime/doAllocate
  i32.const 5
  call $~lib/runtime/doRegister
  global.set $constructor/none
  i32.const 4
  call $~lib/runtime/doAllocate
  i32.const 6
  call $~lib/runtime/doRegister
  local.tee $0
  i32.const 1
  i32.store
  local.get $0
  global.set $constructor/justFieldInit
  i32.const 4
  call $~lib/runtime/doAllocate
  i32.const 7
  call $~lib/runtime/doRegister
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
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
   call $~lib/runtime/doAllocate
   i32.const 8
   call $~lib/runtime/doRegister
  end
  global.set $constructor/ctorConditionallyReturns
  i32.const 0
  call $~lib/runtime/doAllocate
  i32.const 9
  call $~lib/runtime/doRegister
  global.set $constructor/ctorAllocates
  call $constructor/CtorConditionallyAllocates#constructor
  global.set $constructor/ctorConditionallyAllocates
 )
 (func $start (; 7 ;) (type $FUNCSIG$v)
  call $start:constructor
 )
 (func $null (; 8 ;) (type $FUNCSIG$v)
  nop
 )
)
