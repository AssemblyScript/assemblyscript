(module
 (type $0 (func (result i32)))
 (type $1 (func (param i32) (result i32)))
 (type $2 (func))
 (type $3 (func (param i32)))
 (type $4 (func (param i32 i32)))
 (type $5 (func (param i32 i32) (result i32)))
 (type $6 (func (param i32 i32 i32 i32)))
 (type $7 (func (param i32 i32 i64)))
 (type $8 (func (param i32 i32 i32)))
 (type $9 (func (param i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/__closure_env (mut i32) (i32.const 0))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 35272))
 (memory $0 1)
 (data $0 (i32.const 1036) "<")
 (data $0.1 (i32.const 1048) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $1 (i32.const 1100) "<")
 (data $1.1 (i32.const 1112) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data $4 (i32.const 1228) "<")
 (data $4.1 (i32.const 1240) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $5 (i32.const 1292) ",")
 (data $5.1 (i32.const 1304) "\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data $7 (i32.const 1372) "<")
 (data $7.1 (i32.const 1384) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data $8 (i32.const 1436) "\1c")
 (data $8.1 (i32.const 1448) "\05\00\00\00\08\00\00\00\01")
 (data $9 (i32.const 1468) "\1c")
 (data $9.1 (i32.const 1480) "\05\00\00\00\08\00\00\00\02")
 (data $10 (i32.const 1500) "<")
 (data $10.1 (i32.const 1512) "\02\00\00\00$\00\00\00c\00l\00o\00s\00u\00r\00e\00-\00c\00o\00m\00p\00l\00e\00x\00.\00t\00s")
 (data $11 (i32.const 1564) "\1c")
 (data $11.1 (i32.const 1576) "\07\00\00\00\08\00\00\00\03")
 (data $12 (i32.const 1596) "\1c")
 (data $12.1 (i32.const 1608) "\01")
 (data $13 (i32.const 1628) "\1c")
 (data $13.1 (i32.const 1640) "\05\00\00\00\08\00\00\00\04")
 (data $14 (i32.const 1660) ",")
 (data $14.1 (i32.const 1672) "\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data $15 (i32.const 1708) ",")
 (data $15.1 (i32.const 1720) "\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $16 (i32.const 1756) "\1c")
 (data $16.1 (i32.const 1768) "\05\00\00\00\08\00\00\00\05")
 (data $17 (i32.const 1788) "|")
 (data $17.1 (i32.const 1800) "\02\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data $18 (i32.const 1916) "\1c")
 (data $18.1 (i32.const 1928) "\n\00\00\00\08\00\00\00\06")
 (data $19 (i32.const 1948) "\1c")
 (data $19.1 (i32.const 1960) "\05\00\00\00\08\00\00\00\07")
 (data $20 (i32.const 1980) "\1c")
 (data $20.1 (i32.const 1992) "\05\00\00\00\08\00\00\00\08")
 (data $21 (i32.const 2012) "\1c")
 (data $21.1 (i32.const 2024) "\05\00\00\00\08\00\00\00\t")
 (data $22 (i32.const 2044) "\1c")
 (data $22.1 (i32.const 2056) "\01")
 (data $23 (i32.const 2076) "\1c")
 (data $23.1 (i32.const 2088) "\05\00\00\00\08\00\00\00\n")
 (data $24 (i32.const 2108) "\1c")
 (data $24.1 (i32.const 2120) "\r\00\00\00\08\00\00\00\0b")
 (data $25 (i32.const 2140) "\1c")
 (data $25.1 (i32.const 2152) "\05\00\00\00\08\00\00\00\0c")
 (data $26 (i32.const 2172) "\1c")
 (data $26.1 (i32.const 2184) "\05\00\00\00\08\00\00\00\r")
 (data $27 (i32.const 2204) "\1c")
 (data $27.1 (i32.const 2216) "\0e\00\00\00\08\00\00\00\0e")
 (data $28 (i32.const 2236) ",")
 (data $28.1 (i32.const 2248) "\01\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data $29 (i32.const 2284) "\1c")
 (data $29.1 (i32.const 2296) "\05\00\00\00\08\00\00\00\0f")
 (data $30 (i32.const 2316) ",")
 (data $30.1 (i32.const 2328) "\01\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data $31 (i32.const 2364) "\1c")
 (data $31.1 (i32.const 2376) "\0f\00\00\00\08\00\00\00\10")
 (data $32 (i32.const 2396) "\1c")
 (data $32.1 (i32.const 2408) "\10\00\00\00\08\00\00\00\11")
 (data $33 (i32.const 2432) "\11\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\02A\00\00\02\t\00\00\00\00\00\00 ")
 (table $0 18 18 funcref)
 (elem $0 (i32.const 1) $closure-complex/testNestedArrowsWithClassCapture~anonymous|0 $closure-complex/testNestedArrowsWithClassCapture~anonymous|1 $closure-complex/testArrowClosureWithClass~anonymous|0 $closure-complex/createCounterOperations~anonymous|0 $closure-complex/createCounterOperations~anonymous|1 $closure-complex/testDeeplyNestedClassCreation~anonymous|0~anonymous|0~anonymous|0 $closure-complex/testDeeplyNestedClassCreation~anonymous|0~anonymous|0 $closure-complex/testDeeplyNestedClassCreation~anonymous|0 $closure-complex/ClosureFactory#createAdder~anonymous|0 $closure-complex/SelfReferencing#addCallback~anonymous|0 $closure-complex/testMultipleClosuresSharing~anonymous|0 $closure-complex/testMultipleClosuresSharing~anonymous|1 $closure-complex/testNestedArrowFunctions~anonymous|0~anonymous|0 $closure-complex/testNestedArrowFunctions~anonymous|0 $closure-complex/testComplexPipeline~anonymous|0 $closure-complex/testCurriedWithClass~anonymous|0~anonymous|0 $closure-complex/testCurriedWithClass~anonymous|0)
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  i32.const 1248
  call $~lib/rt/itcms/__visit
  i32.const 1680
  call $~lib/rt/itcms/__visit
  i32.const 1808
  call $~lib/rt/itcms/__visit
  i32.const 1056
  call $~lib/rt/itcms/__visit
  global.get $~lib/rt/itcms/pinSpace
  local.tee $1
  i32.load offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.ne
   if
    local.get $0
    i32.load offset=4
    i32.const 3
    i32.and
    i32.const 3
    i32.ne
    if
     i32.const 0
     i32.const 1120
     i32.const 160
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 20
    i32.add
    call $~lib/rt/__visit_members
    local.get $0
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $0
   i32.load offset=8
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1120
    i32.const 148
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   global.set $~lib/rt/itcms/iter
  end
  block $__inlined_func$~lib/rt/itcms/Object#unlink$235
   local.get $0
   i32.load offset=4
   i32.const -4
   i32.and
   local.tee $1
   i32.eqz
   if
    local.get $0
    i32.load offset=8
    i32.eqz
    local.get $0
    i32.const 35272
    i32.lt_u
    i32.and
    i32.eqz
    if
     i32.const 0
     i32.const 1120
     i32.const 128
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    br $__inlined_func$~lib/rt/itcms/Object#unlink$235
   end
   local.get $0
   i32.load offset=8
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 1120
    i32.const 132
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   local.get $2
   i32.store offset=8
   local.get $2
   local.get $1
   local.get $2
   i32.load offset=4
   i32.const 3
   i32.and
   i32.or
   i32.store offset=4
  end
  global.get $~lib/rt/itcms/toSpace
  local.set $2
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 2
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 2432
   i32.load
   i32.gt_u
   if
    i32.const 1248
    i32.const 1312
    i32.const 21
    i32.const 28
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 2
   i32.shl
   i32.const 2436
   i32.add
   i32.load
   i32.const 32
   i32.and
  end
  local.set $3
  local.get $2
  i32.load offset=8
  local.set $1
  local.get $0
  global.get $~lib/rt/itcms/white
  i32.eqz
  i32.const 2
  local.get $3
  select
  local.get $2
  i32.or
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $1
  local.get $0
  local.get $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store offset=8
 )
 (func $~lib/rt/itcms/__visit (param $0 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  global.get $~lib/rt/itcms/white
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.tee $3
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $3
   local.get $3
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $3
   i32.clz
   i32.sub
   local.tee $4
   i32.const 7
   i32.sub
   local.set $2
   local.get $3
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $3
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.set $5
  local.get $1
  i32.load offset=4
  local.tee $4
  if
   local.get $4
   local.get $5
   i32.store offset=8
  end
  local.get $5
  if
   local.get $5
   local.get $4
   i32.store offset=4
  end
  local.get $1
  local.get $0
  local.get $2
  i32.const 4
  i32.shl
  local.get $3
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.tee $1
  i32.load offset=96
  i32.eq
  if
   local.get $1
   local.get $5
   i32.store offset=96
   local.get $5
   i32.eqz
   if
    local.get $0
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    local.tee $1
    i32.load offset=4
    i32.const -2
    local.get $3
    i32.rotl
    i32.and
    local.set $3
    local.get $1
    local.get $3
    i32.store offset=4
    local.get $3
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const -2
     local.get $2
     i32.rotl
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $3
   i32.const 4
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   i32.load
   local.set $2
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $1
   i32.load
   local.tee $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1392
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $6
   i32.const 4
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.or
  i32.store
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $1
  i32.const 4
  i32.add
  local.get $2
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 1392
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $2
   local.get $2
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $5
   local.get $2
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  i32.const 16
  i32.lt_u
  local.get $5
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $3
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $3
  i32.store offset=8
  local.get $3
  if
   local.get $3
   local.get $1
   i32.store offset=4
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $5
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $5
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  local.get $2
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $2
  local.get $1
  i64.extend_i32_u
  i64.lt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 382
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.load offset=1568
  local.tee $3
  if
   local.get $3
   i32.const 4
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1392
    i32.const 389
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   local.get $1
   i32.const 16
   i32.sub
   local.tee $5
   i32.eq
   if
    local.get $3
    i32.load
    local.set $4
    local.get $5
    local.set $1
   end
  else
   local.get $0
   i32.const 1572
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1392
    i32.const 402
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  i32.wrap_i64
  i32.const -16
  i32.and
  local.get $1
  i32.sub
  local.tee $3
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $4
  i32.const 2
  i32.and
  local.get $3
  i32.const 8
  i32.sub
  local.tee $3
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 4
  i32.add
  local.get $3
  i32.add
  local.tee $3
  i32.const 2
  i32.store
  local.get $0
  local.get $3
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  memory.size
  local.tee $1
  i32.const 0
  i32.le_s
  if (result i32)
   i32.const 1
   local.get $1
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  i32.const 35280
  i32.const 0
  i32.store
  i32.const 36848
  i32.const 0
  i32.store
  loop $for-loop|0
   local.get $0
   i32.const 23
   i32.lt_u
   if
    local.get $0
    i32.const 2
    i32.shl
    i32.const 35280
    i32.add
    i32.const 0
    i32.store offset=4
    i32.const 0
    local.set $1
    loop $for-loop|1
     local.get $1
     i32.const 16
     i32.lt_u
     if
      local.get $0
      i32.const 4
      i32.shl
      local.get $1
      i32.add
      i32.const 2
      i32.shl
      i32.const 35280
      i32.add
      i32.const 0
      i32.store offset=96
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  i32.const 35280
  i32.const 36852
  memory.size
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 35280
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      br_table $case0|0 $case1|0 $case2|0 $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $1
    global.get $~lib/rt/itcms/iter
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    loop $while-continue|1
     local.get $0
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     if
      local.get $0
      global.set $~lib/rt/itcms/iter
      local.get $1
      local.get $0
      i32.load offset=4
      local.tee $2
      i32.const 3
      i32.and
      i32.ne
      if
       local.get $0
       local.get $2
       i32.const -4
       i32.and
       local.get $1
       i32.or
       i32.store offset=4
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $0
       i32.const 20
       i32.add
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       return
      end
      local.get $0
      i32.load offset=4
      i32.const -4
      i32.and
      local.set $0
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/toSpace
    global.get $~lib/rt/itcms/iter
    i32.load offset=4
    i32.const -4
    i32.and
    i32.eq
    if
     global.get $~lib/memory/__stack_pointer
     local.set $0
     loop $while-continue|0
      local.get $0
      i32.const 35272
      i32.lt_u
      if
       local.get $0
       i32.load
       call $~lib/rt/itcms/__visit
       local.get $0
       i32.const 4
       i32.add
       local.set $0
       br $while-continue|0
      end
     end
     global.get $~lib/rt/itcms/iter
     i32.load offset=4
     i32.const -4
     i32.and
     local.set $0
     loop $while-continue|2
      local.get $0
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      if
       local.get $1
       local.get $0
       i32.load offset=4
       local.tee $2
       i32.const 3
       i32.and
       i32.ne
       if
        local.get $0
        local.get $2
        i32.const -4
        i32.and
        local.get $1
        i32.or
        i32.store offset=4
        local.get $0
        i32.const 20
        i32.add
        call $~lib/rt/__visit_members
       end
       local.get $0
       i32.load offset=4
       i32.const -4
       i32.and
       local.set $0
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $0
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $0
     global.set $~lib/rt/itcms/toSpace
     local.get $1
     global.set $~lib/rt/itcms/white
     local.get $0
     i32.load offset=4
     i32.const -4
     i32.and
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    return
   end
   global.get $~lib/rt/itcms/iter
   local.tee $0
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $0
    i32.load offset=4
    local.tee $1
    i32.const -4
    i32.and
    global.set $~lib/rt/itcms/iter
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.get $1
    i32.const 3
    i32.and
    i32.ne
    if
     i32.const 0
     i32.const 1120
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 35272
    i32.lt_u
    if
     local.get $0
     i32.const 0
     i32.store offset=4
     local.get $0
     i32.const 0
     i32.store offset=8
    else
     global.get $~lib/rt/itcms/total
     local.get $0
     i32.load
     i32.const -4
     i32.and
     i32.const 4
     i32.add
     i32.sub
     global.set $~lib/rt/itcms/total
     local.get $0
     i32.const 4
     i32.add
     local.tee $0
     i32.const 35272
     i32.ge_u
     if
      global.get $~lib/rt/tlsf/ROOT
      i32.eqz
      if
       call $~lib/rt/tlsf/initialize
      end
      global.get $~lib/rt/tlsf/ROOT
      local.get $0
      i32.const 4
      i32.sub
      local.set $2
      local.get $0
      i32.const 15
      i32.and
      i32.const 1
      local.get $0
      select
      if (result i32)
       i32.const 1
      else
       local.get $2
       i32.load
       i32.const 1
       i32.and
      end
      if
       i32.const 0
       i32.const 1392
       i32.const 562
       i32.const 3
       call $~lib/builtins/abort
       unreachable
      end
      local.get $2
      local.get $2
      i32.load
      i32.const 1
      i32.or
      i32.store
      local.get $2
      call $~lib/rt/tlsf/insertBlock
     end
    end
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   i32.store offset=4
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   i32.store offset=8
   i32.const 0
   global.set $~lib/rt/itcms/state
  end
  i32.const 0
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $1
  else
   local.get $1
   i32.const 536870910
   i32.lt_u
   if
    local.get $1
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
    local.set $1
   end
   local.get $1
   i32.const 31
   local.get $1
   i32.clz
   i32.sub
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $1
   local.get $2
   i32.const 7
   i32.sub
   local.set $2
  end
  local.get $1
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 334
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
  else
   local.get $0
   i32.load
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $0
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1392
     i32.const 347
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1056
   i32.const 1392
   i32.const 461
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $1
   i32.const 19
   i32.add
   i32.const -16
   i32.and
   i32.const 4
   i32.sub
  end
  local.tee $3
  call $~lib/rt/tlsf/searchBlock
  local.tee $1
  i32.eqz
  if
   memory.size
   local.tee $1
   local.get $3
   i32.const 256
   i32.ge_u
   if (result i32)
    local.get $3
    i32.const 536870910
    i32.lt_u
    if (result i32)
     local.get $3
     i32.const 1
     i32.const 27
     local.get $3
     i32.clz
     i32.sub
     i32.shl
     i32.add
     i32.const 1
     i32.sub
    else
     local.get $3
    end
   else
    local.get $3
   end
   i32.const 4
   local.get $0
   i32.load offset=1568
   local.get $1
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   i32.ne
   i32.shl
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $2
   local.get $1
   local.get $2
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $2
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $0
   local.get $1
   i32.const 16
   i32.shl
   memory.size
   i64.extend_i32_s
   i64.const 16
   i64.shl
   call $~lib/rt/tlsf/addMemory
   local.get $0
   local.get $3
   call $~lib/rt/tlsf/searchBlock
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1392
    i32.const 499
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $3
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.gt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/removeBlock
  local.get $1
  i32.load
  local.set $4
  local.get $3
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1392
   i32.const 361
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const -4
  i32.and
  local.get $3
  i32.sub
  local.tee $2
  i32.const 16
  i32.ge_u
  if
   local.get $1
   local.get $3
   local.get $4
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.get $3
   i32.add
   local.tee $3
   local.get $2
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $3
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $4
   i32.const -2
   i32.and
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $0
   local.get $0
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
  local.get $1
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 261
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   block $__inlined_func$~lib/rt/itcms/interrupt$69
    i32.const 2048
    local.set $2
    loop $do-loop|0
     local.get $2
     call $~lib/rt/itcms/step
     i32.sub
     local.set $2
     global.get $~lib/rt/itcms/state
     i32.eqz
     if
      global.get $~lib/rt/itcms/total
      i64.extend_i32_u
      i64.const 200
      i64.mul
      i64.const 100
      i64.div_u
      i32.wrap_i64
      i32.const 1024
      i32.add
      global.set $~lib/rt/itcms/threshold
      br $__inlined_func$~lib/rt/itcms/interrupt$69
     end
     local.get $2
     i32.const 0
     i32.gt_s
     br_if $do-loop|0
    end
    global.get $~lib/rt/itcms/total
    global.get $~lib/rt/itcms/total
    global.get $~lib/rt/itcms/threshold
    i32.sub
    i32.const 1024
    i32.lt_u
    i32.const 10
    i32.shl
    i32.add
    global.set $~lib/rt/itcms/threshold
   end
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  i32.const 16
  i32.add
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  global.get $~lib/rt/itcms/fromSpace
  local.tee $1
  i32.load offset=8
  local.set $3
  local.get $2
  local.get $1
  global.get $~lib/rt/itcms/white
  i32.or
  i32.store offset=4
  local.get $2
  local.get $3
  i32.store offset=8
  local.get $3
  local.get $2
  local.get $3
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store offset=8
  global.get $~lib/rt/itcms/total
  local.get $2
  i32.load
  i32.const -4
  i32.and
  i32.const 4
  i32.add
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $2
  i32.const 20
  i32.add
  local.tee $1
  i32.const 0
  local.get $0
  memory.fill
  local.get $1
 )
 (func $~lib/rt/itcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  i32.eqz
  if
   return
  end
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 295
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/white
  local.get $1
  i32.const 20
  i32.sub
  local.tee $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $0
   i32.load offset=4
   i32.const 3
   i32.and
   local.tee $3
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $0
    local.get $1
    local.get $2
    select
    call $~lib/rt/itcms/Object#makeGray
   else
    global.get $~lib/rt/itcms/state
    i32.const 1
    i32.eq
    local.get $3
    i32.const 3
    i32.eq
    i32.and
    if
     local.get $1
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $closure-complex/ClosureFactory#createAdder~anonymous|0 (result i32)
  (local $0 i32)
  global.get $~lib/__closure_env
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=8
  local.get $0
  i32.load offset=12
  i32.add
  i32.add
 )
 (func $closure-complex/testMultipleClosuresSharing~anonymous|1 (result i32)
  global.get $~lib/__closure_env
  i32.load offset=4
 )
 (func $closure-complex/testNestedArrowFunctions~anonymous|0~anonymous|0 (result i32)
  global.get $~lib/__closure_env
  i32.load offset=4
  i32.const 1
  i32.shl
 )
 (func $closure-complex/testNestedArrowFunctions~anonymous|0 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/__closure_env
  local.set $1
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 8
  call $~lib/rt/tlsf/allocateBlock
  local.tee $3
  i32.const 4
  i32.add
  local.tee $2
  local.get $1
  i32.store
  local.get $3
  local.get $0
  local.get $1
  i32.load offset=4
  i32.add
  i32.store offset=8
  i32.const 8
  i32.const 5
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.const 13
  i32.store
  local.get $0
  local.get $2
  i32.store offset=4
  local.get $0
 )
 (func $closure-complex/testCurriedWithClass~anonymous|0 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 8
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  i32.const 4
  i32.add
  local.tee $1
  i32.const 0
  i32.store
  local.get $2
  local.get $0
  i32.store offset=8
  i32.const 8
  i32.const 15
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.const 16
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
 )
 (func $start:closure-complex
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  memory.size
  i32.const 16
  i32.shl
  i32.const 35272
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 1172
  i32.const 1168
  i32.store
  i32.const 1176
  i32.const 1168
  i32.store
  i32.const 1168
  global.set $~lib/rt/itcms/pinSpace
  i32.const 1204
  i32.const 1200
  i32.store
  i32.const 1208
  i32.const 1200
  i32.store
  i32.const 1200
  global.set $~lib/rt/itcms/toSpace
  i32.const 1348
  i32.const 1344
  i32.store
  i32.const 1352
  i32.const 1344
  i32.store
  i32.const 1344
  global.set $~lib/rt/itcms/fromSpace
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 2504
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 16
   call $~lib/rt/tlsf/allocateBlock
   local.tee $3
   i32.const 4
   i32.add
   local.tee $4
   i32.const 0
   i32.store
   local.get $3
   call $closure-complex/Counter#constructor
   i32.store offset=8
   local.get $3
   i32.const 2
   i32.store offset=12
   i32.const 8
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $5
   i32.const 1
   i32.store
   local.get $5
   local.get $4
   i32.store offset=4
   local.get $3
   local.get $5
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $5
   i32.const 2
   i32.store
   local.get $5
   local.get $4
   i32.store offset=4
   local.get $5
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $5
   i32.load
   call_indirect (type $0)
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 12
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 61
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2504
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 20
   memory.fill
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $3
   i32.const 4
   i32.add
   local.tee $4
   i32.const 0
   i32.store
   local.get $3
   call $closure-complex/Calculator#constructor
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.load offset=8
   local.tee $5
   i32.store
   local.get $5
   i32.const 10
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 7
   call $~lib/rt/itcms/__new
   local.tee $6
   i32.const 3
   i32.store
   local.get $6
   local.get $4
   i32.store offset=4
   local.get $6
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 5
   local.get $6
   i32.load
   call_indirect (type $3)
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=12
   local.get $6
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 10
   local.get $6
   i32.load
   call_indirect (type $3)
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=16
   local.get $6
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 15
   local.get $6
   i32.load
   call_indirect (type $3)
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.load offset=8
   local.tee $3
   i32.store
   local.get $3
   call $closure-complex/Calculator#getResult
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 40
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 80
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2504
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 28
   memory.fill
   global.get $~lib/memory/__stack_pointer
   call $closure-complex/Counter#constructor
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2504
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store offset=8
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $5
   i32.const 4
   i32.add
   local.tee $6
   i32.const 0
   i32.store
   local.get $5
   local.get $3
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 8
   i32.const 1616
   call $~lib/rt/__newArray
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   i32.const 8
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $5
   i32.const 4
   i32.store
   local.get $5
   local.get $6
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $3
   local.get $5
   call $~lib/array/Array<%28%29=>i32>#push
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   i32.const 8
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $5
   i32.const 5
   i32.store
   local.get $5
   local.get $6
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $3
   local.get $5
   call $~lib/array/Array<%28%29=>i32>#push
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.const 0
   call $~lib/array/Array<%28%29=>i32>#__get
   local.tee $4
   i32.store offset=12
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $0)
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.const 0
   call $~lib/array/Array<%28%29=>i32>#__get
   local.tee $4
   i32.store offset=16
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $0)
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.const 0
   call $~lib/array/Array<%28%29=>i32>#__get
   local.tee $4
   i32.store offset=20
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $0)
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.const 1
   call $~lib/array/Array<%28%29=>i32>#__get
   local.tee $3
   i32.store offset=24
   local.get $3
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $3
   i32.load
   call_indirect (type $0)
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 101
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2504
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $3
   i32.const 4
   i32.add
   local.tee $4
   i32.const 0
   i32.store
   local.get $3
   i32.const 100
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $5
   i32.const 8
   i32.store
   local.get $5
   local.get $4
   i32.store offset=4
   local.get $5
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $5
   i32.load
   call_indirect (type $0)
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 222
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 130
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2504
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 20
   memory.fill
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2504
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 11
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.const 100
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2504
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 16
   call $~lib/rt/tlsf/allocateBlock
   local.tee $5
   i32.const 4
   i32.add
   local.tee $6
   i32.const 0
   i32.store
   local.get $5
   i32.const 10
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   local.get $5
   local.get $4
   i32.load
   i32.store offset=12
   local.get $5
   i32.const 0
   i32.store offset=8
   i32.const 8
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.const 9
   i32.store
   local.get $4
   local.get $6
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=12
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $0)
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=16
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $0)
   local.get $3
   i32.add
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 223
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 162
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2504
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2504
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 12
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   i32.const 0
   i32.const 8
   i32.const 2064
   call $~lib/rt/__newArray
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $4
   local.get $5
   i32.store offset=4
   local.get $4
   local.get $5
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.const 10
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   call $closure-complex/SelfReferencing#addCallback
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   call $closure-complex/SelfReferencing#addCallback
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2504
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   local.get $4
   i32.const 20
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   call $closure-complex/SelfReferencing#addCallback
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2504
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store offset=8
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.load offset=4
    local.tee $3
    i32.store
    local.get $3
    call $~lib/array/Array<%28%29=>i32>#get:length
    local.get $2
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.load offset=4
     local.tee $3
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $3
     local.get $2
     call $~lib/array/Array<%28%29=>i32>#__get
     local.tee $3
     i32.store offset=8
     local.get $3
     i32.load offset=4
     global.set $~lib/__closure_env
     local.get $3
     i32.load
     call_indirect (type $0)
     local.get $1
     i32.add
     local.set $1
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   i32.const 120
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 206
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2504
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 24
   memory.fill
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 12
   call $~lib/rt/tlsf/allocateBlock
   local.tee $1
   i32.const 4
   i32.add
   local.tee $2
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $1
   call $closure-complex/Counter#constructor
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 13
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.const 11
   i32.store
   local.get $3
   local.get $2
   i32.store offset=4
   local.get $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.const 12
   i32.store
   local.get $4
   local.get $2
   i32.store offset=4
   local.get $4
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=8
   local.get $3
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $3
   i32.load
   call_indirect (type $2)
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=12
   local.get $3
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $3
   i32.load
   call_indirect (type $2)
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=16
   local.get $3
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $3
   i32.load
   call_indirect (type $2)
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=20
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $0)
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 6
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 224
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2504
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 28
   memory.fill
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $1
   i32.const 4
   i32.add
   local.tee $2
   i32.const 0
   i32.store
   local.get $1
   i32.const 10
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 14
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.const 14
   i32.store
   local.get $3
   local.get $2
   i32.store offset=4
   local.get $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   i32.load offset=4
   global.set $~lib/__closure_env
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   local.get $3
   i32.load
   call_indirect (type $1)
   local.tee $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=12
   local.get $3
   i32.load offset=4
   global.set $~lib/__closure_env
   global.get $~lib/memory/__stack_pointer
   i32.const 10
   local.get $3
   i32.load
   call_indirect (type $1)
   local.tee $2
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=20
   local.get $1
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $1
   i32.load
   call_indirect (type $0)
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=24
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $2
   i32.load
   call_indirect (type $0)
   local.get $1
   i32.add
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 70
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 242
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2504
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store offset=8
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 16
   call $~lib/rt/tlsf/allocateBlock
   local.tee $1
   i32.const 4
   i32.add
   local.tee $3
   i32.const 0
   i32.store
   local.get $1
   call $closure-complex/Counter#constructor
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 9
   i32.const 2336
   call $~lib/rt/__newArray
   local.tee $4
   i32.store
   local.get $1
   i32.const 2
   i32.store offset=16
   i32.const 0
   local.set $2
   loop $for-loop|1
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=4
    local.get $4
    call $~lib/array/Array<%28%29=>i32>#get:length
    local.get $0
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 2504
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store
     local.get $0
     local.get $4
     i32.load offset=12
     i32.ge_u
     if
      i32.const 1248
      i32.const 1728
      i32.const 114
      i32.const 42
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store
     local.get $4
     i32.load offset=4
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $5
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $1
     local.get $5
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.const 5
     call $~lib/rt/itcms/__new
     local.tee $6
     i32.const 15
     i32.store
     local.get $6
     local.get $3
     i32.store offset=4
     local.get $6
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store offset=12
     local.get $6
     i32.load offset=4
     global.set $~lib/__closure_env
     local.get $6
     i32.load
     call_indirect (type $0)
     local.get $2
     i32.add
     local.set $2
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|1
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=8
   local.tee $0
   i32.store offset=4
   local.get $0
   call $closure-complex/Calculator#getResult
   local.get $2
   i32.add
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 35
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 264
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2504
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 32
   memory.fill
   global.get $~lib/memory/__stack_pointer
   call $closure-complex/Calculator#constructor
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 16
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.const 17
   i32.store
   local.get $2
   i32.const 0
   i32.store offset=4
   local.get $2
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   global.get $~lib/memory/__stack_pointer
   local.get $0
   local.get $2
   i32.load
   call_indirect (type $1)
   local.tee $1
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=20
   local.get $1
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 10
   local.get $1
   i32.load
   call_indirect (type $1)
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=24
   local.get $1
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 20
   local.get $1
   i32.load
   call_indirect (type $1)
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=28
   local.get $1
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 30
   local.get $1
   i32.load
   call_indirect (type $1)
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $0
   call $closure-complex/Calculator#getResult
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 60
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 286
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  i32.const 35296
  i32.const 35344
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $folding-inner3
   block $folding-inner2
    block $folding-inner1
     block $invalid
      block $closure-complex/SelfReferencing
       block $closure-complex/ClosureFactory
        block $~lib/array/Array<i32>
         block $~lib/array/Array<%28%29=>i32>
          block $closure-complex/Calculator
           block $closure-complex/Counter
            block $~lib/arraybuffer/ArrayBufferView
             block $~lib/string/String
              block $~lib/arraybuffer/ArrayBuffer
               block $~lib/object/Object
                local.get $0
                i32.const 8
                i32.sub
                i32.load
                br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $closure-complex/Counter $folding-inner1 $closure-complex/Calculator $folding-inner1 $~lib/array/Array<%28%29=>i32> $~lib/array/Array<i32> $folding-inner1 $closure-complex/ClosureFactory $closure-complex/SelfReferencing $folding-inner1 $folding-inner1 $folding-inner1 $folding-inner1 $invalid
               end
               return
              end
              return
             end
             return
            end
            local.get $0
            i32.load
            call $~lib/rt/itcms/__visit
            return
           end
           return
          end
          return
         end
         global.get $~lib/memory/__stack_pointer
         i32.const 4
         i32.sub
         global.set $~lib/memory/__stack_pointer
         global.get $~lib/memory/__stack_pointer
         i32.const 2504
         i32.lt_s
         br_if $folding-inner3
         global.get $~lib/memory/__stack_pointer
         i32.const 0
         i32.store
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.store
         local.get $0
         i32.load offset=4
         local.set $1
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.store
         local.get $1
         local.get $0
         i32.load offset=12
         i32.const 2
         i32.shl
         i32.add
         local.set $2
         loop $while-continue|0
          local.get $1
          local.get $2
          i32.lt_u
          if
           local.get $1
           i32.load
           local.tee $3
           if
            local.get $3
            call $~lib/rt/itcms/__visit
           end
           local.get $1
           i32.const 4
           i32.add
           local.set $1
           br $while-continue|0
          end
         end
         br $folding-inner2
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.sub
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        i32.const 2504
        i32.lt_s
        br_if $folding-inner3
        global.get $~lib/memory/__stack_pointer
        i32.const 0
        i32.store
        br $folding-inner2
       end
       return
      end
      local.get $0
      i32.load offset=4
      call $~lib/rt/itcms/__visit
      return
     end
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 2504
    i32.lt_s
    br_if $folding-inner3
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    i32.load offset=4
    call $~lib/rt/itcms/__visit
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    return
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   call $~lib/rt/itcms/__visit
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 35296
  i32.const 35344
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~start
  call $start:closure-complex
 )
 (func $closure-complex/Counter#constructor (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2504
  i32.lt_s
  if
   i32.const 35296
   i32.const 35344
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.const 4
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/object/Object#constructor
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $closure-complex/Counter#increment (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2504
  i32.lt_s
  if
   i32.const 35296
   i32.const 35344
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  i32.add
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-complex/testNestedArrowsWithClassCapture~anonymous|0 (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2504
  i32.lt_s
  if
   i32.const 35296
   i32.const 35344
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  local.tee $0
  i32.load offset=4
  local.tee $1
  i32.store
  local.get $1
  call $closure-complex/Counter#increment
  local.get $0
  i32.load offset=8
  i32.mul
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-complex/Calculator#constructor (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2504
  i32.lt_s
  if
   i32.const 35296
   i32.const 35344
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.const 6
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/object/Object#constructor
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $closure-complex/Calculator#add (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2504
  i32.lt_s
  if
   i32.const 35296
   i32.const 35344
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $1
  local.get $0
  i32.load
  i32.add
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-complex/testArrowClosureWithClass~anonymous|0 (param $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2504
  i32.lt_s
  if
   i32.const 35296
   i32.const 35344
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  i32.load offset=4
  local.tee $1
  i32.store
  local.get $1
  local.get $0
  call $closure-complex/Calculator#add
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-complex/Calculator#getResult (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2504
  i32.lt_s
  if
   i32.const 35296
   i32.const 35344
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-complex/createCounterOperations~anonymous|0 (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2504
  i32.lt_s
  if
   i32.const 35296
   i32.const 35344
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  i32.load offset=4
  local.tee $0
  i32.store
  local.get $0
  call $closure-complex/Counter#increment
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<%28%29=>i32>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 2504
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=12
   local.tee $6
   i32.const 1
   i32.add
   local.tee $5
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2504
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $2
   local.get $0
   i32.load offset=8
   local.tee $3
   i32.const 2
   i32.shr_u
   i32.gt_u
   if
    local.get $2
    i32.const 268435455
    i32.gt_u
    if
     i32.const 1680
     i32.const 1728
     i32.const 19
     i32.const 48
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    block $__inlined_func$~lib/rt/itcms/__renew$233
     i32.const 1073741820
     local.get $3
     i32.const 1
     i32.shl
     local.tee $3
     local.get $3
     i32.const 1073741820
     i32.ge_u
     select
     local.tee $3
     i32.const 8
     local.get $2
     local.get $2
     i32.const 8
     i32.le_u
     select
     i32.const 2
     i32.shl
     local.tee $2
     local.get $2
     local.get $3
     i32.lt_u
     select
     local.tee $4
     local.get $0
     i32.load
     local.tee $3
     i32.const 20
     i32.sub
     local.tee $7
     i32.load
     i32.const -4
     i32.and
     i32.const 16
     i32.sub
     i32.le_u
     if
      local.get $7
      local.get $4
      i32.store offset=16
      local.get $3
      local.set $2
      br $__inlined_func$~lib/rt/itcms/__renew$233
     end
     local.get $4
     local.get $7
     i32.load offset=12
     call $~lib/rt/itcms/__new
     local.tee $2
     local.get $3
     local.get $4
     local.get $7
     i32.load offset=16
     local.tee $7
     local.get $4
     local.get $7
     i32.lt_u
     select
     memory.copy
    end
    local.get $2
    local.get $3
    i32.ne
    if
     local.get $0
     local.get $2
     i32.store
     local.get $0
     local.get $2
     i32.store offset=4
     local.get $0
     local.get $2
     i32.const 0
     call $~lib/rt/itcms/__link
    end
    local.get $0
    local.get $4
    i32.store offset=8
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=4
   local.get $6
   i32.const 2
   i32.shl
   i32.add
   local.get $1
   i32.store
   local.get $0
   local.get $1
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.get $5
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 35296
  i32.const 35344
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $closure-complex/createCounterOperations~anonymous|1 (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2504
  i32.lt_s
  if
   i32.const 35296
   i32.const 35344
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  i32.load offset=4
  local.tee $0
  i32.store
  local.get $0
  call $closure-complex/Calculator#getResult
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<%28%29=>i32>#__get (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2504
  i32.lt_s
  if
   i32.const 35296
   i32.const 35344
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1248
   i32.const 1728
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.store offset=4
  local.get $0
  i32.eqz
  if
   i32.const 1808
   i32.const 1728
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $closure-complex/testDeeplyNestedClassCreation~anonymous|0~anonymous|0~anonymous|0 (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2504
  i32.lt_s
  if
   i32.const 35296
   i32.const 35344
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/__closure_env
  local.set $1
  global.get $~lib/memory/__stack_pointer
  call $closure-complex/Calculator#constructor
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $1
  i32.load offset=4
  local.get $1
  i32.load
  local.tee $1
  i32.load
  i32.load offset=4
  local.get $1
  i32.load offset=4
  i32.add
  i32.add
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $closure-complex/testDeeplyNestedClassCreation~anonymous|0~anonymous|0 (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 2504
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 20
   memory.fill
   global.get $~lib/__closure_env
   local.set $0
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $1
   i32.const 4
   i32.add
   local.tee $2
   local.get $0
   i32.store
   local.get $1
   i32.const 1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 10
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.const 6
   i32.store
   local.get $1
   local.get $2
   i32.store offset=4
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.load offset=4
   global.set $~lib/__closure_env
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load
   call_indirect (type $0)
   local.tee $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2504
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load
   i32.const 1
   i32.shl
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=12
   local.get $0
   call $closure-complex/Calculator#getResult
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 35296
  i32.const 35344
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $closure-complex/SelfReferencing#addCallback~anonymous|0 (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2504
  i32.lt_s
  if
   i32.const 35296
   i32.const 35344
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  i32.load offset=4
  local.tee $0
  i32.store
  local.get $0
  i32.load
  i32.const 1
  i32.shl
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-complex/SelfReferencing#addCallback (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2504
  i32.lt_s
  if
   i32.const 35296
   i32.const 35344
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 8
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  i32.const 4
  i32.add
  local.tee $1
  i32.const 0
  i32.store
  local.get $2
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $0
  i32.store
  i32.const 8
  i32.const 5
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.const 10
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $0
  local.get $2
  call $~lib/array/Array<%28%29=>i32>#push
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<%28%29=>i32>#get:length (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2504
  i32.lt_s
  if
   i32.const 35296
   i32.const 35344
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-complex/testMultipleClosuresSharing~anonymous|0
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2504
  i32.lt_s
  if
   i32.const 35296
   i32.const 35344
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/__closure_env
  local.tee $0
  i32.load offset=4
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.store
  local.get $0
  local.get $2
  call $closure-complex/Counter#increment
  local.get $1
  i32.add
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-complex/testComplexPipeline~anonymous|0 (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2504
  i32.lt_s
  if
   i32.const 35296
   i32.const 35344
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  local.tee $0
  i32.load offset=4
  local.tee $1
  i32.store
  local.get $1
  call $closure-complex/Counter#increment
  drop
  local.get $0
  i32.load offset=8
  local.get $0
  i32.load offset=12
  i32.mul
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-complex/testCurriedWithClass~anonymous|0~anonymous|0 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2504
  i32.lt_s
  if
   i32.const 35296
   i32.const 35344
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  local.tee $1
  i32.load offset=4
  local.tee $2
  i32.store
  local.get $2
  local.get $0
  call $closure-complex/Calculator#add
  local.get $1
  i32.load offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/object/Object#constructor (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2504
  i32.lt_s
  if
   i32.const 35296
   i32.const 35344
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $closure-complex/testNestedArrowsWithClassCapture~anonymous|1 (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2504
  i32.lt_s
  if
   i32.const 35296
   i32.const 35344
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/__closure_env
  local.set $3
  loop $for-loop|0
   local.get $0
   i32.const 3
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.load offset=12
    local.tee $1
    i32.store
    local.get $1
    i32.load offset=4
    global.set $~lib/__closure_env
    local.get $1
    i32.load
    call_indirect (type $0)
    local.get $2
    i32.add
    local.set $2
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2504
  i32.lt_s
  if
   i32.const 35296
   i32.const 35344
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 2
  i32.shl
  local.tee $4
  i32.const 1
  call $~lib/rt/itcms/__new
  local.set $3
  local.get $2
  if
   local.get $3
   local.get $2
   local.get $4
   memory.copy
  end
  local.get $3
  i32.store
  i32.const 16
  local.get $1
  call $~lib/rt/itcms/__new
  local.tee $1
  local.get $3
  i32.store
  local.get $1
  local.get $3
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  local.get $4
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $closure-complex/testDeeplyNestedClassCreation~anonymous|0 (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2504
  i32.lt_s
  if
   i32.const 35296
   i32.const 35344
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/__closure_env
  local.set $0
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 8
  call $~lib/rt/tlsf/allocateBlock
  local.tee $1
  i32.const 4
  i32.add
  local.tee $2
  local.get $0
  i32.store
  local.get $1
  i32.const 10
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 5
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.const 7
  i32.store
  local.get $1
  local.get $2
  i32.store offset=4
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $1
  i32.load
  call_indirect (type $0)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
