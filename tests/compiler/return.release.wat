(module
 (type $0 (func))
 (type $1 (func (param i32)))
 (type $2 (func (param i32 i32 i32 i32)))
 (type $3 (func (param i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 33836))
 (memory $0 1)
 (data $0 (i32.const 1036) "\1c")
 (data $0.1 (i32.const 1048) "\04\00\00\00\08\00\00\00\01")
 (table $0 2 2 funcref)
 (elem $0 (i32.const 1) $start:return~anonymous|0)
 (export "testVoidReturn" (func $return/testVoidReturn))
 (export "memory" (memory $0))
 (export "testVoidReturnFunction" (func $export:return/testVoidReturnFunction))
 (start $~start)
 (func $start:return~anonymous|0
 )
 (func $return/testVoidReturn (param $0 i32)
 )
 (func $~start
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1068
  i32.lt_s
  if
   i32.const 33856
   i32.const 33904
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1056
  i32.store
  i32.const 1056
  i32.load
  call_indirect (type $0)
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
   i32.const 33856
   i32.const 33904
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
  call_indirect (type $0)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
