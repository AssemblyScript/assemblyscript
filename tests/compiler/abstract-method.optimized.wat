(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00a\00b\00s\00t\00r\00a\00c\00t\00-\00m\00e\00t\00h\00o\00d\00.\00t\00s")
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $abstract-method/aastract (mut i32) (i32.const 0))
 (global $abstract-method/aAnotherAbstract (mut i32) (i32.const 0))
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
 (func $~lib/rt/stub/__alloc (; 2 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.tee $2
  i32.const 16
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $2
  i32.const 16
  i32.sub
  local.tee $1
  i32.const 16
  i32.store
  local.get $1
  i32.const 1
  i32.store offset=4
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $1
  i32.const 4
  i32.store offset=12
  local.get $2
 )
 (func $abstract-method/Abstract#constructor (; 3 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
  i32.const 42
  i32.store
  local.get $0
 )
 (func $abstract-method/testAbstract (; 4 ;) (param $0 i32) (param $1 i32)
  local.get $0
  call $abstract-method/Abstract#abstractMethod
  local.get $1
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 32
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $abstract-method/Abstract#get:y
  local.get $1
  i32.const 1
  i32.shl
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 33
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $abstract-method/AAbstract#get:y (; 5 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  i32.const 1
  i32.shl
 )
 (func $abstract-method/testGeneric<abstract-method/AAbstract> (; 6 ;) (param $0 i32)
  local.get $0
  i32.load
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 40
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $abstract-method/AAbstract#get:y
  i32.const 84
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 41
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start:abstract-method (; 7 ;)
  (local $0 i32)
  i32.const 80
  global.set $~lib/rt/stub/startOffset
  i32.const 80
  global.set $~lib/rt/stub/offset
  i32.const 3
  call $~lib/rt/stub/__alloc
  call $abstract-method/Abstract#constructor
  global.set $abstract-method/aastract
  i32.const 5
  call $~lib/rt/stub/__alloc
  local.tee $0
  if (result i32)
   local.get $0
  else
   i32.const 6
   call $~lib/rt/stub/__alloc
  end
  call $abstract-method/Abstract#constructor
  local.tee $0
  i32.const 21
  i32.store
  local.get $0
  global.set $abstract-method/aAnotherAbstract
  global.get $abstract-method/aastract
  i32.const 42
  call $abstract-method/testAbstract
  global.get $abstract-method/aAnotherAbstract
  i32.const 21
  call $abstract-method/testAbstract
  global.get $abstract-method/aastract
  call $abstract-method/testGeneric<abstract-method/AAbstract>
 )
 (func $~start (; 8 ;)
  call $start:abstract-method
 )
 (func $abstract-method/Abstract#abstractMethod (; 9 ;) (param $0 i32) (result i32)
  block $switch$1$case$4
   block $switch$1$case$3
    block $switch$1$default
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     i32.const 3
     i32.sub
     br_table $switch$1$case$3 $switch$1$default $switch$1$case$4 $switch$1$default
    end
    unreachable
   end
   local.get $0
   i32.load
   return
  end
  i32.const 21
 )
 (func $abstract-method/Abstract#get:y (; 10 ;) (param $0 i32) (result i32)
  block $switch$1$case$4
   block $switch$1$case$3
    block $switch$1$default
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     i32.const 3
     i32.sub
     br_table $switch$1$case$4 $switch$1$default $switch$1$case$3 $switch$1$case$3 $switch$1$default
    end
    unreachable
   end
   i32.const 42
   return
  end
  local.get $0
  call $abstract-method/AAbstract#get:y
 )
)
