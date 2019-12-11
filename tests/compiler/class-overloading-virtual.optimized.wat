(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "8\00\00\00\01\00\00\00\01\00\00\008\00\00\00c\00l\00a\00s\00s\00-\00o\00v\00e\00r\00l\00o\00a\00d\00i\00n\00g\00-\00v\00i\00r\00t\00u\00a\00l\00.\00t\00s")
 (data (i32.const 80) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00I\00n\00 \00F\00o\00o")
 (data (i32.const 112) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00I\00n\00 \00B\00a\00r")
 (data (i32.const 144) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00I\00n\00 \00B\00a\00a")
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $class-overloading-virtual/f (mut i32) (i32.const 0))
 (global $class-overloading-virtual/b (mut i32) (i32.const 0))
 (global $class-overloading-virtual/bb (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "test" (func $class-overloading-virtual/test))
 (export "testBar" (func $class-overloading-virtual/testBar))
 (start $start)
 (func $~lib/rt/stub/maybeGrowMemory (; 1 ;) (type $FUNCSIG$vi) (param $0 i32)
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
  i32.const -1
  i32.store offset=4
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $2
 )
 (func $class-overloading-virtual/Foo#constructor (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 3
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
 )
 (func $class-overloading-virtual/Bar#constructor (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
  call $class-overloading-virtual/Foo#constructor
 )
 (func $~lib/string/String#get:length (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/string/compareImpl (; 6 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 7
  i32.and
  local.get $1
  i32.const 7
  i32.and
  i32.or
  i32.eqz
  i32.const 0
  local.get $2
  i32.const 4
  i32.ge_u
  select
  if
   loop $continue|0
    local.get $0
    i64.load
    local.get $1
    i64.load
    i64.eq
    if
     local.get $0
     i32.const 8
     i32.add
     local.set $0
     local.get $1
     i32.const 8
     i32.add
     local.set $1
     local.get $2
     i32.const 4
     i32.sub
     local.tee $2
     i32.const 4
     i32.ge_u
     br_if $continue|0
    end
   end
  end
  loop $continue|1
   block $break|1
    local.get $2
    local.tee $3
    i32.const 1
    i32.sub
    local.set $2
    local.get $3
    i32.eqz
    br_if $break|1
    local.get $1
    i32.load16_u
    local.tee $3
    local.get $0
    i32.load16_u
    local.tee $4
    i32.ne
    if
     local.get $4
     local.get $3
     i32.sub
     return
    else
     local.get $0
     i32.const 2
     i32.add
     local.set $0
     local.get $1
     i32.const 2
     i32.add
     local.set $1
     br $continue|1
    end
    unreachable
   end
  end
  i32.const 0
 )
 (func $~lib/string/String.__eq (; 7 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  block $folding-inner0
   local.get $1
   i32.eqz
   i32.const 1
   local.get $0
   select
   br_if $folding-inner0
   local.get $0
   call $~lib/string/String#get:length
   local.tee $2
   local.get $1
   call $~lib/string/String#get:length
   i32.ne
   br_if $folding-inner0
   local.get $0
   local.get $1
   local.get $2
   call $~lib/util/string/compareImpl
   i32.eqz
   return
  end
  i32.const 0
 )
 (func $class-overloading-virtual/test (; 8 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  call $class-overloading-virtual/Foo#baz
  local.get $1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 37
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 96
  i32.const 96
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 38
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $class-overloading-virtual/testBar (; 9 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  call $class-overloading-virtual/Bar#baz
  local.get $1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 51
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $__inlined_func$class-overloading-virtual/Bar#foo (result i32)
   block $switch$1$case$4
    block $switch$1$case$3
     block $switch$1$default
      local.get $0
      i32.const 8
      i32.sub
      i32.load
      i32.const 4
      i32.sub
      br_table $switch$1$case$3 $switch$1$case$4 $switch$1$default
     end
     unreachable
    end
    i32.const 128
    br $__inlined_func$class-overloading-virtual/Bar#foo
   end
   i32.const 160
  end
  local.get $2
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 52
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start:class-overloading-virtual (; 10 ;) (type $FUNCSIG$v)
  i32.const 176
  global.set $~lib/rt/stub/startOffset
  i32.const 176
  global.set $~lib/rt/stub/offset
  i32.const 0
  call $class-overloading-virtual/Foo#constructor
  global.set $class-overloading-virtual/f
  i32.const 0
  call $class-overloading-virtual/Bar#constructor
  global.set $class-overloading-virtual/b
  i32.const 5
  call $~lib/rt/stub/__alloc
  call $class-overloading-virtual/Bar#constructor
  global.set $class-overloading-virtual/bb
  global.get $class-overloading-virtual/f
  i32.const 42
  call $class-overloading-virtual/test
  global.get $class-overloading-virtual/b
  i32.const 84
  call $class-overloading-virtual/test
  global.get $class-overloading-virtual/bb
  i32.const 168
  call $class-overloading-virtual/test
  global.get $class-overloading-virtual/b
  i32.const 84
  i32.const 128
  call $class-overloading-virtual/testBar
  global.get $class-overloading-virtual/bb
  i32.const 168
  i32.const 160
  call $class-overloading-virtual/testBar
 )
 (func $start (; 11 ;) (type $FUNCSIG$v)
  call $start:class-overloading-virtual
 )
 (func $class-overloading-virtual/Foo#baz (; 12 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  block $switch$1$case$5
   block $switch$1$case$4
    block $switch$1$case$3
     block $switch$1$default
      local.get $0
      i32.const 8
      i32.sub
      i32.load
      i32.const 3
      i32.sub
      br_table $switch$1$case$3 $switch$1$case$4 $switch$1$case$5 $switch$1$default
     end
     unreachable
    end
    i32.const 42
    return
   end
   local.get $0
   call $class-overloading-virtual/Bar#baz
   return
  end
  i32.const 168
 )
 (func $class-overloading-virtual/Bar#baz (; 13 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  block $switch$1$case$4
   block $switch$1$case$3
    block $switch$1$default
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     i32.const 4
     i32.sub
     br_table $switch$1$case$3 $switch$1$case$4 $switch$1$default
    end
    unreachable
   end
   i32.const 84
   return
  end
  i32.const 168
 )
 (func $null (; 14 ;) (type $FUNCSIG$v)
  unreachable
 )
)
