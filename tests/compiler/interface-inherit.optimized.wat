(module
 (type $i32_=>_none (func (param i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00i\00n\00t\00e\00r\00f\00a\00c\00e\00-\00i\00n\00h\00e\00r\00i\00t\00.\00t\00s")
 (data (i32.const 80) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00h\00e\00l\00l\00o\00 \00w\00o\00r\00l\00d")
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $interface-inherit/aa (mut i32) (i32.const 0))
 (global $interface-inherit/ac (mut i32) (i32.const 0))
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
  i32.const 0
  i32.store offset=12
  local.get $2
 )
 (func $interface-inherit/testIC (; 3 ;) (param $0 i32)
  local.get $0
  call $interface-inherit/IA#a
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 34
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 4
  i32.sub
  if
   unreachable
  end
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 4
  i32.sub
  if
   unreachable
  end
 )
 (func $~start (; 4 ;)
  i32.const 128
  global.set $~lib/rt/stub/startOffset
  i32.const 128
  global.set $~lib/rt/stub/offset
  i32.const 3
  call $~lib/rt/stub/__alloc
  global.set $interface-inherit/aa
  i32.const 4
  call $~lib/rt/stub/__alloc
  global.set $interface-inherit/ac
  global.get $interface-inherit/ac
  call $interface-inherit/IA#a
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 30
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $interface-inherit/ac
  call $interface-inherit/testIC
  global.get $interface-inherit/aa
  call $interface-inherit/IA#a
  i32.const 84
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 42
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $interface-inherit/IA#a (; 5 ;) (param $0 i32) (result i32)
  block $switch$1$case$4
   block $switch$1$case$3
    block $switch$1$default
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     i32.const 3
     i32.sub
     br_table $switch$1$case$4 $switch$1$case$3 $switch$1$default
    end
    unreachable
   end
   i32.const 42
   return
  end
  i32.const 84
 )
)
