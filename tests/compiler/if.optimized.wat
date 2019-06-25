(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\05\00\00\00i\00f\00.\00t\00s")
 (table $0 1 funcref)
 (elem (i32.const 0) $start)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "ifThenElse" (func $if/ifThenElse))
 (export "ifThen" (func $if/ifThen))
 (export "ifThenElseBlock" (func $if/ifThenElse))
 (export "ifAlwaysReturns" (func $if/ifAlwaysReturns))
 (func $if/ifThenElse (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 1
  i32.const 0
  local.get $0
  select
 )
 (func $if/ifThen (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  if
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $if/ifAlwaysReturns (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  if (result i32)
   i32.const 1
  else   
   i32.const 0
   i32.const 8
   i32.const 37
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 4 ;) (type $FUNCSIG$v)
  nop
 )
)
