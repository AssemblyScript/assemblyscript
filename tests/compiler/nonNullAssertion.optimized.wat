(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/argc (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "testVar" (func $nonNullAssertion/testVar))
 (export "testObj" (func $nonNullAssertion/testObj))
 (export "testProp" (func $nonNullAssertion/testObj))
 (export "testArr" (func $nonNullAssertion/testArr))
 (export "testElem" (func $nonNullAssertion/testArr))
 (export "testAll" (func $nonNullAssertion/testAll))
 (export "testAll2" (func $nonNullAssertion/testAll))
 (export "testFn" (func $nonNullAssertion/testFn))
 (export "testFn2" (func $nonNullAssertion/testFn))
 (export "testRet" (func $nonNullAssertion/testFn))
 (export "testObjFn" (func $nonNullAssertion/testObjFn))
 (export "testObjRet" (func $nonNullAssertion/testObjFn))
 (func $nonNullAssertion/testVar (; 0 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $nonNullAssertion/testObj (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $nonNullAssertion/testArr (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.const -1
  i32.const 0
  local.get $0
  i32.load offset=8
  i32.lt_u
  select
  i32.load
 )
 (func $nonNullAssertion/testAll (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.const -1
  i32.const 0
  local.get $0
  i32.load offset=8
  i32.lt_u
  select
  i32.load
  i32.load
 )
 (func $nonNullAssertion/testFn (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  global.set $~lib/argc
  local.get $0
  call_indirect (type $FUNCSIG$i)
 )
 (func $nonNullAssertion/testObjFn (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  global.set $~lib/argc
  local.get $0
  i32.load offset=4
  call_indirect (type $FUNCSIG$i)
 )
 (func $null (; 6 ;) (type $FUNCSIG$v)
  nop
 )
)
