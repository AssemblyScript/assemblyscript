(module
 (type $none_=>_none (func))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
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
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 20748))
 (memory $0 1)
 (data (i32.const 1036) "\1c")
 (data (i32.const 1048) "\01")
 (data (i32.const 1069) "\01\01\01\01\01\00\00\00\00\01\01\00\00\01")
 (data (i32.const 1093) "\01\01\01\01\01\01\01")
 (data (i32.const 1126) "\01\01\01\01\00\01")
 (data (i32.const 1158) "\01\01\01")
 (data (i32.const 1164) "<")
 (data (i32.const 1176) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1228) "<")
 (data (i32.const 1240) "\01\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data (i32.const 1356) "<")
 (data (i32.const 1368) "\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 1420) ",")
 (data (i32.const 1432) "\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data (i32.const 1500) "<")
 (data (i32.const 1512) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1564) ",")
 (data (i32.const 1576) "\01\00\00\00\1a\00\00\00U\00R\00I\00 \00m\00a\00l\00f\00o\00r\00m\00e\00d")
 (data (i32.const 1612) "<")
 (data (i32.const 1624) "\01\00\00\00 \00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00u\00r\00i\00.\00t\00s")
 (data (i32.const 1676) "0123456789ABCDEF")
 (data (i32.const 1692) ",")
 (data (i32.const 1704) "\01\00\00\00\14\00\00\00s\00t\00d\00/\00u\00r\00i\00.\00t\00s")
 (data (i32.const 1740) "\1c")
 (data (i32.const 1752) "\01\00\00\00\02\00\00\00a")
 (data (i32.const 1772) "\1c")
 (data (i32.const 1784) "\01\00\00\00\04\00\00\00a\001")
 (data (i32.const 1804) "\1c")
 (data (i32.const 1816) "\01\00\00\00\06\00\00\00a\00b\00_")
 (data (i32.const 1836) "\\")
 (data (i32.const 1848) "\01\00\00\00H\00\00\00A\00B\00C\00D\00X\00Y\00Z\00a\00f\00g\00k\00l\00m\00n\00w\00y\00z\000\001\002\003\004\005\006\007\008\009\00-\00_\00.\00!\00~\00*\00\'\00(\00)")
 (data (i32.const 1932) "\1c")
 (data (i32.const 1944) "\01\00\00\00\02")
 (data (i32.const 1964) "\1c")
 (data (i32.const 1976) "\01\00\00\00\06\00\00\00%\000\000")
 (data (i32.const 1996) "\1c")
 (data (i32.const 2008) "\01\00\00\00\02\00\00\00+")
 (data (i32.const 2028) "\1c")
 (data (i32.const 2040) "\01\00\00\00\06\00\00\00%\002\00B")
 (data (i32.const 2060) "\1c")
 (data (i32.const 2072) "\01\00\00\00\06\00\00\00#\000\00=")
 (data (i32.const 2092) ",")
 (data (i32.const 2104) "\01\00\00\00\0e\00\00\00%\002\003\000\00%\003\00D")
 (data (i32.const 2140) "\1c")
 (data (i32.const 2152) "\01\00\00\00\n\00\00\00 \001\002\003\00 ")
 (data (i32.const 2172) ",")
 (data (i32.const 2184) "\01\00\00\00\12\00\00\00%\002\000\001\002\003\00%\002\000")
 (data (i32.const 2220) "\1c")
 (data (i32.const 2232) "\01\00\00\00\04\00\00\00?\00+")
 (data (i32.const 2252) "\1c")
 (data (i32.const 2264) "\01\00\00\00\0c\00\00\00%\003\00F\00%\002\00B")
 (data (i32.const 2284) "\1c")
 (data (i32.const 2296) "\01\00\00\00\n\00\00\00-\00?\001\00.\00-")
 (data (i32.const 2316) ",")
 (data (i32.const 2328) "\01\00\00\00\0e\00\00\00-\00%\003\00F\001\00.\00-")
 (data (i32.const 2364) "\1c")
 (data (i32.const 2376) "\01\00\00\00\0c\00\00\00<\d8\ed\dd<\d8\fa\dd<\d8N\df")
 (data (i32.const 2396) "\\")
 (data (i32.const 2408) "\01\00\00\00H\00\00\00%\00F\000\00%\009\00F\00%\008\007\00%\00A\00D\00%\00F\000\00%\009\00F\00%\008\007\00%\00B\00A\00%\00F\000\00%\009\00F\00%\008\00D\00%\008\00E")
 (data (i32.const 2492) "\1c")
 (data (i32.const 2504) "\01\00\00\00\n\00\00\00H\c5U\b1X\d58\c1\94\c6")
 (data (i32.const 2524) "l")
 (data (i32.const 2536) "\01\00\00\00Z\00\00\00%\00E\00C\00%\009\005\00%\008\008\00%\00E\00B\00%\008\005\00%\009\005\00%\00E\00D\00%\009\005\00%\009\008\00%\00E\00C\00%\008\004\00%\00B\008\00%\00E\00C\00%\009\00A\00%\009\004")
 (data (i32.const 2636) "\1c")
 (data (i32.const 2648) "\01\00\00\00\06\00\00\00~\00\7f\00\80")
 (data (i32.const 2668) ",")
 (data (i32.const 2680) "\01\00\00\00\14\00\00\00~\00%\007\00F\00%\00C\002\00%\008\000")
 (data (i32.const 2716) "\1c")
 (data (i32.const 2728) "\01\00\00\00\04\00\00\00\00\d8\ff\df")
 (data (i32.const 2748) ",")
 (data (i32.const 2760) "\01\00\00\00\18\00\00\00%\00F\000\00%\009\000\00%\008\00F\00%\00B\00F")
 (data (i32.const 2796) "\1c")
 (data (i32.const 2808) "\01\00\00\00\n\00\00\00{\da\01\dc-\00P\da\02\dc")
 (data (i32.const 2828) "L")
 (data (i32.const 2840) "\01\00\00\002\00\00\00%\00F\002\00%\00A\00E\00%\00B\000\00%\008\001\00-\00%\00F\002\00%\00A\004\00%\008\000\00%\008\002")
 (data (i32.const 2908) "\1c")
 (data (i32.const 2920) "\01\00\00\00\n\00\00\00\n\00\t\00\0b\00\0c\00\0d")
 (data (i32.const 2940) "<")
 (data (i32.const 2952) "\01\00\00\00\1e\00\00\00%\000\00A\00%\000\009\00%\000\00B\00%\000\00C\00%\000\00D")
 (data (i32.const 3004) ",")
 (data (i32.const 3016) "\01\00\00\00\14\00\00\00;\00/\00?\00:\00@\00&\00=\00+\00$\00,")
 (data (i32.const 3052) "L")
 (data (i32.const 3064) "\01\00\00\00<\00\00\00%\003\00B\00%\002\00F\00%\003\00F\00%\003\00A\00%\004\000\00%\002\006\00%\003\00D\00%\002\00B\00%\002\004\00%\002\00C")
 (data (i32.const 3132) "l")
 (data (i32.const 3144) "\01\00\00\00\\\00\00\00h\00t\00t\00p\00:\00/\00/\00e\00n\00.\00w\00i\00k\00i\00p\00e\00d\00i\00a\00.\00o\00r\00g\00/\00w\00i\00k\00i\00/\00U\00T\00F\00-\008\00#\00D\00e\00s\00c\00r\00i\00p\00t\00i\00o\00n")
 (data (i32.const 3244) "\8c")
 (data (i32.const 3256) "\01\00\00\00t\00\00\00h\00t\00t\00p\00%\003\00A\00%\002\00F\00%\002\00F\00e\00n\00.\00w\00i\00k\00i\00p\00e\00d\00i\00a\00.\00o\00r\00g\00%\002\00F\00w\00i\00k\00i\00%\002\00F\00U\00T\00F\00-\008\00%\002\003\00D\00e\00s\00c\00r\00i\00p\00t\00i\00o\00n")
 (data (i32.const 3389) "\01\00\00\01")
 (data (i32.const 3415) "\01\00\01")
 (data (i32.const 3446) "\01\01\01\01\00\01")
 (data (i32.const 3478) "\01\01\01")
 (data (i32.const 3484) ",")
 (data (i32.const 3496) "\01\00\00\00\16\00\00\00;\00,\00/\00?\00:\00@\00&\00=\00+\00$\00#")
 (data (i32.const 3532) "\1c")
 (data (i32.const 3544) "\01\00\00\00\02\00\00\00 ")
 (data (i32.const 3564) "\1c")
 (data (i32.const 3576) "\01\00\00\00\06\00\00\00%\002\000")
 (data (i32.const 3596) "\01\01\00\01\00\00\00\00\01\01\00\00\01")
 (data (i32.const 3619) "\01\01\00\01\00\01\01")
 (data (i32.const 3628) "\1c")
 (data (i32.const 3640) "\01\00\00\00\06\00\00\00%\002\006")
 (data (i32.const 3660) "\1c")
 (data (i32.const 3672) "\01\00\00\00\02\00\00\00&")
 (data (i32.const 3692) "\1c")
 (data (i32.const 3704) "\01\00\00\00\06\00\00\00%\005\00E")
 (data (i32.const 3724) "\1c")
 (data (i32.const 3736) "\01\00\00\00\02\00\00\00^")
 (data (i32.const 3756) "\1c")
 (data (i32.const 3768) "\01\00\00\00\02\00\00\00\00\d8")
 (data (i32.const 3788) "L")
 (data (i32.const 3800) "\01\00\00\00<\00\00\00%\003\00b\00%\002\00f\00%\003\00f\00%\003\00a\00%\004\000\00%\003\00d\00%\002\00b\00%\002\004\00%\002\00c\00%\002\003")
 (data (i32.const 3868) ",")
 (data (i32.const 3880) "\01\00\00\00\14\00\00\00;\00/\00?\00:\00@\00=\00+\00$\00,\00#")
 (data (i32.const 3916) "L")
 (data (i32.const 3928) "\01\00\00\00<\00\00\00%\003\00B\00%\002\00F\00%\003\00F\00%\003\00A\00%\004\000\00%\003\00D\00%\002\00B\00%\002\004\00%\002\00C\00%\002\003")
 (data (i32.const 3996) "|")
 (data (i32.const 4008) "\01\00\00\00h\00\00\00h\00t\00t\00p\00:\00%\002\00F\00%\002\00F\00e\00n\00.\00w\00i\00k\00i\00p\00e\00d\00i\00a\00.\00o\00r\00g\00/\00w\00i\00k\00i\00/\00U\00T\00F\00-\008\00%\002\003\00D\00e\00s\00c\00r\00i\00p\00t\00i\00o\00n")
 (data (i32.const 4124) "\1c")
 (data (i32.const 4136) "\01\00\00\00\0c\00\00\00%\00D\00F\00%\008\000")
 (data (i32.const 4156) "\1c")
 (data (i32.const 4168) "\01\00\00\00\02\00\00\00\c0\07")
 (data (i32.const 4188) "\1c")
 (data (i32.const 4200) "\01\00\00\00\0c\00\00\00%\00C\002\00%\00B\00F")
 (data (i32.const 4220) "\1c")
 (data (i32.const 4232) "\01\00\00\00\02\00\00\00\bf")
 (data (i32.const 4252) ",")
 (data (i32.const 4264) "\01\00\00\00\0e\00\00\00\f7\00\b8\00W\00\ef\00\0f\00\f4\00V")
 (data (i32.const 4300) "\1c")
 (data (i32.const 4312) "\01\00\00\00\06\00\00\00\f4\00\b8\00\ef")
 (data (i32.const 4336) "\03\00\00\00 \00\00\00\00\00\00\00 ")
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
     i32.const 1248
     i32.const 159
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
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
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
   local.get $2
   i32.const 1073741820
   local.get $2
   i32.const 1073741820
   i32.lt_u
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
  local.get $2
  local.get $3
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=96
  local.get $1
  i32.eq
  if
   local.get $2
   local.get $3
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   local.get $0
   i32.add
   local.get $5
   i32.store offset=96
   local.get $5
   i32.eqz
   if
    local.get $3
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    local.tee $1
    i32.load offset=4
    i32.const -2
    local.get $2
    i32.rotl
    i32.and
    local.set $2
    local.get $1
    local.get $2
    i32.store offset=4
    local.get $2
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const -2
     local.get $3
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
   i32.const 1520
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
   i32.const 1520
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.const 4
  i32.add
  i32.add
  local.get $4
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
   local.get $2
   i32.const 1073741820
   local.get $2
   i32.const 1073741820
   i32.lt_u
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
  local.get $2
  local.get $5
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  local.get $0
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
  local.get $2
  local.get $5
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  local.get $0
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
  local.get $5
  i32.const 2
  i32.shl
  local.get $0
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
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $2
  i32.gt_u
  if
   i32.const 0
   i32.const 1520
   i32.const 377
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
  local.tee $4
  if
   local.get $1
   local.get $4
   i32.const 4
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 1520
    i32.const 384
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $4
   local.get $1
   i32.const 16
   i32.sub
   i32.eq
   if
    local.get $4
    i32.load
    local.set $3
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
   end
  else
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 1520
    i32.const 397
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  i32.const -16
  i32.and
  local.get $1
  i32.sub
  local.tee $2
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $3
  i32.const 2
  i32.and
  local.get $2
  i32.const 8
  i32.sub
  local.tee $2
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
  local.get $2
  local.get $1
  i32.const 4
  i32.add
  i32.add
  local.tee $2
  i32.const 2
  i32.store
  local.get $0
  local.get $2
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  memory.size
  local.tee $0
  i32.const 0
  i32.le_s
  if (result i32)
   i32.const 1
   local.get $0
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
  i32.const 20752
  i32.const 0
  i32.store
  i32.const 22320
  i32.const 0
  i32.store
  loop $for-loop|0
   local.get $1
   i32.const 23
   i32.lt_u
   if
    local.get $1
    i32.const 2
    i32.shl
    i32.const 20752
    i32.add
    i32.const 0
    i32.store offset=4
    i32.const 0
    local.set $0
    loop $for-loop|1
     local.get $0
     i32.const 16
     i32.lt_u
     if
      local.get $0
      local.get $1
      i32.const 4
      i32.shl
      i32.add
      i32.const 2
      i32.shl
      i32.const 20752
      i32.add
      i32.const 0
      i32.store offset=96
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|1
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  i32.const 20752
  i32.const 22324
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 20752
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
     global.get $~lib/rt/itcms/toSpace
     local.get $0
     i32.ne
     if
      local.get $0
      global.set $~lib/rt/itcms/iter
      local.get $0
      i32.load offset=4
      i32.const 3
      i32.and
      local.get $1
      i32.ne
      if
       local.get $0
       local.get $1
       local.get $0
       i32.load offset=4
       i32.const -4
       i32.and
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
      i32.const 20748
      i32.lt_u
      if
       local.get $0
       i32.load
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
     i32.load offset=4
     i32.const -4
     i32.and
     local.set $0
     loop $while-continue|2
      global.get $~lib/rt/itcms/toSpace
      local.get $0
      i32.ne
      if
       local.get $0
       i32.load offset=4
       i32.const 3
       i32.and
       local.get $1
       i32.ne
       if
        local.get $0
        local.get $1
        local.get $0
        i32.load offset=4
        i32.const -4
        i32.and
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
     i32.const 1248
     i32.const 228
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 20748
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
     i32.const 20748
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
       i32.const 1520
       i32.const 559
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
   local.tee $0
   local.get $0
   i32.store offset=4
   local.get $0
   local.get $0
   i32.store offset=8
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
   i32.const 1
   i32.const 27
   local.get $1
   i32.clz
   i32.sub
   i32.shl
   local.get $1
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
   i32.const 330
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   local.get $0
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
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1520
     i32.const 343
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=96
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
   i32.const 260
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
  local.set $5
  local.get $0
  i32.const 16
  i32.add
  local.tee $2
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1184
   i32.const 1520
   i32.const 458
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
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
  local.tee $3
  call $~lib/rt/tlsf/searchBlock
  local.tee $2
  i32.eqz
  if
   memory.size
   local.tee $2
   i32.const 4
   local.get $5
   i32.load offset=1568
   local.get $2
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   i32.ne
   i32.shl
   i32.const 1
   i32.const 27
   local.get $3
   i32.clz
   i32.sub
   i32.shl
   i32.const 1
   i32.sub
   local.get $3
   i32.add
   local.get $3
   local.get $3
   i32.const 536870910
   i32.lt_u
   select
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $4
   local.get $2
   local.get $4
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $4
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $5
   local.get $2
   i32.const 16
   i32.shl
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   local.get $5
   local.get $3
   call $~lib/rt/tlsf/searchBlock
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 1520
    i32.const 496
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  i32.load
  i32.const -4
  i32.and
  local.get $3
  i32.lt_u
  if
   i32.const 0
   i32.const 1520
   i32.const 498
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  local.get $2
  call $~lib/rt/tlsf/removeBlock
  local.get $2
  i32.load
  local.set $6
  local.get $3
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1520
   i32.const 357
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.const -4
  i32.and
  local.get $3
  i32.sub
  local.tee $4
  i32.const 16
  i32.ge_u
  if
   local.get $2
   local.get $6
   i32.const 2
   i32.and
   local.get $3
   i32.or
   i32.store
   local.get $3
   local.get $2
   i32.const 4
   i32.add
   i32.add
   local.tee $3
   local.get $4
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $5
   local.get $3
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $2
   local.get $6
   i32.const -2
   i32.and
   i32.store
   local.get $2
   i32.const 4
   i32.add
   local.get $2
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   local.get $3
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
  local.get $2
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
  global.get $~lib/rt/itcms/white
  local.get $1
  i32.or
  i32.store offset=4
  local.get $2
  local.get $3
  i32.store offset=8
  local.get $3
  local.get $3
  i32.load offset=4
  i32.const 3
  i32.and
  local.get $2
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
  local.tee $2
  local.set $1
  block $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.eqz
   br_if $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   local.tee $3
   i32.const 1
   i32.sub
   i32.const 0
   i32.store8
   local.get $0
   i32.const 2
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.const 0
   i32.store8 offset=1
   local.get $1
   i32.const 0
   i32.store8 offset=2
   local.get $3
   i32.const 2
   i32.sub
   i32.const 0
   i32.store8
   local.get $3
   i32.const 3
   i32.sub
   i32.const 0
   i32.store8
   local.get $0
   i32.const 6
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.const 0
   i32.store8 offset=3
   local.get $3
   i32.const 4
   i32.sub
   i32.const 0
   i32.store8
   local.get $0
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.const 0
   local.get $1
   i32.sub
   i32.const 3
   i32.and
   local.tee $3
   i32.add
   local.tee $1
   i32.const 0
   i32.store
   local.get $1
   local.get $0
   local.get $3
   i32.sub
   i32.const -4
   i32.and
   local.tee $0
   i32.add
   local.tee $3
   i32.const 4
   i32.sub
   i32.const 0
   i32.store
   local.get $0
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.const 0
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $3
   i32.const 12
   i32.sub
   i32.const 0
   i32.store
   local.get $3
   i32.const 8
   i32.sub
   i32.const 0
   i32.store
   local.get $0
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.const 0
   i32.store offset=12
   local.get $1
   i32.const 0
   i32.store offset=16
   local.get $1
   i32.const 0
   i32.store offset=20
   local.get $1
   i32.const 0
   i32.store offset=24
   local.get $3
   i32.const 28
   i32.sub
   i32.const 0
   i32.store
   local.get $3
   i32.const 24
   i32.sub
   i32.const 0
   i32.store
   local.get $3
   i32.const 20
   i32.sub
   i32.const 0
   i32.store
   local.get $3
   i32.const 16
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   local.get $1
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $3
   i32.add
   local.set $1
   local.get $0
   local.get $3
   i32.sub
   local.set $0
   loop $while-continue|0
    local.get $0
    i32.const 32
    i32.ge_u
    if
     local.get $1
     i64.const 0
     i64.store
     local.get $1
     i64.const 0
     i64.store offset=8
     local.get $1
     i64.const 0
     i64.store offset=16
     local.get $1
     i64.const 0
     i64.store offset=24
     local.get $0
     i32.const 32
     i32.sub
     local.set $0
     local.get $1
     i32.const 32
     i32.add
     local.set $1
     br $while-continue|0
    end
   end
  end
  local.get $2
 )
 (func $~lib/util/memory/memcpy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  loop $while-continue|0
   local.get $1
   i32.const 3
   i32.and
   i32.const 0
   local.get $2
   select
   if
    local.get $0
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $4
    i32.const 1
    i32.add
    local.set $1
    local.get $3
    local.get $4
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.const 3
  i32.and
  i32.eqz
  if
   loop $while-continue|1
    local.get $2
    i32.const 16
    i32.ge_u
    if
     local.get $0
     local.get $1
     i32.load
     i32.store
     local.get $0
     local.get $1
     i32.load offset=4
     i32.store offset=4
     local.get $0
     local.get $1
     i32.load offset=8
     i32.store offset=8
     local.get $0
     local.get $1
     i32.load offset=12
     i32.store offset=12
     local.get $1
     i32.const 16
     i32.add
     local.set $1
     local.get $0
     i32.const 16
     i32.add
     local.set $0
     local.get $2
     i32.const 16
     i32.sub
     local.set $2
     br $while-continue|1
    end
   end
   local.get $2
   i32.const 8
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    local.get $1
    i32.load offset=4
    i32.store offset=4
    local.get $1
    i32.const 8
    i32.add
    local.set $1
    local.get $0
    i32.const 8
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    local.get $0
    i32.const 4
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 1
   i32.and
   if
    local.get $0
    local.get $1
    i32.load8_u
    i32.store8
   end
   return
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       local.get $0
       i32.const 3
       i32.and
       i32.const 1
       i32.sub
       br_table $case0|2 $case1|2 $case2|2 $break|2
      end
      local.get $1
      i32.load
      local.set $5
      local.get $0
      local.get $1
      i32.load8_u
      i32.store8
      local.get $0
      local.get $1
      i32.load8_u offset=1
      i32.store8 offset=1
      local.get $0
      i32.const 2
      i32.add
      local.tee $3
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      i32.const 2
      i32.add
      local.tee $4
      i32.const 1
      i32.add
      local.set $1
      local.get $3
      local.get $4
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      loop $while-continue|3
       local.get $2
       i32.const 17
       i32.ge_u
       if
        local.get $0
        local.get $1
        i32.load offset=1
        local.tee $3
        i32.const 8
        i32.shl
        local.get $5
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        local.get $0
        local.get $1
        i32.load offset=5
        local.tee $4
        i32.const 8
        i32.shl
        local.get $3
        i32.const 24
        i32.shr_u
        i32.or
        i32.store offset=4
        local.get $0
        local.get $1
        i32.load offset=9
        local.tee $3
        i32.const 8
        i32.shl
        local.get $4
        i32.const 24
        i32.shr_u
        i32.or
        i32.store offset=8
        local.get $0
        local.get $1
        i32.load offset=13
        local.tee $5
        i32.const 8
        i32.shl
        local.get $3
        i32.const 24
        i32.shr_u
        i32.or
        i32.store offset=12
        local.get $1
        i32.const 16
        i32.add
        local.set $1
        local.get $0
        i32.const 16
        i32.add
        local.set $0
        local.get $2
        i32.const 16
        i32.sub
        local.set $2
        br $while-continue|3
       end
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $5
     local.get $0
     local.get $1
     i32.load8_u
     i32.store8
     local.get $0
     local.tee $3
     i32.const 2
     i32.add
     local.set $0
     local.get $1
     local.tee $4
     i32.const 2
     i32.add
     local.set $1
     local.get $3
     local.get $4
     i32.load8_u offset=1
     i32.store8 offset=1
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     loop $while-continue|4
      local.get $2
      i32.const 18
      i32.ge_u
      if
       local.get $0
       local.get $1
       i32.load offset=2
       local.tee $3
       i32.const 16
       i32.shl
       local.get $5
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       local.get $0
       local.get $1
       i32.load offset=6
       local.tee $4
       i32.const 16
       i32.shl
       local.get $3
       i32.const 16
       i32.shr_u
       i32.or
       i32.store offset=4
       local.get $0
       local.get $1
       i32.load offset=10
       local.tee $3
       i32.const 16
       i32.shl
       local.get $4
       i32.const 16
       i32.shr_u
       i32.or
       i32.store offset=8
       local.get $0
       local.get $1
       i32.load offset=14
       local.tee $5
       i32.const 16
       i32.shl
       local.get $3
       i32.const 16
       i32.shr_u
       i32.or
       i32.store offset=12
       local.get $1
       i32.const 16
       i32.add
       local.set $1
       local.get $0
       i32.const 16
       i32.add
       local.set $0
       local.get $2
       i32.const 16
       i32.sub
       local.set $2
       br $while-continue|4
      end
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $5
    local.get $0
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $4
    i32.const 1
    i32.add
    local.set $1
    local.get $3
    local.get $4
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    loop $while-continue|5
     local.get $2
     i32.const 19
     i32.ge_u
     if
      local.get $0
      local.get $1
      i32.load offset=3
      local.tee $3
      i32.const 24
      i32.shl
      local.get $5
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      local.get $0
      local.get $1
      i32.load offset=7
      local.tee $4
      i32.const 24
      i32.shl
      local.get $3
      i32.const 8
      i32.shr_u
      i32.or
      i32.store offset=4
      local.get $0
      local.get $1
      i32.load offset=11
      local.tee $3
      i32.const 24
      i32.shl
      local.get $4
      i32.const 8
      i32.shr_u
      i32.or
      i32.store offset=8
      local.get $0
      local.get $1
      i32.load offset=15
      local.tee $5
      i32.const 24
      i32.shl
      local.get $3
      i32.const 8
      i32.shr_u
      i32.or
      i32.store offset=12
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      local.get $0
      i32.const 16
      i32.add
      local.set $0
      local.get $2
      i32.const 16
      i32.sub
      local.set $2
      br $while-continue|5
     end
    end
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $3
   i32.load8_u
   i32.store8
   local.get $3
   i32.const 2
   i32.add
   local.set $1
   local.get $0
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.set $0
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $3
   i32.load8_u
   i32.store8
   local.get $3
   i32.const 2
   i32.add
   local.set $1
   local.get $0
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.set $0
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $3
   i32.load8_u
   i32.store8
   local.get $3
   i32.const 2
   i32.add
   local.set $1
   local.get $0
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.set $0
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $3
   i32.const 2
   i32.add
   local.set $0
   local.get $1
   local.tee $4
   i32.const 2
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u offset=1
   i32.store8 offset=1
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $4
   local.get $0
   local.get $1
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
   local.get $1
   local.get $0
   i32.sub
   local.get $4
   i32.sub
   i32.const 0
   local.get $4
   i32.const 1
   i32.shl
   i32.sub
   i32.le_u
   if
    local.get $0
    local.get $1
    local.get $4
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.set $4
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $3
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       local.get $3
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $4
       i32.const 8
       i32.sub
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $4
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $3
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $3
      i32.load8_u
      i32.store8
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
      br $while-continue|2
     end
    end
   else
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|3
      local.get $0
      local.get $4
      i32.add
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $4
       i32.const 8
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $4
     if
      local.get $4
      i32.const 1
      i32.sub
      local.tee $4
      local.get $0
      i32.add
      local.get $1
      local.get $4
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/rt/itcms/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 20
  i32.sub
  local.tee $3
  i32.load
  i32.const -4
  i32.and
  i32.const 16
  i32.sub
  local.get $1
  i32.ge_u
  if
   local.get $3
   local.get $1
   i32.store offset=16
   local.get $0
   return
  end
  local.get $1
  local.get $3
  i32.load offset=12
  call $~lib/rt/itcms/__new
  local.tee $2
  local.get $0
  local.get $1
  local.get $3
  i32.load offset=16
  local.tee $0
  local.get $0
  local.get $1
  i32.gt_u
  select
  call $~lib/memory/memory.copy
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
  i32.const 1
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
       local.get $4
       i32.const 1
       i32.shl
       local.get $0
       i32.add
       i32.load16_u
       local.tee $6
       i32.const 33
       i32.sub
       i32.const 94
       i32.ge_u
       br_if $do-break|1
       local.get $6
       i32.const 33
       i32.sub
       local.get $2
       i32.add
       i32.load8_u
       br_if $do-break|1
       local.get $1
       local.get $4
       i32.const 1
       i32.add
       local.tee $4
       i32.gt_u
       br_if $do-loop|1
      end
     end
     local.get $4
     local.get $5
     i32.gt_u
     if
      local.get $8
      local.get $7
      local.get $4
      local.get $5
      i32.sub
      i32.const 1
      i32.shl
      local.tee $9
      i32.add
      i32.lt_u
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
      local.get $5
      i32.const 1
      i32.shl
      local.get $0
      i32.add
      local.get $9
      call $~lib/memory/memory.copy
      local.get $7
      local.get $9
      i32.add
      local.set $7
      local.get $1
      local.get $4
      i32.le_u
      br_if $while-break|0
     end
     local.get $8
     i32.const 6
     i32.const 24
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
      if (result i32)
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
       local.get $4
       i32.const 1
       i32.add
       local.tee $4
       i32.const 1
       i32.shl
       local.get $0
       i32.add
       i32.load16_u
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
      else
       local.get $6
      end
      local.set $6
     end
     local.get $6
     i32.const 128
     i32.lt_u
     select
     local.get $7
     i32.add
     local.tee $5
     i32.lt_u
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
      i32.store16
      local.get $5
      local.get $6
      i32.const 4
      i32.shr_u
      i32.const 15
      i32.and
      i32.const 1676
      i32.add
      i32.load8_u
      local.get $6
      i32.const 15
      i32.and
      i32.const 1676
      i32.add
      i32.load8_u
      i32.const 16
      i32.shl
      i32.or
      i32.store offset=2
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
       i32.store16
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
       i32.load8_u
       local.get $5
       i32.const 15
       i32.and
       i32.const 1676
       i32.add
       i32.load8_u
       i32.const 16
       i32.shl
       i32.or
       i32.store offset=2
      else
       local.get $6
       i32.const 65536
       i32.lt_u
       if (result i32)
        local.get $3
        local.get $7
        i32.add
        local.tee $5
        i32.const 37
        i32.store16
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
        i32.load8_u
        local.get $5
        i32.const 15
        i32.and
        i32.const 1676
        i32.add
        i32.load8_u
        i32.const 16
        i32.shl
        i32.or
        i32.store offset=2
        local.get $7
        i32.const 6
        i32.add
       else
        local.get $3
        local.get $7
        i32.add
        local.tee $5
        i32.const 37
        i32.store16
        local.get $5
        local.get $6
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        local.tee $5
        i32.const 4
        i32.shr_u
        i32.const 15
        i32.and
        i32.const 1676
        i32.add
        i32.load8_u
        local.get $5
        i32.const 15
        i32.and
        i32.const 1676
        i32.add
        i32.load8_u
        i32.const 16
        i32.shl
        i32.or
        i32.store offset=2
        local.get $3
        local.get $7
        i32.const 6
        i32.add
        local.tee $5
        i32.add
        local.tee $7
        i32.const 37
        i32.store16
        local.get $7
        local.get $6
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        local.tee $7
        i32.const 4
        i32.shr_u
        i32.const 1676
        i32.add
        i32.load8_u
        local.get $7
        i32.const 15
        i32.and
        i32.const 1676
        i32.add
        i32.load8_u
        i32.const 16
        i32.shl
        i32.or
        i32.store offset=2
        local.get $5
        i32.const 6
        i32.add
       end
       local.tee $7
       local.get $3
       i32.add
       local.tee $5
       i32.const 37
       i32.store16
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
       i32.load8_u
       local.get $5
       i32.const 15
       i32.and
       i32.const 1676
       i32.add
       i32.load8_u
       i32.const 16
       i32.shl
       i32.or
       i32.store offset=2
      end
      local.get $7
      i32.const 6
      i32.add
      local.tee $7
      local.get $3
      i32.add
      local.tee $5
      i32.const 37
      i32.store16
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
      i32.load8_u
      local.get $5
      i32.const 15
      i32.and
      i32.const 1676
      i32.add
      i32.load8_u
      i32.const 16
      i32.shl
      i32.or
      i32.store offset=2
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
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  local.get $1
  i32.const 0
  local.get $0
  select
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.tee $3
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.ne
  if
   i32.const 0
   return
  end
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
    i64.load
    local.get $1
    i64.load
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
     i32.load16_u
     local.tee $5
     local.get $1
     i32.load16_u
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
  local.get $3
  i32.eqz
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
  i32.const 1
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
       local.get $3
       i32.const 1
       i32.shl
       local.get $0
       i32.add
       i32.load16_u
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
      local.get $4
      i32.const 1
      i32.shl
      local.get $0
      i32.add
      local.get $3
      local.get $4
      i32.sub
      i32.const 1
      i32.shl
      local.tee $4
      call $~lib/memory/memory.copy
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
     local.get $1
     local.get $3
     i32.const 2
     i32.add
     i32.le_u
     i32.or
     if (result i32)
      i32.const 1
     else
      local.get $0
      local.get $3
      i32.const 1
      i32.add
      i32.const 1
      i32.shl
      i32.add
      local.tee $4
      i32.load16_u
      local.set $5
      local.get $4
      i32.load16_u offset=2
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
        i32.load8_u
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
      i32.const 128
      local.get $4
      i32.shr_u
      i32.const 1
      i32.sub
      i32.const 0
      local.get $4
      select
      local.get $5
      i32.and
      local.set $5
      loop $while-continue|2
       local.get $4
       i32.const 1
       i32.sub
       local.tee $4
       if
        block $while-break|2
         local.get $1
         local.get $3
         i32.const 2
         i32.add
         i32.le_u
         if (result i32)
          i32.const 1
         else
          local.get $3
          i32.const 1
          i32.shl
          local.get $0
          i32.add
          i32.load16_u
          i32.const 37
          i32.ne
         end
         if (result i32)
          i32.const 1
         else
          local.get $0
          local.get $3
          i32.const 1
          i32.add
          i32.const 1
          i32.shl
          i32.add
          local.tee $10
          i32.load16_u
          local.set $7
          local.get $10
          i32.load16_u offset=2
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
       i32.store
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
     i32.store16
     local.get $6
     i32.const 2
     i32.add
     local.set $6
     br $while-continue|0
    end
   end
  end
  local.get $6
  local.get $1
  i32.const 1
  i32.shl
  i32.gt_u
  if
   i32.const 0
   i32.const 1632
   i32.const 216
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  local.get $1
  i32.const 1
  i32.shl
  i32.lt_u
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
      local.get $0
      i32.const 8
      i32.sub
      i32.load
      br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $invalid
     end
     return
    end
    return
   end
   local.get $0
   i32.load
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
 (func $start:std/uri
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4364
  i32.lt_s
  if
   i32.const 20768
   i32.const 20816
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store
  local.get $0
  i32.const 0
  i32.store offset=8
  memory.size
  i32.const 16
  i32.shl
  i32.const 20748
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 1300
  i32.const 1296
  i32.store
  i32.const 1304
  i32.const 1296
  i32.store
  i32.const 1296
  global.set $~lib/rt/itcms/pinSpace
  i32.const 1332
  i32.const 1328
  i32.store
  i32.const 1336
  i32.const 1328
  i32.store
  i32.const 1328
  global.set $~lib/rt/itcms/toSpace
  i32.const 1476
  i32.const 1472
  i32.store
  i32.const 1480
  i32.const 1472
  i32.store
  i32.const 1472
  global.set $~lib/rt/itcms/fromSpace
  local.get $0
  i32.const 1056
  i32.store offset=8
  i32.const 1056
  i32.const 1052
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 1068
  call $~lib/util/uri/encode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1056
  i32.store offset=4
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
  i32.store offset=8
  i32.const 1760
  i32.const 1756
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 1068
  call $~lib/util/uri/encode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1760
  i32.store offset=4
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
  i32.store offset=8
  i32.const 1792
  i32.const 1788
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 1068
  call $~lib/util/uri/encode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1792
  i32.store offset=4
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
  i32.store offset=8
  i32.const 1824
  i32.const 1820
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 1068
  call $~lib/util/uri/encode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1824
  i32.store offset=4
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
  i32.store offset=8
  i32.const 1856
  i32.const 1852
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 1068
  call $~lib/util/uri/encode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1856
  i32.store offset=4
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
  i32.store offset=8
  i32.const 1952
  i32.const 1948
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 1068
  call $~lib/util/uri/encode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1984
  i32.store offset=4
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
  i32.store offset=8
  i32.const 2016
  i32.const 2012
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 1068
  call $~lib/util/uri/encode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 2048
  i32.store offset=4
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
  i32.store
  i32.const 2080
  i32.const 2076
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 1068
  call $~lib/util/uri/encode
  i32.const 2112
  i32.eq
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
  i32.store
  i32.const 2160
  i32.const 2156
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 1068
  call $~lib/util/uri/encode
  i32.const 2192
  i32.eq
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
  i32.store offset=8
  i32.const 2240
  i32.const 2236
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 1068
  call $~lib/util/uri/encode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 2272
  i32.store offset=4
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
  i32.store offset=8
  i32.const 2304
  i32.const 2300
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 1068
  call $~lib/util/uri/encode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 2336
  i32.store offset=4
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
  i32.store offset=8
  i32.const 2384
  i32.const 2380
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 1068
  call $~lib/util/uri/encode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 2416
  i32.store offset=4
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
  i32.store offset=8
  i32.const 2512
  i32.const 2508
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 1068
  call $~lib/util/uri/encode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 2544
  i32.store offset=4
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
  i32.store offset=8
  i32.const 2656
  i32.const 2652
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 1068
  call $~lib/util/uri/encode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 2688
  i32.store offset=4
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
  i32.store offset=8
  i32.const 2736
  i32.const 2732
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 1068
  call $~lib/util/uri/encode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 2768
  i32.store offset=4
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
  i32.store offset=8
  i32.const 2816
  i32.const 2812
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 1068
  call $~lib/util/uri/encode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 2848
  i32.store offset=4
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
  i32.store offset=8
  i32.const 2928
  i32.const 2924
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 1068
  call $~lib/util/uri/encode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 2960
  i32.store offset=4
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
  i32.store offset=8
  i32.const 3024
  i32.const 3020
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 1068
  call $~lib/util/uri/encode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 3072
  i32.store offset=4
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
  i32.store offset=8
  i32.const 3152
  i32.const 3148
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 1068
  call $~lib/util/uri/encode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 3264
  i32.store offset=4
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
  i32.store offset=8
  i32.const 1056
  i32.const 1052
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 3388
  call $~lib/util/uri/encode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1056
  i32.store offset=4
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
  i32.store offset=8
  i32.const 1760
  i32.const 1756
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 3388
  call $~lib/util/uri/encode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1760
  i32.store offset=4
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
  i32.store offset=8
  i32.const 3504
  i32.const 3500
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 3388
  call $~lib/util/uri/encode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 3504
  i32.store offset=4
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
  i32.store offset=8
  i32.const 1856
  i32.const 1852
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 3388
  call $~lib/util/uri/encode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1856
  i32.store offset=4
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
  i32.store offset=8
  i32.const 3552
  i32.const 3548
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 3388
  call $~lib/util/uri/encode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 3584
  i32.store offset=4
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
  i32.store offset=8
  i32.const 2656
  i32.const 2652
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 3388
  call $~lib/util/uri/encode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 2688
  i32.store offset=4
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
  i32.store offset=8
  i32.const 2736
  i32.const 2732
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 3388
  call $~lib/util/uri/encode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 2768
  i32.store offset=4
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
  i32.store offset=8
  i32.const 2928
  i32.const 2924
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 3388
  call $~lib/util/uri/encode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 2960
  i32.store offset=4
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
  i32.store offset=8
  i32.const 3152
  i32.const 3148
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 3388
  call $~lib/util/uri/encode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 3152
  i32.store offset=4
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
  i32.store offset=8
  i32.const 1056
  i32.const 1052
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 1
  call $~lib/util/uri/decode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1056
  i32.store offset=4
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
  i32.store offset=8
  i32.const 1760
  i32.const 1756
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 1
  call $~lib/util/uri/decode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1760
  i32.store offset=4
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
  i32.store offset=8
  i32.const 3648
  i32.const 3644
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 1
  call $~lib/util/uri/decode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 3680
  i32.store offset=4
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
  i32.store offset=8
  i32.const 3712
  i32.const 3708
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 1
  call $~lib/util/uri/decode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 3744
  i32.store offset=4
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
  i32.store offset=8
  i32.const 3776
  i32.const 3772
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 1
  call $~lib/util/uri/decode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 3776
  i32.store offset=4
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
  i32.store offset=8
  i32.const 2736
  i32.const 2732
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 1
  call $~lib/util/uri/decode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 2736
  i32.store offset=4
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
  i32.store offset=8
  i32.const 3808
  i32.const 3804
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 1
  call $~lib/util/uri/decode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 3888
  i32.store offset=4
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
  i32.store offset=8
  i32.const 3936
  i32.const 3932
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 1
  call $~lib/util/uri/decode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 3888
  i32.store offset=4
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
  i32.store offset=8
  i32.const 4016
  i32.const 4012
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 1
  call $~lib/util/uri/decode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 3152
  i32.store offset=4
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
  i32.store offset=8
  i32.const 2416
  i32.const 2412
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 1
  call $~lib/util/uri/decode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 2384
  i32.store offset=4
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
  i32.store offset=8
  i32.const 1056
  i32.const 1052
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 0
  call $~lib/util/uri/decode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1056
  i32.store offset=4
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
  i32.store offset=8
  i32.const 1760
  i32.const 1756
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 0
  call $~lib/util/uri/decode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1760
  i32.store offset=4
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
  i32.store offset=8
  i32.const 3648
  i32.const 3644
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 0
  call $~lib/util/uri/decode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 3648
  i32.store offset=4
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
  i32.store offset=8
  i32.const 4144
  i32.const 4140
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 0
  call $~lib/util/uri/decode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4176
  i32.store offset=4
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
  i32.store offset=8
  i32.const 4208
  i32.const 4204
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 0
  call $~lib/util/uri/decode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4240
  i32.store offset=4
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
  i32.store offset=8
  i32.const 3776
  i32.const 3772
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 0
  call $~lib/util/uri/decode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 3776
  i32.store offset=4
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
  i32.store offset=8
  i32.const 2736
  i32.const 2732
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 0
  call $~lib/util/uri/decode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 2736
  i32.store offset=4
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
  i32.store offset=8
  i32.const 3808
  i32.const 3804
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 0
  call $~lib/util/uri/decode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 3808
  i32.store offset=4
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
  i32.store offset=8
  i32.const 2416
  i32.const 2412
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 0
  call $~lib/util/uri/decode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 2384
  i32.store offset=4
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
  i32.store offset=8
  i32.const 4272
  i32.const 4268
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 0
  call $~lib/util/uri/decode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4272
  i32.store offset=4
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
  i32.store offset=8
  i32.const 4320
  i32.const 4316
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 0
  call $~lib/util/uri/decode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4320
  i32.store offset=4
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
  i32.store offset=8
  i32.const 4016
  i32.const 4012
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 0
  call $~lib/util/uri/decode
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4016
  i32.store offset=4
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
  i32.const 20748
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
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
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
   global.get $~lib/rt/itcms/iter
   local.get $0
   i32.eq
   if
    local.get $0
    i32.load offset=8
    local.tee $1
    i32.eqz
    if
     i32.const 0
     i32.const 1248
     i32.const 147
     i32.const 30
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    global.set $~lib/rt/itcms/iter
   end
   block $__inlined_func$~lib/rt/itcms/Object#unlink
    local.get $0
    i32.load offset=4
    i32.const -4
    i32.and
    local.tee $1
    i32.eqz
    if
     i32.const 0
     local.get $0
     i32.const 20748
     i32.lt_u
     local.get $0
     i32.load offset=8
     select
     i32.eqz
     if
      i32.const 0
      i32.const 1248
      i32.const 127
      i32.const 18
      call $~lib/builtins/abort
      unreachable
     end
     br $__inlined_func$~lib/rt/itcms/Object#unlink
    end
    local.get $0
    i32.load offset=8
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1248
     i32.const 131
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $2
    i32.store offset=8
    local.get $2
    local.get $2
    i32.load offset=4
    i32.const 3
    i32.and
    local.get $1
    i32.or
    i32.store offset=4
   end
   global.get $~lib/rt/itcms/toSpace
   local.set $2
   local.get $0
   i32.load offset=12
   local.tee $1
   i32.const 1
   i32.le_u
   if (result i32)
    i32.const 1
   else
    i32.const 4336
    i32.load
    local.get $1
    i32.lt_u
    if
     i32.const 1376
     i32.const 1440
     i32.const 22
     i32.const 28
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i32.const 3
    i32.shl
    i32.const 4340
    i32.add
    i32.load
    i32.const 32
    i32.and
   end
   if (result i32)
    global.get $~lib/rt/itcms/white
    i32.eqz
   else
    i32.const 2
   end
   local.set $3
   local.get $2
   i32.load offset=8
   local.set $1
   local.get $0
   local.get $2
   local.get $3
   i32.or
   i32.store offset=4
   local.get $0
   local.get $1
   i32.store offset=8
   local.get $1
   local.get $1
   i32.load offset=4
   i32.const 3
   i32.and
   local.get $0
   i32.or
   i32.store offset=4
   local.get $2
   local.get $0
   i32.store offset=8
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
)
