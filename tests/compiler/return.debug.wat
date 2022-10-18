(module
 (type $none_=>_none (func_subtype func))
 (type $i32_i32_=>_none (func_subtype (param i32 i32) func))
 (type $i32_=>_none (func_subtype (param i32) func))
 (type $i32_i32_i32_i32_=>_none (func_subtype (param i32 i32 i32 i32) func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/memory/__data_end i32 (i32.const 44))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16428))
 (global $~lib/memory/__heap_base i32 (i32.const 16428))
 (memory $0 1)
 (data (i32.const 12) "\1c\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\08\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 2 2 funcref)
 (elem $0 (i32.const 1) $start:return~anonymous|0)
 (export "testVoidReturn" (func $return/testVoidReturn))
 (export "memory" (memory $0))
 (export "testVoidReturnFunction" (func $export:return/testVoidReturnFunction))
 (start $~start)
 (func $return/nop (type $none_=>_none)
  nop
 )
 (func $start:return~anonymous|0 (type $none_=>_none)
  call $return/nop
 )
 (func $return/testVoidReturnFunction (type $i32_i32_=>_none) (param $cond i32) (param $fn i32)
  local.get $cond
  if
   i32.const 0
   global.set $~argumentsLength
   local.get $fn
   i32.load $0
   call_indirect $0 (type $none_=>_none)
   return
  end
  i32.const 0
  global.set $~argumentsLength
  local.get $fn
  i32.load $0
  call_indirect $0 (type $none_=>_none)
 )
 (func $return/testVoidReturn (type $i32_=>_none) (param $cond i32)
  local.get $cond
  if
   call $return/nop
   return
  end
  call $return/nop
 )
 (func $~start (type $none_=>_none)
  call $start:return
 )
 (func $~stack_check (type $none_=>_none)
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
 (func $start:return (type $none_=>_none)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  i32.const 1
  i32.const 32
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $return/testVoidReturnFunction
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:return/testVoidReturnFunction (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $0
  local.get $1
  call $return/testVoidReturnFunction
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
