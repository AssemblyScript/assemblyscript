(module
 (type $ii (func (param i32) (result i32)))
 (type $i (func (result i32)))
 (type $v (func))
 (memory $0 0)
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~argc (mut i32) (i32.const 0))
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
 (func $nonNullAssertion/testVar (; 0 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
 )
 (func $nonNullAssertion/testObj (; 1 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load
 )
 (func $nonNullAssertion/testArr (; 2 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 0
  get_local $0
  i32.load
  tee_local $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   get_local $0
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $nonNullAssertion/testAll (; 3 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 0
  get_local $0
  i32.load
  tee_local $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   get_local $0
   i32.load offset=8
  else   
   unreachable
  end
  i32.load
 )
 (func $nonNullAssertion/testFn (; 4 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 0
  set_global $~argc
  get_local $0
  call_indirect (type $i)
 )
 (func $nonNullAssertion/testObjFn (; 5 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 0
  set_global $~argc
  get_local $0
  i32.load offset=4
  call_indirect (type $i)
 )
 (func $start (; 6 ;) (type $v)
  i32.const 8
  set_global $~lib/allocator/arena/startOffset
  get_global $~lib/allocator/arena/startOffset
  set_global $~lib/allocator/arena/offset
 )
 (func $null (; 7 ;) (type $v)
  nop
 )
)
