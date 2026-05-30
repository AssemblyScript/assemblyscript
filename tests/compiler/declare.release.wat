(module
 (type $0 (func))
 (type $1 (func (param i32 i32 i32)))
 (type $2 (func (param i32 i32 i32 i32)))
 (import "declare" "externalConstant" (global $declare/externalConstant i32))
 (import "declare" "my.externalConstant" (global $declare/my.externalConstant i32))
 (import "env" "abort" (func $~lib/builtins/__abort_impl (param i32 i32 i32 i32)))
 (import "declare" "my.externalFunction" (func $declare/my.externalFunction))
 (import "declare" "externalFunction" (func $declare/externalFunction))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 33852))
 (memory $0 1)
 (data $0 (i32.const 1036) ",")
 (data $0.1 (i32.const 1048) "\02\00\00\00\14\00\00\00d\00e\00c\00l\00a\00r\00e\00.\00t\00s")
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/builtins/abort (param $0 i32) (param $1 i32) (param $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1084
  i32.lt_s
  if
   i32.const 33872
   i32.const 33920
   i32.const 1
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
  local.get $2
  i32.const 1
  call $~lib/builtins/__abort_impl
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~start
  call $declare/externalFunction
  global.get $declare/externalConstant
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  call $declare/my.externalFunction
  global.get $declare/my.externalConstant
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
 )
)
