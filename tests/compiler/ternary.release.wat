(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 17452))
 (memory $0 1)
 (data (i32.const 1036) "\1c")
 (data (i32.const 1048) "\01\00\00\00\02\00\00\00a")
 (table $0 1 funcref)
 (export "test" (func $ternary/test))
 (export "testDropWithTypeMismatch" (func $ternary/testDropWithTypeMismatch))
 (export "memory" (memory $0))
 (export "testVoidInclTypeMismatch" (func $export:ternary/testVoidInclTypeMismatch))
 (func $ternary/test (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  local.get $2
  local.get $0
  select
 )
 (func $ternary/testDropWithTypeMismatch (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1068
  i32.lt_s
  if
   i32.const 17472
   i32.const 17520
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 1056
  i32.store
  local.get $0
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:ternary/testVoidInclTypeMismatch (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1068
  i32.lt_s
  if
   i32.const 17472
   i32.const 17520
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.load
  call_indirect $0 (type $none_=>_none)
  local.get $0
  if
   local.get $1
   i32.load
   call_indirect $0 (type $none_=>_none)
  end
  local.get $0
  i32.eqz
  if
   local.get $1
   i32.load
   call_indirect $0 (type $none_=>_none)
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
