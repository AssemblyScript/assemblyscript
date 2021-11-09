(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 17452))
 (memory $0 1)
 (data (i32.const 1036) "\1c")
 (data (i32.const 1048) "\03\00\00\00\08\00\00\00\01")
 (table $0 2 funcref)
 (elem $0 (i32.const 1) $start:return~anonymous|0)
 (export "testVoidReturn" (func $return/testVoidReturn))
 (export "memory" (memory $0))
 (export "testVoidReturnFunction" (func $export:return/testVoidReturnFunction))
 (start $~start)
 (func $start:return~anonymous|0
  nop
 )
 (func $return/testVoidReturn (param $0 i32)
  nop
 )
 (func $~start
  (local $0 i32)
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
  i32.const 1056
  i32.load
  call_indirect $0 (type $none_=>_none)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:return/testVoidReturnFunction (param $0 i32) (param $1 i32)
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
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
