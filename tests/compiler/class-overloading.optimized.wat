(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1024) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00c\00l\00a\00s\00s\00-\00o\00v\00e\00r\00l\00o\00a\00d\00i\00n\00g\00.\00t\00s")
 (global $class-overloading/itWorks (mut i32) (i32.const 0))
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $class-overloading/baz (mut i32) (i32.const 0))
 (global $class-overloading/foo (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/stub/__alloc (; 1 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.tee $3
  i32.const 16
  i32.add
  local.tee $1
  memory.size
  local.tee $4
  i32.const 16
  i32.shl
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
   local.get $4
   local.get $2
   i32.gt_s
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
  local.get $3
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
  local.get $3
 )
 (func $class-overloading/Bar#constructor (; 2 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
  i32.eqz
  if (result i32)
   i32.const 5
   call $~lib/rt/stub/__alloc
  else
   local.get $0
  end
 )
 (func $~start (; 3 ;)
  (local $0 i32)
  i32.const 1088
  global.set $~lib/rt/stub/startOffset
  i32.const 1088
  global.set $~lib/rt/stub/offset
  i32.const 3
  call $~lib/rt/stub/__alloc
  call $class-overloading/Bar#constructor
  global.set $class-overloading/baz
  i32.const 1
  global.set $class-overloading/itWorks
  i32.const 0
  call $class-overloading/Bar#constructor
  global.set $class-overloading/foo
  global.get $class-overloading/foo
  i32.const 8
  i32.sub
  i32.load
  local.tee $0
  i32.const 4
  i32.eq
  if
   i32.const 1
   global.set $class-overloading/itWorks
  else
   local.get $0
   i32.const 3
   i32.eq
   if
    i32.const 1
    global.set $class-overloading/itWorks
   else
    i32.const 0
    i32.const 1040
    i32.const 5
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  global.get $class-overloading/itWorks
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 26
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
)
