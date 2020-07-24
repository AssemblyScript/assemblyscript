(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1024) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00i\00f\00.\00t\00s")
 (data (i32.const 1056) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00e\00r\00r\00o\00r")
 (export "memory" (memory $0))
 (export "ifThenElse" (func $if/ifThenElse))
 (export "ifThen" (func $if/ifThen))
 (export "ifThenElseBlock" (func $if/ifThenElse))
 (export "ifAlwaysReturns" (func $if/ifAlwaysReturns))
 (start $~start)
 (func $if/ifThenElse (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  i32.eqz
 )
 (func $if/ifThen (param $0 i32) (result i32)
  local.get $0
  if
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $if/ifAlwaysReturns (param $0 i32) (result i32)
  local.get $0
  if (result i32)
   i32.const 1
  else
   i32.const 1072
   i32.const 1040
   i32.const 37
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  i32.const 0
  call $if/ifThen
  if
   i32.const 0
   i32.const 1040
   i32.const 17
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $if/ifThen
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 18
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
)
