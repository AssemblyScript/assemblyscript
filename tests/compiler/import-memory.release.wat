(module
 (type $0 (func (param i32 i32)))
 (type $1 (func))
 (type $2 (func (param i32 i32 i32 i32)))
 (import "env" "memory" (memory $0 1))
 (import "env" "abort" (func $~lib/builtins/__abort_impl (param i32 i32 i32 i32)))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 33868))
 (data $0 (i32.const 1036) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00\00\00i\00m\00p\00o\00r\00t\00-\00m\00e\00m\00o\00r\00y\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/builtins/abort (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1100
  i32.lt_s
  if
   i32.const 33888
   i32.const 33936
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.const 1
  i32.const 1
  call $~lib/builtins/__abort_impl
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~start
  memory.size
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   call $~lib/builtins/abort
   unreachable
  end
 )
)
