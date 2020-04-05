(module
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00c\00l\00a\00s\00s\00-\00o\00v\00e\00r\00l\00o\00a\00d\00i\00n\00g\00.\00t\00s\00")
 (table $0 1 funcref)
 (global $class-overloading/itWorks (mut i32) (i32.const 0))
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $class-overloading/baz (mut i32) (i32.const 0))
 (global $class-overloading/foo (mut i32) (i32.const 0))
 (global $~lib/heap/__heap_base i32 (i32.const 72))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/stub/maybeGrowMemory (; 1 ;) (param $0 i32)
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
 (func $~lib/rt/stub/__alloc (; 2 ;) (param $0 i32) (param $1 i32) (result i32)
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
  i32.const 1
  i32.store offset=4
  local.get $6
  local.get $1
  i32.store offset=8
  local.get $6
  local.get $0
  i32.store offset=12
  local.get $2
 )
 (func $~lib/rt/stub/__retain (; 3 ;) (param $0 i32) (result i32)
  local.get $0
 )
 (func $class-overloading/Foo#constructor (; 4 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 5
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
 )
 (func $class-overloading/Bar#constructor (; 5 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 4
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  call $class-overloading/Foo#constructor
  local.set $0
  local.get $0
 )
 (func $class-overloading/Baz#constructor (; 6 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 3
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  call $class-overloading/Bar#constructor
  local.set $0
  local.get $0
 )
 (func $class-overloading/Bar#a<i32> (; 7 ;) (param $0 i32) (param $1 i32)
  i32.const 1
  global.set $class-overloading/itWorks
 )
 (func $class-overloading/Baz#a<i32> (; 8 ;) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $class-overloading/Bar#a<i32>
 )
 (func $class-overloading/Foo#a<i32> (; 9 ;) (param $0 i32) (param $1 i32)
  i32.const 0
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 5
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start:class-overloading (; 10 ;)
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
  call $class-overloading/Baz#constructor
  global.set $class-overloading/baz
  global.get $class-overloading/baz
  i32.const 1
  call $class-overloading/Baz#a<i32>
  i32.const 0
  call $class-overloading/Bar#constructor
  global.set $class-overloading/foo
  global.get $class-overloading/foo
  i32.const 1
  call $class-overloading/Foo#a<i32>|virtual
  global.get $class-overloading/itWorks
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 26
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start (; 11 ;)
  call $start:class-overloading
 )
 (func $class-overloading/Foo#a<i32>|virtual (; 12 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  local.set $2
  local.get $2
  i32.const 4
  i32.eq
  if
   local.get $0
   local.get $1
   call $class-overloading/Bar#a<i32>
  else
   local.get $2
   i32.const 3
   i32.eq
   if
    local.get $0
    local.get $1
    call $class-overloading/Baz#a<i32>
   else
    local.get $0
    local.get $1
    call $class-overloading/Foo#a<i32>
   end
  end
 )
)
