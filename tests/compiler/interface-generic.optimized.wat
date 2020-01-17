(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00i\00n\00t\00e\00r\00f\00a\00c\00e\00-\00g\00e\00n\00e\00r\00i\00c\00.\00t\00s")
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $interface-generic/aGFoo (mut i32) (i32.const 0))
 (global $interface-generic/sGFoo (mut i32) (i32.const 0))
 (global $interface-generic/gFoo (mut i32) (i32.const 0))
 (global $interface-generic/igbool (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/stub/maybeGrowMemory (; 1 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  memory.size
  local.tee $2
  i32.const 16
  i32.shl
  local.tee $1
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
   local.tee $1
   local.get $2
   local.get $1
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $1
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
 (func $~lib/rt/stub/__alloc (; 2 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
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
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $2
  i32.const 16
  local.get $2
  i32.const 16
  i32.gt_u
  select
  local.tee $4
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $3
  i32.const 16
  i32.sub
  local.tee $2
  local.get $4
  i32.store
  local.get $2
  i32.const 1
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  local.get $3
 )
 (func $interface-generic/passAnGInterface (; 3 ;) (param $0 i32)
  local.get $0
  call $interface-generic/GFoo<i32,bool>#foo
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 41
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $__inlined_func$interface-generic/GFoo<i32,bool>#faa
   block $switch$1$default
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    i32.const 3
    i32.sub
    br_table $__inlined_func$interface-generic/GFoo<i32,bool>#faa $__inlined_func$interface-generic/GFoo<i32,bool>#faa $switch$1$default
   end
   unreachable
  end
 )
 (func $interface-generic/expectGX (; 4 ;) (param $0 i32) (param $1 i32)
  local.get $0
  call $interface-generic/GFoo<i32,bool>#get:x
  i32.const 0
  i32.ne
  local.get $1
  i32.const 0
  i32.ne
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 49
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start:interface-generic (; 5 ;)
  (local $0 i32)
  i32.const 80
  global.set $~lib/rt/stub/startOffset
  i32.const 80
  global.set $~lib/rt/stub/offset
  i32.const 4
  i32.const 3
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 41
  i32.store
  local.get $0
  global.set $interface-generic/aGFoo
  i32.const 5
  i32.const 4
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 41
  i32.store
  local.get $0
  i32.const 0
  i32.store8 offset=4
  local.get $0
  global.set $interface-generic/sGFoo
  global.get $interface-generic/aGFoo
  call $interface-generic/passAnGInterface
  global.get $interface-generic/sGFoo
  call $interface-generic/passAnGInterface
  global.get $interface-generic/aGFoo
  i32.const 1
  call $interface-generic/expectGX
  global.get $interface-generic/sGFoo
  i32.const 0
  call $interface-generic/expectGX
  global.get $interface-generic/aGFoo
  global.set $interface-generic/gFoo
  global.get $interface-generic/gFoo
  call $interface-generic/GFoo<i32,bool>#get:x
  i32.const 0
  i32.ne
  global.set $interface-generic/igbool
  global.get $interface-generic/igbool
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 57
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start (; 6 ;)
  call $start:interface-generic
 )
 (func $interface-generic/AGFoo#foo (; 7 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  i32.const 1
  i32.add
 )
 (func $interface-generic/GFoo<i32,bool>#foo (; 8 ;) (param $0 i32) (result i32)
  block $switch$1$case$4
   block $switch$1$case$3
    block $switch$1$default
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     i32.const 3
     i32.sub
     br_table $switch$1$case$3 $switch$1$case$4 $switch$1$default
    end
    unreachable
   end
   local.get $0
   call $interface-generic/AGFoo#foo
   return
  end
  local.get $0
  call $interface-generic/AGFoo#foo
 )
 (func $interface-generic/GFoo<i32,bool>#get:x (; 9 ;) (param $0 i32) (result i32)
  block $switch$1$case$4
   block $switch$1$case$3
    block $switch$1$default
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     i32.const 3
     i32.sub
     br_table $switch$1$case$3 $switch$1$case$4 $switch$1$default
    end
    unreachable
   end
   i32.const 1
   return
  end
  local.get $0
  i32.load8_u offset=4
 )
)
