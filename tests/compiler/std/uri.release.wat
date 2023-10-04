(module
 (type $none_=>_none (func))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i64_=>_none (func (param i32 i32 i64)))
 (type $none_=>_i32 (func (result i32)))
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
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 37124))
 (memory $0 1)
 (data $0 (i32.const 1036) "\1c")
 (data $0.1 (i32.const 1048) "\02")
 (data $1 (i32.const 1069) "\01\01\01\01\01\00\00\00\00\01\01\00\00\01")
 (data $1.1 (i32.const 1093) "\01\01\01\01\01\01\01")
 (data $1.2 (i32.const 1126) "\01\01\01\01\00\01")
 (data $1.3 (i32.const 1158) "\01\01\01")
 (data $2 (i32.const 1164) "<")
 (data $2.1 (i32.const 1176) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $3 (i32.const 1228) "<")
 (data $3.1 (i32.const 1240) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data $6 (i32.const 1356) "<")
 (data $6.1 (i32.const 1368) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $7 (i32.const 1420) ",")
 (data $7.1 (i32.const 1432) "\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data $9 (i32.const 1500) "<")
 (data $9.1 (i32.const 1512) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data $10 (i32.const 1564) ",")
 (data $10.1 (i32.const 1576) "\02\00\00\00\1a\00\00\00U\00R\00I\00 \00m\00a\00l\00f\00o\00r\00m\00e\00d")
 (data $11 (i32.const 1612) "<")
 (data $11.1 (i32.const 1624) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00u\00r\00i\00.\00t\00s")
 (data $12 (i32.const 1676) "0123456789ABCDEF")
 (data $13 (i32.const 1692) ",")
 (data $13.1 (i32.const 1704) "\02\00\00\00\14\00\00\00s\00t\00d\00/\00u\00r\00i\00.\00t\00s")
 (data $14 (i32.const 1740) "\1c")
 (data $14.1 (i32.const 1752) "\02\00\00\00\02\00\00\00a")
 (data $15 (i32.const 1772) "\1c")
 (data $15.1 (i32.const 1784) "\02\00\00\00\04\00\00\00a\001")
 (data $16 (i32.const 1804) "\1c")
 (data $16.1 (i32.const 1816) "\02\00\00\00\06\00\00\00a\00b\00_")
 (data $17 (i32.const 1836) "\\")
 (data $17.1 (i32.const 1848) "\02\00\00\00H\00\00\00A\00B\00C\00D\00X\00Y\00Z\00a\00f\00g\00k\00l\00m\00n\00w\00y\00z\000\001\002\003\004\005\006\007\008\009\00-\00_\00.\00!\00~\00*\00\'\00(\00)")
 (data $18 (i32.const 1932) "\1c")
 (data $18.1 (i32.const 1944) "\02\00\00\00\02")
 (data $19 (i32.const 1964) "\1c")
 (data $19.1 (i32.const 1976) "\02\00\00\00\06\00\00\00%\000\000")
 (data $20 (i32.const 1996) "\1c")
 (data $20.1 (i32.const 2008) "\02\00\00\00\02\00\00\00+")
 (data $21 (i32.const 2028) "\1c")
 (data $21.1 (i32.const 2040) "\02\00\00\00\06\00\00\00%\002\00B")
 (data $22 (i32.const 2060) "\1c")
 (data $22.1 (i32.const 2072) "\02\00\00\00\06\00\00\00#\000\00=")
 (data $23 (i32.const 2092) ",")
 (data $23.1 (i32.const 2104) "\02\00\00\00\0e\00\00\00%\002\003\000\00%\003\00D")
 (data $24 (i32.const 2140) "\1c")
 (data $24.1 (i32.const 2152) "\02\00\00\00\n\00\00\00 \001\002\003\00 ")
 (data $25 (i32.const 2172) ",")
 (data $25.1 (i32.const 2184) "\02\00\00\00\12\00\00\00%\002\000\001\002\003\00%\002\000")
 (data $26 (i32.const 2220) "\1c")
 (data $26.1 (i32.const 2232) "\02\00\00\00\04\00\00\00?\00+")
 (data $27 (i32.const 2252) "\1c")
 (data $27.1 (i32.const 2264) "\02\00\00\00\0c\00\00\00%\003\00F\00%\002\00B")
 (data $28 (i32.const 2284) "\1c")
 (data $28.1 (i32.const 2296) "\02\00\00\00\n\00\00\00-\00?\001\00.\00-")
 (data $29 (i32.const 2316) ",")
 (data $29.1 (i32.const 2328) "\02\00\00\00\0e\00\00\00-\00%\003\00F\001\00.\00-")
 (data $30 (i32.const 2364) "\1c")
 (data $30.1 (i32.const 2376) "\02\00\00\00\0c\00\00\00<\d8\ed\dd<\d8\fa\dd<\d8N\df")
 (data $31 (i32.const 2396) "\\")
 (data $31.1 (i32.const 2408) "\02\00\00\00H\00\00\00%\00F\000\00%\009\00F\00%\008\007\00%\00A\00D\00%\00F\000\00%\009\00F\00%\008\007\00%\00B\00A\00%\00F\000\00%\009\00F\00%\008\00D\00%\008\00E")
 (data $32 (i32.const 2492) "\1c")
 (data $32.1 (i32.const 2504) "\02\00\00\00\n\00\00\00H\c5U\b1X\d58\c1\94\c6")
 (data $33 (i32.const 2524) "l")
 (data $33.1 (i32.const 2536) "\02\00\00\00Z\00\00\00%\00E\00C\00%\009\005\00%\008\008\00%\00E\00B\00%\008\005\00%\009\005\00%\00E\00D\00%\009\005\00%\009\008\00%\00E\00C\00%\008\004\00%\00B\008\00%\00E\00C\00%\009\00A\00%\009\004")
 (data $34 (i32.const 2636) "\1c")
 (data $34.1 (i32.const 2648) "\02\00\00\00\06\00\00\00~\00\7f\00\80")
 (data $35 (i32.const 2668) ",")
 (data $35.1 (i32.const 2680) "\02\00\00\00\14\00\00\00~\00%\007\00F\00%\00C\002\00%\008\000")
 (data $36 (i32.const 2716) "\1c")
 (data $36.1 (i32.const 2728) "\02\00\00\00\04\00\00\00\00\d8\ff\df")
 (data $37 (i32.const 2748) ",")
 (data $37.1 (i32.const 2760) "\02\00\00\00\18\00\00\00%\00F\000\00%\009\000\00%\008\00F\00%\00B\00F")
 (data $38 (i32.const 2796) "\1c")
 (data $38.1 (i32.const 2808) "\02\00\00\00\n\00\00\00{\da\01\dc-\00P\da\02\dc")
 (data $39 (i32.const 2828) "L")
 (data $39.1 (i32.const 2840) "\02\00\00\002\00\00\00%\00F\002\00%\00A\00E\00%\00B\000\00%\008\001\00-\00%\00F\002\00%\00A\004\00%\008\000\00%\008\002")
 (data $40 (i32.const 2908) "\1c")
 (data $40.1 (i32.const 2920) "\02\00\00\00\n\00\00\00\n\00\t\00\0b\00\0c\00\r")
 (data $41 (i32.const 2940) "<")
 (data $41.1 (i32.const 2952) "\02\00\00\00\1e\00\00\00%\000\00A\00%\000\009\00%\000\00B\00%\000\00C\00%\000\00D")
 (data $42 (i32.const 3004) ",")
 (data $42.1 (i32.const 3016) "\02\00\00\00\14\00\00\00;\00/\00?\00:\00@\00&\00=\00+\00$\00,")
 (data $43 (i32.const 3052) "L")
 (data $43.1 (i32.const 3064) "\02\00\00\00<\00\00\00%\003\00B\00%\002\00F\00%\003\00F\00%\003\00A\00%\004\000\00%\002\006\00%\003\00D\00%\002\00B\00%\002\004\00%\002\00C")
 (data $44 (i32.const 3132) "l")
 (data $44.1 (i32.const 3144) "\02\00\00\00\\\00\00\00h\00t\00t\00p\00:\00/\00/\00e\00n\00.\00w\00i\00k\00i\00p\00e\00d\00i\00a\00.\00o\00r\00g\00/\00w\00i\00k\00i\00/\00U\00T\00F\00-\008\00#\00D\00e\00s\00c\00r\00i\00p\00t\00i\00o\00n")
 (data $45 (i32.const 3244) "\8c")
 (data $45.1 (i32.const 3256) "\02\00\00\00t\00\00\00h\00t\00t\00p\00%\003\00A\00%\002\00F\00%\002\00F\00e\00n\00.\00w\00i\00k\00i\00p\00e\00d\00i\00a\00.\00o\00r\00g\00%\002\00F\00w\00i\00k\00i\00%\002\00F\00U\00T\00F\00-\008\00%\002\003\00D\00e\00s\00c\00r\00i\00p\00t\00i\00o\00n")
 (data $46 (i32.const 3389) "\01\00\00\01")
 (data $46.1 (i32.const 3415) "\01\00\01")
 (data $46.2 (i32.const 3446) "\01\01\01\01\00\01")
 (data $46.3 (i32.const 3478) "\01\01\01")
 (data $47 (i32.const 3484) ",")
 (data $47.1 (i32.const 3496) "\02\00\00\00\16\00\00\00;\00,\00/\00?\00:\00@\00&\00=\00+\00$\00#")
 (data $48 (i32.const 3532) "\1c")
 (data $48.1 (i32.const 3544) "\02\00\00\00\02\00\00\00 ")
 (data $49 (i32.const 3564) "\1c")
 (data $49.1 (i32.const 3576) "\02\00\00\00\06\00\00\00%\002\000")
 (data $50 (i32.const 3596) "\01\01\00\01\00\00\00\00\01\01\00\00\01")
 (data $50.1 (i32.const 3619) "\01\01\00\01\00\01\01")
 (data $51 (i32.const 3628) "\1c")
 (data $51.1 (i32.const 3640) "\02\00\00\00\06\00\00\00%\002\006")
 (data $52 (i32.const 3660) "\1c")
 (data $52.1 (i32.const 3672) "\02\00\00\00\02\00\00\00&")
 (data $53 (i32.const 3692) "\1c")
 (data $53.1 (i32.const 3704) "\02\00\00\00\06\00\00\00%\005\00E")
 (data $54 (i32.const 3724) "\1c")
 (data $54.1 (i32.const 3736) "\02\00\00\00\02\00\00\00^")
 (data $55 (i32.const 3756) "\1c")
 (data $55.1 (i32.const 3768) "\02\00\00\00\02\00\00\00\00\d8")
 (data $56 (i32.const 3788) "L")
 (data $56.1 (i32.const 3800) "\02\00\00\00<\00\00\00%\003\00b\00%\002\00f\00%\003\00f\00%\003\00a\00%\004\000\00%\003\00d\00%\002\00b\00%\002\004\00%\002\00c\00%\002\003")
 (data $57 (i32.const 3868) ",")
 (data $57.1 (i32.const 3880) "\02\00\00\00\14\00\00\00;\00/\00?\00:\00@\00=\00+\00$\00,\00#")
 (data $58 (i32.const 3916) "L")
 (data $58.1 (i32.const 3928) "\02\00\00\00<\00\00\00%\003\00B\00%\002\00F\00%\003\00F\00%\003\00A\00%\004\000\00%\003\00D\00%\002\00B\00%\002\004\00%\002\00C\00%\002\003")
 (data $59 (i32.const 3996) "|")
 (data $59.1 (i32.const 4008) "\02\00\00\00h\00\00\00h\00t\00t\00p\00:\00%\002\00F\00%\002\00F\00e\00n\00.\00w\00i\00k\00i\00p\00e\00d\00i\00a\00.\00o\00r\00g\00/\00w\00i\00k\00i\00/\00U\00T\00F\00-\008\00%\002\003\00D\00e\00s\00c\00r\00i\00p\00t\00i\00o\00n")
 (data $60 (i32.const 4124) "\1c")
 (data $60.1 (i32.const 4136) "\02\00\00\00\0c\00\00\00%\00D\00F\00%\008\000")
 (data $61 (i32.const 4156) "\1c")
 (data $61.1 (i32.const 4168) "\02\00\00\00\02\00\00\00\c0\07")
 (data $62 (i32.const 4188) "\1c")
 (data $62.1 (i32.const 4200) "\02\00\00\00\0c\00\00\00%\00C\002\00%\00B\00F")
 (data $63 (i32.const 4220) "\1c")
 (data $63.1 (i32.const 4232) "\02\00\00\00\02\00\00\00\bf")
 (data $64 (i32.const 4252) ",")
 (data $64.1 (i32.const 4264) "\02\00\00\00\0e\00\00\00\f7\00\b8\00W\00\ef\00\0f\00\f4\00V")
 (data $65 (i32.const 4300) "\1c")
 (data $65.1 (i32.const 4312) "\02\00\00\00\06\00\00\00\f4\00\b8\00\ef")
 (data $66 (i32.const 4336) "\04\00\00\00 \00\00\00 \00\00\00 ")
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  i32.const 1376
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1184
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1584
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  global.get $~lib/rt/itcms/pinSpace
  local.tee $1
  i32.load $0 offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.ne
   if
    local.get $0
    i32.load $0 offset=4
    i32.const 3
    i32.and
    i32.const 3
    i32.ne
    if
     i32.const 0
     i32.const 1248
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
    i32.load $0 offset=4
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
   i32.load $0 offset=8
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1248
    i32.const 148
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   global.set $~lib/rt/itcms/iter
  end
  block $__inlined_func$~lib/rt/itcms/Object#unlink
   local.get $0
   i32.load $0 offset=4
   i32.const -4
   i32.and
   local.tee $1
   i32.eqz
   if
    local.get $0
    i32.load $0 offset=8
    i32.eqz
    local.get $0
    i32.const 37124
    i32.lt_u
    i32.and
    i32.eqz
    if
     i32.const 0
     i32.const 1248
     i32.const 128
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    br $__inlined_func$~lib/rt/itcms/Object#unlink
   end
   local.get $0
   i32.load $0 offset=8
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 1248
    i32.const 132
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   local.get $2
   i32.store $0 offset=8
   local.get $2
   local.get $1
   local.get $2
   i32.load $0 offset=4
   i32.const 3
   i32.and
   i32.or
   i32.store $0 offset=4
  end
  global.get $~lib/rt/itcms/toSpace
  local.set $2
  local.get $0
  i32.load $0 offset=12
  local.tee $1
  i32.const 2
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 4336
   i32.load $0
   i32.gt_u
   if
    i32.const 1376
    i32.const 1440
    i32.const 21
    i32.const 28
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 2
   i32.shl
   i32.const 4340
   i32.add
   i32.load $0
   i32.const 32
   i32.and
  end
  local.set $3
  local.get $2
  i32.load $0 offset=8
  local.set $1
  local.get $0
  global.get $~lib/rt/itcms/white
  i32.eqz
  i32.const 2
  local.get $3
  select
  local.get $2
  i32.or
  i32.store $0 offset=4
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $1
  local.get $0
  local.get $1
  i32.load $0 offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store $0 offset=4
  local.get $2
  local.get $0
  i32.store $0 offset=8
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load $0
  local.tee $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1520
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1520
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
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
   local.tee $4
   i32.const 7
   i32.sub
   local.set $3
   local.get $2
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  i32.const 16
  i32.lt_u
  local.get $3
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1520
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load $0 offset=8
  local.set $5
  local.get $1
  i32.load $0 offset=4
  local.tee $4
  if
   local.get $4
   local.get $5
   i32.store $0 offset=8
  end
  local.get $5
  if
   local.get $5
   local.get $4
   i32.store $0 offset=4
  end
  local.get $1
  local.get $0
  local.get $3
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load $0 offset=96
  i32.eq
  if
   local.get $0
   local.get $3
   i32.const 4
   i32.shl
   local.get $2
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $5
   i32.store $0 offset=96
   local.get $5
   i32.eqz
   if
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    local.tee $1
    i32.load $0 offset=4
    i32.const -2
    local.get $2
    i32.rotl
    i32.and
    local.set $2
    local.get $1
    local.get $2
    i32.store $0 offset=4
    local.get $2
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load $0
     i32.const -2
     local.get $3
     i32.rotl
     i32.and
     i32.store $0
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
   i32.const 1520
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load $0
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1520
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load $0
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load $0
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
   i32.store $0
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load $0
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   i32.load $0
   local.set $2
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load $0
   local.tee $1
   i32.load $0
   local.tee $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1520
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
   i32.store $0
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.or
  i32.store $0
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1520
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
   i32.const 1520
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store $0
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
   i32.const 1520
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
  i32.load $0 offset=96
  local.set $3
  local.get $1
  i32.const 0
  i32.store $0 offset=4
  local.get $1
  local.get $3
  i32.store $0 offset=8
  local.get $3
  if
   local.get $3
   local.get $1
   i32.store $0 offset=4
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
  i32.store $0 offset=96
  local.get $0
  local.get $0
  i32.load $0
  i32.const 1
  local.get $5
  i32.shl
  i32.or
  i32.store $0
  local.get $0
  local.get $5
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  local.get $0
  i32.load $0 offset=4
  i32.const 1
  local.get $2
  i32.shl
  i32.or
  i32.store $0 offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  local.get $1
  i64.extend_i32_u
  i64.lt_u
  if
   i32.const 0
   i32.const 1520
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
  i32.load $0 offset=1568
  local.tee $4
  if
   local.get $4
   i32.const 4
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1520
    i32.const 389
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 16
   i32.sub
   local.get $4
   i32.eq
   if
    local.get $4
    i32.load $0
    local.set $3
    local.get $1
    i32.const 16
    i32.sub
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
    i32.const 1520
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
  local.tee $4
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $3
  i32.const 2
  i32.and
  local.get $4
  i32.const 8
  i32.sub
  local.tee $3
  i32.const 1
  i32.or
  i32.or
  i32.store $0
  local.get $1
  i32.const 0
  i32.store $0 offset=4
  local.get $1
  i32.const 0
  i32.store $0 offset=8
  local.get $1
  i32.const 4
  i32.add
  local.get $3
  i32.add
  local.tee $3
  i32.const 2
  i32.store $0
  local.get $0
  local.get $3
  i32.store $0 offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  memory.size $0
  local.tee $1
  i32.const 0
  i32.le_s
  if (result i32)
   i32.const 1
   local.get $1
   i32.sub
   memory.grow $0
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  i32.const 37136
  i32.const 0
  i32.store $0
  i32.const 38704
  i32.const 0
  i32.store $0
  loop $for-loop|0
   local.get $0
   i32.const 23
   i32.lt_u
   if
    local.get $0
    i32.const 2
    i32.shl
    i32.const 37136
    i32.add
    i32.const 0
    i32.store $0 offset=4
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
      i32.const 37136
      i32.add
      i32.const 0
      i32.store $0 offset=96
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
  i32.const 37136
  i32.const 38708
  memory.size $0
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 37136
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
    i32.load $0 offset=4
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
      i32.load $0 offset=4
      i32.const 3
      i32.and
      i32.ne
      if
       local.get $0
       local.get $0
       i32.load $0 offset=4
       i32.const -4
       i32.and
       local.get $1
       i32.or
       i32.store $0 offset=4
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
      i32.load $0 offset=4
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
    i32.load $0 offset=4
    i32.const -4
    i32.and
    i32.eq
    if
     global.get $~lib/memory/__stack_pointer
     local.set $0
     loop $while-continue|0
      local.get $0
      i32.const 37124
      i32.lt_u
      if
       local.get $0
       i32.load $0
       local.tee $2
       if
        local.get $2
        call $byn-split-outlined-A$~lib/rt/itcms/__visit
       end
       local.get $0
       i32.const 4
       i32.add
       local.set $0
       br $while-continue|0
      end
     end
     global.get $~lib/rt/itcms/iter
     i32.load $0 offset=4
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
       i32.load $0 offset=4
       i32.const 3
       i32.and
       i32.ne
       if
        local.get $0
        local.get $0
        i32.load $0 offset=4
        i32.const -4
        i32.and
        local.get $1
        i32.or
        i32.store $0 offset=4
        local.get $0
        i32.const 20
        i32.add
        call $~lib/rt/__visit_members
       end
       local.get $0
       i32.load $0 offset=4
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
     i32.load $0 offset=4
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
    i32.load $0 offset=4
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
     i32.const 1248
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 37124
    i32.lt_u
    if
     local.get $0
     i32.const 0
     i32.store $0 offset=4
     local.get $0
     i32.const 0
     i32.store $0 offset=8
    else
     global.get $~lib/rt/itcms/total
     local.get $0
     i32.load $0
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
     i32.const 37124
     i32.ge_u
     if
      global.get $~lib/rt/tlsf/ROOT
      i32.eqz
      if
       call $~lib/rt/tlsf/initialize
      end
      global.get $~lib/rt/tlsf/ROOT
      local.set $1
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
       i32.load $0
       i32.const 1
       i32.and
      end
      if
       i32.const 0
       i32.const 1520
       i32.const 562
       i32.const 3
       call $~lib/builtins/abort
       unreachable
      end
      local.get $2
      local.get $2
      i32.load $0
      i32.const 1
      i32.or
      i32.store $0
      local.get $1
      local.get $2
      call $~lib/rt/tlsf/insertBlock
     end
    end
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   local.tee $0
   local.get $0
   i32.store $0 offset=4
   local.get $0
   local.get $0
   i32.store $0 offset=8
   i32.const 0
   global.set $~lib/rt/itcms/state
  end
  i32.const 0
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 4
   i32.shr_u
  else
   i32.const 31
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
   local.get $1
   local.get $1
   i32.const 536870910
   i32.lt_u
   select
   local.tee $1
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $2
   local.get $1
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $1
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1520
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
  i32.load $0 offset=4
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
   i32.load $0 offset=96
  else
   local.get $0
   i32.load $0
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
    i32.load $0 offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1520
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
    i32.load $0 offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 1184
   i32.const 1248
   i32.const 261
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   block $__inlined_func$~lib/rt/itcms/interrupt
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
      br $__inlined_func$~lib/rt/itcms/interrupt
     end
     local.get $2
     i32.const 0
     i32.gt_s
     br_if $do-loop|0
    end
    global.get $~lib/rt/itcms/total
    local.tee $2
    local.get $2
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
  local.set $4
  local.get $0
  i32.const 16
  i32.add
  local.tee $2
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1184
   i32.const 1520
   i32.const 461
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 12
  local.get $2
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.get $2
  i32.const 12
  i32.le_u
  select
  local.tee $5
  call $~lib/rt/tlsf/searchBlock
  local.tee $2
  i32.eqz
  if
   memory.size $0
   local.tee $2
   local.get $5
   i32.const 256
   i32.ge_u
   if (result i32)
    local.get $5
    i32.const 1
    i32.const 27
    local.get $5
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
    local.get $5
    local.get $5
    i32.const 536870910
    i32.lt_u
    select
   else
    local.get $5
   end
   i32.const 4
   local.get $4
   i32.load $0 offset=1568
   local.get $2
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
   local.tee $3
   local.get $2
   local.get $3
   i32.gt_s
   select
   memory.grow $0
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow $0
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $4
   local.get $2
   i32.const 16
   i32.shl
   memory.size $0
   i64.extend_i32_s
   i64.const 16
   i64.shl
   call $~lib/rt/tlsf/addMemory
   local.get $4
   local.get $5
   call $~lib/rt/tlsf/searchBlock
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 1520
    i32.const 499
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $5
  local.get $2
  i32.load $0
  i32.const -4
  i32.and
  i32.gt_u
  if
   i32.const 0
   i32.const 1520
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $2
  call $~lib/rt/tlsf/removeBlock
  local.get $2
  i32.load $0
  local.set $3
  local.get $5
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1520
   i32.const 361
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.get $5
  i32.sub
  local.tee $6
  i32.const 16
  i32.ge_u
  if
   local.get $2
   local.get $5
   local.get $3
   i32.const 2
   i32.and
   i32.or
   i32.store $0
   local.get $2
   i32.const 4
   i32.add
   local.get $5
   i32.add
   local.tee $3
   local.get $6
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store $0
   local.get $4
   local.get $3
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $2
   local.get $3
   i32.const -2
   i32.and
   i32.store $0
   local.get $2
   i32.const 4
   i32.add
   local.get $2
   i32.load $0
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   local.get $3
   i32.load $0
   i32.const -3
   i32.and
   i32.store $0
  end
  local.get $2
  local.get $1
  i32.store $0 offset=12
  local.get $2
  local.get $0
  i32.store $0 offset=16
  global.get $~lib/rt/itcms/fromSpace
  local.tee $1
  i32.load $0 offset=8
  local.set $3
  local.get $2
  local.get $1
  global.get $~lib/rt/itcms/white
  i32.or
  i32.store $0 offset=4
  local.get $2
  local.get $3
  i32.store $0 offset=8
  local.get $3
  local.get $2
  local.get $3
  i32.load $0 offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store $0 offset=4
  local.get $1
  local.get $2
  i32.store $0 offset=8
  global.get $~lib/rt/itcms/total
  local.get $2
  i32.load $0
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
  memory.fill $0
  local.get $1
 )
 (func $~lib/rt/itcms/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.const 20
  i32.sub
  local.tee $3
  i32.load $0
  i32.const -4
  i32.and
  i32.const 16
  i32.sub
  i32.le_u
  if
   local.get $3
   local.get $1
   i32.store $0 offset=16
   local.get $0
   return
  end
  local.get $1
  local.get $3
  i32.load $0 offset=12
  call $~lib/rt/itcms/__new
  local.tee $2
  local.get $0
  local.get $1
  local.get $3
  i32.load $0 offset=16
  local.tee $0
  local.get $0
  local.get $1
  i32.gt_u
  select
  memory.copy $0 $0
  local.get $2
 )
 (func $~lib/util/uri/encode (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  i32.eqz
  if
   local.get $0
   return
  end
  local.get $1
  i32.const 1
  i32.shl
  local.tee $8
  i32.const 2
  call $~lib/rt/itcms/__new
  local.set $3
  loop $while-continue|0
   local.get $1
   local.get $4
   i32.gt_u
   if
    block $while-break|0
     local.get $4
     local.set $5
     loop $do-loop|1
      block $do-break|1
       local.get $0
       local.get $4
       i32.const 1
       i32.shl
       i32.add
       i32.load16_u $0
       local.tee $6
       i32.const 33
       i32.sub
       i32.const 94
       i32.ge_u
       br_if $do-break|1
       local.get $2
       local.get $6
       i32.const 33
       i32.sub
       i32.add
       i32.load8_u $0
       br_if $do-break|1
       local.get $4
       i32.const 1
       i32.add
       local.tee $4
       local.get $1
       i32.lt_u
       br_if $do-loop|1
      end
     end
     local.get $4
     local.get $5
     i32.gt_u
     if
      local.get $4
      local.get $5
      i32.sub
      i32.const 1
      i32.shl
      local.tee $9
      local.get $7
      i32.add
      local.get $8
      i32.gt_u
      if
       local.get $3
       local.get $7
       local.get $9
       i32.add
       local.tee $8
       call $~lib/rt/itcms/__renew
       local.set $3
      end
      local.get $3
      local.get $7
      i32.add
      local.get $0
      local.get $5
      i32.const 1
      i32.shl
      i32.add
      local.get $9
      memory.copy $0 $0
      local.get $7
      local.get $9
      i32.add
      local.set $7
      local.get $1
      local.get $4
      i32.le_u
      br_if $while-break|0
     end
     local.get $6
     i32.const 55296
     i32.ge_u
     if
      local.get $6
      i32.const 57343
      i32.le_u
      local.get $6
      i32.const 56320
      i32.ge_u
      i32.and
      if
       i32.const 1584
       i32.const 1632
       i32.const 81
       i32.const 9
       call $~lib/builtins/abort
       unreachable
      end
      local.get $6
      i32.const 56319
      i32.le_u
      if
       local.get $1
       local.get $4
       i32.le_u
       if
        i32.const 1584
        i32.const 1632
        i32.const 85
        i32.const 11
        call $~lib/builtins/abort
        unreachable
       end
       local.get $0
       local.get $4
       i32.const 1
       i32.add
       local.tee $4
       i32.const 1
       i32.shl
       i32.add
       i32.load16_u $0
       local.tee $5
       i32.const 56320
       i32.lt_u
       local.get $5
       i32.const 57343
       i32.gt_u
       i32.or
       if
        i32.const 1584
        i32.const 1632
        i32.const 89
        i32.const 11
        call $~lib/builtins/abort
        unreachable
       end
       local.get $5
       i32.const 1023
       i32.and
       local.get $6
       i32.const 1023
       i32.and
       i32.const 10
       i32.shl
       i32.or
       i32.const 65536
       i32.add
       local.set $6
      end
     end
     local.get $7
     i32.const 6
     i32.const 24
     local.get $6
     i32.const 128
     i32.lt_u
     select
     i32.add
     local.tee $5
     local.get $8
     i32.gt_u
     if
      local.get $3
      local.get $5
      i32.const 1
      i32.shl
      local.get $5
      local.get $1
      i32.const 1
      i32.gt_u
      select
      local.tee $8
      call $~lib/rt/itcms/__renew
      local.set $3
     end
     local.get $6
     i32.const 128
     i32.lt_u
     if
      local.get $3
      local.get $7
      i32.add
      local.tee $5
      i32.const 37
      i32.store16 $0
      local.get $5
      local.get $6
      i32.const 4
      i32.shr_u
      i32.const 15
      i32.and
      i32.const 1676
      i32.add
      i32.load8_u $0
      local.get $6
      i32.const 15
      i32.and
      i32.const 1676
      i32.add
      i32.load8_u $0
      i32.const 16
      i32.shl
      i32.or
      i32.store $0 offset=2
     else
      local.get $6
      i32.const 2048
      i32.lt_u
      if
       local.get $3
       local.get $7
       i32.add
       local.tee $5
       i32.const 37
       i32.store16 $0
       local.get $5
       local.get $6
       i32.const 6
       i32.shr_u
       i32.const 192
       i32.or
       local.tee $5
       i32.const 4
       i32.shr_u
       i32.const 15
       i32.and
       i32.const 1676
       i32.add
       i32.load8_u $0
       local.get $5
       i32.const 15
       i32.and
       i32.const 1676
       i32.add
       i32.load8_u $0
       i32.const 16
       i32.shl
       i32.or
       i32.store $0 offset=2
      else
       local.get $6
       i32.const 65536
       i32.lt_u
       if
        local.get $3
        local.get $7
        i32.add
        local.tee $5
        i32.const 37
        i32.store16 $0
        local.get $5
        local.get $6
        i32.const 12
        i32.shr_u
        i32.const 224
        i32.or
        local.tee $5
        i32.const 4
        i32.shr_u
        i32.const 15
        i32.and
        i32.const 1676
        i32.add
        i32.load8_u $0
        local.get $5
        i32.const 15
        i32.and
        i32.const 1676
        i32.add
        i32.load8_u $0
        i32.const 16
        i32.shl
        i32.or
        i32.store $0 offset=2
       else
        local.get $3
        local.get $7
        i32.add
        local.tee $5
        i32.const 37
        i32.store16 $0
        local.get $5
        local.get $6
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        local.tee $5
        i32.const 4
        i32.shr_u
        i32.const 1676
        i32.add
        i32.load8_u $0
        local.get $5
        i32.const 15
        i32.and
        i32.const 1676
        i32.add
        i32.load8_u $0
        i32.const 16
        i32.shl
        i32.or
        i32.store $0 offset=2
        local.get $3
        local.get $7
        i32.const 6
        i32.add
        local.tee $7
        i32.add
        local.tee $5
        i32.const 37
        i32.store16 $0
        local.get $5
        local.get $6
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        local.tee $5
        i32.const 4
        i32.shr_u
        i32.const 1676
        i32.add
        i32.load8_u $0
        local.get $5
        i32.const 15
        i32.and
        i32.const 1676
        i32.add
        i32.load8_u $0
        i32.const 16
        i32.shl
        i32.or
        i32.store $0 offset=2
       end
       local.get $3
       local.get $7
       i32.const 6
       i32.add
       local.tee $7
       i32.add
       local.tee $5
       i32.const 37
       i32.store16 $0
       local.get $5
       local.get $6
       i32.const 6
       i32.shr_u
       i32.const 63
       i32.and
       i32.const 128
       i32.or
       local.tee $5
       i32.const 4
       i32.shr_u
       i32.const 1676
       i32.add
       i32.load8_u $0
       local.get $5
       i32.const 15
       i32.and
       i32.const 1676
       i32.add
       i32.load8_u $0
       i32.const 16
       i32.shl
       i32.or
       i32.store $0 offset=2
      end
      local.get $3
      local.get $7
      i32.const 6
      i32.add
      local.tee $7
      i32.add
      local.tee $5
      i32.const 37
      i32.store16 $0
      local.get $5
      local.get $6
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      local.tee $5
      i32.const 4
      i32.shr_u
      i32.const 1676
      i32.add
      i32.load8_u $0
      local.get $5
      i32.const 15
      i32.and
      i32.const 1676
      i32.add
      i32.load8_u $0
      i32.const 16
      i32.shl
      i32.or
      i32.store $0 offset=2
     end
     local.get $7
     i32.const 6
     i32.add
     local.set $7
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $while-continue|0
    end
   end
  end
  local.get $7
  local.get $8
  i32.lt_u
  if (result i32)
   local.get $3
   local.get $7
   call $~lib/rt/itcms/__renew
  else
   local.get $3
  end
 )
 (func $~lib/util/uri/decode (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $1
  i32.eqz
  if
   local.get $0
   return
  end
  local.get $1
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.set $8
  loop $while-continue|0
   local.get $1
   local.get $3
   i32.gt_u
   if
    block $while-break|0
     local.get $3
     local.set $4
     loop $while-continue|1
      local.get $1
      local.get $3
      i32.gt_u
      if (result i32)
       local.get $0
       local.get $3
       i32.const 1
       i32.shl
       i32.add
       i32.load16_u $0
       local.tee $5
       i32.const 37
       i32.ne
      else
       i32.const 0
      end
      if
       local.get $3
       i32.const 1
       i32.add
       local.set $3
       br $while-continue|1
      end
     end
     local.get $3
     local.get $4
     i32.gt_u
     if
      local.get $6
      local.get $8
      i32.add
      local.get $0
      local.get $4
      i32.const 1
      i32.shl
      i32.add
      local.get $3
      local.get $4
      i32.sub
      i32.const 1
      i32.shl
      local.tee $4
      memory.copy $0 $0
      local.get $4
      local.get $6
      i32.add
      local.set $6
      local.get $1
      local.get $3
      i32.le_u
      br_if $while-break|0
     end
     local.get $5
     i32.const 37
     i32.ne
     local.get $3
     i32.const 2
     i32.add
     local.get $1
     i32.ge_u
     i32.or
     if (result i32)
      i32.const 1
     else
      local.get $3
      i32.const 1
      i32.add
      i32.const 1
      i32.shl
      local.get $0
      i32.add
      local.tee $4
      i32.load16_u $0
      local.set $5
      local.get $4
      i32.load16_u $0 offset=2
      local.set $4
      local.get $5
      i32.const 32
      i32.or
      i32.const 97
      i32.sub
      i32.const 6
      i32.lt_u
      local.get $5
      i32.const 48
      i32.sub
      i32.const 10
      i32.lt_u
      i32.or
      if (result i32)
       local.get $4
       i32.const 32
       i32.or
       i32.const 97
       i32.sub
       i32.const 6
       i32.lt_u
       local.get $4
       i32.const 48
       i32.sub
       i32.const 10
       i32.lt_u
       i32.or
      else
       i32.const 0
      end
      if (result i32)
       local.get $4
       i32.const 32
       i32.or
       i32.const 39
       i32.rem_u
       i32.const 9
       i32.sub
       local.get $5
       i32.const 32
       i32.or
       i32.const 39
       i32.rem_u
       i32.const 9
       i32.sub
       i32.const 4
       i32.shl
       i32.or
      else
       i32.const -1
      end
      local.tee $5
      i32.const -1
      i32.eq
     end
     if
      i32.const 1584
      i32.const 1632
      i32.const 164
      i32.const 7
      call $~lib/builtins/abort
      unreachable
     end
     local.get $3
     i32.const 3
     i32.add
     local.set $3
     local.get $5
     i32.const 128
     i32.lt_u
     if
      local.get $2
      if (result i32)
       i32.const 0
      else
       local.get $5
       i32.const 35
       i32.sub
       i32.const 30
       i32.lt_u
       if (result i32)
        local.get $5
        i32.const 3561
        i32.add
        i32.load8_u $0
       else
        i32.const 0
       end
      end
      if
       i32.const 37
       local.set $5
       local.get $3
       i32.const 2
       i32.sub
       local.set $3
      end
     else
      i32.const 1
      local.get $5
      i32.const 24
      i32.shl
      i32.const -1
      i32.xor
      i32.clz
      i32.const 0
      local.get $5
      i32.const 192
      i32.sub
      i32.const 56
      i32.lt_u
      select
      local.tee $4
      i32.const 17
      i32.mul
      i32.const 2
      i32.shr_u
      i32.const 1
      i32.sub
      i32.shl
      local.set $9
      local.get $5
      i32.const 128
      local.get $4
      i32.shr_u
      i32.const 1
      i32.sub
      i32.const 0
      local.get $4
      select
      i32.and
      local.set $5
      loop $while-continue|2
       local.get $4
       i32.const 1
       i32.sub
       local.tee $4
       if
        block $while-break|2
         local.get $3
         i32.const 2
         i32.add
         local.get $1
         i32.ge_u
         if (result i32)
          i32.const 1
         else
          local.get $0
          local.get $3
          i32.const 1
          i32.shl
          i32.add
          i32.load16_u $0
          i32.const 37
          i32.ne
         end
         if (result i32)
          i32.const 1
         else
          local.get $3
          i32.const 1
          i32.add
          i32.const 1
          i32.shl
          local.get $0
          i32.add
          local.tee $10
          i32.load16_u $0
          local.set $7
          local.get $10
          i32.load16_u $0 offset=2
          local.set $10
          local.get $7
          i32.const 32
          i32.or
          i32.const 97
          i32.sub
          i32.const 6
          i32.lt_u
          local.get $7
          i32.const 48
          i32.sub
          i32.const 10
          i32.lt_u
          i32.or
          if (result i32)
           local.get $10
           i32.const 32
           i32.or
           i32.const 97
           i32.sub
           i32.const 6
           i32.lt_u
           local.get $10
           i32.const 48
           i32.sub
           i32.const 10
           i32.lt_u
           i32.or
          else
           i32.const 0
          end
          if (result i32)
           local.get $10
           i32.const 32
           i32.or
           i32.const 39
           i32.rem_u
           i32.const 9
           i32.sub
           local.get $7
           i32.const 32
           i32.or
           i32.const 39
           i32.rem_u
           i32.const 9
           i32.sub
           i32.const 4
           i32.shl
           i32.or
          else
           i32.const -1
          end
          local.tee $7
          i32.const -1
          i32.eq
         end
         if
          i32.const 1584
          i32.const 1632
          i32.const 187
          i32.const 11
          call $~lib/builtins/abort
          unreachable
         end
         local.get $3
         i32.const 3
         i32.add
         local.set $3
         local.get $7
         i32.const 192
         i32.and
         i32.const 128
         i32.ne
         if
          i32.const 0
          local.set $5
          br $while-break|2
         end
         local.get $7
         i32.const 63
         i32.and
         local.get $5
         i32.const 6
         i32.shl
         i32.or
         local.set $5
         br $while-continue|2
        end
       end
      end
      local.get $5
      i32.const 57344
      i32.lt_u
      local.get $5
      i32.const 55296
      i32.ge_u
      i32.and
      local.get $9
      i32.const -1
      i32.eq
      local.get $5
      local.get $9
      i32.lt_u
      i32.or
      local.get $5
      i32.const 1114111
      i32.gt_u
      i32.or
      i32.or
      if
       i32.const 1584
       i32.const 1632
       i32.const 199
       i32.const 9
       call $~lib/builtins/abort
       unreachable
      end
      local.get $5
      i32.const 65536
      i32.ge_u
      if
       local.get $6
       local.get $8
       i32.add
       local.get $5
       i32.const 65536
       i32.sub
       local.tee $5
       i32.const 10
       i32.shr_u
       i32.const 55296
       i32.or
       local.get $5
       i32.const 1023
       i32.and
       i32.const 56320
       i32.or
       i32.const 16
       i32.shl
       i32.or
       i32.store $0
       local.get $6
       i32.const 4
       i32.add
       local.set $6
       br $while-continue|0
      end
     end
     local.get $6
     local.get $8
     i32.add
     local.get $5
     i32.store16 $0
     local.get $6
     i32.const 2
     i32.add
     local.set $6
     br $while-continue|0
    end
   end
  end
  local.get $1
  i32.const 1
  i32.shl
  local.get $6
  i32.lt_u
  if
   i32.const 0
   i32.const 1632
   i32.const 216
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.shl
  local.get $6
  i32.gt_u
  if (result i32)
   local.get $8
   local.get $6
   call $~lib/rt/itcms/__renew
  else
   local.get $8
  end
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  block $invalid
   block $~lib/arraybuffer/ArrayBufferView
    block $~lib/string/String
     block $~lib/arraybuffer/ArrayBuffer
      block $~lib/object/Object
       local.get $0
       i32.const 8
       i32.sub
       i32.load $0
       br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $invalid
      end
      return
     end
     return
    end
    return
   end
   local.get $0
   i32.load $0
   local.tee $0
   if
    local.get $0
    call $byn-split-outlined-A$~lib/rt/itcms/__visit
   end
   return
  end
  unreachable
 )
 (func $~start
  call $start:std/uri
 )
 (func $~lib/uri/encodeURIComponent (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4356
  i32.lt_s
  if
   i32.const 37152
   i32.const 37200
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store $0
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load $0 offset=16
  i32.const 1
  i32.shr_u
  i32.const 1068
  call $~lib/util/uri/encode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4356
  i32.lt_s
  if
   i32.const 37152
   i32.const 37200
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $0
  local.get $1
  i32.eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1
   return
  end
  block $folding-inner0
   local.get $1
   i32.eqz
   local.get $0
   i32.eqz
   i32.or
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store $0
   local.get $0
   i32.const 20
   i32.sub
   i32.load $0 offset=16
   i32.const 1
   i32.shr_u
   local.set $3
   local.get $2
   local.get $1
   i32.store $0
   local.get $3
   local.get $1
   i32.const 20
   i32.sub
   i32.load $0 offset=16
   i32.const 1
   i32.shr_u
   i32.ne
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store $0
   local.get $2
   local.get $1
   i32.store $0 offset=4
   local.get $0
   local.tee $2
   i32.const 7
   i32.and
   local.get $1
   i32.const 7
   i32.and
   i32.or
   i32.eqz
   local.get $3
   local.tee $0
   i32.const 4
   i32.ge_u
   i32.and
   if
    loop $do-loop|0
     local.get $2
     i64.load $0
     local.get $1
     i64.load $0
     i64.eq
     if
      local.get $2
      i32.const 8
      i32.add
      local.set $2
      local.get $1
      i32.const 8
      i32.add
      local.set $1
      local.get $0
      i32.const 4
      i32.sub
      local.tee $0
      i32.const 4
      i32.ge_u
      br_if $do-loop|0
     end
    end
   end
   block $__inlined_func$~lib/util/string/compareImpl
    loop $while-continue|1
     local.get $0
     local.tee $3
     i32.const 1
     i32.sub
     local.set $0
     local.get $3
     if
      local.get $2
      i32.load16_u $0
      local.tee $5
      local.get $1
      i32.load16_u $0
      local.tee $4
      i32.sub
      local.set $3
      local.get $4
      local.get $5
      i32.ne
      br_if $__inlined_func$~lib/util/string/compareImpl
      local.get $2
      i32.const 2
      i32.add
      local.set $2
      local.get $1
      i32.const 2
      i32.add
      local.set $1
      br $while-continue|1
     end
    end
    i32.const 0
    local.set $3
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   i32.eqz
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $~lib/uri/encodeURI (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4356
  i32.lt_s
  if
   i32.const 37152
   i32.const 37200
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store $0
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load $0 offset=16
  i32.const 1
  i32.shr_u
  i32.const 3388
  call $~lib/util/uri/encode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/uri/decodeURIComponent (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4356
  i32.lt_s
  if
   i32.const 37152
   i32.const 37200
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store $0
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load $0 offset=16
  i32.const 1
  i32.shr_u
  i32.const 1
  call $~lib/util/uri/decode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/uri/decodeURI (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4356
  i32.lt_s
  if
   i32.const 37152
   i32.const 37200
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store $0
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load $0 offset=16
  i32.const 1
  i32.shr_u
  i32.const 0
  call $~lib/util/uri/decode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $start:std/uri
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4356
  i32.lt_s
  if
   i32.const 37152
   i32.const 37200
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store $0
  local.get $0
  i32.const 0
  i32.store $0 offset=8
  memory.size $0
  i32.const 16
  i32.shl
  i32.const 37124
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 1300
  i32.const 1296
  i32.store $0
  i32.const 1304
  i32.const 1296
  i32.store $0
  i32.const 1296
  global.set $~lib/rt/itcms/pinSpace
  i32.const 1332
  i32.const 1328
  i32.store $0
  i32.const 1336
  i32.const 1328
  i32.store $0
  i32.const 1328
  global.set $~lib/rt/itcms/toSpace
  i32.const 1476
  i32.const 1472
  i32.store $0
  i32.const 1480
  i32.const 1472
  i32.store $0
  i32.const 1472
  global.set $~lib/rt/itcms/fromSpace
  local.get $0
  i32.const 1056
  i32.store $0 offset=8
  i32.const 1056
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 1056
  i32.store $0 offset=4
  local.get $0
  i32.const 1056
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 4
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1760
  i32.store $0 offset=8
  i32.const 1760
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 1760
  i32.store $0 offset=4
  local.get $0
  i32.const 1760
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 5
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1792
  i32.store $0 offset=8
  i32.const 1792
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 1792
  i32.store $0 offset=4
  local.get $0
  i32.const 1792
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 6
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1824
  i32.store $0 offset=8
  i32.const 1824
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 1824
  i32.store $0 offset=4
  local.get $0
  i32.const 1824
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 7
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1856
  i32.store $0 offset=8
  i32.const 1856
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 1856
  i32.store $0 offset=4
  local.get $0
  i32.const 1856
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 8
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1952
  i32.store $0 offset=8
  i32.const 1952
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 1984
  i32.store $0 offset=4
  local.get $0
  i32.const 1984
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 12
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 2016
  i32.store $0 offset=8
  i32.const 2016
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 2048
  i32.store $0 offset=4
  local.get $0
  i32.const 2048
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 13
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 2080
  i32.store $0 offset=8
  i32.const 2080
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 2112
  i32.store $0 offset=4
  local.get $0
  i32.const 2112
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 14
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 2160
  i32.store $0 offset=8
  i32.const 2160
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 2192
  i32.store $0 offset=4
  local.get $0
  i32.const 2192
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 15
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 2240
  i32.store $0 offset=8
  i32.const 2240
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 2272
  i32.store $0 offset=4
  local.get $0
  i32.const 2272
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 16
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 2304
  i32.store $0 offset=8
  i32.const 2304
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 2336
  i32.store $0 offset=4
  local.get $0
  i32.const 2336
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 17
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 2384
  i32.store $0 offset=8
  i32.const 2384
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 2416
  i32.store $0 offset=4
  local.get $0
  i32.const 2416
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 18
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 2512
  i32.store $0 offset=8
  i32.const 2512
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 2544
  i32.store $0 offset=4
  local.get $0
  i32.const 2544
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 19
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 2656
  i32.store $0 offset=8
  i32.const 2656
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 2688
  i32.store $0 offset=4
  local.get $0
  i32.const 2688
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 20
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 2736
  i32.store $0 offset=8
  i32.const 2736
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 2768
  i32.store $0 offset=4
  local.get $0
  i32.const 2768
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 21
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 2816
  i32.store $0 offset=8
  i32.const 2816
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 2848
  i32.store $0 offset=4
  local.get $0
  i32.const 2848
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 22
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 2928
  i32.store $0 offset=8
  i32.const 2928
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 2960
  i32.store $0 offset=4
  local.get $0
  i32.const 2960
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 24
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 3024
  i32.store $0 offset=8
  i32.const 3024
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 3072
  i32.store $0 offset=4
  local.get $0
  i32.const 3072
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 26
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 3152
  i32.store $0 offset=8
  i32.const 3152
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 3264
  i32.store $0 offset=4
  local.get $0
  i32.const 3264
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 28
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1056
  i32.store $0 offset=8
  i32.const 1056
  call $~lib/uri/encodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 1056
  i32.store $0 offset=4
  local.get $0
  i32.const 1056
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 39
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1760
  i32.store $0 offset=8
  i32.const 1760
  call $~lib/uri/encodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 1760
  i32.store $0 offset=4
  local.get $0
  i32.const 1760
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 40
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 3504
  i32.store $0 offset=8
  i32.const 3504
  call $~lib/uri/encodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 3504
  i32.store $0 offset=4
  local.get $0
  i32.const 3504
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 41
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1856
  i32.store $0 offset=8
  i32.const 1856
  call $~lib/uri/encodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 1856
  i32.store $0 offset=4
  local.get $0
  i32.const 1856
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 42
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 3552
  i32.store $0 offset=8
  i32.const 3552
  call $~lib/uri/encodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 3584
  i32.store $0 offset=4
  local.get $0
  i32.const 3584
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 46
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 2656
  i32.store $0 offset=8
  i32.const 2656
  call $~lib/uri/encodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 2688
  i32.store $0 offset=4
  local.get $0
  i32.const 2688
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 47
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 2736
  i32.store $0 offset=8
  i32.const 2736
  call $~lib/uri/encodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 2768
  i32.store $0 offset=4
  local.get $0
  i32.const 2768
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 48
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 2928
  i32.store $0 offset=8
  i32.const 2928
  call $~lib/uri/encodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 2960
  i32.store $0 offset=4
  local.get $0
  i32.const 2960
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 50
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 3152
  i32.store $0 offset=8
  i32.const 3152
  call $~lib/uri/encodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 3152
  i32.store $0 offset=4
  local.get $0
  i32.const 3152
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 51
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1056
  i32.store $0 offset=8
  i32.const 1056
  call $~lib/uri/decodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 1056
  i32.store $0 offset=4
  local.get $0
  i32.const 1056
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 62
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1760
  i32.store $0 offset=8
  i32.const 1760
  call $~lib/uri/decodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 1760
  i32.store $0 offset=4
  local.get $0
  i32.const 1760
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 63
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 3648
  i32.store $0 offset=8
  i32.const 3648
  call $~lib/uri/decodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 3680
  i32.store $0 offset=4
  local.get $0
  i32.const 3680
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 64
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 3712
  i32.store $0 offset=8
  i32.const 3712
  call $~lib/uri/decodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 3744
  i32.store $0 offset=4
  local.get $0
  i32.const 3744
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 65
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 3776
  i32.store $0 offset=8
  i32.const 3776
  call $~lib/uri/decodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 3776
  i32.store $0 offset=4
  local.get $0
  i32.const 3776
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 66
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 2736
  i32.store $0 offset=8
  i32.const 2736
  call $~lib/uri/decodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 2736
  i32.store $0 offset=4
  local.get $0
  i32.const 2736
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 67
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 3808
  i32.store $0 offset=8
  i32.const 3808
  call $~lib/uri/decodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 3888
  i32.store $0 offset=4
  local.get $0
  i32.const 3888
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 68
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 3936
  i32.store $0 offset=8
  i32.const 3936
  call $~lib/uri/decodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 3888
  i32.store $0 offset=4
  local.get $0
  i32.const 3888
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 69
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4016
  i32.store $0 offset=8
  i32.const 4016
  call $~lib/uri/decodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 3152
  i32.store $0 offset=4
  local.get $0
  i32.const 3152
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 70
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 2416
  i32.store $0 offset=8
  i32.const 2416
  call $~lib/uri/decodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 2384
  i32.store $0 offset=4
  local.get $0
  i32.const 2384
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 75
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1056
  i32.store $0 offset=8
  i32.const 1056
  call $~lib/uri/decodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 1056
  i32.store $0 offset=4
  local.get $0
  i32.const 1056
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 85
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1760
  i32.store $0 offset=8
  i32.const 1760
  call $~lib/uri/decodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 1760
  i32.store $0 offset=4
  local.get $0
  i32.const 1760
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 86
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 3648
  i32.store $0 offset=8
  i32.const 3648
  call $~lib/uri/decodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 3648
  i32.store $0 offset=4
  local.get $0
  i32.const 3648
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 87
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4144
  i32.store $0 offset=8
  i32.const 4144
  call $~lib/uri/decodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4176
  i32.store $0 offset=4
  local.get $0
  i32.const 4176
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 88
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4208
  i32.store $0 offset=8
  i32.const 4208
  call $~lib/uri/decodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4240
  i32.store $0 offset=4
  local.get $0
  i32.const 4240
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 89
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 3776
  i32.store $0 offset=8
  i32.const 3776
  call $~lib/uri/decodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 3776
  i32.store $0 offset=4
  local.get $0
  i32.const 3776
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 90
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 2736
  i32.store $0 offset=8
  i32.const 2736
  call $~lib/uri/decodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 2736
  i32.store $0 offset=4
  local.get $0
  i32.const 2736
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 91
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 3808
  i32.store $0 offset=8
  i32.const 3808
  call $~lib/uri/decodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 3808
  i32.store $0 offset=4
  local.get $0
  i32.const 3808
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 92
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 2416
  i32.store $0 offset=8
  i32.const 2416
  call $~lib/uri/decodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 2384
  i32.store $0 offset=4
  local.get $0
  i32.const 2384
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 93
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4272
  i32.store $0 offset=8
  i32.const 4272
  call $~lib/uri/decodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4272
  i32.store $0 offset=4
  local.get $0
  i32.const 4272
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 94
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4320
  i32.store $0 offset=8
  i32.const 4320
  call $~lib/uri/decodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4320
  i32.store $0 offset=4
  local.get $0
  i32.const 4320
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 95
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4016
  i32.store $0 offset=8
  i32.const 4016
  call $~lib/uri/decodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4016
  i32.store $0 offset=4
  local.get $0
  i32.const 4016
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 96
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 37124
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/rt/itcms/state
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    global.get $~lib/rt/itcms/state
    if
     call $~lib/rt/itcms/step
     drop
     br $while-continue|0
    end
   end
  end
  call $~lib/rt/itcms/step
  drop
  loop $while-continue|1
   global.get $~lib/rt/itcms/state
   if
    call $~lib/rt/itcms/step
    drop
    br $while-continue|1
   end
  end
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
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $byn-split-outlined-A$~lib/rt/itcms/__visit (param $0 i32)
  global.get $~lib/rt/itcms/white
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  i32.load $0 offset=4
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
)
