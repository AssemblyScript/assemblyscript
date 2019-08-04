(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$vdii (func (param f64 i32 i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$vdiii (func (param f64 i32 i32 i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$i (func (result i32)))
 (import "__aspect" "logValue" (func $node_modules/@as-pect/assembly/assembly/internal/log/logInteger (param i32 i32)))
 (import "__aspect" "logString" (func $node_modules/@as-pect/assembly/assembly/internal/log/logString (param i32)))
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
 (data (i32.const 8) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00a\00s\00y\00n\00c\00i\00f\00y\00")
 (data (i32.const 40) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00s\00h\00o\00u\00l\00d\00 \00p\00r\00i\00n\00t\00 \00c\00o\00r\00r\00e\00c\00t\00l\00y\00")
 (data (i32.const 104) "<\00\00\00\01\00\00\00\01\00\00\00<\00\00\00c\00o\00u\00l\00d\00 \00n\00o\00w\00 \00b\00e\00 \00d\00o\00i\00n\00g\00 \00a\00s\00y\00n\00c\00 \00s\00t\00u\00f\00f\00")
 (data (i32.const 184) "\04\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\93\00\00\00\02\00\00\00")
 (table $0 5 funcref)
 (elem (i32.const 0) $null $start:assembly/__tests__/example.spec~anonymous|0 $start:assembly/__tests__/example.spec~anonymous|1~anonymous|0 $start:assembly/__tests__/example.spec~anonymous|1 $start:node_modules/@as-pect/assembly/assembly/internal/noOp~anonymous|0)
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $assembly/__tests__/example.spec/global_var (mut i32) (i32.const 42))
 (global $assembly/__tests__/example.spec/generator (mut i32) (i32.const 0))
 (global $assembly/__tests__/example.spec/sleeping (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/log/ignoreLogs (mut i32) (i32.const 0))
 (global $assembly/__tests__/example.spec/print (mut i32) (i32.const 1))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/noOp/noOp i32 (i32.const 4))
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
 (global $node_modules/@as-pect/assembly/assembly/internal/RTrace/RTrace.enabled (mut i32) (i32.const 1))
 (global $~lib/started (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 184))
 (global $~lib/heap/__heap_base i32 (i32.const 220))
 (global $__asyncify_state (mut i32) (i32.const 0))
 (global $__asyncify_data (mut i32) (i32.const 0))
 (export "__start" (func $start))
 (export "memory" (memory $0))
 (export "__alloc" (func $~lib/rt/stub/__alloc))
 (export "__retain" (func $~lib/rt/stub/__retain))
 (export "__release" (func $~lib/rt/stub/__release))
 (export "__collect" (func $~lib/rt/stub/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "__ready" (func $node_modules/@as-pect/assembly/assembly/index/__ready))
 (export "__call" (func $node_modules/@as-pect/assembly/assembly/internal/call/__call))
 (export "__sendActual" (func $node_modules/@as-pect/assembly/assembly/internal/report/Actual/__sendActual))
 (export "__sendExpected" (func $node_modules/@as-pect/assembly/assembly/internal/report/Expected/__sendExpected))
 (export "__ignoreLogs" (func $node_modules/@as-pect/assembly/assembly/internal/log/__ignoreLogs))
 (export "__disableRTrace" (func $node_modules/@as-pect/assembly/assembly/internal/RTrace/__disableRTrace))
 (export "__getUsizeArrayId" (func $node_modules/@as-pect/assembly/assembly/internal/RTrace/__getUsizeArrayId))
 (export "__cleanup" (func $node_modules/@as-pect/assembly/assembly/internal/Expectation/__cleanup))
 (export "asyncify_start_unwind" (func $asyncify_start_unwind))
 (export "asyncify_stop_unwind" (func $asyncify_stop_unwind))
 (export "asyncify_start_rewind" (func $asyncify_start_rewind))
 (export "asyncify_stop_rewind" (func $asyncify_stop_rewind))
 (func $~lib/rt/stub/__alloc (; 24 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 i32)
  (local $39 i32)
  (local $40 i32)
  (local $41 i32)
  (local $42 i32)
  (local $43 i32)
  (local $44 i32)
  (local $45 i32)
  (local $46 i32)
  (local $47 i32)
  (local $48 i32)
  (local $49 i32)
  (local $50 i32)
  (local $51 i32)
  (local $52 i32)
  (local $53 i32)
  (local $54 i32)
  (local $55 i32)
  (local $56 i32)
  (local $57 i32)
  (local $58 i32)
  (local $59 i32)
  (local $60 i32)
  local.get $0
  local.set $9
  local.get $9
  i32.const 1073741808
  i32.gt_u
  local.set $10
  local.get $10
  if
   unreachable
  end
  nop
  global.get $~lib/rt/stub/offset
  local.set $11
  local.get $11
  i32.const 16
  i32.add
  local.set $12
  local.get $12
  local.set $2
  nop
  local.get $2
  local.set $13
  local.get $0
  local.set $14
  local.get $14
  local.set $3
  local.get $3
  local.set $15
  i32.const 1
  local.set $4
  local.get $4
  local.set $16
  local.get $3
  local.set $17
  local.get $4
  local.set $18
  local.get $17
  local.get $18
  i32.gt_u
  local.set $19
  local.get $15
  local.get $16
  local.get $19
  select
  local.set $20
  local.get $13
  local.get $20
  i32.add
  local.set $21
  local.get $21
  i32.const 15
  i32.add
  local.set $22
  i32.const 15
  i32.const -1
  i32.xor
  local.set $23
  local.get $22
  local.get $23
  i32.and
  local.set $24
  local.get $24
  local.set $5
  nop
  memory.size
  local.set $25
  local.get $25
  local.set $6
  nop
  local.get $5
  local.set $26
  local.get $6
  local.set $27
  local.get $27
  i32.const 16
  i32.shl
  local.set $28
  local.get $26
  local.get $28
  i32.gt_u
  local.set $29
  local.get $29
  if
   local.get $5
   local.set $30
   local.get $2
   local.set $31
   local.get $30
   local.get $31
   i32.sub
   local.set $32
   local.get $32
   i32.const 65535
   i32.add
   local.set $33
   i32.const 65535
   i32.const -1
   i32.xor
   local.set $34
   local.get $33
   local.get $34
   i32.and
   local.set $35
   local.get $35
   i32.const 16
   i32.shr_u
   local.set $36
   local.get $36
   local.set $3
   nop
   local.get $6
   local.set $37
   local.get $37
   local.set $4
   local.get $4
   local.set $38
   local.get $3
   local.set $39
   local.get $39
   local.set $7
   local.get $7
   local.set $40
   local.get $4
   local.set $41
   local.get $7
   local.set $42
   local.get $41
   local.get $42
   i32.gt_s
   local.set $43
   local.get $38
   local.get $40
   local.get $43
   select
   local.set $44
   local.get $44
   local.set $4
   nop
   local.get $4
   local.set $45
   local.get $45
   memory.grow
   local.set $46
   local.get $46
   i32.const 0
   i32.lt_s
   local.set $47
   local.get $47
   if
    local.get $3
    local.set $48
    local.get $48
    memory.grow
    local.set $49
    local.get $49
    i32.const 0
    i32.lt_s
    local.set $50
    local.get $50
    if
     unreachable
    end
    nop
   end
   nop
   nop
  end
  nop
  local.get $5
  local.set $51
  local.get $51
  global.set $~lib/rt/stub/offset
  nop
  local.get $2
  local.set $52
  local.get $52
  i32.const 16
  i32.sub
  local.set $53
  local.get $53
  local.set $8
  nop
  local.get $8
  local.set $54
  local.get $1
  local.set $55
  local.get $54
  local.get $55
  i32.store offset=8
  nop
  local.get $8
  local.set $56
  local.get $0
  local.set $57
  local.get $56
  local.get $57
  i32.store offset=12
  nop
  local.get $2
  local.set $58
  local.get $58
  local.set $59
  local.get $59
  local.set $60
  local.get $60
  return
 )
 (func $~lib/rt/stub/__retain (; 25 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.set $1
  local.get $1
  return
 )
 (func $~lib/rt/stub/__release (; 26 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/rt/stub/__collect (; 27 ;) (type $FUNCSIG$v)
  nop
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/log/log<i32> (; 28 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  global.get $__asyncify_state
  i32.const 2
  i32.eq
  if
   global.get $__asyncify_data
   global.get $__asyncify_data
   i32.load
   i32.const -64
   i32.add
   i32.store
   global.get $__asyncify_data
   i32.load
   local.set $18
   local.get $18
   i32.load
   local.set $0
   local.get $18
   i32.load offset=4
   local.set $1
   local.get $18
   i32.load offset=8
   local.set $2
   local.get $18
   i32.load offset=12
   local.set $3
   local.get $18
   i32.load offset=16
   local.set $4
   local.get $18
   i32.load offset=20
   local.set $5
   local.get $18
   i32.load offset=24
   local.set $6
   local.get $18
   i32.load offset=28
   local.set $7
   local.get $18
   i32.load offset=32
   local.set $8
   local.get $18
   i32.load offset=36
   local.set $9
   local.get $18
   i32.load offset=40
   local.set $10
   local.get $18
   i32.load offset=44
   local.set $11
   local.get $18
   i32.load offset=48
   local.set $12
   local.get $18
   i32.load offset=52
   local.set $13
   local.get $18
   i32.load offset=56
   local.set $14
   local.get $18
   i32.load offset=60
   local.set $15
  end
  block $__asyncify_unwind (result i32)
   global.get $__asyncify_state
   i32.const 2
   i32.eq
   if
    global.get $__asyncify_data
    global.get $__asyncify_data
    i32.load
    i32.const -4
    i32.add
    i32.store
    global.get $__asyncify_data
    i32.load
    i32.load
    local.set $17
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    global.get $node_modules/@as-pect/assembly/assembly/internal/log/ignoreLogs
    local.set $1
    local.get $1
    if
     return
    end
    nop
    local.get $0
    local.set $2
    local.get $0
    local.set $3
    local.get $3
    drop
    nop
    i32.const 1
    local.set $4
    local.get $4
    local.set $5
    local.get $5
    if
     i32.const 1
     local.set $9
    else     
     local.get $0
     local.set $6
     local.get $6
     drop
     nop
     i32.const 0
     local.set $7
     local.get $7
     local.set $8
     local.get $8
     local.set $9
    end
    local.get $9
    local.set $10
    local.get $10
    if
     i32.const 1
     local.set $14
    else     
     local.get $0
     local.set $11
     local.get $11
     drop
     nop
     i32.const 0
     local.set $12
     local.get $12
     local.set $13
     local.get $13
     local.set $14
    end
    local.get $14
    local.set $15
   end
   nop
   nop
   nop
   nop
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else    
    local.get $17
    i32.const 0
    i32.eq
   end
   if
    local.get $2
    local.get $15
    call $node_modules/@as-pect/assembly/assembly/internal/log/logInteger
    global.get $__asyncify_state
    i32.const 1
    i32.eq
    if
     i32.const 0
     br $__asyncify_unwind
    end
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    nop
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    nop
   end
   return
  end
  local.set $16
  global.get $__asyncify_data
  i32.load
  local.get $16
  i32.store
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load
  i32.const 4
  i32.add
  i32.store
  global.get $__asyncify_data
  i32.load
  local.set $19
  local.get $19
  local.get $0
  i32.store
  local.get $19
  local.get $1
  i32.store offset=4
  local.get $19
  local.get $2
  i32.store offset=8
  local.get $19
  local.get $3
  i32.store offset=12
  local.get $19
  local.get $4
  i32.store offset=16
  local.get $19
  local.get $5
  i32.store offset=20
  local.get $19
  local.get $6
  i32.store offset=24
  local.get $19
  local.get $7
  i32.store offset=28
  local.get $19
  local.get $8
  i32.store offset=32
  local.get $19
  local.get $9
  i32.store offset=36
  local.get $19
  local.get $10
  i32.store offset=40
  local.get $19
  local.get $11
  i32.store offset=44
  local.get $19
  local.get $12
  i32.store offset=48
  local.get $19
  local.get $13
  i32.store offset=52
  local.get $19
  local.get $14
  i32.store offset=56
  local.get $19
  local.get $15
  i32.store offset=60
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load
  i32.const 64
  i32.add
  i32.store
 )
 (func $start:assembly/__tests__/example.spec~anonymous|0 (; 29 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $__asyncify_state
  i32.const 2
  i32.eq
  if
   global.get $__asyncify_data
   global.get $__asyncify_data
   i32.load
   i32.const -8
   i32.add
   i32.store
   global.get $__asyncify_data
   i32.load
   local.set $4
   local.get $4
   i32.load
   local.set $0
   local.get $4
   i32.load offset=4
   local.set $1
  end
  block $__asyncify_unwind (result i32)
   global.get $__asyncify_state
   i32.const 2
   i32.eq
   if
    global.get $__asyncify_data
    global.get $__asyncify_data
    i32.load
    i32.const -4
    i32.add
    i32.store
    global.get $__asyncify_data
    i32.load
    i32.load
    local.set $3
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    local.get $0
    local.set $1
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else    
    local.get $3
    i32.const 0
    i32.eq
   end
   if
    local.get $1
    call $node_modules/@as-pect/assembly/assembly/internal/log/log<i32>
    global.get $__asyncify_state
    i32.const 1
    i32.eq
    if
     i32.const 0
     br $__asyncify_unwind
    end
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    nop
   end
   return
  end
  local.set $2
  global.get $__asyncify_data
  i32.load
  local.get $2
  i32.store
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load
  i32.const 4
  i32.add
  i32.store
  global.get $__asyncify_data
  i32.load
  local.set $5
  local.get $5
  local.get $0
  i32.store
  local.get $5
  local.get $1
  i32.store offset=4
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load
  i32.const 8
  i32.add
  i32.store
 )
 (func $assembly/__tests__/example.spec/before (; 30 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $__asyncify_state
  i32.const 2
  i32.eq
  if
   global.get $__asyncify_data
   global.get $__asyncify_data
   i32.load
   i32.const -4
   i32.add
   i32.store
   global.get $__asyncify_data
   i32.load
   local.set $3
   local.get $3
   i32.load
   local.set $0
  end
  block $__asyncify_unwind (result i32)
   global.get $__asyncify_state
   i32.const 2
   i32.eq
   if
    global.get $__asyncify_data
    global.get $__asyncify_data
    i32.load
    i32.const -4
    i32.add
    i32.store
    global.get $__asyncify_data
    i32.load
    i32.load
    local.set $2
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    i32.const 1
    global.set $~lib/argc
    nop
    global.get $assembly/__tests__/example.spec/print
    local.set $0
   end
   nop
   nop
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else    
    local.get $2
    i32.const 0
    i32.eq
   end
   if
    i32.const 1
    local.get $0
    call_indirect (type $FUNCSIG$vi)
    global.get $__asyncify_state
    i32.const 1
    i32.eq
    if
     i32.const 0
     br $__asyncify_unwind
    end
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    nop
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    nop
   end
   return
  end
  local.set $1
  global.get $__asyncify_data
  i32.load
  local.get $1
  i32.store
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load
  i32.const 4
  i32.add
  i32.store
  global.get $__asyncify_data
  i32.load
  local.set $4
  local.get $4
  local.get $0
  i32.store
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load
  i32.const 4
  i32.add
  i32.store
 )
 (func $assembly/__tests__/example.spec/sleep (; 31 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 1
  global.set $~lib/argc
  nop
  global.get $assembly/__tests__/example.spec/print
  local.set $0
  i32.const 1000
  local.get $0
  call_indirect (type $FUNCSIG$vi)
  nop
  global.get $assembly/__tests__/example.spec/sleeping
  local.set $1
  local.get $1
  i32.eqz
  local.set $2
  local.get $2
  if
   i32.const 1
   global.set $~lib/argc
   nop
   global.get $assembly/__tests__/example.spec/print
   local.set $3
   i32.const 2000
   local.get $3
   call_indirect (type $FUNCSIG$vi)
   nop
   i32.const 1
   global.set $assembly/__tests__/example.spec/sleeping
   nop
   global.get $assembly/__tests__/example.spec/generator
   local.set $4
   local.get $4
   call $asyncify_start_unwind
   nop
   nop
  else   
   i32.const 1
   global.set $~lib/argc
   nop
   global.get $assembly/__tests__/example.spec/print
   local.set $5
   i32.const 3000
   local.get $5
   call_indirect (type $FUNCSIG$vi)
   nop
   call $asyncify_stop_unwind
   nop
   i32.const 0
   global.set $assembly/__tests__/example.spec/sleeping
   nop
   nop
  end
  nop
  i32.const 1
  global.set $~lib/argc
  nop
  global.get $assembly/__tests__/example.spec/print
  local.set $6
  i32.const 4000
  local.get $6
  call_indirect (type $FUNCSIG$vi)
  nop
  nop
 )
 (func $assembly/__tests__/example.spec/after (; 32 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $__asyncify_state
  i32.const 2
  i32.eq
  if
   global.get $__asyncify_data
   global.get $__asyncify_data
   i32.load
   i32.const -4
   i32.add
   i32.store
   global.get $__asyncify_data
   i32.load
   local.set $3
   local.get $3
   i32.load
   local.set $0
  end
  block $__asyncify_unwind (result i32)
   global.get $__asyncify_state
   i32.const 2
   i32.eq
   if
    global.get $__asyncify_data
    global.get $__asyncify_data
    i32.load
    i32.const -4
    i32.add
    i32.store
    global.get $__asyncify_data
    i32.load
    i32.load
    local.set $2
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    i32.const 1
    global.set $~lib/argc
    nop
    global.get $assembly/__tests__/example.spec/print
    local.set $0
   end
   nop
   nop
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else    
    local.get $2
    i32.const 0
    i32.eq
   end
   if
    i32.const 2
    local.get $0
    call_indirect (type $FUNCSIG$vi)
    global.get $__asyncify_state
    i32.const 1
    i32.eq
    if
     i32.const 0
     br $__asyncify_unwind
    end
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    nop
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    nop
   end
   return
  end
  local.set $1
  global.get $__asyncify_data
  i32.load
  local.get $1
  i32.store
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load
  i32.const 4
  i32.add
  i32.store
  global.get $__asyncify_data
  i32.load
  local.set $4
  local.get $4
  local.get $0
  i32.store
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load
  i32.const 4
  i32.add
  i32.store
 )
 (func $assembly/__tests__/example.spec/main (; 33 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $__asyncify_state
  i32.const 2
  i32.eq
  if
   global.get $__asyncify_data
   global.get $__asyncify_data
   i32.load
   i32.const -16
   i32.add
   i32.store
   global.get $__asyncify_data
   i32.load
   local.set $6
   local.get $6
   i32.load
   local.set $0
   local.get $6
   i32.load offset=4
   local.set $1
   local.get $6
   i32.load offset=8
   local.set $2
   local.get $6
   i32.load offset=12
   local.set $3
  end
  block $__asyncify_unwind (result i32)
   global.get $__asyncify_state
   i32.const 2
   i32.eq
   if
    global.get $__asyncify_data
    global.get $__asyncify_data
    i32.load
    i32.const -4
    i32.add
    i32.store
    global.get $__asyncify_data
    i32.load
    i32.load
    local.set $5
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    i32.const 1
    global.set $~lib/argc
    nop
    global.get $assembly/__tests__/example.spec/print
    local.set $0
   end
   nop
   nop
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else    
    local.get $5
    i32.const 0
    i32.eq
   end
   if
    i32.const 10
    local.get $0
    call_indirect (type $FUNCSIG$vi)
    global.get $__asyncify_state
    i32.const 1
    i32.eq
    if
     i32.const 0
     br $__asyncify_unwind
    end
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    nop
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else    
    local.get $5
    i32.const 1
    i32.eq
   end
   if
    call $assembly/__tests__/example.spec/before
    global.get $__asyncify_state
    i32.const 1
    i32.eq
    if
     i32.const 1
     br $__asyncify_unwind
    end
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    nop
    i32.const 1
    global.set $~lib/argc
    nop
    global.get $assembly/__tests__/example.spec/print
    local.set $1
   end
   nop
   nop
   nop
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else    
    local.get $5
    i32.const 2
    i32.eq
   end
   if
    i32.const 20
    local.get $1
    call_indirect (type $FUNCSIG$vi)
    global.get $__asyncify_state
    i32.const 1
    i32.eq
    if
     i32.const 2
     br $__asyncify_unwind
    end
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    nop
    call $assembly/__tests__/example.spec/sleep
    nop
    i32.const 1
    global.set $~lib/argc
    nop
    global.get $assembly/__tests__/example.spec/print
    local.set $2
   end
   nop
   nop
   nop
   nop
   nop
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else    
    local.get $5
    i32.const 3
    i32.eq
   end
   if
    i32.const 30
    local.get $2
    call_indirect (type $FUNCSIG$vi)
    global.get $__asyncify_state
    i32.const 1
    i32.eq
    if
     i32.const 3
     br $__asyncify_unwind
    end
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    nop
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else    
    local.get $5
    i32.const 4
    i32.eq
   end
   if
    call $assembly/__tests__/example.spec/after
    global.get $__asyncify_state
    i32.const 1
    i32.eq
    if
     i32.const 4
     br $__asyncify_unwind
    end
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    nop
    i32.const 1
    global.set $~lib/argc
    nop
    global.get $assembly/__tests__/example.spec/print
    local.set $3
   end
   nop
   nop
   nop
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else    
    local.get $5
    i32.const 5
    i32.eq
   end
   if
    i32.const 40
    local.get $3
    call_indirect (type $FUNCSIG$vi)
    global.get $__asyncify_state
    i32.const 1
    i32.eq
    if
     i32.const 5
     br $__asyncify_unwind
    end
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    nop
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    nop
   end
   return
  end
  local.set $4
  global.get $__asyncify_data
  i32.load
  local.get $4
  i32.store
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load
  i32.const 4
  i32.add
  i32.store
  global.get $__asyncify_data
  i32.load
  local.set $7
  local.get $7
  local.get $0
  i32.store
  local.get $7
  local.get $1
  i32.store offset=4
  local.get $7
  local.get $2
  i32.store offset=8
  local.get $7
  local.get $3
  i32.store offset=12
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load
  i32.const 16
  i32.add
  i32.store
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/log/log<~lib/string/String> (; 34 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  global.get $__asyncify_state
  i32.const 2
  i32.eq
  if
   global.get $__asyncify_data
   global.get $__asyncify_data
   i32.load
   i32.const -28
   i32.add
   i32.store
   global.get $__asyncify_data
   i32.load
   local.set $9
   local.get $9
   i32.load
   local.set $0
   local.get $9
   i32.load offset=4
   local.set $1
   local.get $9
   i32.load offset=8
   local.set $2
   local.get $9
   i32.load offset=12
   local.set $3
   local.get $9
   i32.load offset=16
   local.set $4
   local.get $9
   i32.load offset=20
   local.set $5
   local.get $9
   i32.load offset=24
   local.set $6
  end
  block $__asyncify_unwind (result i32)
   global.get $__asyncify_state
   i32.const 2
   i32.eq
   if
    global.get $__asyncify_data
    global.get $__asyncify_data
    i32.load
    i32.const -4
    i32.add
    i32.store
    global.get $__asyncify_data
    i32.load
    i32.load
    local.set $8
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    local.get $0
    local.set $1
    local.get $1
    call $~lib/rt/stub/__retain
    local.set $2
    local.get $2
    drop
    nop
    global.get $node_modules/@as-pect/assembly/assembly/internal/log/ignoreLogs
    local.set $3
    local.get $3
    if
     local.get $0
     local.set $4
     local.get $4
     call $~lib/rt/stub/__release
     nop
     return
    end
    nop
    local.get $0
    local.set $5
   end
   nop
   nop
   nop
   nop
   nop
   nop
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else    
    local.get $8
    i32.const 0
    i32.eq
   end
   if
    local.get $5
    call $node_modules/@as-pect/assembly/assembly/internal/log/logString
    global.get $__asyncify_state
    i32.const 1
    i32.eq
    if
     i32.const 0
     br $__asyncify_unwind
    end
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    nop
    local.get $0
    local.set $6
    local.get $6
    call $~lib/rt/stub/__release
    nop
   end
   nop
   nop
   nop
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    nop
   end
   return
  end
  local.set $7
  global.get $__asyncify_data
  i32.load
  local.get $7
  i32.store
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load
  i32.const 4
  i32.add
  i32.store
  global.get $__asyncify_data
  i32.load
  local.set $10
  local.get $10
  local.get $0
  i32.store
  local.get $10
  local.get $1
  i32.store offset=4
  local.get $10
  local.get $2
  i32.store offset=8
  local.get $10
  local.get $3
  i32.store offset=12
  local.get $10
  local.get $4
  i32.store offset=16
  local.get $10
  local.get $5
  i32.store offset=20
  local.get $10
  local.get $6
  i32.store offset=24
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load
  i32.const 28
  i32.add
  i32.store
 )
 (func $assembly/__tests__/example.spec/start (; 35 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  global.set $~lib/argc
  nop
  global.get $assembly/__tests__/example.spec/print
  local.set $0
  i32.const 100
  local.get $0
  call_indirect (type $FUNCSIG$vi)
  nop
  call $assembly/__tests__/example.spec/main
  nop
  i32.const 1
  global.set $~lib/argc
  nop
  global.get $assembly/__tests__/example.spec/print
  local.set $1
  i32.const 200
  local.get $1
  call_indirect (type $FUNCSIG$vi)
  nop
  call $asyncify_stop_unwind
  nop
  i32.const 1
  global.set $~lib/argc
  nop
  global.get $assembly/__tests__/example.spec/print
  local.set $2
  i32.const 300
  local.get $2
  call_indirect (type $FUNCSIG$vi)
  nop
  i32.const 120
  call $node_modules/@as-pect/assembly/assembly/internal/log/log<~lib/string/String>
  nop
  global.get $assembly/__tests__/example.spec/generator
  local.set $3
  local.get $3
  call $asyncify_start_rewind
  nop
  i32.const 1
  global.set $~lib/argc
  nop
  global.get $assembly/__tests__/example.spec/print
  local.set $4
  i32.const 400
  local.get $4
  call_indirect (type $FUNCSIG$vi)
  nop
  call $assembly/__tests__/example.spec/main
  nop
  i32.const 1
  global.set $~lib/argc
  nop
  global.get $assembly/__tests__/example.spec/print
  local.set $5
  i32.const 500
  local.get $5
  call_indirect (type $FUNCSIG$vi)
  nop
  nop
 )
 (func $start:assembly/__tests__/example.spec~anonymous|1~anonymous|0 (; 36 ;) (type $FUNCSIG$v)
  call $assembly/__tests__/example.spec/start
  nop
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Test/it (; 37 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  global.get $__asyncify_state
  i32.const 2
  i32.eq
  if
   global.get $__asyncify_data
   global.get $__asyncify_data
   i32.load
   i32.const -28
   i32.add
   i32.store
   global.get $__asyncify_data
   i32.load
   local.set $9
   local.get $9
   i32.load
   local.set $0
   local.get $9
   i32.load offset=4
   local.set $1
   local.get $9
   i32.load offset=8
   local.set $2
   local.get $9
   i32.load offset=12
   local.set $3
   local.get $9
   i32.load offset=16
   local.set $4
   local.get $9
   i32.load offset=20
   local.set $5
   local.get $9
   i32.load offset=24
   local.set $6
  end
  block $__asyncify_unwind (result i32)
   global.get $__asyncify_state
   i32.const 2
   i32.eq
   if
    global.get $__asyncify_data
    global.get $__asyncify_data
    i32.load
    i32.const -4
    i32.add
    i32.store
    global.get $__asyncify_data
    i32.load
    i32.load
    local.set $8
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    local.get $0
    local.set $2
    local.get $2
    call $~lib/rt/stub/__retain
    local.set $3
    local.get $3
    drop
    nop
    local.get $0
    local.set $4
    local.get $1
    local.set $5
   end
   nop
   nop
   nop
   nop
   nop
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else    
    local.get $8
    i32.const 0
    i32.eq
   end
   if
    local.get $4
    local.get $5
    call $node_modules/@as-pect/assembly/assembly/internal/Test/reportTest
    global.get $__asyncify_state
    i32.const 1
    i32.eq
    if
     i32.const 0
     br $__asyncify_unwind
    end
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    nop
    local.get $0
    local.set $6
    local.get $6
    call $~lib/rt/stub/__release
    nop
   end
   nop
   nop
   nop
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    nop
   end
   return
  end
  local.set $7
  global.get $__asyncify_data
  i32.load
  local.get $7
  i32.store
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load
  i32.const 4
  i32.add
  i32.store
  global.get $__asyncify_data
  i32.load
  local.set $10
  local.get $10
  local.get $0
  i32.store
  local.get $10
  local.get $1
  i32.store offset=4
  local.get $10
  local.get $2
  i32.store offset=8
  local.get $10
  local.get $3
  i32.store offset=12
  local.get $10
  local.get $4
  i32.store offset=16
  local.get $10
  local.get $5
  i32.store offset=20
  local.get $10
  local.get $6
  i32.store offset=24
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load
  i32.const 28
  i32.add
  i32.store
 )
 (func $start:assembly/__tests__/example.spec~anonymous|1 (; 38 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  global.get $__asyncify_state
  i32.const 2
  i32.eq
  if
   nop
  end
  block $__asyncify_unwind (result i32)
   global.get $__asyncify_state
   i32.const 2
   i32.eq
   if
    global.get $__asyncify_data
    global.get $__asyncify_data
    i32.load
    i32.const -4
    i32.add
    i32.store
    global.get $__asyncify_data
    i32.load
    i32.load
    local.set $1
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else    
    local.get $1
    i32.const 0
    i32.eq
   end
   if
    i32.const 56
    i32.const 2
    call $node_modules/@as-pect/assembly/assembly/internal/Test/it
    global.get $__asyncify_state
    i32.const 1
    i32.eq
    if
     i32.const 0
     br $__asyncify_unwind
    end
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    nop
   end
   return
  end
  local.set $0
  global.get $__asyncify_data
  i32.load
  local.get $0
  i32.store
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load
  i32.const 4
  i32.add
  i32.store
  nop
 )
 (func $start:node_modules/@as-pect/assembly/assembly/internal/noOp~anonymous|0 (; 39 ;) (type $FUNCSIG$v)
  nop
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Describe/describe (; 40 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  global.get $__asyncify_state
  i32.const 2
  i32.eq
  if
   global.get $__asyncify_data
   global.get $__asyncify_data
   i32.load
   i32.const -28
   i32.add
   i32.store
   global.get $__asyncify_data
   i32.load
   local.set $9
   local.get $9
   i32.load
   local.set $0
   local.get $9
   i32.load offset=4
   local.set $1
   local.get $9
   i32.load offset=8
   local.set $2
   local.get $9
   i32.load offset=12
   local.set $3
   local.get $9
   i32.load offset=16
   local.set $4
   local.get $9
   i32.load offset=20
   local.set $5
   local.get $9
   i32.load offset=24
   local.set $6
  end
  block $__asyncify_unwind (result i32)
   global.get $__asyncify_state
   i32.const 2
   i32.eq
   if
    global.get $__asyncify_data
    global.get $__asyncify_data
    i32.load
    i32.const -4
    i32.add
    i32.store
    global.get $__asyncify_data
    i32.load
    i32.load
    local.set $8
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    local.get $0
    local.set $2
    local.get $2
    call $~lib/rt/stub/__retain
    local.set $3
    local.get $3
    drop
    nop
    local.get $0
    local.set $4
   end
   nop
   nop
   nop
   nop
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else    
    local.get $8
    i32.const 0
    i32.eq
   end
   if
    local.get $4
    call $node_modules/@as-pect/assembly/assembly/internal/Describe/reportDescribe
    global.get $__asyncify_state
    i32.const 1
    i32.eq
    if
     i32.const 0
     br $__asyncify_unwind
    end
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    nop
    i32.const 0
    global.set $~lib/argc
    nop
    local.get $1
    local.set $5
   end
   nop
   nop
   nop
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else    
    local.get $8
    i32.const 1
    i32.eq
   end
   if
    local.get $5
    call_indirect (type $FUNCSIG$v)
    global.get $__asyncify_state
    i32.const 1
    i32.eq
    if
     i32.const 1
     br $__asyncify_unwind
    end
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    nop
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else    
    local.get $8
    i32.const 2
    i32.eq
   end
   if
    call $node_modules/@as-pect/assembly/assembly/internal/Describe/reportEndDescribe
    global.get $__asyncify_state
    i32.const 1
    i32.eq
    if
     i32.const 2
     br $__asyncify_unwind
    end
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    nop
    local.get $0
    local.set $6
    local.get $6
    call $~lib/rt/stub/__release
    nop
   end
   nop
   nop
   nop
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    nop
   end
   return
  end
  local.set $7
  global.get $__asyncify_data
  i32.load
  local.get $7
  i32.store
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load
  i32.const 4
  i32.add
  i32.store
  global.get $__asyncify_data
  i32.load
  local.set $10
  local.get $10
  local.get $0
  i32.store
  local.get $10
  local.get $1
  i32.store offset=4
  local.get $10
  local.get $2
  i32.store offset=8
  local.get $10
  local.get $3
  i32.store offset=12
  local.get $10
  local.get $4
  i32.store offset=16
  local.get $10
  local.get $5
  i32.store offset=20
  local.get $10
  local.get $6
  i32.store offset=24
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load
  i32.const 28
  i32.add
  i32.store
 )
 (func $start:assembly/__tests__/example.spec (; 41 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  global.get $__asyncify_state
  i32.const 2
  i32.eq
  if
   global.get $__asyncify_data
   global.get $__asyncify_data
   i32.load
   i32.const -72
   i32.add
   i32.store
   global.get $__asyncify_data
   i32.load
   local.set $20
   local.get $20
   i32.load
   local.set $0
   local.get $20
   i32.load offset=4
   local.set $1
   local.get $20
   i32.load offset=8
   local.set $2
   local.get $20
   i32.load offset=12
   local.set $3
   local.get $20
   i32.load offset=16
   local.set $4
   local.get $20
   i32.load offset=20
   local.set $5
   local.get $20
   i32.load offset=24
   local.set $6
   local.get $20
   i32.load offset=28
   local.set $7
   local.get $20
   i32.load offset=32
   local.set $8
   local.get $20
   i32.load offset=36
   local.set $9
   local.get $20
   i32.load offset=40
   local.set $10
   local.get $20
   i32.load offset=44
   local.set $11
   local.get $20
   i32.load offset=48
   local.set $12
   local.get $20
   i32.load offset=52
   local.set $13
   local.get $20
   i32.load offset=56
   local.set $14
   local.get $20
   i32.load offset=60
   local.set $15
   local.get $20
   i32.load offset=64
   local.set $16
   local.get $20
   i32.load offset=68
   local.set $17
  end
  block $__asyncify_unwind (result i32)
   global.get $__asyncify_state
   i32.const 2
   i32.eq
   if
    global.get $__asyncify_data
    global.get $__asyncify_data
    i32.load
    i32.const -4
    i32.add
    i32.store
    global.get $__asyncify_data
    i32.load
    i32.load
    local.set $19
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    i32.const 0
    local.set $2
    nop
    i32.const 16
    local.set $1
    nop
    i32.const 1024
    local.set $0
    nop
    local.get $2
    local.set $3
    local.get $3
    i32.eqz
    local.set $4
    local.get $4
    if
     i32.const 8
     i32.const 0
     call $~lib/rt/stub/__alloc
     local.set $5
     local.get $5
     call $~lib/rt/stub/__retain
     local.set $6
     local.get $6
     local.set $2
     nop
    end
    nop
    local.get $2
    local.set $7
    local.get $7
    i32.const 0
    i32.store
    nop
    local.get $2
    local.set $8
    local.get $8
    i32.const 0
    i32.store offset=4
    nop
    local.get $2
    local.set $9
    local.get $9
    local.set $10
    local.get $10
    local.set $11
    local.get $1
    local.set $12
    local.get $11
    local.get $12
    i32.store
    nop
    local.get $2
    local.set $13
    local.get $0
    local.set $14
    local.get $13
    local.get $14
    i32.store offset=4
    nop
    local.get $2
    local.set $15
    local.get $15
    local.set $16
    local.get $16
    local.set $17
    local.get $17
    global.set $assembly/__tests__/example.spec/generator
    nop
   end
   nop
   nop
   nop
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else    
    local.get $19
    i32.const 0
    i32.eq
   end
   if
    i32.const 24
    i32.const 3
    call $node_modules/@as-pect/assembly/assembly/internal/Describe/describe
    global.get $__asyncify_state
    i32.const 1
    i32.eq
    if
     i32.const 0
     br $__asyncify_unwind
    end
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    nop
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    nop
   end
   return
  end
  local.set $18
  global.get $__asyncify_data
  i32.load
  local.get $18
  i32.store
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load
  i32.const 4
  i32.add
  i32.store
  global.get $__asyncify_data
  i32.load
  local.set $21
  local.get $21
  local.get $0
  i32.store
  local.get $21
  local.get $1
  i32.store offset=4
  local.get $21
  local.get $2
  i32.store offset=8
  local.get $21
  local.get $3
  i32.store offset=12
  local.get $21
  local.get $4
  i32.store offset=16
  local.get $21
  local.get $5
  i32.store offset=20
  local.get $21
  local.get $6
  i32.store offset=24
  local.get $21
  local.get $7
  i32.store offset=28
  local.get $21
  local.get $8
  i32.store offset=32
  local.get $21
  local.get $9
  i32.store offset=36
  local.get $21
  local.get $10
  i32.store offset=40
  local.get $21
  local.get $11
  i32.store offset=44
  local.get $21
  local.get $12
  i32.store offset=48
  local.get $21
  local.get $13
  i32.store offset=52
  local.get $21
  local.get $14
  i32.store offset=56
  local.get $21
  local.get $15
  i32.store offset=60
  local.get $21
  local.get $16
  i32.store offset=64
  local.get $21
  local.get $17
  i32.store offset=68
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load
  i32.const 72
  i32.add
  i32.store
 )
 (func $node_modules/@as-pect/assembly/assembly/index/__ready (; 42 ;) (type $FUNCSIG$v)
  i32.const 1
  global.set $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.ready
  nop
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/call/__call (; 43 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $__asyncify_state
  i32.const 2
  i32.eq
  if
   global.get $__asyncify_data
   global.get $__asyncify_data
   i32.load
   i32.const -8
   i32.add
   i32.store
   global.get $__asyncify_data
   i32.load
   local.set $4
   local.get $4
   i32.load
   local.set $0
   local.get $4
   i32.load offset=4
   local.set $1
  end
  block $__asyncify_unwind (result i32)
   global.get $__asyncify_state
   i32.const 2
   i32.eq
   if
    global.get $__asyncify_data
    global.get $__asyncify_data
    i32.load
    i32.const -4
    i32.add
    i32.store
    global.get $__asyncify_data
    i32.load
    i32.load
    local.set $3
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    i32.const 0
    global.set $~lib/argc
    nop
    local.get $0
    local.set $1
   end
   nop
   nop
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else    
    local.get $3
    i32.const 0
    i32.eq
   end
   if
    local.get $1
    call_indirect (type $FUNCSIG$v)
    global.get $__asyncify_state
    i32.const 1
    i32.eq
    if
     i32.const 0
     br $__asyncify_unwind
    end
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    nop
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    nop
   end
   return
  end
  local.set $2
  global.get $__asyncify_data
  i32.load
  local.get $2
  i32.store
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load
  i32.const 4
  i32.add
  i32.store
  global.get $__asyncify_data
  i32.load
  local.set $5
  local.get $5
  local.get $0
  i32.store
  local.get $5
  local.get $1
  i32.store offset=4
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load
  i32.const 8
  i32.add
  i32.store
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/report/Actual/__sendActual (; 44 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 f64)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 i32)
  (local $39 i32)
  (local $40 i32)
  (local $41 i32)
  global.get $__asyncify_state
  i32.const 2
  i32.eq
  if
   global.get $__asyncify_data
   global.get $__asyncify_data
   i32.load
   i32.const -156
   i32.add
   i32.store
   global.get $__asyncify_data
   i32.load
   local.set $40
   local.get $40
   i32.load
   local.set $0
   local.get $40
   i32.load offset=4
   local.set $1
   local.get $40
   i32.load offset=8
   local.set $2
   local.get $40
   i32.load offset=12
   local.set $3
   local.get $40
   i32.load offset=16
   local.set $4
   local.get $40
   i32.load offset=20
   local.set $5
   local.get $40
   i32.load offset=24
   local.set $6
   local.get $40
   i32.load offset=28
   local.set $7
   local.get $40
   i32.load offset=32
   local.set $8
   local.get $40
   i32.load offset=36
   local.set $9
   local.get $40
   i32.load offset=40
   local.set $10
   local.get $40
   i32.load offset=44
   local.set $11
   local.get $40
   i32.load offset=48
   local.set $12
   local.get $40
   i32.load offset=52
   local.set $13
   local.get $40
   i32.load offset=56
   local.set $14
   local.get $40
   i32.load offset=60
   local.set $15
   local.get $40
   i32.load offset=64
   local.set $16
   local.get $40
   i32.load offset=68
   local.set $17
   local.get $40
   i32.load offset=72
   local.set $18
   local.get $40
   i32.load offset=76
   local.set $19
   local.get $40
   i32.load offset=80
   local.set $20
   local.get $40
   i32.load offset=84
   local.set $21
   local.get $40
   f64.load offset=88 align=4
   local.set $22
   local.get $40
   i32.load offset=96
   local.set $23
   local.get $40
   i32.load offset=100
   local.set $24
   local.get $40
   i32.load offset=104
   local.set $25
   local.get $40
   i32.load offset=108
   local.set $26
   local.get $40
   i32.load offset=112
   local.set $27
   local.get $40
   i32.load offset=116
   local.set $28
   local.get $40
   i32.load offset=120
   local.set $29
   local.get $40
   i32.load offset=124
   local.set $30
   local.get $40
   i32.load offset=128
   local.set $31
   local.get $40
   i32.load offset=132
   local.set $32
   local.get $40
   i32.load offset=136
   local.set $33
   local.get $40
   i32.load offset=140
   local.set $34
   local.get $40
   i32.load offset=144
   local.set $35
   local.get $40
   i32.load offset=148
   local.set $36
   local.get $40
   i32.load offset=152
   local.set $37
  end
  block $__asyncify_unwind (result i32)
   global.get $__asyncify_state
   i32.const 2
   i32.eq
   if
    global.get $__asyncify_data
    global.get $__asyncify_data
    i32.load
    i32.const -4
    i32.add
    i32.store
    global.get $__asyncify_data
    i32.load
    i32.load
    local.set $39
   end
   block $break|0
    block $case8|0
     block $case7|0
      block $case6|0
       block $case5|0
        block $case4|0
         block $case3|0
          block $case2|0
           global.get $__asyncify_state
           i32.const 0
           i32.eq
           if
            block $case1|0
             block $case0|0
              global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.type
              local.set $1
              local.get $1
              local.set $0
              nop
              local.get $0
              local.set $2
              local.get $2
              i32.const 0
              i32.eq
              local.set $3
              local.get $3
              br_if $case0|0
              nop
              local.get $0
              local.set $4
              local.get $4
              i32.const 6
              i32.eq
              local.set $5
              local.get $5
              br_if $case1|0
              nop
              local.get $0
              local.set $6
              local.get $6
              i32.const 2
              i32.eq
              local.set $7
              local.get $7
              br_if $case2|0
              nop
              local.get $0
              local.set $8
              local.get $8
              i32.const 3
              i32.eq
              local.set $9
              local.get $9
              br_if $case3|0
              nop
              local.get $0
              local.set $10
              local.get $10
              i32.const 1
              i32.eq
              local.set $11
              local.get $11
              br_if $case4|0
              nop
              local.get $0
              local.set $12
              local.get $12
              i32.const 4
              i32.eq
              local.set $13
              local.get $13
              br_if $case5|0
              nop
              local.get $0
              local.set $14
              local.get $14
              i32.const 5
              i32.eq
              local.set $15
              local.get $15
              br_if $case6|0
              nop
              local.get $0
              local.set $16
              local.get $16
              i32.const 10
              i32.eq
              local.set $17
              local.get $17
              br_if $case7|0
              nop
              local.get $0
              local.set $18
              local.get $18
              i32.const 11
              i32.eq
              local.set $19
              local.get $19
              br_if $case8|0
              nop
              br $break|0
             end
             nop
             return
            end
            nop
            global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference
            local.set $20
            global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
            local.set $21
           end
           nop
           nop
           nop
           global.get $__asyncify_state
           i32.const 0
           i32.eq
           if (result i32)
            i32.const 1
           else            
            local.get $39
            i32.const 0
            i32.eq
           end
           if
            local.get $20
            local.get $21
            call $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualArray
            global.get $__asyncify_state
            i32.const 1
            i32.eq
            if
             i32.const 0
             br $__asyncify_unwind
            end
           end
           global.get $__asyncify_state
           i32.const 0
           i32.eq
           if
            nop
            br $break|0
           end
           nop
          end
          global.get $__asyncify_state
          i32.const 0
          i32.eq
          if
           nop
           global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.float
           local.set $22
           global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
           local.set $23
          end
          nop
          nop
          global.get $__asyncify_state
          i32.const 0
          i32.eq
          if (result i32)
           i32.const 1
          else           
           local.get $39
           i32.const 1
           i32.eq
          end
          if
           local.get $22
           i32.const 1
           local.get $23
           call $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualFloat
           global.get $__asyncify_state
           i32.const 1
           i32.eq
           if
            i32.const 1
            br $__asyncify_unwind
           end
          end
          global.get $__asyncify_state
          i32.const 0
          i32.eq
          if
           nop
           br $break|0
          end
          nop
         end
         global.get $__asyncify_state
         i32.const 0
         i32.eq
         if
          nop
          global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.integer
          local.set $24
          global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.signed
          local.set $25
          global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
          local.set $26
         end
         nop
         nop
         nop
         global.get $__asyncify_state
         i32.const 0
         i32.eq
         if (result i32)
          i32.const 1
         else          
          local.get $39
          i32.const 2
          i32.eq
         end
         if
          local.get $24
          local.get $25
          local.get $26
          call $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualInteger
          global.get $__asyncify_state
          i32.const 1
          i32.eq
          if
           i32.const 2
           br $__asyncify_unwind
          end
         end
         global.get $__asyncify_state
         i32.const 0
         i32.eq
         if
          nop
          br $break|0
         end
         nop
        end
        global.get $__asyncify_state
        i32.const 0
        i32.eq
        if
         nop
         global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
         local.set $27
        end
        nop
        global.get $__asyncify_state
        i32.const 0
        i32.eq
        if (result i32)
         i32.const 1
        else         
         local.get $39
         i32.const 3
         i32.eq
        end
        if
         local.get $27
         call $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualNull
         global.get $__asyncify_state
         i32.const 1
         i32.eq
         if
          i32.const 3
          br $__asyncify_unwind
         end
        end
        global.get $__asyncify_state
        i32.const 0
        i32.eq
        if
         nop
         br $break|0
        end
        nop
       end
       global.get $__asyncify_state
       i32.const 0
       i32.eq
       if
        nop
        global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference
        local.set $28
        global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.offset
        local.set $29
        global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
        local.set $30
       end
       nop
       nop
       nop
       global.get $__asyncify_state
       i32.const 0
       i32.eq
       if (result i32)
        i32.const 1
       else        
        local.get $39
        i32.const 4
        i32.eq
       end
       if
        local.get $28
        local.get $29
        local.get $30
        call $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualReferenceExternal
        global.get $__asyncify_state
        i32.const 1
        i32.eq
        if
         i32.const 4
         br $__asyncify_unwind
        end
       end
       global.get $__asyncify_state
       i32.const 0
       i32.eq
       if
        nop
        br $break|0
       end
       nop
      end
      global.get $__asyncify_state
      i32.const 0
      i32.eq
      if
       nop
       global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference
       local.set $31
       global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
       local.set $32
      end
      nop
      nop
      global.get $__asyncify_state
      i32.const 0
      i32.eq
      if (result i32)
       i32.const 1
      else       
       local.get $39
       i32.const 5
       i32.eq
      end
      if
       local.get $31
       local.get $32
       call $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualString
       global.get $__asyncify_state
       i32.const 1
       i32.eq
       if
        i32.const 5
        br $__asyncify_unwind
       end
      end
      global.get $__asyncify_state
      i32.const 0
      i32.eq
      if
       nop
       br $break|0
      end
      nop
     end
     global.get $__asyncify_state
     i32.const 0
     i32.eq
     if
      nop
      global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference
      local.set $33
      global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.signed
      local.set $34
      global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
      local.set $35
     end
     nop
     nop
     nop
     global.get $__asyncify_state
     i32.const 0
     i32.eq
     if (result i32)
      i32.const 1
     else      
      local.get $39
      i32.const 6
      i32.eq
     end
     if
      local.get $33
      local.get $34
      local.get $35
      call $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualLong
      global.get $__asyncify_state
      i32.const 1
      i32.eq
      if
       i32.const 6
       br $__asyncify_unwind
      end
     end
     global.get $__asyncify_state
     i32.const 0
     i32.eq
     if
      nop
      br $break|0
     end
     nop
    end
    global.get $__asyncify_state
    i32.const 0
    i32.eq
    if
     nop
     global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.integer
     local.set $36
     global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
     local.set $37
    end
    nop
    nop
    global.get $__asyncify_state
    i32.const 0
    i32.eq
    if (result i32)
     i32.const 1
    else     
     local.get $39
     i32.const 7
     i32.eq
    end
    if
     local.get $36
     local.get $37
     call $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualBool
     global.get $__asyncify_state
     i32.const 1
     i32.eq
     if
      i32.const 7
      br $__asyncify_unwind
     end
    end
    global.get $__asyncify_state
    i32.const 0
    i32.eq
    if
     nop
     br $break|0
    end
    nop
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    nop
   end
   return
  end
  local.set $38
  global.get $__asyncify_data
  i32.load
  local.get $38
  i32.store
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load
  i32.const 4
  i32.add
  i32.store
  global.get $__asyncify_data
  i32.load
  local.set $41
  local.get $41
  local.get $0
  i32.store
  local.get $41
  local.get $1
  i32.store offset=4
  local.get $41
  local.get $2
  i32.store offset=8
  local.get $41
  local.get $3
  i32.store offset=12
  local.get $41
  local.get $4
  i32.store offset=16
  local.get $41
  local.get $5
  i32.store offset=20
  local.get $41
  local.get $6
  i32.store offset=24
  local.get $41
  local.get $7
  i32.store offset=28
  local.get $41
  local.get $8
  i32.store offset=32
  local.get $41
  local.get $9
  i32.store offset=36
  local.get $41
  local.get $10
  i32.store offset=40
  local.get $41
  local.get $11
  i32.store offset=44
  local.get $41
  local.get $12
  i32.store offset=48
  local.get $41
  local.get $13
  i32.store offset=52
  local.get $41
  local.get $14
  i32.store offset=56
  local.get $41
  local.get $15
  i32.store offset=60
  local.get $41
  local.get $16
  i32.store offset=64
  local.get $41
  local.get $17
  i32.store offset=68
  local.get $41
  local.get $18
  i32.store offset=72
  local.get $41
  local.get $19
  i32.store offset=76
  local.get $41
  local.get $20
  i32.store offset=80
  local.get $41
  local.get $21
  i32.store offset=84
  local.get $41
  local.get $22
  f64.store offset=88 align=4
  local.get $41
  local.get $23
  i32.store offset=96
  local.get $41
  local.get $24
  i32.store offset=100
  local.get $41
  local.get $25
  i32.store offset=104
  local.get $41
  local.get $26
  i32.store offset=108
  local.get $41
  local.get $27
  i32.store offset=112
  local.get $41
  local.get $28
  i32.store offset=116
  local.get $41
  local.get $29
  i32.store offset=120
  local.get $41
  local.get $30
  i32.store offset=124
  local.get $41
  local.get $31
  i32.store offset=128
  local.get $41
  local.get $32
  i32.store offset=132
  local.get $41
  local.get $33
  i32.store offset=136
  local.get $41
  local.get $34
  i32.store offset=140
  local.get $41
  local.get $35
  i32.store offset=144
  local.get $41
  local.get $36
  i32.store offset=148
  local.get $41
  local.get $37
  i32.store offset=152
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load
  i32.const 156
  i32.add
  i32.store
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/report/Expected/__sendExpected (; 45 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 f64)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 i32)
  (local $39 i32)
  (local $40 i32)
  (local $41 i32)
  (local $42 i32)
  (local $43 i32)
  (local $44 i32)
  (local $45 i32)
  (local $46 i32)
  (local $47 i32)
  (local $48 i32)
  (local $49 i32)
  (local $50 i32)
  (local $51 i32)
  (local $52 i32)
  (local $53 i32)
  (local $54 i32)
  (local $55 i32)
  (local $56 i32)
  (local $57 i32)
  (local $58 i32)
  (local $59 i32)
  global.get $__asyncify_state
  i32.const 2
  i32.eq
  if
   global.get $__asyncify_data
   global.get $__asyncify_data
   i32.load
   i32.const -228
   i32.add
   i32.store
   global.get $__asyncify_data
   i32.load
   local.set $58
   local.get $58
   i32.load
   local.set $0
   local.get $58
   i32.load offset=4
   local.set $1
   local.get $58
   i32.load offset=8
   local.set $2
   local.get $58
   i32.load offset=12
   local.set $3
   local.get $58
   i32.load offset=16
   local.set $4
   local.get $58
   i32.load offset=20
   local.set $5
   local.get $58
   i32.load offset=24
   local.set $6
   local.get $58
   i32.load offset=28
   local.set $7
   local.get $58
   i32.load offset=32
   local.set $8
   local.get $58
   i32.load offset=36
   local.set $9
   local.get $58
   i32.load offset=40
   local.set $10
   local.get $58
   i32.load offset=44
   local.set $11
   local.get $58
   i32.load offset=48
   local.set $12
   local.get $58
   i32.load offset=52
   local.set $13
   local.get $58
   i32.load offset=56
   local.set $14
   local.get $58
   i32.load offset=60
   local.set $15
   local.get $58
   i32.load offset=64
   local.set $16
   local.get $58
   i32.load offset=68
   local.set $17
   local.get $58
   i32.load offset=72
   local.set $18
   local.get $58
   i32.load offset=76
   local.set $19
   local.get $58
   i32.load offset=80
   local.set $20
   local.get $58
   i32.load offset=84
   local.set $21
   local.get $58
   i32.load offset=88
   local.set $22
   local.get $58
   i32.load offset=92
   local.set $23
   local.get $58
   i32.load offset=96
   local.set $24
   local.get $58
   i32.load offset=100
   local.set $25
   local.get $58
   i32.load offset=104
   local.set $26
   local.get $58
   f64.load offset=108 align=4
   local.set $27
   local.get $58
   i32.load offset=116
   local.set $28
   local.get $58
   i32.load offset=120
   local.set $29
   local.get $58
   i32.load offset=124
   local.set $30
   local.get $58
   i32.load offset=128
   local.set $31
   local.get $58
   i32.load offset=132
   local.set $32
   local.get $58
   i32.load offset=136
   local.set $33
   local.get $58
   i32.load offset=140
   local.set $34
   local.get $58
   i32.load offset=144
   local.set $35
   local.get $58
   i32.load offset=148
   local.set $36
   local.get $58
   i32.load offset=152
   local.set $37
   local.get $58
   i32.load offset=156
   local.set $38
   local.get $58
   i32.load offset=160
   local.set $39
   local.get $58
   i32.load offset=164
   local.set $40
   local.get $58
   i32.load offset=168
   local.set $41
   local.get $58
   i32.load offset=172
   local.set $42
   local.get $58
   i32.load offset=176
   local.set $43
   local.get $58
   i32.load offset=180
   local.set $44
   local.get $58
   i32.load offset=184
   local.set $45
   local.get $58
   i32.load offset=188
   local.set $46
   local.get $58
   i32.load offset=192
   local.set $47
   local.get $58
   i32.load offset=196
   local.set $48
   local.get $58
   i32.load offset=200
   local.set $49
   local.get $58
   i32.load offset=204
   local.set $50
   local.get $58
   i32.load offset=208
   local.set $51
   local.get $58
   i32.load offset=212
   local.set $52
   local.get $58
   i32.load offset=216
   local.set $53
   local.get $58
   i32.load offset=220
   local.set $54
   local.get $58
   i32.load offset=224
   local.set $55
  end
  block $__asyncify_unwind (result i32)
   global.get $__asyncify_state
   i32.const 2
   i32.eq
   if
    global.get $__asyncify_data
    global.get $__asyncify_data
    i32.load
    i32.const -4
    i32.add
    i32.store
    global.get $__asyncify_data
    i32.load
    i32.load
    local.set $57
   end
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
              global.get $__asyncify_state
              i32.const 0
              i32.eq
              if
               block $case0|0
                global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.type
                local.set $1
                local.get $1
                local.set $0
                nop
                local.get $0
                local.set $2
                local.get $2
                i32.const 6
                i32.eq
                local.set $3
                local.get $3
                br_if $case0|0
                nop
                local.get $0
                local.set $4
                local.get $4
                i32.const 2
                i32.eq
                local.set $5
                local.get $5
                br_if $case1|0
                nop
                local.get $0
                local.set $6
                local.get $6
                i32.const 3
                i32.eq
                local.set $7
                local.get $7
                br_if $case2|0
                nop
                local.get $0
                local.set $8
                local.get $8
                i32.const 1
                i32.eq
                local.set $9
                local.get $9
                br_if $case3|0
                nop
                local.get $0
                local.set $10
                local.get $10
                i32.const 4
                i32.eq
                local.set $11
                local.get $11
                br_if $case4|0
                nop
                local.get $0
                local.set $12
                local.get $12
                i32.const 5
                i32.eq
                local.set $13
                local.get $13
                br_if $case5|0
                nop
                local.get $0
                local.set $14
                local.get $14
                i32.const 7
                i32.eq
                local.set $15
                local.get $15
                br_if $case6|0
                nop
                local.get $0
                local.set $16
                local.get $16
                i32.const 9
                i32.eq
                local.set $17
                local.get $17
                br_if $case7|0
                nop
                local.get $0
                local.set $18
                local.get $18
                i32.const 8
                i32.eq
                local.set $19
                local.get $19
                br_if $case8|0
                nop
                local.get $0
                local.set $20
                local.get $20
                i32.const 10
                i32.eq
                local.set $21
                local.get $21
                br_if $case9|0
                nop
                local.get $0
                local.set $22
                local.get $22
                i32.const 11
                i32.eq
                local.set $23
                local.get $23
                br_if $case10|0
                nop
                br $break|0
               end
               nop
               global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference
               local.set $24
               global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
               local.set $25
               global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
               local.set $26
              end
              nop
              nop
              nop
              nop
              global.get $__asyncify_state
              i32.const 0
              i32.eq
              if (result i32)
               i32.const 1
              else               
               local.get $57
               i32.const 0
               i32.eq
              end
              if
               local.get $24
               local.get $25
               local.get $26
               call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedArray
               global.get $__asyncify_state
               i32.const 1
               i32.eq
               if
                i32.const 0
                br $__asyncify_unwind
               end
              end
              global.get $__asyncify_state
              i32.const 0
              i32.eq
              if
               nop
               br $break|0
              end
              nop
             end
             global.get $__asyncify_state
             i32.const 0
             i32.eq
             if
              nop
              global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.float
              local.set $27
              global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
              local.set $28
              global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
              local.set $29
             end
             nop
             nop
             nop
             global.get $__asyncify_state
             i32.const 0
             i32.eq
             if (result i32)
              i32.const 1
             else              
              local.get $57
              i32.const 1
              i32.eq
             end
             if
              local.get $27
              i32.const 1
              local.get $28
              local.get $29
              call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedFloat
              global.get $__asyncify_state
              i32.const 1
              i32.eq
              if
               i32.const 1
               br $__asyncify_unwind
              end
             end
             global.get $__asyncify_state
             i32.const 0
             i32.eq
             if
              nop
              br $break|0
             end
             nop
            end
            global.get $__asyncify_state
            i32.const 0
            i32.eq
            if
             nop
             global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.integer
             local.set $30
             global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.signed
             local.set $31
             global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
             local.set $32
             global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
             local.set $33
            end
            nop
            nop
            nop
            nop
            global.get $__asyncify_state
            i32.const 0
            i32.eq
            if (result i32)
             i32.const 1
            else             
             local.get $57
             i32.const 2
             i32.eq
            end
            if
             local.get $30
             local.get $31
             local.get $32
             local.get $33
             call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedInteger
             global.get $__asyncify_state
             i32.const 1
             i32.eq
             if
              i32.const 2
              br $__asyncify_unwind
             end
            end
            global.get $__asyncify_state
            i32.const 0
            i32.eq
            if
             nop
             br $break|0
            end
            nop
           end
           global.get $__asyncify_state
           i32.const 0
           i32.eq
           if
            nop
            global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
            local.set $34
            global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
            local.set $35
           end
           nop
           nop
           global.get $__asyncify_state
           i32.const 0
           i32.eq
           if (result i32)
            i32.const 1
           else            
            local.get $57
            i32.const 3
            i32.eq
           end
           if
            local.get $34
            local.get $35
            call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedNull
            global.get $__asyncify_state
            i32.const 1
            i32.eq
            if
             i32.const 3
             br $__asyncify_unwind
            end
           end
           global.get $__asyncify_state
           i32.const 0
           i32.eq
           if
            nop
            br $break|0
           end
           nop
          end
          global.get $__asyncify_state
          i32.const 0
          i32.eq
          if
           nop
           global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference
           local.set $36
           global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.offset
           local.set $37
           global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
           local.set $38
           global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
           local.set $39
          end
          nop
          nop
          nop
          nop
          global.get $__asyncify_state
          i32.const 0
          i32.eq
          if (result i32)
           i32.const 1
          else           
           local.get $57
           i32.const 4
           i32.eq
          end
          if
           local.get $36
           local.get $37
           local.get $38
           local.get $39
           call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedReferenceExternal
           global.get $__asyncify_state
           i32.const 1
           i32.eq
           if
            i32.const 4
            br $__asyncify_unwind
           end
          end
          global.get $__asyncify_state
          i32.const 0
          i32.eq
          if
           nop
           br $break|0
          end
          nop
         end
         global.get $__asyncify_state
         i32.const 0
         i32.eq
         if
          nop
          global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference
          local.set $40
          global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
          local.set $41
          global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
          local.set $42
         end
         nop
         nop
         nop
         global.get $__asyncify_state
         i32.const 0
         i32.eq
         if (result i32)
          i32.const 1
         else          
          local.get $57
          i32.const 5
          i32.eq
         end
         if
          local.get $40
          local.get $41
          local.get $42
          call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedString
          global.get $__asyncify_state
          i32.const 1
          i32.eq
          if
           i32.const 5
           br $__asyncify_unwind
          end
         end
         global.get $__asyncify_state
         i32.const 0
         i32.eq
         if
          nop
          br $break|0
         end
         nop
        end
        global.get $__asyncify_state
        i32.const 0
        i32.eq
        if
         nop
         global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
         local.set $43
         global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
         local.set $44
        end
        nop
        nop
        global.get $__asyncify_state
        i32.const 0
        i32.eq
        if (result i32)
         i32.const 1
        else         
         local.get $57
         i32.const 6
         i32.eq
        end
        if
         local.get $43
         local.get $44
         call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedFalsy
         global.get $__asyncify_state
         i32.const 1
         i32.eq
         if
          i32.const 6
          br $__asyncify_unwind
         end
        end
        global.get $__asyncify_state
        i32.const 0
        i32.eq
        if
         nop
         br $break|0
        end
        nop
       end
       global.get $__asyncify_state
       i32.const 0
       i32.eq
       if
        nop
        global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
        local.set $45
        global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
        local.set $46
       end
       nop
       nop
       global.get $__asyncify_state
       i32.const 0
       i32.eq
       if (result i32)
        i32.const 1
       else        
        local.get $57
        i32.const 7
        i32.eq
       end
       if
        local.get $45
        local.get $46
        call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedFinite
        global.get $__asyncify_state
        i32.const 1
        i32.eq
        if
         i32.const 7
         br $__asyncify_unwind
        end
       end
       global.get $__asyncify_state
       i32.const 0
       i32.eq
       if
        nop
        br $break|0
       end
       nop
      end
      global.get $__asyncify_state
      i32.const 0
      i32.eq
      if
       nop
       global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
       local.set $47
       global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
       local.set $48
      end
      nop
      nop
      global.get $__asyncify_state
      i32.const 0
      i32.eq
      if (result i32)
       i32.const 1
      else       
       local.get $57
       i32.const 8
       i32.eq
      end
      if
       local.get $47
       local.get $48
       call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedTruthy
       global.get $__asyncify_state
       i32.const 1
       i32.eq
       if
        i32.const 8
        br $__asyncify_unwind
       end
      end
      global.get $__asyncify_state
      i32.const 0
      i32.eq
      if
       nop
       br $break|0
      end
      nop
     end
     global.get $__asyncify_state
     i32.const 0
     i32.eq
     if
      nop
      global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference
      local.set $49
      global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.signed
      local.set $50
      global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
      local.set $51
      global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
      local.set $52
     end
     nop
     nop
     nop
     nop
     global.get $__asyncify_state
     i32.const 0
     i32.eq
     if (result i32)
      i32.const 1
     else      
      local.get $57
      i32.const 9
      i32.eq
     end
     if
      local.get $49
      local.get $50
      local.get $51
      local.get $52
      call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedLong
      global.get $__asyncify_state
      i32.const 1
      i32.eq
      if
       i32.const 9
       br $__asyncify_unwind
      end
     end
     global.get $__asyncify_state
     i32.const 0
     i32.eq
     if
      nop
      br $break|0
     end
     nop
    end
    global.get $__asyncify_state
    i32.const 0
    i32.eq
    if
     nop
     global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.integer
     local.set $53
     global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
     local.set $54
     global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
     local.set $55
    end
    nop
    nop
    nop
    global.get $__asyncify_state
    i32.const 0
    i32.eq
    if (result i32)
     i32.const 1
    else     
     local.get $57
     i32.const 10
     i32.eq
    end
    if
     local.get $53
     local.get $54
     local.get $55
     call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedBool
     global.get $__asyncify_state
     i32.const 1
     i32.eq
     if
      i32.const 10
      br $__asyncify_unwind
     end
    end
    global.get $__asyncify_state
    i32.const 0
    i32.eq
    if
     nop
     br $break|0
    end
    nop
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    nop
   end
   return
  end
  local.set $56
  global.get $__asyncify_data
  i32.load
  local.get $56
  i32.store
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load
  i32.const 4
  i32.add
  i32.store
  global.get $__asyncify_data
  i32.load
  local.set $59
  local.get $59
  local.get $0
  i32.store
  local.get $59
  local.get $1
  i32.store offset=4
  local.get $59
  local.get $2
  i32.store offset=8
  local.get $59
  local.get $3
  i32.store offset=12
  local.get $59
  local.get $4
  i32.store offset=16
  local.get $59
  local.get $5
  i32.store offset=20
  local.get $59
  local.get $6
  i32.store offset=24
  local.get $59
  local.get $7
  i32.store offset=28
  local.get $59
  local.get $8
  i32.store offset=32
  local.get $59
  local.get $9
  i32.store offset=36
  local.get $59
  local.get $10
  i32.store offset=40
  local.get $59
  local.get $11
  i32.store offset=44
  local.get $59
  local.get $12
  i32.store offset=48
  local.get $59
  local.get $13
  i32.store offset=52
  local.get $59
  local.get $14
  i32.store offset=56
  local.get $59
  local.get $15
  i32.store offset=60
  local.get $59
  local.get $16
  i32.store offset=64
  local.get $59
  local.get $17
  i32.store offset=68
  local.get $59
  local.get $18
  i32.store offset=72
  local.get $59
  local.get $19
  i32.store offset=76
  local.get $59
  local.get $20
  i32.store offset=80
  local.get $59
  local.get $21
  i32.store offset=84
  local.get $59
  local.get $22
  i32.store offset=88
  local.get $59
  local.get $23
  i32.store offset=92
  local.get $59
  local.get $24
  i32.store offset=96
  local.get $59
  local.get $25
  i32.store offset=100
  local.get $59
  local.get $26
  i32.store offset=104
  local.get $59
  local.get $27
  f64.store offset=108 align=4
  local.get $59
  local.get $28
  i32.store offset=116
  local.get $59
  local.get $29
  i32.store offset=120
  local.get $59
  local.get $30
  i32.store offset=124
  local.get $59
  local.get $31
  i32.store offset=128
  local.get $59
  local.get $32
  i32.store offset=132
  local.get $59
  local.get $33
  i32.store offset=136
  local.get $59
  local.get $34
  i32.store offset=140
  local.get $59
  local.get $35
  i32.store offset=144
  local.get $59
  local.get $36
  i32.store offset=148
  local.get $59
  local.get $37
  i32.store offset=152
  local.get $59
  local.get $38
  i32.store offset=156
  local.get $59
  local.get $39
  i32.store offset=160
  local.get $59
  local.get $40
  i32.store offset=164
  local.get $59
  local.get $41
  i32.store offset=168
  local.get $59
  local.get $42
  i32.store offset=172
  local.get $59
  local.get $43
  i32.store offset=176
  local.get $59
  local.get $44
  i32.store offset=180
  local.get $59
  local.get $45
  i32.store offset=184
  local.get $59
  local.get $46
  i32.store offset=188
  local.get $59
  local.get $47
  i32.store offset=192
  local.get $59
  local.get $48
  i32.store offset=196
  local.get $59
  local.get $49
  i32.store offset=200
  local.get $59
  local.get $50
  i32.store offset=204
  local.get $59
  local.get $51
  i32.store offset=208
  local.get $59
  local.get $52
  i32.store offset=212
  local.get $59
  local.get $53
  i32.store offset=216
  local.get $59
  local.get $54
  i32.store offset=220
  local.get $59
  local.get $55
  i32.store offset=224
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load
  i32.const 228
  i32.add
  i32.store
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/log/__ignoreLogs (; 46 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.set $1
  local.get $1
  i32.const 0
  i32.ne
  local.set $2
  local.get $2
  global.set $node_modules/@as-pect/assembly/assembly/internal/log/ignoreLogs
  nop
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/RTrace/__disableRTrace (; 47 ;) (type $FUNCSIG$v)
  i32.const 0
  global.set $node_modules/@as-pect/assembly/assembly/internal/RTrace/RTrace.enabled
  nop
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/RTrace/__getUsizeArrayId (; 48 ;) (type $FUNCSIG$i) (result i32)
  i32.const 3
  return
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.clear (; 49 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  global.set $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.type
  nop
  global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference
  local.set $0
  local.get $0
  i32.const 0
  i32.gt_u
  local.set $1
  local.get $1
  if
   global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference
   local.set $2
   local.get $2
   call $~lib/rt/stub/__release
   nop
   i32.const 0
   global.set $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference
   nop
   nop
  end
  nop
  nop
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.clear (; 50 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  global.set $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.type
  nop
  global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference
  local.set $0
  local.get $0
  i32.const 0
  i32.gt_u
  local.set $1
  local.get $1
  if
   global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference
   local.set $2
   local.get $2
   call $~lib/rt/stub/__release
   nop
   i32.const 0
   global.set $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference
   nop
   nop
  end
  nop
  i32.const -1
  global.set $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
  nop
  nop
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Expectation/__cleanup (; 51 ;) (type $FUNCSIG$v)
  call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.clear
  nop
  call $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.clear
  nop
  nop
 )
 (func $start (; 52 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $__asyncify_state
  i32.const 2
  i32.eq
  if
   global.get $__asyncify_data
   global.get $__asyncify_data
   i32.load
   i32.const -24
   i32.add
   i32.store
   global.get $__asyncify_data
   i32.load
   local.set $8
   local.get $8
   i32.load
   local.set $0
   local.get $8
   i32.load offset=4
   local.set $1
   local.get $8
   i32.load offset=8
   local.set $2
   local.get $8
   i32.load offset=12
   local.set $3
   local.get $8
   i32.load offset=16
   local.set $4
   local.get $8
   i32.load offset=20
   local.set $5
  end
  block $__asyncify_unwind (result i32)
   global.get $__asyncify_state
   i32.const 2
   i32.eq
   if
    global.get $__asyncify_data
    global.get $__asyncify_data
    i32.load
    i32.const -4
    i32.add
    i32.store
    global.get $__asyncify_data
    i32.load
    i32.load
    local.set $7
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    global.get $~lib/started
    local.set $0
    local.get $0
    if
     return
    else     
     i32.const 1
     global.set $~lib/started
     nop
    end
    nop
    global.get $~lib/heap/__heap_base
    local.set $1
    local.get $1
    i32.const 15
    i32.add
    local.set $2
    i32.const 15
    i32.const -1
    i32.xor
    local.set $3
    local.get $2
    local.get $3
    i32.and
    local.set $4
    local.get $4
    global.set $~lib/rt/stub/startOffset
    nop
    global.get $~lib/rt/stub/startOffset
    local.set $5
    local.get $5
    global.set $~lib/rt/stub/offset
    nop
   end
   nop
   nop
   nop
   nop
   nop
   nop
   nop
   nop
   nop
   nop
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else    
    local.get $7
    i32.const 0
    i32.eq
   end
   if
    call $start:assembly/__tests__/example.spec
    global.get $__asyncify_state
    i32.const 1
    i32.eq
    if
     i32.const 0
     br $__asyncify_unwind
    end
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    nop
   end
   global.get $__asyncify_state
   i32.const 0
   i32.eq
   if
    nop
   end
   return
  end
  local.set $6
  global.get $__asyncify_data
  i32.load
  local.get $6
  i32.store
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load
  i32.const 4
  i32.add
  i32.store
  global.get $__asyncify_data
  i32.load
  local.set $9
  local.get $9
  local.get $0
  i32.store
  local.get $9
  local.get $1
  i32.store offset=4
  local.get $9
  local.get $2
  i32.store offset=8
  local.get $9
  local.get $3
  i32.store offset=12
  local.get $9
  local.get $4
  i32.store offset=16
  local.get $9
  local.get $5
  i32.store offset=20
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load
  i32.const 24
  i32.add
  i32.store
 )
 (func $null (; 53 ;) (type $FUNCSIG$v)
  nop
 )
 (func $asyncify_start_unwind (; 54 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 1
  global.set $__asyncify_state
  local.get $0
  global.set $__asyncify_data
  global.get $__asyncify_data
  i32.load
  global.get $__asyncify_data
  i32.load offset=4
  i32.gt_u
  if
   unreachable
  end
 )
 (func $asyncify_stop_unwind (; 55 ;) (type $FUNCSIG$v)
  i32.const 0
  global.set $__asyncify_state
  global.get $__asyncify_data
  i32.load
  global.get $__asyncify_data
  i32.load offset=4
  i32.gt_u
  if
   unreachable
  end
 )
 (func $asyncify_start_rewind (; 56 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 2
  global.set $__asyncify_state
  local.get $0
  global.set $__asyncify_data
  global.get $__asyncify_data
  i32.load
  global.get $__asyncify_data
  i32.load offset=4
  i32.gt_u
  if
   unreachable
  end
 )
 (func $asyncify_stop_rewind (; 57 ;) (type $FUNCSIG$v)
  i32.const 0
  global.set $__asyncify_state
  global.get $__asyncify_data
  i32.load
  global.get $__asyncify_data
  i32.load offset=4
  i32.gt_u
  if
   unreachable
  end
 )
)
