(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "testVar" (func $nonNullAssertion/testVar))
 (export "testObj" (func $nonNullAssertion/testObj))
 (export "testProp" (func $nonNullAssertion/testProp))
 (export "testArr" (func $nonNullAssertion/testArr))
 (export "testElem" (func $nonNullAssertion/testElem))
 (export "testAll" (func $nonNullAssertion/testAll))
 (export "testAll2" (func $nonNullAssertion/testAll2))
 (export "testFn" (func $nonNullAssertion/testFn))
 (export "testFn2" (func $nonNullAssertion/testFn2))
 (export "testRet" (func $nonNullAssertion/testRet))
 (export "testObjFn" (func $nonNullAssertion/testObjFn))
 (export "testObjRet" (func $nonNullAssertion/testObjRet))
 (func $nonNullAssertion/testVar (; 0 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $nonNullAssertion/testObj (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $nonNullAssertion/testProp (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $nonNullAssertion/testArr (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.tee $1
  i32.load offset=4
  i32.const 0
  i32.const 2
  i32.shl
  local.tee $2
  i32.add
  i32.const -1
  local.get $2
  local.get $1
  i32.load offset=8
  i32.lt_u
  select
  i32.load
 )
 (func $nonNullAssertion/testElem (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.tee $1
  i32.load offset=4
  i32.const 0
  i32.const 2
  i32.shl
  local.tee $2
  i32.add
  i32.const -1
  local.get $2
  local.get $1
  i32.load offset=8
  i32.lt_u
  select
  i32.load
 )
 (func $nonNullAssertion/testAll (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.tee $1
  i32.load offset=4
  i32.const 0
  i32.const 2
  i32.shl
  local.tee $2
  i32.add
  i32.const -1
  local.get $2
  local.get $1
  i32.load offset=8
  i32.lt_u
  select
  i32.load
  i32.load
 )
 (func $nonNullAssertion/testAll2 (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.tee $1
  i32.load offset=4
  i32.const 0
  i32.const 2
  i32.shl
  local.tee $2
  i32.add
  i32.const -1
  local.get $2
  local.get $1
  i32.load offset=8
  i32.lt_u
  select
  i32.load
  i32.load
 )
 (func $nonNullAssertion/testFn (; 7 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  global.set $~lib/argc
  local.get $0
  call_indirect (type $FUNCSIG$i)
 )
 (func $nonNullAssertion/testFn2 (; 8 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.set $1
  i32.const 0
  global.set $~lib/argc
  local.get $1
  call_indirect (type $FUNCSIG$i)
 )
 (func $nonNullAssertion/testRet (; 9 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  global.set $~lib/argc
  local.get $0
  call_indirect (type $FUNCSIG$i)
 )
 (func $nonNullAssertion/testObjFn (; 10 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  global.set $~lib/argc
  local.get $0
  i32.load offset=4
  call_indirect (type $FUNCSIG$i)
 )
 (func $nonNullAssertion/testObjRet (; 11 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  global.set $~lib/argc
  local.get $0
  i32.load offset=4
  call_indirect (type $FUNCSIG$i)
 )
 (func $null (; 12 ;) (type $FUNCSIG$v)
 )
)
