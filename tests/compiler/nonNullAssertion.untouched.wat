(module
 (type $ii (func (param i32) (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $i (func (result i32)))
 (type $_ (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $~argc (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 8))
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
 (start $start)
 (func $nonNullAssertion/testVar (; 0 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $nonNullAssertion/testObj (; 1 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $nonNullAssertion/testProp (; 2 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $~lib/array/Array<Foo>#__get (; 3 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.set $2
  local.get $1
  local.get $2
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $2
   local.set $3
   local.get $1
   local.set $4
   i32.const 0
   local.set $5
   local.get $3
   local.get $4
   i32.const 2
   i32.shl
   i32.add
   local.get $5
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $nonNullAssertion/testArr (; 4 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 0
  call $~lib/array/Array<Foo>#__get
 )
 (func $~lib/array/Array<Foo | null>#__get (; 5 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.set $2
  local.get $1
  local.get $2
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $2
   local.set $3
   local.get $1
   local.set $4
   i32.const 0
   local.set $5
   local.get $3
   local.get $4
   i32.const 2
   i32.shl
   i32.add
   local.get $5
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $nonNullAssertion/testElem (; 6 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 0
  call $~lib/array/Array<Foo | null>#__get
 )
 (func $nonNullAssertion/testAll (; 7 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 0
  call $~lib/array/Array<Foo | null>#__get
  i32.load
 )
 (func $nonNullAssertion/testAll2 (; 8 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 0
  call $~lib/array/Array<Foo | null>#__get
  i32.load
 )
 (func $nonNullAssertion/testFn (; 9 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 0
  global.set $~argc
  local.get $0
  call_indirect (type $i)
 )
 (func $nonNullAssertion/testFn2 (; 10 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.set $1
  i32.const 0
  global.set $~argc
  local.get $1
  call_indirect (type $i)
 )
 (func $nonNullAssertion/testRet (; 11 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 0
  global.set $~argc
  local.get $0
  call_indirect (type $i)
 )
 (func $nonNullAssertion/testObjFn (; 12 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 0
  global.set $~argc
  local.get $0
  i32.load offset=4
  call_indirect (type $i)
 )
 (func $nonNullAssertion/testObjRet (; 13 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 0
  global.set $~argc
  local.get $0
  i32.load offset=4
  call_indirect (type $i)
 )
 (func $start (; 14 ;) (type $_)
  global.get $HEAP_BASE
  global.get $~lib/internal/allocator/AL_MASK
  i32.add
  global.get $~lib/internal/allocator/AL_MASK
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
 )
 (func $null (; 15 ;) (type $_)
 )
)
