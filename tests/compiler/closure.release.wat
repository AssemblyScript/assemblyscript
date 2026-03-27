(module
 (type $0 (func (result i32)))
 (type $1 (func))
 (type $2 (func (param i32)))
 (type $3 (func (param i32 i32) (result i32)))
 (type $4 (func (param i32) (result i32)))
 (type $5 (func (param i32 i32)))
 (type $6 (func (param i32 i32 i32)))
 (type $7 (func (param i32 i32 i32 i32)))
 (type $8 (func (param i32 i32 i64)))
 (type $9 (func (param i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/__closure_env (mut i32) (i32.const 0))
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
 (global $closure/fn1 (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $closure/fn2 (mut i32) (i32.const 0))
 (global $closure/fn3 (mut i32) (i32.const 0))
 (global $closure/fn5 (mut i32) (i32.const 0))
 (global $closure/counter1 (mut i32) (i32.const 0))
 (global $closure/counter2 (mut i32) (i32.const 0))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 35440))
 (memory $0 1)
 (data $0 (i32.const 1036) "\1c")
 (data $0.1 (i32.const 1048) "\04\00\00\00\08\00\00\00\01")
 (data $1 (i32.const 1068) "<")
 (data $1.1 (i32.const 1080) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $2 (i32.const 1132) "<")
 (data $2.1 (i32.const 1144) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data $5 (i32.const 1260) "<")
 (data $5.1 (i32.const 1272) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $6 (i32.const 1324) ",")
 (data $6.1 (i32.const 1336) "\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data $8 (i32.const 1404) "<")
 (data $8.1 (i32.const 1416) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data $9 (i32.const 1468) ",")
 (data $9.1 (i32.const 1480) "\02\00\00\00\14\00\00\00c\00l\00o\00s\00u\00r\00e\00.\00t\00s")
 (data $10 (i32.const 1516) "\1c")
 (data $10.1 (i32.const 1528) "\04\00\00\00\08\00\00\00\02")
 (data $11 (i32.const 1548) "\1c")
 (data $11.1 (i32.const 1560) "\04\00\00\00\08\00\00\00\03")
 (data $12 (i32.const 1580) "\1c")
 (data $12.1 (i32.const 1592) "\05\00\00\00\08\00\00\00\04")
 (data $13 (i32.const 1612) "\1c")
 (data $13.1 (i32.const 1624) "\04\00\00\00\08\00\00\00\05")
 (data $14 (i32.const 1644) "\1c")
 (data $14.1 (i32.const 1656) "\04\00\00\00\08\00\00\00\06")
 (data $15 (i32.const 1676) "\1c")
 (data $15.1 (i32.const 1688) "\06\00\00\00\08\00\00\00\07")
 (data $16 (i32.const 1708) "\1c")
 (data $16.1 (i32.const 1720) "\04\00\00\00\08\00\00\00\08")
 (data $17 (i32.const 1740) "\1c")
 (data $17.1 (i32.const 1752) "\05\00\00\00\08\00\00\00\t")
 (data $18 (i32.const 1772) "\1c")
 (data $18.1 (i32.const 1784) "\05\00\00\00\08\00\00\00\n")
 (data $19 (i32.const 1804) "\1c")
 (data $19.1 (i32.const 1816) "\05\00\00\00\08\00\00\00\0b")
 (data $20 (i32.const 1836) "\1c")
 (data $20.1 (i32.const 1848) "\05\00\00\00\08\00\00\00\0c")
 (data $21 (i32.const 1868) "\1c")
 (data $21.1 (i32.const 1880) "\05\00\00\00\08\00\00\00\r")
 (data $22 (i32.const 1900) "\1c")
 (data $22.1 (i32.const 1912) "\05\00\00\00\08\00\00\00\0e")
 (data $23 (i32.const 1932) "\1c")
 (data $23.1 (i32.const 1944) "\04\00\00\00\08\00\00\00\0f")
 (data $24 (i32.const 1964) "\1c")
 (data $24.1 (i32.const 1976) "\04\00\00\00\08\00\00\00\10")
 (data $25 (i32.const 1996) "\1c")
 (data $25.1 (i32.const 2008) "\04\00\00\00\08\00\00\00\11")
 (data $26 (i32.const 2028) ",")
 (data $26.1 (i32.const 2040) "\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $27 (i32.const 2076) ",")
 (data $27.1 (i32.const 2088) "\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data $28 (i32.const 2124) "|")
 (data $28.1 (i32.const 2136) "\02\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data $29 (i32.const 2252) "\1c")
 (data $29.1 (i32.const 2264) "\t\00\00\00\08\00\00\00\12")
 (data $30 (i32.const 2284) "\1c")
 (data $30.1 (i32.const 2296) "\n\00\00\00\08\00\00\00\13")
 (data $31 (i32.const 2316) "\1c")
 (data $31.1 (i32.const 2328) "\01")
 (data $32 (i32.const 2348) "\1c")
 (data $32.1 (i32.const 2360) "\05\00\00\00\08\00\00\00\14")
 (data $33 (i32.const 2380) "\1c")
 (data $33.1 (i32.const 2392) "\01")
 (data $34 (i32.const 2412) "\1c")
 (data $34.1 (i32.const 2424) "\04\00\00\00\08\00\00\00\15")
 (data $35 (i32.const 2444) "\1c")
 (data $35.1 (i32.const 2456) "\0c\00\00\00\08\00\00\00\16")
 (data $36 (i32.const 2476) "\1c")
 (data $36.1 (i32.const 2488) "\05\00\00\00\08\00\00\00\17")
 (data $37 (i32.const 2508) "\1c")
 (data $37.1 (i32.const 2520) "\04\00\00\00\08\00\00\00\18")
 (data $38 (i32.const 2540) "\1c")
 (data $38.1 (i32.const 2552) "\r\00\00\00\08\00\00\00\19")
 (data $39 (i32.const 2572) "\1c")
 (data $39.1 (i32.const 2584) "\0e\00\00\00\08\00\00\00\1a")
 (data $40 (i32.const 2608) "\0f\00\00\00 \00\00\00 \00\00\00 ")
 (data $40.1 (i32.const 2640) "\02A\00\00\02\t")
 (data $40.2 (i32.const 2656) "\02A")
 (table $0 27 27 funcref)
 (elem $0 (i32.const 1) $closure/testCaptureParam~anonymous|0 $closure/testCaptureParam~anonymous|0 $closure/testCaptureParam~anonymous|0 $closure/testClosureWrite~anonymous|0 $closure/testCaptureParam~anonymous|0 $closure/testMultipleCaptures~anonymous|0 $closure/testSharedEnvironment~anonymous|0 $closure/testCaptureParam~anonymous|0 $closure/testCaptureInWhile~anonymous|0 $closure/testCaptureInDoWhile~anonymous|0 $closure/testCaptureInWhile~anonymous|0 $closure/testCaptureInSwitch~anonymous|0 $closure/testCaptureInSwitch~anonymous|1 $closure/testCaptureInSwitch~anonymous|2 $closure/testCaptureParam~anonymous|0 $closure/testCaptureInArrayLiteral~anonymous|1 $closure/testCaptureInArrayLiteral~anonymous|2 $closure/testNestedClosureCapture~anonymous|0~anonymous|0 $closure/testNestedClosureCapture~anonymous|0 $closure/testClosureWrite~anonymous|0 $closure/testCaptureInTernary~anonymous|0 $closure/testCaptureFromCondition~anonymous|0 $closure/testDeepLoopCapture~anonymous|0 $closure/makeCounter~anonymous|0 $closure/testDefaultParamCapture~anonymous|0@varargs $closure/testDefaultParamWithOtherParam~anonymous|0@varargs)
 (export "memory" (memory $0))
 (start $~start)
 (func $closure/testCaptureParam~anonymous|0 (result i32)
  global.get $~lib/__closure_env
  i32.load offset=4
 )
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  i32.const 1280
  call $~lib/rt/itcms/__visit
  i32.const 2096
  call $~lib/rt/itcms/__visit
  i32.const 2144
  call $~lib/rt/itcms/__visit
  i32.const 1088
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
     i32.const 1152
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
    i32.const 1152
    i32.const 148
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   global.set $~lib/rt/itcms/iter
  end
  block $__inlined_func$~lib/rt/itcms/Object#unlink$199
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
    i32.const 35440
    i32.lt_u
    i32.and
    i32.eqz
    if
     i32.const 0
     i32.const 1152
     i32.const 128
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    br $__inlined_func$~lib/rt/itcms/Object#unlink$199
   end
   local.get $0
   i32.load offset=8
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 1152
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
   i32.const 2608
   i32.load
   i32.gt_u
   if
    i32.const 1280
    i32.const 1344
    i32.const 21
    i32.const 28
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 2
   i32.shl
   i32.const 2612
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
   i32.const 1424
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
   i32.const 1424
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
   i32.const 1424
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
   i32.const 1424
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
   i32.const 1424
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
    i32.const 1424
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
   i32.const 1424
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
   i32.const 1424
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
   i32.const 1424
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
   i32.const 1424
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
    i32.const 1424
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
    i32.const 1424
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
  i32.const 35440
  i32.const 0
  i32.store
  i32.const 37008
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
    i32.const 35440
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
      i32.const 35440
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
  i32.const 35440
  i32.const 37012
  memory.size
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 35440
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
      i32.const 35440
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
     i32.const 1152
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 35440
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
     i32.const 35440
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
       i32.const 1424
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
   i32.const 1424
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
     i32.const 1424
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
   i32.const 1088
   i32.const 1424
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
    i32.const 1424
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
   i32.const 1424
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
   i32.const 1424
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
   i32.const 1088
   i32.const 1152
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
 (func $closure/testClosureWrite~anonymous|0
  (local $0 i32)
  global.get $~lib/__closure_env
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.add
  i32.store offset=4
 )
 (func $closure/testMultipleCaptures~anonymous|0 (result i32)
  (local $0 i32)
  global.get $~lib/__closure_env
  local.tee $0
  i32.load offset=12
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=8
  i32.add
  i32.add
 )
 (func $closure/testSharedEnvironment~anonymous|0 (param $0 i32)
  global.get $~lib/__closure_env
  i32.const 50
  i32.store offset=4
 )
 (func $closure/testCaptureInWhile~anonymous|0
  (local $0 i32)
  global.get $~lib/__closure_env
  local.tee $0
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=8
  i32.add
  i32.store offset=4
 )
 (func $closure/testCaptureInDoWhile~anonymous|0
  (local $0 i32)
  global.get $~lib/__closure_env
  local.tee $0
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=8
  i32.mul
  i32.store offset=4
 )
 (func $closure/testCaptureInSwitch~anonymous|0
  global.get $~lib/__closure_env
  i32.const 10
  i32.store offset=4
 )
 (func $closure/testCaptureInSwitch~anonymous|1
  global.get $~lib/__closure_env
  i32.const 20
  i32.store offset=4
 )
 (func $closure/testCaptureInSwitch~anonymous|2
  global.get $~lib/__closure_env
  i32.const 99
  i32.store offset=4
 )
 (func $closure/testCaptureInArrayLiteral~anonymous|1 (result i32)
  global.get $~lib/__closure_env
  i32.load offset=8
 )
 (func $closure/testCaptureInArrayLiteral~anonymous|2 (result i32)
  (local $0 i32)
  global.get $~lib/__closure_env
  local.tee $0
  i32.load offset=4
  local.get $0
  i32.load offset=8
  i32.add
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
   i32.const 1152
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
 (func $closure/testNestedClosureCapture~anonymous|0~anonymous|0 (param $0 i32) (result i32)
  global.get $~lib/__closure_env
  i32.load offset=4
  local.get $0
  i32.add
 )
 (func $closure/testNestedClosureCapture~anonymous|0 (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/__closure_env
  local.set $1
  i32.const 8
  i32.const 9
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.const 18
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
 )
 (func $closure/testCaptureInTernary~anonymous|0 (result i32)
  (local $0 i32)
  global.get $~lib/__closure_env
  local.tee $0
  i32.load8_u offset=4
  if (result i32)
   local.get $0
   i32.load offset=8
  else
   local.get $0
   i32.load offset=12
  end
 )
 (func $closure/testCaptureFromCondition~anonymous|0 (result i32)
  (local $0 i32)
  global.get $~lib/__closure_env
  local.tee $0
  i32.load offset=4
  local.get $0
  i32.load offset=8
  i32.gt_s
 )
 (func $closure/testDeepLoopCapture~anonymous|0
  (local $0 i32)
  global.get $~lib/__closure_env
  local.tee $0
  local.get $0
  i32.load offset=12
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=8
  i32.add
  i32.add
  i32.store offset=4
 )
 (func $closure/makeCounter~anonymous|0 (result i32)
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
 )
 (func $closure/makeCounter (result i32)
  (local $0 i32)
  (local $1 i32)
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
  local.tee $0
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=8
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.const 24
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
 )
 (func $start:closure
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 2672
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 36
   memory.fill
   memory.size
   i32.const 16
   i32.shl
   i32.const 35440
   i32.sub
   i32.const 1
   i32.shr_u
   global.set $~lib/rt/itcms/threshold
   i32.const 1204
   i32.const 1200
   i32.store
   i32.const 1208
   i32.const 1200
   i32.store
   i32.const 1200
   global.set $~lib/rt/itcms/pinSpace
   i32.const 1236
   i32.const 1232
   i32.store
   i32.const 1240
   i32.const 1232
   i32.store
   i32.const 1232
   global.set $~lib/rt/itcms/toSpace
   i32.const 1380
   i32.const 1376
   i32.store
   i32.const 1384
   i32.const 1376
   i32.store
   i32.const 1376
   global.set $~lib/rt/itcms/fromSpace
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
   local.tee $3
   i32.const 0
   i32.store
   local.get $2
   i32.const 42
   i32.store offset=8
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.const 1
   i32.store
   local.get $2
   local.get $3
   i32.store offset=4
   local.get $2
   global.set $closure/fn1
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   global.get $closure/fn1
   local.tee $2
   i32.store
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $2
   i32.load
   call_indirect (type $0)
   i32.const 42
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 6
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
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
   local.tee $3
   i32.const 0
   i32.store
   local.get $2
   i32.const 100
   i32.store offset=8
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.const 2
   i32.store
   local.get $2
   local.get $3
   i32.store offset=4
   local.get $2
   global.set $closure/fn2
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   global.get $closure/fn2
   local.tee $2
   i32.store offset=4
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $2
   i32.load
   call_indirect (type $0)
   i32.const 100
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 14
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
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
   local.tee $3
   i32.const 0
   i32.store
   local.get $2
   i32.const 200
   i32.store offset=8
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.const 3
   i32.store
   local.get $2
   local.get $3
   i32.store offset=4
   local.get $2
   global.set $closure/fn3
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   global.get $closure/fn3
   local.tee $2
   i32.store offset=8
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $2
   i32.load
   call_indirect (type $0)
   i32.const 200
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 22
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2672
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
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $2
   i32.const 4
   i32.add
   local.tee $3
   i32.const 0
   i32.store
   local.get $2
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.const 4
   i32.store
   local.get $4
   local.get $3
   i32.store offset=4
   local.get $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $5
   i32.const 5
   i32.store
   local.get $5
   local.get $3
   i32.store offset=4
   local.get $5
   i32.store offset=4
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=8
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $1)
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=12
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $1)
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=16
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $1)
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=20
   local.get $5
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $5
   i32.load
   call_indirect (type $0)
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 34
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 16
   call $~lib/rt/tlsf/allocateBlock
   local.tee $2
   i32.const 4
   i32.add
   local.tee $3
   i32.const 0
   i32.store
   local.get $2
   i32.const 1
   i32.store offset=8
   local.get $2
   i32.const 2
   i32.store offset=12
   local.get $2
   i32.const 10
   i32.store offset=16
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.const 6
   i32.store
   local.get $2
   local.get $3
   i32.store offset=4
   local.get $2
   global.set $closure/fn5
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   global.get $closure/fn5
   local.tee $2
   i32.store offset=12
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $2
   i32.load
   call_indirect (type $0)
   i32.const 13
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 42
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2672
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
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $2
   i32.const 4
   i32.add
   local.tee $3
   i32.const 0
   i32.store
   local.get $2
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 6
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.const 7
   i32.store
   local.get $4
   local.get $3
   i32.store offset=4
   local.get $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $5
   i32.const 8
   i32.store
   local.get $5
   local.get $3
   i32.store offset=4
   local.get $5
   i32.store offset=4
   i32.const 1
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=8
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 50
   local.get $4
   i32.load
   call_indirect (type $2)
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=12
   local.get $5
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $5
   i32.load
   call_indirect (type $0)
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 50
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 53
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2672
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
   i32.const 12
   call $~lib/rt/tlsf/allocateBlock
   local.tee $2
   i32.const 4
   i32.add
   local.tee $3
   i32.const 0
   i32.store
   local.get $2
   i32.const 0
   i32.store offset=8
   local.get $2
   i32.const 0
   i32.store offset=12
   loop $while-continue|1
    local.get $2
    i32.load offset=12
    i32.const 3
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.const 5
     call $~lib/rt/itcms/__new
     local.tee $5
     i32.const 9
     i32.store
     local.get $5
     local.get $3
     i32.store offset=4
     local.get $5
     i32.store
     i32.const 0
     global.set $~argumentsLength
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=4
     local.get $5
     i32.load offset=4
     global.set $~lib/__closure_env
     local.get $5
     i32.load
     call_indirect (type $1)
     local.get $2
     local.get $2
     i32.load offset=12
     i32.const 1
     i32.add
     i32.store offset=12
     br $while-continue|1
    end
   end
   local.get $2
   i32.load offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 70
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2672
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
   i32.const 12
   call $~lib/rt/tlsf/allocateBlock
   local.tee $2
   i32.const 4
   i32.add
   local.tee $3
   i32.const 0
   i32.store
   local.get $2
   i32.const 1
   i32.store offset=8
   local.get $2
   i32.const 1
   i32.store offset=12
   loop $do-loop|1
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.const 5
    call $~lib/rt/itcms/__new
    local.tee $5
    i32.const 10
    i32.store
    local.get $5
    local.get $3
    i32.store offset=4
    local.get $5
    i32.store
    i32.const 0
    global.set $~argumentsLength
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=4
    local.get $5
    i32.load offset=4
    global.set $~lib/__closure_env
    local.get $5
    i32.load
    call_indirect (type $1)
    local.get $2
    local.get $2
    i32.load offset=12
    i32.const 1
    i32.add
    i32.store offset=12
    local.get $2
    i32.load offset=12
    i32.const 4
    i32.le_s
    br_if $do-loop|1
   end
   local.get $2
   i32.load offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 24
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 83
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2672
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
   i32.const 12
   call $~lib/rt/tlsf/allocateBlock
   local.tee $2
   i32.const 4
   i32.add
   local.tee $3
   i32.const 0
   i32.store
   local.get $2
   i32.const 0
   i32.store offset=8
   local.get $2
   i32.const 1
   i32.store offset=12
   loop $for-loop|1
    local.get $2
    i32.load offset=12
    i32.const 5
    i32.le_s
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.const 5
     call $~lib/rt/itcms/__new
     local.tee $5
     i32.const 11
     i32.store
     local.get $5
     local.get $3
     i32.store offset=4
     local.get $5
     i32.store
     i32.const 0
     global.set $~argumentsLength
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=4
     local.get $5
     i32.load offset=4
     global.set $~lib/__closure_env
     local.get $5
     i32.load
     call_indirect (type $1)
     local.get $2
     local.get $2
     i32.load offset=12
     i32.const 1
     i32.add
     i32.store offset=12
     br $for-loop|1
    end
   end
   local.get $2
   i32.load offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 15
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 94
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1
   call $closure/testCaptureInSwitch
   i32.const 10
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 118
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 2
   call $closure/testCaptureInSwitch
   i32.const 20
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 119
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 3
   call $closure/testCaptureInSwitch
   i32.const 99
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 120
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2672
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
   local.tee $2
   i32.const 4
   i32.add
   local.tee $3
   i32.const 0
   i32.store
   local.get $2
   i32.const 5
   i32.store offset=8
   local.get $2
   i32.const 10
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3
   i32.const 7
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $4
   i32.store
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $5
   i32.const 15
   i32.store
   local.get $5
   local.get $3
   i32.store offset=4
   local.get $4
   i32.const 0
   local.get $5
   call $~lib/array/Array<%28%29=>i32>#__set
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $5
   i32.const 16
   i32.store
   local.get $5
   local.get $3
   i32.store offset=4
   local.get $4
   i32.const 1
   local.get $5
   call $~lib/array/Array<%28%29=>i32>#__set
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $5
   i32.const 17
   i32.store
   local.get $5
   local.get $3
   i32.store offset=4
   local.get $4
   i32.const 2
   local.get $5
   call $~lib/array/Array<%28%29=>i32>#__set
   local.get $4
   i32.store offset=4
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.const 0
   call $~lib/array/Array<%28%29=>i32>#__get
   local.tee $2
   i32.store offset=12
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $2
   i32.load
   call_indirect (type $0)
   local.set $2
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.const 1
   call $~lib/array/Array<%28%29=>i32>#__get
   local.tee $3
   i32.store offset=16
   local.get $3
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $3
   i32.load
   call_indirect (type $0)
   local.get $2
   i32.add
   local.set $2
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.const 2
   call $~lib/array/Array<%28%29=>i32>#__get
   local.tee $3
   i32.store offset=20
   local.get $3
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $3
   i32.load
   call_indirect (type $0)
   local.get $2
   i32.add
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 30
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 133
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2672
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
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $2
   i32.const 4
   i32.add
   local.tee $3
   i32.const 0
   i32.store
   local.get $2
   i32.const 100
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 10
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.const 19
   i32.store
   local.get $4
   local.get $3
   i32.store offset=4
   local.get $4
   i32.store
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.load
   call_indirect (type $0)
   local.tee $2
   i32.store offset=8
   i32.const 1
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 23
   local.get $2
   i32.load
   call_indirect (type $4)
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 123
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 144
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2672
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
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $4
   i32.const 4
   i32.add
   local.tee $5
   i32.const 0
   i32.store
   local.get $4
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 11
   i32.const 2400
   call $~lib/rt/__newArray
   local.tee $6
   i32.store
   loop $for-loop|2
    local.get $1
    i32.const 3
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store offset=4
     i32.const 8
     i32.const 5
     call $~lib/rt/itcms/__new
     local.tee $2
     i32.const 20
     i32.store
     local.get $2
     local.get $5
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 2672
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     local.get $6
     local.get $6
     i32.load offset=12
     local.tee $3
     i32.const 1
     i32.add
     local.tee $7
     call $~lib/array/ensureCapacity
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     local.get $6
     i32.load offset=4
     local.get $3
     i32.const 2
     i32.shl
     i32.add
     local.get $2
     i32.store
     local.get $6
     local.get $2
     i32.const 1
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     local.get $6
     local.get $7
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|2
    end
   end
   loop $for-loop|3
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 2672
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store
    local.get $6
    i32.load offset=12
    local.set $1
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $0
    local.get $1
    i32.lt_s
    if
     i32.const 0
     global.set $~argumentsLength
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $6
     local.get $0
     call $~lib/array/Array<%28%29=>i32>#__get
     local.tee $1
     i32.store offset=12
     local.get $1
     i32.load offset=4
     global.set $~lib/__closure_env
     local.get $1
     i32.load
     call_indirect (type $1)
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|3
    end
   end
   local.get $4
   i32.load offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 161
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2672
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
   i32.const 16
   call $~lib/rt/tlsf/allocateBlock
   local.tee $0
   i32.const 4
   i32.add
   local.tee $1
   i32.const 0
   i32.store
   local.get $0
   i32.const 1
   i32.store8 offset=8
   local.get $0
   i32.const 10
   i32.store offset=12
   local.get $0
   i32.const 20
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.const 21
   i32.store
   local.get $3
   local.get $1
   i32.store offset=4
   local.get $3
   i32.store
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $3
   i32.load
   call_indirect (type $0)
   i32.const 10
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 170
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 0
   i32.store8 offset=8
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=8
   local.get $3
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $3
   i32.load
   call_indirect (type $0)
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 20
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 174
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2672
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
   i32.const 12
   call $~lib/rt/tlsf/allocateBlock
   local.tee $0
   i32.const 4
   i32.add
   local.tee $1
   i32.const 0
   i32.store
   local.get $0
   i32.const 50
   i32.store offset=12
   local.get $0
   i32.const 75
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 12
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.const 22
   i32.store
   local.get $3
   local.get $1
   i32.store offset=4
   local.get $3
   i32.store
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $3
   i32.load
   call_indirect (type $0)
   i32.eqz
   if
    i32.const 0
    i32.const 1488
    i32.const 182
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 25
   i32.store offset=8
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=8
   local.get $3
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $3
   i32.load
   call_indirect (type $0)
   i32.const 0
   i32.ne
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   if
    i32.const 0
    i32.const 1488
    i32.const 186
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2672
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
   local.tee $0
   i32.const 4
   i32.add
   local.tee $1
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
   i32.const 0
   i32.store offset=12
   loop $for-loop|20
    local.get $0
    i32.load offset=12
    i32.const 2
    i32.lt_s
    if
     local.get $0
     i32.const 0
     i32.store offset=16
     loop $for-loop|31
      local.get $0
      i32.load offset=16
      i32.const 2
      i32.lt_s
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 8
       i32.const 5
       call $~lib/rt/itcms/__new
       local.tee $3
       i32.const 23
       i32.store
       local.get $3
       local.get $1
       i32.store offset=4
       local.get $3
       i32.store
       i32.const 0
       global.set $~argumentsLength
       global.get $~lib/memory/__stack_pointer
       local.get $3
       i32.store offset=4
       local.get $3
       i32.load offset=4
       global.set $~lib/__closure_env
       local.get $3
       i32.load
       call_indirect (type $1)
       local.get $0
       local.get $0
       i32.load offset=16
       i32.const 1
       i32.add
       i32.store offset=16
       br $for-loop|31
      end
     end
     local.get $0
     local.get $0
     i32.load offset=12
     i32.const 1
     i32.add
     i32.store offset=12
     br $for-loop|20
    end
   end
   local.get $0
   i32.load offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 4
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 200
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   call $closure/makeCounter
   global.set $closure/counter1
   call $closure/makeCounter
   global.set $closure/counter2
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   global.get $closure/counter1
   local.tee $0
   i32.store offset=16
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 212
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   global.get $closure/counter1
   local.tee $0
   i32.store offset=20
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 213
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   global.get $closure/counter2
   local.tee $0
   i32.store offset=24
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 214
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   global.get $closure/counter1
   local.tee $0
   i32.store offset=28
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 215
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   global.get $closure/counter2
   local.tee $0
   i32.store offset=32
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 216
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2672
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
   local.tee $0
   i32.const 4
   i32.add
   local.tee $1
   i32.const 0
   i32.store
   local.get $0
   i32.const 42
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 13
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.const 25
   i32.store
   local.get $2
   local.get $1
   i32.store offset=4
   local.get $2
   i32.store
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 0
   local.get $2
   i32.load
   call_indirect (type $4)
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 42
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 224
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2672
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
   local.tee $0
   i32.const 4
   i32.add
   local.tee $1
   i32.const 0
   i32.store
   local.get $0
   i32.const 3
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 14
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.const 26
   i32.store
   local.get $2
   local.get $1
   i32.store offset=4
   local.get $2
   i32.store
   i32.const 1
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 10
   i32.const 0
   local.get $2
   i32.load
   call_indirect (type $3)
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 30
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 232
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 36
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 35472
  i32.const 35520
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $closure/testDefaultParamCapture~anonymous|0@varargs (param $0 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   global.get $~lib/__closure_env
   i32.load offset=4
   local.set $0
  end
  local.get $0
 )
 (func $closure/testDefaultParamWithOtherParam~anonymous|0@varargs (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   global.get $~lib/__closure_env
   i32.load offset=4
   i32.const 10
   i32.mul
   local.set $1
  end
  local.get $1
 )
 (func $~lib/array/Array<%28%29=>i32>~visit (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2672
  i32.lt_s
  if
   i32.const 35472
   i32.const 35520
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
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  block $folding-inner1
   block $folding-inner0
    block $invalid
     block $~lib/array/Array<%28%29=>void>
      block $~lib/array/Array<i32>
       block $~lib/array/Array<%28%29=>i32>
        block $~lib/arraybuffer/ArrayBufferView
         block $~lib/string/String
          block $~lib/arraybuffer/ArrayBuffer
           block $~lib/object/Object
            local.get $0
            i32.const 8
            i32.sub
            i32.load
            br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $folding-inner0 $folding-inner0 $folding-inner0 $~lib/array/Array<%28%29=>i32> $~lib/array/Array<i32> $folding-inner0 $folding-inner0 $~lib/array/Array<%28%29=>void> $folding-inner0 $folding-inner0 $folding-inner0 $invalid
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
       local.get $0
       call $~lib/array/Array<%28%29=>i32>~visit
       return
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 2672
      i32.lt_s
      br_if $folding-inner1
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
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
     local.get $0
     call $~lib/array/Array<%28%29=>i32>~visit
     return
    end
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2672
   i32.lt_s
   br_if $folding-inner1
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
  i32.const 35472
  i32.const 35520
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~start
  call $start:closure
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2672
  i32.lt_s
  if
   i32.const 35472
   i32.const 35520
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
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 268435455
   i32.gt_u
   if
    i32.const 2096
    i32.const 2048
    i32.const 19
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   block $__inlined_func$~lib/rt/itcms/__renew$198
    i32.const 1073741820
    local.get $2
    i32.const 1
    i32.shl
    local.tee $2
    local.get $2
    i32.const 1073741820
    i32.ge_u
    select
    local.tee $2
    i32.const 8
    local.get $1
    local.get $1
    i32.const 8
    i32.le_u
    select
    i32.const 2
    i32.shl
    local.tee $1
    local.get $1
    local.get $2
    i32.lt_u
    select
    local.tee $3
    local.get $0
    i32.load
    local.tee $2
    i32.const 20
    i32.sub
    local.tee $4
    i32.load
    i32.const -4
    i32.and
    i32.const 16
    i32.sub
    i32.le_u
    if
     local.get $4
     local.get $3
     i32.store offset=16
     local.get $2
     local.set $1
     br $__inlined_func$~lib/rt/itcms/__renew$198
    end
    local.get $3
    local.get $4
    i32.load offset=12
    call $~lib/rt/itcms/__new
    local.tee $1
    local.get $2
    local.get $3
    local.get $4
    i32.load offset=16
    local.tee $4
    local.get $3
    local.get $4
    i32.lt_u
    select
    memory.copy
   end
   local.get $1
   local.get $2
   i32.ne
   if
    local.get $0
    local.get $1
    i32.store
    local.get $0
    local.get $1
    i32.store offset=4
    local.get $0
    local.get $1
    i32.const 0
    call $~lib/rt/itcms/__link
   end
   local.get $0
   local.get $3
   i32.store offset=8
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<%28%29=>i32>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2672
  i32.lt_s
  if
   i32.const 35472
   i32.const 35520
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
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 1280
    i32.const 2048
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   call $~lib/array/ensureCapacity
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.get $3
   i32.store offset=12
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
  local.get $0
  local.get $2
  i32.const 1
  call $~lib/rt/itcms/__link
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
  i32.const 2672
  i32.lt_s
  if
   i32.const 35472
   i32.const 35520
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
   i32.const 1280
   i32.const 2048
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
   i32.const 2144
   i32.const 2048
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
 (func $closure/testCaptureInSwitch (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2672
  i32.lt_s
  if
   i32.const 35472
   i32.const 35520
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
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
  i32.const 8
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  i32.const 4
  i32.add
  local.tee $1
  i32.const 0
  i32.store
  local.get $2
  i32.const 0
  i32.store offset=8
  block $break|1
   block $case2|1
    block $case1|1
     local.get $0
     i32.const 1
     i32.ne
     if
      local.get $0
      i32.const 2
      i32.eq
      br_if $case1|1
      br $case2|1
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.const 5
     call $~lib/rt/itcms/__new
     local.tee $0
     i32.const 12
     i32.store
     local.get $0
     local.get $1
     i32.store offset=4
     local.get $0
     i32.store
     i32.const 0
     global.set $~argumentsLength
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     br $break|1
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.const 5
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.const 13
    i32.store
    local.get $0
    local.get $1
    i32.store offset=4
    local.get $0
    i32.store offset=8
    i32.const 0
    global.set $~argumentsLength
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    br $break|1
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.const 14
   i32.store
   local.get $0
   local.get $1
   i32.store offset=4
   local.get $0
   i32.store offset=16
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=20
  end
  local.get $0
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $0
  i32.load
  call_indirect (type $1)
  local.get $2
  i32.load offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
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
  i32.const 2672
  i32.lt_s
  if
   i32.const 35472
   i32.const 35520
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
)
