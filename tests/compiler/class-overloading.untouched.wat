(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00c\00l\00a\00s\00s\00-\00o\00v\00e\00r\00l\00o\00a\00d\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 64) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00I\00n\00 \00F\00o\00o\00")
 (data (i32.const 96) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00I\00n\00 \00B\00a\00r\00")
 (data (i32.const 128) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00I\00n\00 \00B\00a\00a\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $class-overloading/f (mut i32) (i32.const 0))
 (global $class-overloading/b (mut i32) (i32.const 0))
 (global $class-overloading/bb (mut i32) (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/heap/__heap_base i32 (i32.const 156))
 (export "memory" (memory $0))
 (export "test" (func $class-overloading/test))
 (export "testBar" (func $class-overloading/testBar))
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
 (func $class-overloading/Foo#constructor (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 )
 (func $class-overloading/Bar#constructor (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $class-overloading/Baa#constructor (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
  call $class-overloading/Bar#constructor
  local.set $0
  local.get $0
 )
 (func $class-overloading/Foo#foo (; 7 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 80
 )
 (func $~lib/rt/stub/__release (; 8 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/string/String#get:length (; 9 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/string/compareImpl (; 10 ;) (type $FUNCSIG$iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $5
  local.get $2
  local.get $3
  i32.const 1
  i32.shl
  i32.add
  local.set $6
  local.get $4
  i32.const 4
  i32.ge_u
  if (result i32)
   local.get $5
   i32.const 7
   i32.and
   local.get $6
   i32.const 7
   i32.and
   i32.or
   i32.eqz
  else
   i32.const 0
  end
  if
   block $break|0
    loop $continue|0
     local.get $5
     i64.load
     local.get $6
     i64.load
     i64.ne
     if
      br $break|0
     end
     local.get $5
     i32.const 8
     i32.add
     local.set $5
     local.get $6
     i32.const 8
     i32.add
     local.set $6
     local.get $4
     i32.const 4
     i32.sub
     local.set $4
     local.get $4
     i32.const 4
     i32.ge_u
     br_if $continue|0
    end
   end
  end
  block $break|1
   loop $continue|1
    local.get $4
    local.tee $7
    i32.const 1
    i32.sub
    local.set $4
    local.get $7
    i32.eqz
    br_if $break|1
    local.get $5
    i32.load16_u
    local.set $7
    local.get $6
    i32.load16_u
    local.set $8
    local.get $7
    local.get $8
    i32.ne
    if
     local.get $7
     local.get $8
     i32.sub
     local.set $9
     local.get $0
     call $~lib/rt/stub/__release
     local.get $2
     call $~lib/rt/stub/__release
     local.get $9
     return
    end
    local.get $5
    i32.const 2
    i32.add
    local.set $5
    local.get $6
    i32.const 2
    i32.add
    local.set $6
    br $continue|1
   end
   unreachable
  end
  i32.const 0
  local.set $8
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $8
 )
 (func $~lib/string/String.__eq (; 11 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   local.set $2
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  local.get $0
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $3
  local.get $3
  local.get $1
  call $~lib/string/String#get:length
  i32.ne
  if
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  i32.const 0
  local.get $3
  call $~lib/util/string/compareImpl
  i32.eqz
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $class-overloading/test (; 12 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  call $class-overloading/Foo#baz
  local.get $1
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
  call $class-overloading/Foo#foo
  local.tee $2
  i32.const 80
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 34
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $class-overloading/testBar (; 13 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $0
  call $class-overloading/Bar#baz
  local.get $1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 47
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $class-overloading/Bar#foo
  local.tee $3
  local.get $2
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 48
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $start:class-overloading (; 14 ;) (type $FUNCSIG$v)
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
  call $class-overloading/Foo#constructor
  global.set $class-overloading/f
  i32.const 0
  call $class-overloading/Bar#constructor
  global.set $class-overloading/b
  i32.const 0
  call $class-overloading/Baa#constructor
  global.set $class-overloading/bb
  global.get $class-overloading/f
  i32.const 42
  call $class-overloading/test
  global.get $class-overloading/b
  i32.const 84
  call $class-overloading/test
  global.get $class-overloading/bb
  i32.const 168
  call $class-overloading/test
  global.get $class-overloading/b
  i32.const 84
  i32.const 112
  call $class-overloading/testBar
  global.get $class-overloading/bb
  i32.const 168
  i32.const 144
  call $class-overloading/testBar
 )
 (func $start (; 15 ;) (type $FUNCSIG$v)
  call $start:class-overloading
 )
 (func $class-overloading/Foo#baz~virtual (; 16 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 42
 )
 (func $class-overloading/Baa#baz (; 17 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 168
 )
 (func $class-overloading/Foo#baz (; 18 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  block $switch$1$case$5
   block $switch$1$case$4
    block $switch$1$case$3
     block $switch$1$default
      local.get $0
      i32.const 8
      i32.sub
      i32.load
      br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$case$4 $switch$1$case$5 $switch$1$default
     end
     unreachable
    end
    local.get $0
    call $class-overloading/Foo#baz~virtual
    return
   end
   local.get $0
   call $class-overloading/Bar#baz
   return
  end
  local.get $0
  call $class-overloading/Baa#baz
  return
 )
 (func $class-overloading/Bar#baz~virtual (; 19 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 84
 )
 (func $class-overloading/Bar#baz (; 20 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  block $switch$1$case$4
   block $switch$1$case$3
    block $switch$1$default
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$case$4 $switch$1$default
    end
    unreachable
   end
   local.get $0
   call $class-overloading/Bar#baz~virtual
   return
  end
  local.get $0
  call $class-overloading/Baa#baz
  return
 )
 (func $class-overloading/Bar#foo~virtual (; 21 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 112
 )
 (func $class-overloading/Baa#foo (; 22 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 144
 )
 (func $class-overloading/Bar#foo (; 23 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  block $switch$1$case$4
   block $switch$1$case$3
    block $switch$1$default
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     br_table $switch$1$default $switch$1$default $switch$1$default $switch$1$default $switch$1$case$3 $switch$1$case$4 $switch$1$default
    end
    unreachable
   end
   local.get $0
   call $class-overloading/Bar#foo~virtual
   return
  end
  local.get $0
  call $class-overloading/Baa#foo
  return
 )
 (func $null (; 24 ;) (type $FUNCSIG$v)
  unreachable
 )
)
