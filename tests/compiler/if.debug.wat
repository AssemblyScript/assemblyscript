(module
 (type $i32_=>_i32 (func_subtype (param i32) (result i32) func))
 (type $none_=>_none (func_subtype func))
 (type $i32_i32_i32_i32_=>_none (func_subtype (param i32 i32 i32 i32) func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/memory/__data_end i32 (i32.const 76))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32844))
 (global $~lib/memory/__heap_base i32 (i32.const 32844))
 (memory $0 1)
 (data (i32.const 12) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\n\00\00\00i\00f\00.\00t\00s\00\00\00")
 (data (i32.const 44) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\n\00\00\00e\00r\00r\00o\00r\00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "ifThenElse" (func $if/ifThenElse))
 (export "ifThen" (func $if/ifThen))
 (export "ifThenElseBlock" (func $if/ifThenElseBlock))
 (export "ifAlwaysReturns" (func $if/ifAlwaysReturns))
 (export "memory" (memory $0))
 (start $~start)
 (func $if/ifThenElse (type $i32_=>_i32) (param $n i32) (result i32)
  local.get $n
  if
   i32.const 1
   return
  else
   i32.const 0
   return
  end
  unreachable
 )
 (func $if/ifThen (type $i32_=>_i32) (param $n i32) (result i32)
  local.get $n
  if
   i32.const 1
   return
  end
  i32.const 0
  return
 )
 (func $if/ifThenElseBlock (type $i32_=>_i32) (param $n i32) (result i32)
  local.get $n
  if
   i32.const 1
   return
  else
   i32.const 0
   return
  end
  unreachable
 )
 (func $start:if (type $none_=>_none)
  i32.const 0
  call $if/ifThenElse
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 8
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $if/ifThenElse
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 9
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $if/ifThen
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 17
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $if/ifThen
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 18
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $if/ifThenElseBlock
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 30
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $if/ifThenElseBlock
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 31
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $if/ifAlwaysReturns (type $i32_=>_i32) (param $n i32) (result i32)
  local.get $n
  if
   i32.const 1
   return
  else
   i32.const 64
   i32.const 32
   i32.const 37
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  unreachable
 )
 (func $~start (type $none_=>_none)
  call $start:if
 )
)
