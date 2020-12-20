(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (memory $0 1)
 (data (i32.const 1036) "<\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00&\00\00\00c\00l\00a\00s\00s\00-\00i\00m\00p\00l\00e\00m\00e\00n\00t\00s\00.\00t\00s")
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $class-implements/A i32 (i32.const 3))
 (global $class-implements/C i32 (i32.const 5))
 (export "memory" (memory $0))
 (export "A" (global $class-implements/A))
 (export "A#foo" (func $class-implements/A#foo))
 (export "A#constructor" (func $class-implements/A#constructor))
 (export "C" (global $class-implements/C))
 (export "C#foo" (func $class-implements/C#foo))
 (export "C#constructor" (func $class-implements/C#constructor))
 (start $~start)
 (func $~lib/rt/stub/__new (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/rt/stub/offset
  global.get $~lib/rt/stub/offset
  i32.const 4
  i32.add
  local.tee $3
  i32.const 28
  i32.add
  local.tee $1
  memory.size
  local.tee $4
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $2
  i32.gt_u
  if
   local.get $4
   local.get $1
   local.get $2
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $2
   local.get $2
   local.get $4
   i32.lt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $2
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $1
  global.set $~lib/rt/stub/offset
  i32.const 28
  i32.store
  local.get $3
  i32.const 4
  i32.sub
  local.tee $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $3
  i32.const 16
  i32.add
 )
 (func $class-implements/A#constructor (param $0 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 3
   call $~lib/rt/stub/__new
  end
 )
 (func $class-implements/A#foo (param $0 i32) (result i32)
  i32.const 1
 )
 (func $class-implements/C#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 5
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 6
   call $~lib/rt/stub/__new
  end
 )
 (func $class-implements/C#foo (param $0 i32) (result i32)
  i32.const 2
 )
 (func $~start
  i32.const 1100
  global.set $~lib/rt/stub/offset
  i32.const 3
  call $~lib/rt/stub/__new
  drop
  i32.const 0
  call $class-implements/C#constructor
  drop
 )
)
