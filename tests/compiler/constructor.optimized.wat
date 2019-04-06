(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00(\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s")
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
 (start $start)
 (func $~lib/allocator/arena/__mem_allocate (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/util/runtime/allocate (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 1
  i32.const 32
  local.get $0
  i32.const 7
  i32.add
  i32.clz
  i32.sub
  i32.shl
  call $~lib/allocator/arena/__mem_allocate
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
 (func $~lib/util/runtime/register (; 3 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.const 56
  i32.le_u
  if
   i32.const 0
   i32.const 16
   i32.const 131
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 8
  i32.sub
  local.tee $2
  i32.load
  i32.const -1520547049
  i32.ne
  if
   i32.const 0
   i32.const 16
   i32.const 133
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.store
  local.get $0
 )
 (func $constructor/CtorConditionallyAllocates#constructor (; 4 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  block (result i32)
   global.get $constructor/b
   if
    i32.const 0
    call $~lib/util/runtime/allocate
    i32.const 26
    call $~lib/util/runtime/register
    local.set $0
   end
   local.get $0
   i32.eqz
  end
  if
   i32.const 0
   call $~lib/util/runtime/allocate
   i32.const 26
   call $~lib/util/runtime/register
   local.set $0
  end
  local.get $0
 )
 (func $start:constructor (; 5 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 56
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  i32.const 0
  call $~lib/util/runtime/allocate
  i32.const 17
  call $~lib/util/runtime/register
  global.set $constructor/emptyCtor
  i32.const 4
  call $~lib/util/runtime/allocate
  i32.const 18
  call $~lib/util/runtime/register
  local.tee $0
  i32.const 1
  i32.store
  local.get $0
  global.set $constructor/emptyCtorWithFieldInit
  i32.const 4
  call $~lib/util/runtime/allocate
  i32.const 19
  call $~lib/util/runtime/register
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  global.set $constructor/emptyCtorWithFieldNoInit
  i32.const 0
  call $~lib/util/runtime/allocate
  i32.const 20
  call $~lib/util/runtime/register
  global.set $constructor/none
  i32.const 4
  call $~lib/util/runtime/allocate
  i32.const 21
  call $~lib/util/runtime/register
  local.tee $0
  i32.const 1
  i32.store
  local.get $0
  global.set $constructor/justFieldInit
  i32.const 4
  call $~lib/util/runtime/allocate
  i32.const 22
  call $~lib/util/runtime/register
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  global.set $constructor/justFieldNoInit
  i32.const 0
  call $~lib/allocator/arena/__mem_allocate
  global.set $constructor/ctorReturns
  block $__inlined_func$constructor/CtorConditionallyReturns#constructor (result i32)
   global.get $constructor/b
   if
    i32.const 0
    call $~lib/allocator/arena/__mem_allocate
    br $__inlined_func$constructor/CtorConditionallyReturns#constructor
   end
   i32.const 0
   call $~lib/util/runtime/allocate
   i32.const 24
   call $~lib/util/runtime/register
  end
  global.set $constructor/ctorConditionallyReturns
  i32.const 0
  call $~lib/util/runtime/allocate
  i32.const 25
  call $~lib/util/runtime/register
  global.set $constructor/ctorAllocates
  call $constructor/CtorConditionallyAllocates#constructor
  global.set $constructor/ctorConditionallyAllocates
 )
 (func $start (; 6 ;) (type $FUNCSIG$v)
  call $start:constructor
 )
 (func $null (; 7 ;) (type $FUNCSIG$v)
  nop
 )
)
