(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00a\00b\00s\00t\00r\00a\00c\00t\00-\00m\00e\00t\00h\00o\00d\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $abstract-method/aastract (mut i32) (i32.const 0))
 (global $abstract-method/aAnotherAbstract (mut i32) (i32.const 0))
 (global $~lib/heap/__heap_base i32 (i32.const 60))
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
 (func $abstract-method/Abstract#constructor (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
  i32.const 42
  i32.store
  local.get $0
 )
 (func $abstract-method/AAbstract#constructor (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 4
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  call $abstract-method/Abstract#constructor
  local.set $0
  local.get $0
 )
 (func $abstract-method/SubAstract#constructor (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 4
   i32.const 5
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  call $abstract-method/Abstract#constructor
  local.set $0
  local.get $0
  i32.const 21
  i32.store
  local.get $0
 )
 (func $abstract-method/AAnotherAbstract#constructor (; 7 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 6
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  call $abstract-method/SubAstract#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/rt/stub/__release (; 8 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $abstract-method/testAbstract (; 9 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  call $abstract-method/Abstract#abstractMethod
  local.get $1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 32
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $abstract-method/Abstract#get:y
  local.get $1
  i32.const 2
  i32.mul
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 33
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $abstract-method/AAbstract#abstractMethod (; 10 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $abstract-method/AAbstract#get:y (; 11 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  i32.const 2
  i32.mul
 )
 (func $abstract-method/testGeneric<abstract-method/AAbstract> (; 12 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  call $abstract-method/AAbstract#abstractMethod
  local.get $1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 40
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $abstract-method/AAbstract#get:y
  local.get $1
  i32.const 2
  i32.mul
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
  call $~lib/rt/stub/__release
 )
 (func $abstract-method/AAnotherAbstract#abstractMethod (; 13 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 21
 )
 (func $abstract-method/SubAstract#get:y (; 14 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 42
 )
 (func $abstract-method/testGeneric<abstract-method/AAnotherAbstract> (; 15 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  call $abstract-method/AAnotherAbstract#abstractMethod
  local.get $1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 40
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $abstract-method/SubAstract#get:y
  local.get $1
  i32.const 2
  i32.mul
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
  call $~lib/rt/stub/__release
 )
 (func $start:abstract-method (; 16 ;) (type $FUNCSIG$v)
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
  call $abstract-method/AAbstract#constructor
  global.set $abstract-method/aastract
  i32.const 0
  call $abstract-method/AAnotherAbstract#constructor
  global.set $abstract-method/aAnotherAbstract
  global.get $abstract-method/aastract
  i32.const 42
  call $abstract-method/testAbstract
  global.get $abstract-method/aAnotherAbstract
  i32.const 21
  call $abstract-method/testAbstract
  global.get $abstract-method/aastract
  i32.const 42
  call $abstract-method/testGeneric<abstract-method/AAbstract>
  global.get $abstract-method/aAnotherAbstract
  i32.const 21
  call $abstract-method/testGeneric<abstract-method/AAnotherAbstract>
 )
 (func $start (; 17 ;) (type $FUNCSIG$v)
  call $start:abstract-method
 )
 (func $abstract-method/Abstract#abstractMethod (; 18 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  block $switch$1$case$4
   block $switch$1$case$3
    block $switch$1$default
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default $switch$1$case$4 $switch$1$default
    end
    unreachable
   end
   local.get $0
   call $abstract-method/AAbstract#abstractMethod
   return
  end
  local.get $0
  call $abstract-method/AAnotherAbstract#abstractMethod
  return
 )
 (func $abstract-method/Abstract#get:y (; 19 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  block $switch$1$case$4
   block $switch$1$case$3
    block $switch$1$default
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$default $switch$1$case$4 $switch$1$default
    end
    unreachable
   end
   local.get $0
   call $abstract-method/AAbstract#get:y
   return
  end
  local.get $0
  call $abstract-method/SubAstract#get:y
  return
 )
 (func $null (; 20 ;) (type $FUNCSIG$v)
  unreachable
 )
)
