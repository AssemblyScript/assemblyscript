(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00i\00f\00.\00t\00s\00")
 (data (i32.const 48) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00e\00r\00r\00o\00r\00")
 (table $0 1 funcref)
 (export "memory" (memory $0))
 (export "ifThenElse" (func $if/ifThenElse))
 (export "ifThen" (func $if/ifThen))
 (export "ifThenElseBlock" (func $if/ifThenElseBlock))
 (export "ifAlwaysReturns" (func $if/ifAlwaysReturns))
 (start $~start)
 (func $if/ifThenElse (; 1 ;) (param $0 i32) (result i32)
  local.get $0
  if
   i32.const 1
   return
  else
   i32.const 0
   return
  end
  unreachable
 )
 (func $if/ifThen (; 2 ;) (param $0 i32) (result i32)
  local.get $0
  if
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $if/ifThenElseBlock (; 3 ;) (param $0 i32) (result i32)
  local.get $0
  if
   i32.const 1
   return
  else
   i32.const 0
   return
  end
  unreachable
 )
 (func $start:if (; 4 ;)
  i32.const 0
  call $if/ifThenElse
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 8
   i32.const 0
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
   i32.const 0
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
   i32.const 0
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
   i32.const 0
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
   i32.const 0
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
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $if/ifAlwaysReturns (; 5 ;) (param $0 i32) (result i32)
  local.get $0
  if
   i32.const 1
   return
  else
   i32.const 64
   i32.const 32
   i32.const 37
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  unreachable
 )
 (func $~start (; 6 ;)
  call $start:if
 )
)
