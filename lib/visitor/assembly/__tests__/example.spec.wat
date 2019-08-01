(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$vdii (func (param f64 i32 i32)))
 (type $FUNCSIG$vdiii (func (param f64 i32 i32 i32)))
 (type $FUNCSIG$fi (func (param i32) (result f32)))
 (type $FUNCSIG$vif (func (param i32 f32)))
 (import "__aspect" "getStackTrace" (func $node_modules/@as-pect/assembly/assembly/internal/report/Actual/getStackTrace (result i32)))
 (import "__aspect" "reportInvalidExpectCall" (func $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportInvalidExpectCall))
 (import "__aspect" "getStackTrace" (func $node_modules/@as-pect/assembly/assembly/internal/report/Expected/getStackTrace (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "__aspect" "reportTest" (func $node_modules/@as-pect/assembly/assembly/internal/Test/reportTest (param i32 i32)))
 (import "__aspect" "reportDescribe" (func $node_modules/@as-pect/assembly/assembly/internal/Describe/reportDescribe (param i32)))
 (import "__aspect" "reportEndDescribe" (func $node_modules/@as-pect/assembly/assembly/internal/Describe/reportEndDescribe))
 (import "__aspect" "reportActualArray" (func $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualArray (param i32 i32)))
 (import "__aspect" "reportActualValue" (func $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualFloat (param f64 i32 i32)))
 (import "__aspect" "reportActualValue" (func $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualInteger (param i32 i32 i32)))
 (import "__aspect" "reportActualNull" (func $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualNull (param i32)))
 (import "__aspect" "reportActualReference" (func $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualReferenceExternal (param i32 i32 i32)))
 (import "__aspect" "reportActualString" (func $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualString (param i32 i32)))
 (import "__aspect" "reportActualLong" (func $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualLong (param i32 i32 i32)))
 (import "__aspect" "reportActualBool" (func $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualBool (param i32 i32)))
 (import "__aspect" "reportExpectedArray" (func $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedArray (param i32 i32 i32)))
 (import "__aspect" "reportExpectedValue" (func $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedFloat (param f64 i32 i32 i32)))
 (import "__aspect" "reportExpectedValue" (func $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedInteger (param i32 i32 i32 i32)))
 (import "__aspect" "reportExpectedNull" (func $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedNull (param i32 i32)))
 (import "__aspect" "reportExpectedReference" (func $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedReferenceExternal (param i32 i32 i32 i32)))
 (import "__aspect" "reportExpectedString" (func $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedString (param i32 i32 i32)))
 (import "__aspect" "reportExpectedFalsy" (func $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedFalsy (param i32 i32)))
 (import "__aspect" "reportExpectedFinite" (func $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedFinite (param i32 i32)))
 (import "__aspect" "reportExpectedTruthy" (func $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedTruthy (param i32 i32)))
 (import "__aspect" "reportExpectedLong" (func $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedLong (param i32 i32 i32 i32)))
 (import "__aspect" "reportExpectedBool" (func $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedBool (param i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00i\00n\00t\00e\00r\00f\00a\00c\00e\00")
 (data (i32.const 48) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00s\00h\00o\00u\00l\00d\00 \00h\00a\00n\00d\00l\00e\00 \00f\00o\00o\00")
 (data (i32.const 104) "\8a\00\00\00\01\00\00\00\01\00\00\00\8a\00\00\00n\00o\00d\00e\00_\00m\00o\00d\00u\00l\00e\00s\00/\00@\00a\00s\00-\00p\00e\00c\00t\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00c\00o\00m\00p\00a\00r\00i\00s\00o\00n\00/\00a\00s\00s\00e\00r\00t\00.\00t\00s\00")
 (data (i32.const 264) "\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 280) "\07\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\93\00\00\00\02\00\00\00")
 (table $0 6 funcref)
 (elem (i32.const 0) $null $start:assembly/__tests__/example.spec~anonymous|0~anonymous|0 $start:assembly/__tests__/example.spec~anonymous|0 $start:node_modules/@as-pect/assembly/assembly/internal/noOp~anonymous|0)
 (elem (i32.const 0) $null $start:assembly/__tests__/example.spec~anonymous|0~anonymous|0 $start:assembly/__tests__/example.spec~anonymous|0 $start:node_modules/@as-pect/assembly/assembly/internal/noOp~anonymous|0 $assembly/__tests__/example.spec/Foo#runTwo $assembly/__tests__/example.spec/Foo#run)
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $assembly/__tests__/example.spec/foo (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.type (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.signed (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.float (mut f64) (f64.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.integer (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.offset (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace (mut i32) (i32.const -1))
 (global $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.ready (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.type (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.signed (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.float (mut f64) (f64.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.integer (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.offset (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/noOp/noOp i32 (i32.const 3))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/log/ignoreLogs (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/RTrace/RTrace.enabled (mut i32) (i32.const 1))
 (global $~lib/started (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 280))
 (global $~lib/heap/__heap_base i32 (i32.const 340))
 (global $assembly/__tests__/example.spec/Foo i32 (i32.const 3))
 (export "__start" (func $start))
 (export "memory" (memory $0))
 (export "__alloc" (func $~lib/rt/stub/__alloc))
 (export "__retain" (func $~lib/rt/stub/__retain))
 (export "__release" (func $~lib/rt/stub/__release))
 (export "__collect" (func $~lib/rt/stub/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "Foo" (global $assembly/__tests__/example.spec/Foo))
 (export "Foo#get:int" (func $Foo#get:int))
 (export "Foo#set:int" (func $Foo#set:int))
 (export "Foo#get:float" (func $Foo#get:float))
 (export "Foo#set:float" (func $Foo#set:float))
 (export "Foo#runTwo" (func $assembly/__tests__/example.spec/Foo#runTwo))
 (export "Foo#run" (func $assembly/__tests__/example.spec/Foo#run))
 (export "__ready" (func $node_modules/@as-pect/assembly/assembly/index/__ready))
 (export "__call" (func $node_modules/@as-pect/assembly/assembly/internal/call/__call))
 (export "__sendActual" (func $node_modules/@as-pect/assembly/assembly/internal/report/Actual/__sendActual))
 (export "__sendExpected" (func $node_modules/@as-pect/assembly/assembly/internal/report/Expected/__sendExpected))
 (export "__ignoreLogs" (func $node_modules/@as-pect/assembly/assembly/internal/log/__ignoreLogs))
 (export "__disableRTrace" (func $node_modules/@as-pect/assembly/assembly/internal/RTrace/__disableRTrace))
 (export "__getUsizeArrayId" (func $node_modules/@as-pect/assembly/assembly/internal/RTrace/__getUsizeArrayId))
 (export "__cleanup" (func $node_modules/@as-pect/assembly/assembly/internal/Expectation/__cleanup))
 (func $~lib/rt/stub/__alloc (; 26 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.set $2
  local.get $2
  local.get $0
  local.tee $3
  i32.const 1
  local.tee $4
  local.get $3
  local.get $4
  i32.gt_u
  select
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $5
  memory.size
  local.set $6
  local.get $5
  local.get $6
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $5
   local.get $2
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $3
   local.get $6
   local.tee $4
   local.get $3
   local.tee $7
   local.get $4
   local.get $7
   i32.gt_s
   select
   local.set $4
   local.get $4
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $5
  global.set $~lib/rt/stub/offset
  local.get $2
  i32.const 16
  i32.sub
  local.set $8
  local.get $8
  local.get $1
  i32.store offset=8
  local.get $8
  local.get $0
  i32.store offset=12
  local.get $2
 )
 (func $~lib/rt/stub/__retain (; 27 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/rt/stub/__release (; 28 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/rt/stub/__collect (; 29 ;) (type $FUNCSIG$v)
  nop
 )
 (func $assembly/__tests__/example.spec/Foo#constructor (; 30 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 3
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  f32.const 1.2000000476837158
  f32.store offset=4
  local.get $0
 )
 (func $assembly/__tests__/example.spec/Foo#run (; 31 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $0
  i32.load
  local.get $1
  i32.add
  i32.store
 )
 (func $assembly/__tests__/example.spec/testInterface (; 32 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.const 10
  call $assembly/__tests__/example.spec/Fu#run
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<i32>#constructor (; 33 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 5
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<i32> (; 34 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<i32>#constructor
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.report<i32> (; 35 ;) (type $FUNCSIG$vi) (param $0 i32)
  call $node_modules/@as-pect/assembly/assembly/internal/report/Actual/getStackTrace
  global.set $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
  i32.const 3
  global.set $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.type
  local.get $0
  drop
  i32.const 1
  if (result i32)
   i32.const 1
  else   
   local.get $0
   drop
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else   
   local.get $0
   drop
   i32.const 0
  end
  global.set $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.signed
  local.get $0
  global.set $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.integer
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.report<i32> (; 36 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.ready
  i32.eqz
  if
   call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportInvalidExpectCall
   return
  end
  call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/getStackTrace
  global.set $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
  local.get $1
  global.set $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
  i32.const 3
  global.set $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.type
  local.get $0
  drop
  i32.const 1
  if (result i32)
   i32.const 1
  else   
   local.get $0
   drop
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else   
   local.get $0
   drop
   i32.const 0
  end
  global.set $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.signed
  local.get $0
  global.set $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.integer
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.clear (; 37 ;) (type $FUNCSIG$v)
  i32.const 0
  global.set $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.type
  global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference
  i32.const 0
  i32.gt_u
  if
   global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference
   call $~lib/rt/stub/__release
   i32.const 0
   global.set $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference
  end
  i32.const -1
  global.set $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.clear (; 38 ;) (type $FUNCSIG$v)
  i32.const 0
  global.set $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.type
  global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference
  i32.const 0
  i32.gt_u
  if
   global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference
   call $~lib/rt/stub/__release
   i32.const 0
   global.set $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference
  end
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<i32>#toBe (; 39 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load offset=4
  local.set $6
  local.get $1
  local.set $5
  local.get $0
  i32.load
  local.set $4
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $3
  local.get $6
  call $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.report<i32>
  local.get $5
  local.get $4
  call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.report<i32>
  local.get $4
  local.get $5
  local.get $6
  i32.eq
  i32.xor
  local.set $8
  local.get $3
  call $~lib/rt/stub/__retain
  local.set $7
  local.get $8
  i32.eqz
  if
   local.get $7
   call $~lib/rt/stub/__release
   local.get $7
   i32.const 120
   i32.const 11
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  call $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.clear
  call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.clear
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $start:assembly/__tests__/example.spec~anonymous|0~anonymous|0 (; 40 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  global.get $assembly/__tests__/example.spec/foo
  i32.const 0
  call $assembly/__tests__/example.spec/Foo#run
  global.get $assembly/__tests__/example.spec/foo
  call $assembly/__tests__/example.spec/testInterface
  global.get $assembly/__tests__/example.spec/foo
  i32.load
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<i32>
  local.tee $0
  i32.const 10
  i32.const 280
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<i32>#toBe
  global.get $assembly/__tests__/example.spec/foo
  i32.const 5
  i32.const 5
  call $assembly/__tests__/example.spec/Fu#runTwo
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<i32>
  local.tee $1
  i32.const 20
  i32.const 280
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<i32>#toBe
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Test/it (; 41 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  call $node_modules/@as-pect/assembly/assembly/internal/Test/reportTest
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $start:assembly/__tests__/example.spec~anonymous|0 (; 42 ;) (type $FUNCSIG$v)
  i32.const 64
  i32.const 1
  call $node_modules/@as-pect/assembly/assembly/internal/Test/it
 )
 (func $start:node_modules/@as-pect/assembly/assembly/internal/noOp~anonymous|0 (; 43 ;) (type $FUNCSIG$v)
  nop
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Describe/describe (; 44 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $node_modules/@as-pect/assembly/assembly/internal/Describe/reportDescribe
  i32.const 0
  global.set $~lib/argc
  local.get $1
  call_indirect (type $FUNCSIG$v)
  call $node_modules/@as-pect/assembly/assembly/internal/Describe/reportEndDescribe
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $start:assembly/__tests__/example.spec (; 45 ;) (type $FUNCSIG$v)
  i32.const 0
  call $assembly/__tests__/example.spec/Foo#constructor
  global.set $assembly/__tests__/example.spec/foo
  i32.const 24
  i32.const 2
  call $node_modules/@as-pect/assembly/assembly/internal/Describe/describe
 )
 (func $assembly/__tests__/example.spec/Foo#runTwo (; 46 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.load
  local.get $1
  i32.add
  local.get $2
  i32.add
 )
 (func $node_modules/@as-pect/assembly/assembly/index/__ready (; 47 ;) (type $FUNCSIG$v)
  i32.const 1
  global.set $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.ready
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/call/__call (; 48 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 0
  global.set $~lib/argc
  local.get $0
  call_indirect (type $FUNCSIG$v)
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/report/Actual/__sendActual (; 49 ;) (type $FUNCSIG$v)
  (local $0 i32)
  block $break|0
   block $case8|0
    block $case7|0
     block $case6|0
      block $case5|0
       block $case4|0
        block $case3|0
         block $case2|0
          block $case1|0
           block $case0|0
            global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.type
            local.set $0
            local.get $0
            i32.const 0
            i32.eq
            br_if $case0|0
            local.get $0
            i32.const 6
            i32.eq
            br_if $case1|0
            local.get $0
            i32.const 2
            i32.eq
            br_if $case2|0
            local.get $0
            i32.const 3
            i32.eq
            br_if $case3|0
            local.get $0
            i32.const 1
            i32.eq
            br_if $case4|0
            local.get $0
            i32.const 4
            i32.eq
            br_if $case5|0
            local.get $0
            i32.const 5
            i32.eq
            br_if $case6|0
            local.get $0
            i32.const 10
            i32.eq
            br_if $case7|0
            local.get $0
            i32.const 11
            i32.eq
            br_if $case8|0
            br $break|0
           end
           return
          end
          global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference
          global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
          call $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualArray
          br $break|0
         end
         global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.float
         i32.const 1
         global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
         call $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualFloat
         br $break|0
        end
        global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.integer
        global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.signed
        global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
        call $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualInteger
        br $break|0
       end
       global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
       call $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualNull
       br $break|0
      end
      global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference
      global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.offset
      global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
      call $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualReferenceExternal
      br $break|0
     end
     global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference
     global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
     call $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualString
     br $break|0
    end
    global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference
    global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.signed
    global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
    call $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualLong
    br $break|0
   end
   global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.integer
   global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
   call $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualBool
   br $break|0
  end
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/report/Expected/__sendExpected (; 50 ;) (type $FUNCSIG$v)
  (local $0 i32)
  block $break|0
   block $case10|0
    block $case9|0
     block $case8|0
      block $case7|0
       block $case6|0
        block $case5|0
         block $case4|0
          block $case3|0
           block $case2|0
            block $case1|0
             block $case0|0
              global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.type
              local.set $0
              local.get $0
              i32.const 6
              i32.eq
              br_if $case0|0
              local.get $0
              i32.const 2
              i32.eq
              br_if $case1|0
              local.get $0
              i32.const 3
              i32.eq
              br_if $case2|0
              local.get $0
              i32.const 1
              i32.eq
              br_if $case3|0
              local.get $0
              i32.const 4
              i32.eq
              br_if $case4|0
              local.get $0
              i32.const 5
              i32.eq
              br_if $case5|0
              local.get $0
              i32.const 7
              i32.eq
              br_if $case6|0
              local.get $0
              i32.const 9
              i32.eq
              br_if $case7|0
              local.get $0
              i32.const 8
              i32.eq
              br_if $case8|0
              local.get $0
              i32.const 10
              i32.eq
              br_if $case9|0
              local.get $0
              i32.const 11
              i32.eq
              br_if $case10|0
              br $break|0
             end
             global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference
             global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
             global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
             call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedArray
             br $break|0
            end
            global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.float
            i32.const 1
            global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
            global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
            call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedFloat
            br $break|0
           end
           global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.integer
           global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.signed
           global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
           global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
           call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedInteger
           br $break|0
          end
          global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
          global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
          call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedNull
          br $break|0
         end
         global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference
         global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.offset
         global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
         global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
         call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedReferenceExternal
         br $break|0
        end
        global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference
        global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
        global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
        call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedString
        br $break|0
       end
       global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
       global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
       call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedFalsy
       br $break|0
      end
      global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
      global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
      call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedFinite
      br $break|0
     end
     global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
     global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
     call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedTruthy
     br $break|0
    end
    global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference
    global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.signed
    global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
    global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
    call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedLong
    br $break|0
   end
   global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.integer
   global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
   global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
   call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedBool
   br $break|0
  end
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/log/__ignoreLogs (; 51 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 0
  i32.ne
  global.set $node_modules/@as-pect/assembly/assembly/internal/log/ignoreLogs
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/RTrace/__disableRTrace (; 52 ;) (type $FUNCSIG$v)
  i32.const 0
  global.set $node_modules/@as-pect/assembly/assembly/internal/RTrace/RTrace.enabled
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/RTrace/__getUsizeArrayId (; 53 ;) (type $FUNCSIG$i) (result i32)
  i32.const 6
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Expectation/__cleanup (; 54 ;) (type $FUNCSIG$v)
  call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.clear
  call $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.clear
 )
 (func $start (; 55 ;) (type $FUNCSIG$v)
  global.get $~lib/started
  if
   return
  else   
   i32.const 1
   global.set $~lib/started
  end
  global.get $~lib/heap/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
  call $start:assembly/__tests__/example.spec
 )
 (func $null (; 56 ;) (type $FUNCSIG$v)
 )
 (func $Foo#get:int (; 57 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $Foo#set:int (; 58 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $Foo#get:float (; 59 ;) (type $FUNCSIG$fi) (param $0 i32) (result f32)
  local.get $0
  f32.load offset=4
 )
 (func $Foo#set:float (; 60 ;) (type $FUNCSIG$vif) (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=4
 )
 (func $~lib/virtual/virtual (; 61 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  block $break|0
   block $case1|0
    block $case0|0
     local.get $0
     local.set $2
     local.get $2
     i32.const 0
     i32.eq
     br_if $case0|0
     local.get $2
     i32.const 1
     i32.eq
     br_if $case1|0
     br $break|0
    end
    block $break|1
     block $case0|1
      local.get $1
      local.set $2
      local.get $2
      i32.const 3
      i32.eq
      br_if $case0|1
      br $break|1
     end
     i32.const 5
     return
    end
   end
   block $break|2
    block $case0|2
     local.get $1
     local.set $2
     local.get $2
     i32.const 3
     i32.eq
     br_if $case0|2
     br $break|2
    end
    i32.const 4
    return
   end
  end
  unreachable
 )
 (func $start:~lib/virtual (; 62 ;) (type $FUNCSIG$v)
  i32.const 1
  i32.const 3
  call $~lib/virtual/virtual
  drop
 )
 (func $assembly/__tests__/example.spec/Fu#run (; 63 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.const 0
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  call $~lib/virtual/virtual
  call_indirect (type $FUNCSIG$vii)
 )
 (func $assembly/__tests__/example.spec/Fu#runTwo (; 64 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $1
  local.get $2
  i32.const 1
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  call $~lib/virtual/virtual
  call_indirect (type $FUNCSIG$iiii)
 )
)
