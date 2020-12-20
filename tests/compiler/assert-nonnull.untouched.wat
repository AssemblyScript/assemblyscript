(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 12) "<\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 76) "<\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\"\00\00\00a\00s\00s\00e\00r\00t\00-\00n\00o\00n\00n\00u\00l\00l\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 140) "<\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data (i32.const 204) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00")
 (data (i32.const 252) "|\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 1 funcref)
 (global $~argumentsLength (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "testVar" (func $assert-nonnull/testVar))
 (export "testObj" (func $assert-nonnull/testObj))
 (export "testProp" (func $assert-nonnull/testProp))
 (export "testArr" (func $assert-nonnull/testArr))
 (export "testElem" (func $assert-nonnull/testElem))
 (export "testAll" (func $assert-nonnull/testAll))
 (export "testAll2" (func $assert-nonnull/testAll2))
 (export "testFn" (func $assert-nonnull/testFn))
 (export "testFn2" (func $assert-nonnull/testFn2))
 (export "testRet" (func $assert-nonnull/testRet))
 (export "testObjFn" (func $assert-nonnull/testObjFn))
 (export "testObjRet" (func $assert-nonnull/testObjRet))
 (func $~lib/rt/stub/__retain (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/rt/stub/__release (param $0 i32)
  nop
 )
 (func $assert-nonnull/testVar (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  local.tee $1
  if (result i32)
   local.get $1
  else
   i32.const 32
   i32.const 96
   i32.const 2
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $assert-nonnull/testObj (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  local.tee $1
  if (result i32)
   local.get $1
  else
   i32.const 32
   i32.const 96
   i32.const 11
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $assert-nonnull/testProp (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  i32.load
  local.tee $1
  if (result i32)
   local.get $1
  else
   i32.const 32
   i32.const 96
   i32.const 15
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $~lib/array/Array<assert-nonnull/Foo>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $~lib/array/Array<assert-nonnull/Foo>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 160
   i32.const 224
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<assert-nonnull/Foo>#__uget
  local.set $2
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $2
  i32.eqz
  if
   i32.const 272
   i32.const 224
   i32.const 108
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $assert-nonnull/testArr (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  local.tee $1
  if (result i32)
   local.get $1
  else
   i32.const 32
   i32.const 96
   i32.const 19
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/array/Array<assert-nonnull/Foo>#__get
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $~lib/array/Array<assert-nonnull/Foo|null>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $~lib/array/Array<assert-nonnull/Foo|null>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 160
   i32.const 224
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<assert-nonnull/Foo|null>#__uget
  local.set $2
  i32.const 1
  drop
  i32.const 1
  i32.eqz
  drop
  local.get $2
 )
 (func $assert-nonnull/testElem (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  i32.const 0
  call $~lib/array/Array<assert-nonnull/Foo|null>#__get
  local.tee $1
  if (result i32)
   local.get $1
  else
   i32.const 32
   i32.const 96
   i32.const 23
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $assert-nonnull/testAll (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  local.tee $1
  if (result i32)
   local.get $1
  else
   i32.const 32
   i32.const 96
   i32.const 27
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/array/Array<assert-nonnull/Foo|null>#__get
  local.tee $1
  local.tee $2
  if (result i32)
   local.get $2
  else
   i32.const 32
   i32.const 96
   i32.const 27
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  local.tee $2
  if (result i32)
   local.get $2
  else
   i32.const 32
   i32.const 96
   i32.const 27
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $assert-nonnull/testAll2 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  local.tee $1
  if (result i32)
   local.get $1
  else
   i32.const 32
   i32.const 96
   i32.const 31
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/array/Array<assert-nonnull/Foo|null>#__get
  local.tee $1
  local.tee $2
  if (result i32)
   local.get $2
  else
   i32.const 32
   i32.const 96
   i32.const 31
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  local.tee $2
  if (result i32)
   local.get $2
  else
   i32.const 32
   i32.const 96
   i32.const 31
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $assert-nonnull/testFn (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 0
  global.set $~argumentsLength
  local.get $0
  i32.load
  call_indirect (type $none_=>_i32)
  local.tee $1
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $assert-nonnull/testFn2 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  local.tee $1
  if (result i32)
   local.get $1
  else
   i32.const 32
   i32.const 96
   i32.const 39
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/rt/stub/__retain
  local.set $2
  i32.const 0
  global.set $~argumentsLength
  local.get $2
  i32.load
  call_indirect (type $none_=>_i32)
  local.tee $1
  local.set $3
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $assert-nonnull/testRet (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 0
  global.set $~argumentsLength
  local.get $0
  i32.load
  call_indirect (type $none_=>_i32)
  local.tee $1
  local.tee $2
  if (result i32)
   local.get $2
  else
   i32.const 32
   i32.const 96
   i32.const 44
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $assert-nonnull/testObjFn (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 0
  global.set $~argumentsLength
  local.get $0
  i32.load offset=4
  i32.load
  call_indirect (type $none_=>_i32)
  local.tee $1
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $assert-nonnull/testObjRet (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 0
  global.set $~argumentsLength
  local.get $0
  i32.load offset=4
  i32.load
  call_indirect (type $none_=>_i32)
  local.tee $1
  local.tee $2
  if (result i32)
   local.get $2
  else
   i32.const 32
   i32.const 96
   i32.const 52
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
 )
)
