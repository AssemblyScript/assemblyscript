(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/argc (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "testVar" (func $assert-nonnull/testVar))
 (export "testObj" (func $assert-nonnull/testObj))
 (export "testProp" (func $assert-nonnull/testProp))
 (export "testArr" (func $assert-nonnull/testArr))
 (export "testElem" (func $assert-nonnull/testElem))
 (export "testAll" (func $assert-nonnull/testAll))
 (export "testAll2" (func $assert-nonnull/testAll))
 (export "testFn" (func $assert-nonnull/testFn))
 (export "testFn2" (func $assert-nonnull/testFn2))
 (export "testRet" (func $assert-nonnull/testRet))
 (export "testObjFn" (func $assert-nonnull/testObjFn))
 (export "testObjRet" (func $assert-nonnull/testObjRet))
 (func $assert-nonnull/testVar (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   unreachable
  end
  local.get $0
 )
 (func $assert-nonnull/testObj (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   unreachable
  end
  local.get $0
  i32.load
 )
 (func $assert-nonnull/testProp (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  local.tee $0
  i32.eqz
  if
   unreachable
  end
  local.get $0
 )
 (func $~lib/array/Array<assert-nonnull/Foo>#__get (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 0
   i32.const 16
   i32.const 96
   i32.const 45
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 16
   i32.const 99
   i32.const 61
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load
 )
 (func $assert-nonnull/testArr (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   unreachable
  end
  local.get $0
  call $~lib/array/Array<assert-nonnull/Foo>#__get
 )
 (func $~lib/array/Array<assert-nonnull/Foo | null>#__get (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 16
   i32.const 99
   i32.const 61
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load
 )
 (func $assert-nonnull/testElem (; 7 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/array/Array<assert-nonnull/Foo | null>#__get
  local.tee $0
  i32.eqz
  if
   unreachable
  end
  local.get $0
 )
 (func $assert-nonnull/testAll (; 8 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   unreachable
  end
  local.get $0
  call $~lib/array/Array<assert-nonnull/Foo | null>#__get
  local.tee $0
  i32.eqz
  if
   unreachable
  end
  local.get $0
  i32.load
  local.tee $0
  i32.eqz
  if
   unreachable
  end
  local.get $0
 )
 (func $assert-nonnull/testFn (; 9 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  global.set $~lib/argc
  local.get $0
  call_indirect (type $FUNCSIG$i)
 )
 (func $assert-nonnull/testFn2 (; 10 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   unreachable
  end
  i32.const 0
  global.set $~lib/argc
  local.get $0
  call_indirect (type $FUNCSIG$i)
 )
 (func $assert-nonnull/testRet (; 11 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  global.set $~lib/argc
  local.get $0
  call_indirect (type $FUNCSIG$i)
  local.tee $0
  i32.eqz
  if
   unreachable
  end
  local.get $0
 )
 (func $assert-nonnull/testObjFn (; 12 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  global.set $~lib/argc
  local.get $0
  i32.load offset=4
  call_indirect (type $FUNCSIG$i)
 )
 (func $assert-nonnull/testObjRet (; 13 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  global.set $~lib/argc
  local.get $0
  i32.load offset=4
  call_indirect (type $FUNCSIG$i)
  local.tee $0
  i32.eqz
  if
   unreachable
  end
  local.get $0
 )
 (func $null (; 14 ;) (type $FUNCSIG$v)
  nop
 )
)
