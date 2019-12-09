(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00i\00n\00t\00e\00r\00f\00a\00c\00e\00-\00g\00e\00n\00e\00r\00i\00c\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $interface-generic/aGFoo (mut i32) (i32.const 0))
 (global $interface-generic/sGFoo (mut i32) (i32.const 0))
 (global $interface-generic/gFoo (mut i32) (i32.const 0))
 (global $interface-generic/igbool (mut i32) (i32.const 0))
 (global $~lib/heap/__heap_base i32 (i32.const 64))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/rt/stub/maybeGrowMemory (; 1 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $~lib/rt/stub/__alloc (; 2 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.set $2
  local.get $0
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.tee $3
  i32.const 16
  local.tee $4
  local.get $3
  local.get $4
  i32.gt_u
  select
  local.set $5
  local.get $2
  local.get $5
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $2
  i32.const 16
  i32.sub
  local.set $6
  local.get $6
  local.get $5
  i32.store
  local.get $6
  i32.const -1
  i32.store offset=4
  local.get $6
  local.get $1
  i32.store offset=8
  local.get $6
  local.get $0
  i32.store offset=12
  local.get $2
 )
 (func $~lib/rt/stub/__retain (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $interface-generic/AGFoo#constructor (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 3
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 41
  i32.store
  local.get $0
 )
 (func $interface-generic/StructurallyImplementsGFoo#constructor (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 5
   i32.const 4
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 41
  i32.store
  local.get $0
  i32.const 0
  i32.store8 offset=4
  local.get $0
 )
 (func $~lib/rt/stub/__release (; 6 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $interface-generic/passAnGInterface (; 7 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  i32.const 1
  call $interface-generic/GFoo<i32,bool>#foo
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 41
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 3
  call $interface-generic/GFoo<i32,bool>#faa
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 42
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $interface-generic/expectGX (; 8 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  call $interface-generic/GFoo<i32,bool>#get:x
  i32.const 0
  i32.ne
  local.get $1
  i32.const 0
  i32.ne
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 49
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $start:interface-generic (; 9 ;) (type $FUNCSIG$v)
  global.get $~lib/heap/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
  i32.const 0
  call $interface-generic/AGFoo#constructor
  global.set $interface-generic/aGFoo
  i32.const 0
  call $interface-generic/StructurallyImplementsGFoo#constructor
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
  call $~lib/rt/stub/__retain
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
   i32.const 24
   i32.const 57
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start (; 10 ;) (type $FUNCSIG$v)
  call $start:interface-generic
 )
 (func $interface-generic/AGFoo#foo (; 11 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load
  local.get $1
  i32.add
 )
 (func $interface-generic/StructurallyImplementsGFoo#foo (; 12 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load
  local.get $1
  i32.add
 )
 (func $interface-generic/GFoo<i32,bool>#foo (; 13 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  local.set $2
  local.get $2
  i32.const 3
  i32.eq
  if (result i32)
   local.get $0
   local.get $1
   call $interface-generic/AGFoo#foo
  else
   local.get $2
   i32.const 4
   i32.eq
   if (result i32)
    local.get $0
    local.get $1
    call $interface-generic/StructurallyImplementsGFoo#foo
   else
    unreachable
   end
  end
 )
 (func $interface-generic/AGFoo#faa (; 14 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  local.get $2
  i32.add
 )
 (func $interface-generic/StructurallyImplementsGFoo#faa (; 15 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  local.get $2
  i32.add
 )
 (func $interface-generic/GFoo<i32,bool>#faa (; 16 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  local.set $3
  local.get $3
  i32.const 3
  i32.eq
  if (result i32)
   local.get $0
   local.get $1
   local.get $2
   call $interface-generic/AGFoo#faa
  else
   local.get $3
   i32.const 4
   i32.eq
   if (result i32)
    local.get $0
    local.get $1
    local.get $2
    call $interface-generic/StructurallyImplementsGFoo#faa
   else
    unreachable
   end
  end
 )
 (func $interface-generic/AGFoo#get:x (; 17 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 1
 )
 (func $interface-generic/GFoo<i32,bool>#get:x (; 18 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  local.set $1
  local.get $1
  i32.const 3
  i32.eq
  if (result i32)
   local.get $0
   call $interface-generic/AGFoo#get:x
  else
   local.get $1
   i32.const 4
   i32.eq
   if (result i32)
    local.get $0
    i32.load8_u offset=4
   else
    unreachable
   end
  end
 )
 (func $null (; 19 ;) (type $FUNCSIG$v)
  unreachable
 )
)
