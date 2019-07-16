(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$vdii (func (param f64 i32 i32)))
 (type $FUNCSIG$vdiii (func (param f64 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "__aspect" "getStackTrace" (func $node_modules/as-pect/assembly/internal/report/reportActual/getStackTrace (result i32)))
 (import "__aspect" "reportInvalidExpectCall" (func $node_modules/as-pect/assembly/internal/report/reportExpected/reportInvalidExpectCall))
 (import "__aspect" "getStackTrace" (func $node_modules/as-pect/assembly/internal/report/reportExpected/getStackTrace (result i32)))
 (import "__aspect" "reportTest" (func $node_modules/as-pect/assembly/internal/Test/reportTest (param i32 i32)))
 (import "__aspect" "reportDescribe" (func $node_modules/as-pect/assembly/internal/Describe/reportDescribe (param i32)))
 (import "__aspect" "reportEndDescribe" (func $node_modules/as-pect/assembly/internal/Describe/reportEndDescribe))
 (import "__aspect" "reportActualArray" (func $node_modules/as-pect/assembly/internal/report/reportActual/reportActualArray (param i32 i32)))
 (import "__aspect" "reportActualValue" (func $node_modules/as-pect/assembly/internal/report/reportActual/reportActualFloat (param f64 i32 i32)))
 (import "__aspect" "reportActualValue" (func $node_modules/as-pect/assembly/internal/report/reportActual/reportActualInteger (param i32 i32 i32)))
 (import "__aspect" "reportActualNull" (func $node_modules/as-pect/assembly/internal/report/reportActual/reportActualNull (param i32)))
 (import "__aspect" "reportActualReference" (func $node_modules/as-pect/assembly/internal/report/reportActual/reportActualReferenceExternal (param i32 i32 i32)))
 (import "__aspect" "reportActualString" (func $node_modules/as-pect/assembly/internal/report/reportActual/reportActualString (param i32 i32)))
 (import "__aspect" "reportActualLong" (func $node_modules/as-pect/assembly/internal/report/reportActual/reportActualLong (param i32 i32 i32)))
 (import "__aspect" "reportActualBool" (func $node_modules/as-pect/assembly/internal/report/reportActual/reportActualBool (param i32 i32)))
 (import "__aspect" "reportExpectedArray" (func $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedArray (param i32 i32 i32)))
 (import "__aspect" "reportExpectedValue" (func $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedFloat (param f64 i32 i32 i32)))
 (import "__aspect" "reportExpectedValue" (func $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedInteger (param i32 i32 i32 i32)))
 (import "__aspect" "reportExpectedNull" (func $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedNull (param i32 i32)))
 (import "__aspect" "reportExpectedReference" (func $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedReferenceExternal (param i32 i32 i32 i32)))
 (import "__aspect" "reportExpectedString" (func $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedString (param i32 i32 i32)))
 (import "__aspect" "reportExpectedFalsy" (func $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedFalsy (param i32 i32)))
 (import "__aspect" "reportExpectedFinite" (func $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedFinite (param i32 i32)))
 (import "__aspect" "reportExpectedTruthy" (func $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedTruthy (param i32 i32)))
 (import "__aspect" "reportExpectedLong" (func $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedLong (param i32 i32 i32 i32)))
 (import "__aspect" "reportExpectedBool" (func $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedBool (param i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00h\00e\00l\00l\00o\00")
 (data (i32.const 40) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00w\00o\00r\00l\00d\00")
 (data (i32.const 72) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 120) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 176) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00i\00n\00t\00e\00r\00f\00a\00c\00e\00")
 (data (i32.const 216) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00s\00h\00o\00u\00l\00d\00 \00h\00a\00n\00d\00l\00e\00 \00f\00o\00o\00")
 (data (i32.const 272) "v\00\00\00\01\00\00\00\01\00\00\00v\00\00\00n\00o\00d\00e\00_\00m\00o\00d\00u\00l\00e\00s\00/\00a\00s\00-\00p\00e\00c\00t\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00c\00o\00m\00p\00a\00r\00i\00s\00o\00n\00/\00a\00s\00s\00e\00r\00t\00.\00t\00s\00")
 (data (i32.const 408) "\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 424) "\t\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\03\00\00\00\93\04\00\00\02\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\93\00\00\00\02\00\00\00")
 (table $0 6 funcref)
 (elem (i32.const 0) $null $start:assembly/__tests__/example.spec~anonymous|0~anonymous|0 $start:assembly/__tests__/example.spec~anonymous|0 $start:node_modules/as-pect/assembly/internal/noOp~anonymous|0)
 (elem (i32.const 0) $null $start:assembly/__tests__/example.spec~anonymous|0~anonymous|0 $start:assembly/__tests__/example.spec~anonymous|0 $start:node_modules/as-pect/assembly/internal/noOp~anonymous|0 $assembly/class/Foo#run $assembly/class/Faa#run)
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $assembly/__tests__/example.spec/foo (mut i32) (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $assembly/__tests__/example.spec/faa (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportActual/Actual.type (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportActual/Actual.signed (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportActual/Actual.float (mut f64) (f64.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportActual/Actual.integer (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportActual/Actual.reference (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportActual/Actual.offset (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace (mut i32) (i32.const -1))
 (global $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.ready (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.type (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.signed (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.float (mut f64) (f64.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.integer (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.reference (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.offset (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/noOp/noOp i32 (i32.const 3))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $assembly/__tests__/example.spec/x (mut i32) (i32.const 10))
 (global $node_modules/as-pect/assembly/internal/log/ignoreLogs (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/RTrace/RTrace.enabled (mut i32) (i32.const 1))
 (global $~lib/started (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 424))
 (global $~lib/heap/__heap_base i32 (i32.const 500))
 (export "__start" (func $start))
 (export "memory" (memory $0))
 (export "__alloc" (func $~lib/rt/stub/__alloc))
 (export "__retain" (func $~lib/rt/stub/__retain))
 (export "__release" (func $~lib/rt/stub/__release))
 (export "__collect" (func $~lib/rt/stub/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "__ready" (func $node_modules/as-pect/assembly/index/__ready))
 (export "__call" (func $node_modules/as-pect/assembly/internal/call/__call))
 (export "__sendActual" (func $node_modules/as-pect/assembly/internal/report/reportActual/__sendActual))
 (export "__sendExpected" (func $node_modules/as-pect/assembly/internal/report/reportExpected/__sendExpected))
 (export "__ignoreLogs" (func $node_modules/as-pect/assembly/internal/log/__ignoreLogs))
 (export "__disableRTrace" (func $node_modules/as-pect/assembly/internal/RTrace/__disableRTrace))
 (export "__getUsizeArrayId" (func $node_modules/as-pect/assembly/internal/RTrace/__getUsizeArrayId))
 (export "__cleanup" (func $node_modules/as-pect/assembly/internal/Expectation/__cleanup))
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
 (func $~lib/string/String#get:length (; 30 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $assembly/class/Foo#constructor (; 31 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  i32.const 42
  i32.const 64
  i32.mul
  local.get $1
  call $~lib/string/String#get:length
  i32.add
  local.set $2
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      local.get $2
      local.set $3
      local.get $3
      i32.const 1
      i32.eq
      br_if $case0|0
      local.get $3
      i32.const 42
      i32.const 64
      i32.mul
      i32.eq
      br_if $case1|0
      br $case2|0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $break|0
    end
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $break|0
   end
   local.get $2
   i32.const 2
   i32.mul
   local.set $2
  end
  local.get $0
  i32.eqz
  if
   i32.const 12
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
  local.get $1
  i32.store offset=8
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $assembly/class/Faa#constructor (; 32 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 4
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  local.get $1
  call $assembly/class/Foo#constructor
  local.set $0
  local.get $0
  local.get $2
  i32.store offset=12
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $~lib/memory/memory.fill (; 33 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  block $~lib/util/memory/memset|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $3
   i32.eqz
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 1
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 2
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 1
   i32.add
   local.get $4
   i32.store8
   local.get $5
   i32.const 2
   i32.add
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 2
   i32.sub
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 3
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 6
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 3
   i32.add
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   i32.const 0
   local.get $5
   i32.sub
   i32.const 3
   i32.and
   local.set $6
   local.get $5
   local.get $6
   i32.add
   local.set $5
   local.get $3
   local.get $6
   i32.sub
   local.set $3
   local.get $3
   i32.const -4
   i32.and
   local.set $3
   i32.const -1
   i32.const 255
   i32.div_u
   local.get $4
   i32.const 255
   i32.and
   i32.mul
   local.set $7
   local.get $5
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.get $7
   i32.store
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 4
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 8
   i32.add
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 12
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 8
   i32.sub
   local.get $7
   i32.store
   local.get $3
   i32.const 24
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 12
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 16
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 20
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 24
   i32.add
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 28
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 24
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 20
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 16
   i32.sub
   local.get $7
   i32.store
   i32.const 24
   local.get $5
   i32.const 4
   i32.and
   i32.add
   local.set $6
   local.get $5
   local.get $6
   i32.add
   local.set $5
   local.get $3
   local.get $6
   i32.sub
   local.set $3
   local.get $7
   i64.extend_i32_u
   local.get $7
   i64.extend_i32_u
   i64.const 32
   i64.shl
   i64.or
   local.set $8
   block $break|0
    loop $continue|0
     local.get $3
     i32.const 32
     i32.ge_u
     i32.eqz
     br_if $break|0
     local.get $5
     local.get $8
     i64.store
     local.get $5
     i32.const 8
     i32.add
     local.get $8
     i64.store
     local.get $5
     i32.const 16
     i32.add
     local.get $8
     i64.store
     local.get $5
     i32.const 24
     i32.add
     local.get $8
     i64.store
     local.get $3
     i32.const 32
     i32.sub
     local.set $3
     local.get $5
     i32.const 32
     i32.add
     local.set $5
     br $continue|0
    end
    unreachable
   end
  end
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 34 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.const 1073741808
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   i32.const 88
   i32.const 136
   i32.const 14
   i32.const 56
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  i32.shl
  local.tee $1
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.set $3
  local.get $3
  i32.const 0
  local.get $1
  call $~lib/memory/memory.fill
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 2
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
  i32.const 0
  i32.store offset=8
  local.get $0
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  i32.load
  local.tee $4
  i32.ne
  if
   local.get $5
   call $~lib/rt/stub/__retain
   drop
   local.get $4
   call $~lib/rt/stub/__release
  end
  local.get $5
  i32.store
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/array/Array<i32>#constructor (; 35 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 5
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $assembly/class/Faa#run (; 36 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $0
  f32.load offset=4
  local.get $1
  f32.convert_i32_s
  f32.add
  f32.store offset=4
 )
 (func $assembly/class/Foo#run (; 37 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $0
  i32.load
  local.get $1
  i32.add
  i32.store
 )
 (func $assembly/class/testInterface (; 38 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/Expectation<i32>#constructor (; 39 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 7
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
 (func $node_modules/as-pect/assembly/internal/Expectation/expect<i32> (; 40 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<i32>#constructor
 )
 (func $node_modules/as-pect/assembly/internal/report/reportActual/Actual.clear (; 41 ;) (type $FUNCSIG$v)
  i32.const 0
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.type
  global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.reference
  i32.const 0
  i32.gt_u
  if
   global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.reference
   call $~lib/rt/stub/__release
   i32.const 0
   global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.reference
  end
  i32.const -1
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
 )
 (func $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.clear (; 42 ;) (type $FUNCSIG$v)
  i32.const 0
  global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.type
  global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.reference
  i32.const 0
  i32.gt_u
  if
   global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.reference
   call $~lib/rt/stub/__release
   i32.const 0
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.reference
  end
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/Expectation<i32>#toBe (; 43 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  local.set $7
  call $node_modules/as-pect/assembly/internal/report/reportActual/getStackTrace
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
  i32.const 3
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.type
  local.get $7
  drop
  i32.const 1
  if (result i32)
   i32.const 1
  else   
   local.get $7
   drop
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else   
   local.get $7
   drop
   i32.const 0
  end
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.signed
  local.get $7
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.integer
  block $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpected<i32>|inlined.0
   local.get $5
   local.set $8
   local.get $4
   local.set $7
   global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.ready
   i32.eqz
   if
    call $node_modules/as-pect/assembly/internal/report/reportExpected/reportInvalidExpectCall
    br $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpected<i32>|inlined.0
   end
   call $node_modules/as-pect/assembly/internal/report/reportExpected/getStackTrace
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
   local.get $7
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
   i32.const 3
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.type
   local.get $8
   drop
   i32.const 1
   if (result i32)
    i32.const 1
   else    
    local.get $8
    drop
    i32.const 0
   end
   if (result i32)
    i32.const 1
   else    
    local.get $8
    drop
    i32.const 0
   end
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.signed
   local.get $8
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.integer
  end
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
   i32.const 288
   i32.const 11
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  call $node_modules/as-pect/assembly/internal/report/reportActual/Actual.clear
  call $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.clear
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $start:assembly/__tests__/example.spec~anonymous|0~anonymous|0 (; 44 ;) (type $FUNCSIG$v)
  (local $0 i32)
  global.get $assembly/__tests__/example.spec/foo
  i32.const 0
  call $assembly/class/Foo#run
  global.get $assembly/__tests__/example.spec/foo
  call $assembly/class/testInterface
  global.get $assembly/__tests__/example.spec/foo
  i32.load
  call $node_modules/as-pect/assembly/internal/Expectation/expect<i32>
  local.tee $0
  i32.const 10
  i32.const 424
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<i32>#toBe
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $node_modules/as-pect/assembly/internal/Test/it (; 45 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  call $node_modules/as-pect/assembly/internal/Test/reportTest
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $start:assembly/__tests__/example.spec~anonymous|0 (; 46 ;) (type $FUNCSIG$v)
  i32.const 232
  i32.const 1
  call $node_modules/as-pect/assembly/internal/Test/it
 )
 (func $start:node_modules/as-pect/assembly/internal/noOp~anonymous|0 (; 47 ;) (type $FUNCSIG$v)
  nop
 )
 (func $node_modules/as-pect/assembly/internal/Describe/describe (; 48 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $node_modules/as-pect/assembly/internal/Describe/reportDescribe
  i32.const 0
  global.set $~lib/argc
  local.get $1
  call_indirect (type $FUNCSIG$v)
  call $node_modules/as-pect/assembly/internal/Describe/reportEndDescribe
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $start:assembly/__tests__/example.spec (; 49 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 24
  call $assembly/class/Foo#constructor
  global.set $assembly/__tests__/example.spec/foo
  i32.const 0
  i32.const 56
  i32.const 0
  i32.const 0
  call $~lib/array/Array<i32>#constructor
  local.tee $0
  call $assembly/class/Faa#constructor
  global.set $assembly/__tests__/example.spec/faa
  global.get $assembly/__tests__/example.spec/faa
  i32.const 0
  call $assembly/class/Faa#run
  i32.const 192
  i32.const 2
  call $node_modules/as-pect/assembly/internal/Describe/describe
  block $break|0
   block $case1|0
    block $case0|0
     global.get $assembly/__tests__/example.spec/x
     local.set $1
     local.get $1
     i32.const 1
     i32.eq
     br_if $case0|0
     local.get $1
     i32.const 10
     i32.eq
     br_if $case1|0
     br $break|0
    end
    global.get $assembly/__tests__/example.spec/x
    i32.const 1
    i32.add
    global.set $assembly/__tests__/example.spec/x
    br $break|0
   end
   br $break|0
  end
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $node_modules/as-pect/assembly/index/__ready (; 50 ;) (type $FUNCSIG$v)
  i32.const 1
  global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.ready
 )
 (func $node_modules/as-pect/assembly/internal/call/__call (; 51 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 0
  global.set $~lib/argc
  local.get $0
  call_indirect (type $FUNCSIG$v)
 )
 (func $node_modules/as-pect/assembly/internal/report/reportActual/__sendActual (; 52 ;) (type $FUNCSIG$v)
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
            global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.type
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
          global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.reference
          global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
          call $node_modules/as-pect/assembly/internal/report/reportActual/reportActualArray
          br $break|0
         end
         global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.float
         i32.const 1
         global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
         call $node_modules/as-pect/assembly/internal/report/reportActual/reportActualFloat
         br $break|0
        end
        global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.integer
        global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.signed
        global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
        call $node_modules/as-pect/assembly/internal/report/reportActual/reportActualInteger
        br $break|0
       end
       global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
       call $node_modules/as-pect/assembly/internal/report/reportActual/reportActualNull
       br $break|0
      end
      global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.reference
      global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.offset
      global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
      call $node_modules/as-pect/assembly/internal/report/reportActual/reportActualReferenceExternal
      br $break|0
     end
     global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.reference
     global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
     call $node_modules/as-pect/assembly/internal/report/reportActual/reportActualString
     br $break|0
    end
    global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.reference
    global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.signed
    global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
    call $node_modules/as-pect/assembly/internal/report/reportActual/reportActualLong
    br $break|0
   end
   global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.integer
   global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
   call $node_modules/as-pect/assembly/internal/report/reportActual/reportActualBool
   br $break|0
  end
 )
 (func $node_modules/as-pect/assembly/internal/report/reportExpected/__sendExpected (; 53 ;) (type $FUNCSIG$v)
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
              global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.type
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
             global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.reference
             global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
             global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
             call $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedArray
             br $break|0
            end
            global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.float
            i32.const 1
            global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
            global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
            call $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedFloat
            br $break|0
           end
           global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.integer
           global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.signed
           global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
           global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
           call $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedInteger
           br $break|0
          end
          global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
          global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
          call $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedNull
          br $break|0
         end
         global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.reference
         global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.offset
         global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
         global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
         call $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedReferenceExternal
         br $break|0
        end
        global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.reference
        global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
        global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
        call $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedString
        br $break|0
       end
       global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
       global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
       call $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedFalsy
       br $break|0
      end
      global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
      global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
      call $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedFinite
      br $break|0
     end
     global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
     global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
     call $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedTruthy
     br $break|0
    end
    global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.reference
    global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.signed
    global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
    global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
    call $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedLong
    br $break|0
   end
   global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.integer
   global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
   global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
   call $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedBool
   br $break|0
  end
 )
 (func $node_modules/as-pect/assembly/internal/log/__ignoreLogs (; 54 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 0
  i32.ne
  global.set $node_modules/as-pect/assembly/internal/log/ignoreLogs
 )
 (func $node_modules/as-pect/assembly/internal/RTrace/__disableRTrace (; 55 ;) (type $FUNCSIG$v)
  i32.const 0
  global.set $node_modules/as-pect/assembly/internal/RTrace/RTrace.enabled
 )
 (func $node_modules/as-pect/assembly/internal/RTrace/__getUsizeArrayId (; 56 ;) (type $FUNCSIG$i) (result i32)
  i32.const 8
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/__cleanup (; 57 ;) (type $FUNCSIG$v)
  call $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.clear
  call $node_modules/as-pect/assembly/internal/report/reportActual/Actual.clear
 )
 (func $start (; 58 ;) (type $FUNCSIG$v)
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
 (func $null (; 59 ;) (type $FUNCSIG$v)
 )
 (func $~lib/virtual/virtual (; 60 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  block $break|0
   block $case0|0
    local.get $0
    local.set $2
    local.get $2
    i32.const 0
    i32.eq
    br_if $case0|0
    br $break|0
   end
   block $break|1
    block $case1|1
     block $case0|1
      local.get $1
      local.set $2
      local.get $2
      i32.const 3
      i32.eq
      br_if $case0|1
      local.get $2
      i32.const 4
      i32.eq
      br_if $case1|1
      br $break|1
     end
     i32.const 4
     return
    end
    i32.const 5
    return
   end
  end
  unreachable
 )
 (func $start:~lib/virtual (; 61 ;) (type $FUNCSIG$v)
  i32.const 0
  i32.const 3
  call $~lib/virtual/virtual
  drop
 )
)
