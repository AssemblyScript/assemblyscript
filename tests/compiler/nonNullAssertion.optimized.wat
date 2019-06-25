(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$i (func (result i32)))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
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
 (start $start)
 (func $nonNullAssertion/testVar (; 0 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $nonNullAssertion/testObj (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $nonNullAssertion/testArr (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $nonNullAssertion/testAll (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.load offset=8
  else   
   unreachable
  end
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
 (func $start (; 6 ;) (type $FUNCSIG$v)
  i32.const 8
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
 )
 (func $null (; 7 ;) (type $FUNCSIG$v)
  nop
 )
)
