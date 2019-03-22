(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/runtime/GC_IMPLEMENTED i32 (i32.const 0))
 (global $~lib/runtime/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/runtime/HEADER_MAGIC i32 (i32.const -1520547049))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 44))
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
 (func $nonNullAssertion/testVar (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.tee $1
  if (result i32)
   local.get $1
  else   
   unreachable
  end
 )
 (func $nonNullAssertion/testObj (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.tee $1
  if (result i32)
   local.get $1
  else   
   unreachable
  end
  i32.load
 )
 (func $nonNullAssertion/testProp (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load
  local.tee $1
  if (result i32)
   local.get $1
  else   
   unreachable
  end
 )
 (func $~lib/array/Array<Foo>#__get (; 4 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 0
   i32.const 16
   i32.const 97
   i32.const 45
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 16
   i32.const 100
   i32.const 61
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $nonNullAssertion/testArr (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.tee $1
  if (result i32)
   local.get $1
  else   
   unreachable
  end
  i32.const 0
  call $~lib/array/Array<Foo>#__get
 )
 (func $~lib/array/Array<Foo | null>#__get (; 6 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 16
   i32.const 100
   i32.const 61
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $nonNullAssertion/testElem (; 7 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 0
  call $~lib/array/Array<Foo | null>#__get
  local.tee $1
  if (result i32)
   local.get $1
  else   
   unreachable
  end
 )
 (func $nonNullAssertion/testAll (; 8 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.tee $1
  if (result i32)
   local.get $1
  else   
   unreachable
  end
  i32.const 0
  call $~lib/array/Array<Foo | null>#__get
  local.tee $1
  if (result i32)
   local.get $1
  else   
   unreachable
  end
  i32.load
  local.tee $1
  if (result i32)
   local.get $1
  else   
   unreachable
  end
 )
 (func $nonNullAssertion/testAll2 (; 9 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.tee $1
  if (result i32)
   local.get $1
  else   
   unreachable
  end
  i32.const 0
  call $~lib/array/Array<Foo | null>#__get
  local.tee $1
  if (result i32)
   local.get $1
  else   
   unreachable
  end
  i32.load
  local.tee $1
  if (result i32)
   local.get $1
  else   
   unreachable
  end
 )
 (func $nonNullAssertion/testFn (; 10 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  global.set $~lib/argc
  local.get $0
  call_indirect (type $FUNCSIG$i)
 )
 (func $nonNullAssertion/testFn2 (; 11 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.tee $1
  if (result i32)
   local.get $1
  else   
   unreachable
  end
  local.set $2
  i32.const 0
  global.set $~lib/argc
  local.get $2
  call_indirect (type $FUNCSIG$i)
 )
 (func $nonNullAssertion/testRet (; 12 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  block (result i32)
   i32.const 0
   global.set $~lib/argc
   local.get $0
   call_indirect (type $FUNCSIG$i)
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   unreachable
  end
 )
 (func $nonNullAssertion/testObjFn (; 13 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  global.set $~lib/argc
  local.get $0
  i32.load offset=4
  call_indirect (type $FUNCSIG$i)
 )
 (func $nonNullAssertion/testObjRet (; 14 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  block (result i32)
   i32.const 0
   global.set $~lib/argc
   local.get $0
   i32.load offset=4
   call_indirect (type $FUNCSIG$i)
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   unreachable
  end
 )
 (func $null (; 15 ;) (type $FUNCSIG$v)
 )
)
