(module
 (type $none_=>_none (func))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $ternary/a (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/memory/__data_end i32 (i32.const 44))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16428))
 (global $~lib/memory/__heap_base i32 (i32.const 16428))
 (memory $0 1)
 (data (i32.const 12) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00a\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "test" (func $ternary/test))
 (export "testDropWithTypeMismatch" (func $ternary/testDropWithTypeMismatch))
 (export "memory" (memory $0))
 (export "testVoidInclTypeMismatch" (func $export:ternary/testVoidInclTypeMismatch))
 (start $~start)
 (func $start:ternary
  i32.const 1
  drop
  i32.const 1
  drop
  i32.const 1
  drop
  i32.const 1
  global.set $ternary/a
  i32.const 1
  global.set $ternary/a
  i32.const 1
  global.set $ternary/a
 )
 (func $ternary/test (param $x i32) (param $y i32) (param $z i32) (result i32)
  local.get $x
  if (result i32)
   local.get $y
  else
   local.get $z
  end
 )
 (func $ternary/testDropWithTypeMismatch (param $cond i32)
  (local $x i32)
  (local $y i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 1
  local.set $x
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  local.tee $y
  i32.store
  local.get $cond
  if
   local.get $x
   drop
  else
   local.get $y
   drop
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $ternary/testVoidInclTypeMismatch (param $cond i32) (param $nop i32)
  local.get $cond
  if
   i32.const 0
   global.set $~argumentsLength
   local.get $nop
   i32.load
   call_indirect $0 (type $none_=>_none)
  else
   i32.const 0
   global.set $~argumentsLength
   local.get $nop
   i32.load
   call_indirect $0 (type $none_=>_none)
  end
  local.get $cond
  if
   i32.const 0
   global.set $~argumentsLength
   local.get $nop
   i32.load
   call_indirect $0 (type $none_=>_none)
  else
   i32.const 1
   drop
  end
  local.get $cond
  if
   i32.const 1
   drop
  else
   i32.const 0
   global.set $~argumentsLength
   local.get $nop
   i32.load
   call_indirect $0 (type $none_=>_none)
  end
 )
 (func $~start
  call $start:ternary
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 16448
   i32.const 16496
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $export:ternary/testVoidInclTypeMismatch (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  call $ternary/testVoidInclTypeMismatch
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
