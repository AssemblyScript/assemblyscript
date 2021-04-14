(module
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_i32_i32_i32_=>_i64 (func (param i32 i32 i32 i32 i32 i32 i32) (result i64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1036) ",")
 (data (i32.const 1048) "\01\00\00\00\16\00\00\00s\00t\00d\00/\00d\00a\00t\00e\00.\00t\00s")
 (data (i32.const 1084) "<")
 (data (i32.const 1096) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1148) "<")
 (data (i32.const 1160) "\01\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data (i32.const 1276) "<")
 (data (i32.const 1288) "\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 1340) ",")
 (data (i32.const 1352) "\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data (i32.const 1420) "<")
 (data (i32.const 1432) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1484) "<")
 (data (i32.const 1496) "\01\00\00\00$\00\00\00V\00a\00l\00u\00e\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 1548) ",")
 (data (i32.const 1560) "\01\00\00\00\18\00\00\00~\00l\00i\00b\00/\00d\00a\00t\00e\00.\00t\00s")
 (data (i32.const 1596) "|")
 (data (i32.const 1608) "\01\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data (i32.const 1724) "<")
 (data (i32.const 1736) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data (i32.const 1788) "\1c")
 (data (i32.const 1800) "\01\00\00\00\02\00\00\000")
 (data (i32.const 1820) "\\")
 (data (i32.const 1832) "\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 1916) "\1c")
 (data (i32.const 1928) "\01\00\00\00\02\00\00\00+")
 (data (i32.const 1948) "\1c")
 (data (i32.const 1960) "\01")
 (data (i32.const 1980) "\1c")
 (data (i32.const 1992) "\01\00\00\00\02\00\00\00-")
 (data (i32.const 2012) "\1c")
 (data (i32.const 2024) "\01\00\00\00\02\00\00\00T")
 (data (i32.const 2044) "\1c")
 (data (i32.const 2056) "\01\00\00\00\02\00\00\00:")
 (data (i32.const 2076) "\1c")
 (data (i32.const 2088) "\01\00\00\00\02\00\00\00.")
 (data (i32.const 2108) "\1c")
 (data (i32.const 2120) "\01\00\00\00\02\00\00\00Z")
 (data (i32.const 2140) "L")
 (data (i32.const 2152) "\01\00\00\000\00\00\002\000\000\009\00-\000\001\00-\000\006\00T\000\008\00:\004\000\00:\003\001\00.\000\002\000\00Z")
 (data (i32.const 2220) "L")
 (data (i32.const 2232) "\01\00\00\000\00\00\002\000\000\009\00-\000\001\00-\000\006\00T\000\008\00:\004\000\00:\003\001\00.\004\005\006\00Z")
 (data (i32.const 2300) "L")
 (data (i32.const 2312) "\01\00\00\006\00\00\00+\000\001\002\001\008\004\00-\000\004\00-\000\008\00T\001\003\00:\000\007\00:\001\001\00.\000\002\000\00Z")
 (data (i32.const 2380) ",")
 (data (i32.const 2392) "\01\00\00\00\14\00\00\001\009\007\006\00-\000\002\00-\000\002")
 (data (i32.const 2428) ",")
 (data (i32.const 2440) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 2476) ",")
 (data (i32.const 2488) "\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 2524) "|")
 (data (i32.const 2536) "\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data (i32.const 2652) "\1c")
 (data (i32.const 2664) "\01\00\00\00\04\00\00\001\009")
 (data (i32.const 2684) ",")
 (data (i32.const 2696) "\01\00\00\00\10\00\00\001\009\007\006\00-\002\00-\002")
 (data (i32.const 2732) ",")
 (data (i32.const 2744) "\01\00\00\00\14\00\00\002\003\004\005\00-\001\001\00-\000\004")
 (data (i32.const 2780) ",")
 (data (i32.const 2792) "\01\00\00\00\14\00\00\001\009\007\006\00-\000\004\00-\000\002")
 (data (i32.const 2828) ",")
 (data (i32.const 2840) "\01\00\00\00\10\00\00\007\006\00-\000\004\00-\000\002")
 (data (i32.const 2876) "<")
 (data (i32.const 2888) "\01\00\00\00&\00\00\001\009\007\006\00-\000\002\00-\000\002\00T\001\002\00:\003\004\00:\005\006")
 (data (i32.const 2940) "L")
 (data (i32.const 2952) "\01\00\00\00.\00\00\001\009\007\006\00-\000\002\00-\000\002\00T\001\002\00:\003\004\00:\005\006\00.\004\005\006")
 (data (i32.const 3020) "L")
 (data (i32.const 3032) "\01\00\00\000\00\00\001\009\007\006\00-\000\002\00-\000\002\00T\001\002\00:\003\004\00:\005\006\00.\004\005\006\00Z")
 (data (i32.const 3104) "\06\00\00\00 \00\00\00\00\00\00\00 ")
 (data (i32.const 3132) " \00\00\00\00\00\00\00\02A\00\00\00\00\00\00\02\t")
 (global $~lib/date/year (mut i32) (i32.const 0))
 (global $~lib/date/month (mut i32) (i32.const 0))
 (global $~lib/date/day (mut i32) (i32.const 0))
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
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 19540))
 (global $~started (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "_start" (func $~start))
 (func $~lib/date/daysSinceEpoch (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  local.get $1
  i32.const 2
  i32.le_s
  i32.sub
  local.tee $0
  local.get $0
  i32.const 399
  i32.sub
  local.get $0
  i32.const 0
  i32.ge_s
  select
  i32.const 400
  i32.div_s
  local.tee $3
  i32.const 146097
  i32.mul
  local.get $2
  local.get $1
  i32.const -3
  i32.const 9
  local.get $1
  i32.const 2
  i32.gt_s
  select
  i32.add
  i32.const 153
  i32.mul
  i32.const 2
  i32.add
  i32.const 5
  i32.div_s
  i32.add
  local.get $0
  local.get $3
  i32.const 400
  i32.mul
  i32.sub
  local.tee $0
  i32.const 365
  i32.mul
  local.get $0
  i32.const 4
  i32.div_s
  i32.add
  local.get $0
  i32.const 100
  i32.div_s
  i32.sub
  i32.add
  i32.add
  i32.const 719469
  i32.sub
 )
 (func $~lib/date/epochMillis (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (result i64)
  local.get $6
  i64.extend_i32_s
  local.get $5
  i32.const 1000
  i32.mul
  i64.extend_i32_s
  local.get $4
  i32.const 60000
  i32.mul
  i64.extend_i32_s
  local.get $3
  i32.const 3600000
  i32.mul
  i64.extend_i32_s
  local.get $0
  local.get $1
  local.get $2
  call $~lib/date/daysSinceEpoch
  i64.extend_i32_s
  i64.const 86400000
  i64.mul
  i64.add
  i64.add
  i64.add
  i64.add
 )
 (func $~lib/rt/itcms/initLazy (param $0 i32) (result i32)
  local.get $0
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $0
  i32.store offset=8
  local.get $0
 )
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  i32.const 1296
  call $~lib/rt/itcms/__visit
  i32.const 1504
  call $~lib/rt/itcms/__visit
  i32.const 2448
  call $~lib/rt/itcms/__visit
  i32.const 2544
  call $~lib/rt/itcms/__visit
  i32.const 1104
  call $~lib/rt/itcms/__visit
  i32.const 1840
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
     i32.const 1168
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
 (func $~lib/rt/itcms/Object#set:color (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=4
  i32.const -4
  i32.and
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/itcms/Object#set:next (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/itcms/Object#linkTo (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  i32.load offset=8
  local.set $3
  local.get $0
  local.get $1
  local.get $2
  i32.or
  i32.store offset=4
  local.get $0
  local.get $3
  i32.store offset=8
  local.get $3
  local.get $0
  call $~lib/rt/itcms/Object#set:next
  local.get $1
  local.get $0
  i32.store offset=8
 )
 (func $~lib/rt/itcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  (local $2 i32)
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
    i32.const 1168
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
    i32.const 19540
    i32.lt_u
    local.get $0
    i32.load offset=8
    select
    i32.eqz
    if
     i32.const 0
     i32.const 1168
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
    i32.const 1168
    i32.const 131
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   local.get $2
   i32.store offset=8
   local.get $2
   local.get $1
   call $~lib/rt/itcms/Object#set:next
  end
  local.get $0
  global.get $~lib/rt/itcms/toSpace
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 1
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 3104
   i32.load
   i32.gt_u
   if
    i32.const 1296
    i32.const 1360
    i32.const 22
    i32.const 28
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 3
   i32.shl
   i32.const 3108
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
  call $~lib/rt/itcms/Object#linkTo
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
  local.tee $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1440
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
   i32.const 1440
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 256
  i32.lt_u
  if
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $2
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
   local.set $3
   local.get $2
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $2
   local.get $3
   i32.const 7
   i32.sub
   local.set $3
  end
  local.get $2
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $3
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1440
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.set $4
  local.get $1
  i32.load offset=4
  local.tee $5
  if
   local.get $5
   local.get $4
   i32.store offset=8
  end
  local.get $4
  if
   local.get $4
   local.get $5
   i32.store offset=4
  end
  local.get $1
  local.get $0
  local.get $2
  local.get $3
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  i32.eq
  if
   local.get $0
   local.get $2
   local.get $3
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $4
   i32.store offset=96
   local.get $4
   i32.eqz
   if
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    local.tee $4
    i32.load offset=4
    i32.const -2
    local.get $2
    i32.rotl
    i32.and
    local.set $1
    local.get $4
    local.get $1
    i32.store offset=4
    local.get $1
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
   i32.const 1440
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
   i32.const 1440
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
    i32.const 1440
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
  local.tee $3
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1440
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $3
  local.get $1
  i32.const 4
  i32.add
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 1440
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
  local.get $3
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   local.get $3
   i32.const 1073741820
   local.get $3
   i32.const 1073741820
   i32.lt_u
   select
   local.tee $3
   i32.clz
   i32.sub
   local.tee $4
   i32.const 7
   i32.sub
   local.set $5
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
  i32.const 0
  local.get $5
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1440
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $3
  local.get $5
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $4
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $4
  i32.store offset=8
  local.get $4
  if
   local.get $4
   local.get $1
   i32.store offset=4
  end
  local.get $0
  local.get $3
  local.get $5
  i32.const 4
  i32.shl
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
  local.get $3
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
   i32.const 1440
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
  local.get $2
  i32.const -16
  i32.and
  local.get $0
  i32.load offset=1568
  local.tee $2
  if
   local.get $1
   local.get $2
   i32.const 4
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 1440
    i32.const 384
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   i32.const 16
   i32.sub
   i32.eq
   if
    local.get $2
    i32.load
    local.set $4
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
    i32.const 1440
    i32.const 397
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $1
  i32.sub
  local.tee $2
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $4
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
  i32.const 1
  i32.lt_s
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
  i32.const 19552
  i32.const 0
  i32.store
  i32.const 21120
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
    i32.const 19552
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
      i32.const 19552
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
  i32.const 19552
  i32.const 21124
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 19552
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $folding-inner0
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
      br $folding-inner0
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
       i32.const 3
       i32.and
       i32.ne
       if
        local.get $0
        local.get $1
        call $~lib/rt/itcms/Object#set:color
        i32.const 0
        global.set $~lib/rt/itcms/visitCount
        local.get $0
        i32.const 20
        i32.add
        call $~lib/rt/__visit_members
        br $folding-inner0
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
       i32.const 19540
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
        i32.const 3
        i32.and
        i32.ne
        if
         local.get $0
         local.get $1
         call $~lib/rt/itcms/Object#set:color
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
     br $folding-inner0
    end
    global.get $~lib/rt/itcms/iter
    local.tee $0
    global.get $~lib/rt/itcms/toSpace
    i32.ne
    if
     local.get $0
     i32.load offset=4
     i32.const -4
     i32.and
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/white
     i32.eqz
     local.get $0
     i32.load offset=4
     i32.const 3
     i32.and
     i32.ne
     if
      i32.const 0
      i32.const 1168
      i32.const 228
      i32.const 20
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     i32.const 19540
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
      local.tee $1
      i32.const 19540
      i32.ge_u
      if
       global.get $~lib/rt/tlsf/ROOT
       i32.eqz
       if
        call $~lib/rt/tlsf/initialize
       end
       global.get $~lib/rt/tlsf/ROOT
       local.get $1
       i32.const 4
       i32.sub
       local.set $0
       local.get $1
       i32.const 15
       i32.and
       i32.eqz
       i32.const 0
       local.get $1
       select
       if (result i32)
        local.get $0
        i32.load
        i32.const 1
        i32.and
        i32.eqz
       else
        i32.const 0
       end
       i32.eqz
       if
        i32.const 0
        i32.const 1440
        i32.const 559
        i32.const 3
        call $~lib/builtins/abort
        unreachable
       end
       local.get $0
       local.get $0
       i32.load
       i32.const 1
       i32.or
       i32.store
       local.get $0
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
   return
  end
  global.get $~lib/rt/itcms/visitCount
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
   local.set $2
   local.get $1
   local.get $2
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
  i32.const 0
  local.get $2
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1440
   i32.const 330
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
     i32.const 1440
     i32.const 343
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
  i32.ge_u
  if
   i32.const 1104
   i32.const 1440
   i32.const 458
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 12
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.get $1
  i32.const 12
  i32.le_u
  select
  local.tee $2
  call $~lib/rt/tlsf/searchBlock
  local.tee $1
  i32.eqz
  if
   i32.const 4
   memory.size
   local.tee $1
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   local.get $0
   i32.load offset=1568
   i32.ne
   i32.shl
   local.get $2
   i32.const 1
   i32.const 27
   local.get $2
   i32.clz
   i32.sub
   i32.shl
   i32.const 1
   i32.sub
   i32.add
   local.get $2
   local.get $2
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
   local.set $3
   local.get $1
   local.get $3
   local.get $1
   local.get $3
   i32.gt_s
   select
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
   local.get $0
   local.get $1
   i32.const 16
   i32.shl
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   local.get $0
   local.get $2
   call $~lib/rt/tlsf/searchBlock
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1440
    i32.const 496
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.gt_u
  if
   i32.const 0
   i32.const 1440
   i32.const 498
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/removeBlock
  local.get $1
  i32.load
  local.set $3
  local.get $2
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1440
   i32.const 357
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.get $2
  i32.sub
  local.tee $4
  i32.const 16
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $2
   local.get $1
   i32.const 4
   i32.add
   i32.add
   local.tee $2
   local.get $4
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $2
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $3
   i32.const -2
   i32.and
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.tee $0
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.get $0
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
  local.get $1
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.eqz
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   local.tee $2
   i32.const 1
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 2
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 offset=1
   local.get $0
   i32.const 0
   i32.store8 offset=2
   local.get $2
   i32.const 2
   i32.sub
   i32.const 0
   i32.store8
   local.get $2
   i32.const 3
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 6
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 offset=3
   local.get $2
   i32.const 4
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.tee $2
   i32.add
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   local.get $1
   local.get $2
   i32.sub
   i32.const -4
   i32.and
   local.tee $2
   i32.add
   local.tee $1
   i32.const 4
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 12
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   i32.const 8
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
   i32.const 0
   i32.store offset=24
   local.get $1
   i32.const 28
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   i32.const 24
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   i32.const 20
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   i32.const 16
   i32.sub
   i32.const 0
   i32.store
   local.get $0
   local.get $0
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $1
   i32.add
   local.set $0
   local.get $2
   local.get $1
   i32.sub
   local.set $1
   loop $while-continue|0
    local.get $1
    i32.const 32
    i32.ge_u
    if
     local.get $0
     i64.const 0
     i64.store
     local.get $0
     i64.const 0
     i64.store offset=8
     local.get $0
     i64.const 0
     i64.store offset=16
     local.get $0
     i64.const 0
     i64.store offset=24
     local.get $1
     i32.const 32
     i32.sub
     local.set $1
     local.get $0
     i32.const 32
     i32.add
     local.set $0
     br $while-continue|0
    end
   end
  end
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 1104
   i32.const 1168
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
    loop $do-continue|0
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
     br_if $do-continue|0
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
  local.get $0
  i32.const 16
  i32.add
  local.set $2
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $2
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  local.get $2
  global.get $~lib/rt/itcms/fromSpace
  global.get $~lib/rt/itcms/white
  call $~lib/rt/itcms/Object#linkTo
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
  local.get $0
  call $~lib/memory/memory.fill
  local.get $1
 )
 (func $~lib/date/ymdFromEpochDays (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 719468
  i32.add
  local.tee $0
  local.get $0
  i32.const 146096
  i32.sub
  local.get $0
  i32.const 0
  i32.ge_s
  select
  i32.const 146097
  i32.div_s
  local.set $2
  local.get $0
  local.get $2
  i32.const 146097
  i32.mul
  i32.sub
  local.tee $0
  local.get $0
  i32.const 1460
  i32.div_s
  i32.sub
  local.get $0
  i32.const 36524
  i32.div_s
  i32.add
  local.get $0
  i32.const 146096
  i32.div_s
  i32.sub
  i32.const 365
  i32.div_s
  local.tee $1
  local.get $2
  i32.const 400
  i32.mul
  i32.add
  global.set $~lib/date/year
  local.get $0
  local.get $1
  i32.const 365
  i32.mul
  local.get $1
  i32.const 4
  i32.div_s
  i32.add
  local.get $1
  i32.const 100
  i32.div_s
  i32.sub
  i32.sub
  local.tee $1
  i32.const 5
  i32.mul
  i32.const 2
  i32.add
  i32.const 153
  i32.div_s
  local.set $0
  local.get $1
  local.get $0
  i32.const 153
  i32.mul
  i32.const 2
  i32.add
  i32.const 5
  i32.div_s
  i32.sub
  i32.const 1
  i32.add
  global.set $~lib/date/day
  local.get $0
  i32.const 3
  i32.const -9
  local.get $0
  i32.const 10
  i32.lt_s
  select
  i32.add
  global.set $~lib/date/month
  global.get $~lib/date/year
  global.get $~lib/date/month
  i32.const 2
  i32.le_s
  i32.add
  global.set $~lib/date/year
 )
 (func $~lib/date/Date#getUTCFullYear (param $0 i32) (result i32)
  local.get $0
  i64.load
  i64.const 86400000
  i64.div_s
  i32.wrap_i64
  call $~lib/date/ymdFromEpochDays
  global.get $~lib/date/year
 )
 (func $~lib/date/Date#getUTCMonth (param $0 i32) (result i32)
  local.get $0
  i64.load
  i64.const 86400000
  i64.div_s
  i32.wrap_i64
  call $~lib/date/ymdFromEpochDays
  global.get $~lib/date/month
  i32.const 1
  i32.sub
 )
 (func $~lib/date/Date#getUTCDate (param $0 i32) (result i32)
  local.get $0
  i64.load
  i64.const 86400000
  i64.div_s
  i32.wrap_i64
  call $~lib/date/ymdFromEpochDays
  global.get $~lib/date/day
 )
 (func $~lib/date/Date#getUTCHours (param $0 i32) (result i32)
  local.get $0
  i64.load
  i64.const 86400000
  i64.rem_s
  i32.wrap_i64
  i32.const 3600000
  i32.div_s
 )
 (func $~lib/date/Date#getUTCMinutes (param $0 i32) (result i32)
  local.get $0
  i64.load
  i64.const 3600000
  i64.rem_s
  i32.wrap_i64
  i32.const 60000
  i32.div_s
 )
 (func $~lib/date/Date#getUTCSeconds (param $0 i32) (result i32)
  local.get $0
  i64.load
  i64.const 60000
  i64.rem_s
  i32.wrap_i64
  i32.const 1000
  i32.div_s
 )
 (func $~lib/date/Date#setUTCMilliseconds (param $0 i32) (param $1 i32)
  local.get $0
  local.get $0
  i64.load
  local.get $1
  local.get $0
  i64.load
  i64.const 1000
  i64.rem_s
  i32.wrap_i64
  i32.sub
  i64.extend_i32_s
  i64.add
  i64.store
 )
 (func $~lib/date/throwIfNotInRange (param $0 i32) (param $1 i32) (param $2 i32)
  i32.const 1
  local.get $0
  local.get $2
  i32.gt_s
  local.get $0
  local.get $1
  i32.lt_s
  select
  if
   i32.const 1504
   i32.const 1568
   i32.const 195
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/date/Date#setUTCSeconds (param $0 i32) (param $1 i32)
  local.get $1
  i32.const 0
  i32.const 59
  call $~lib/date/throwIfNotInRange
  local.get $0
  local.get $0
  i64.load
  local.get $1
  local.get $0
  call $~lib/date/Date#getUTCSeconds
  i32.sub
  i32.const 1000
  i32.mul
  i64.extend_i32_s
  i64.add
  i64.store
 )
 (func $~lib/date/Date#setUTCMinutes (param $0 i32) (param $1 i32)
  local.get $1
  i32.const 0
  i32.const 59
  call $~lib/date/throwIfNotInRange
  local.get $0
  local.get $0
  i64.load
  local.get $1
  local.get $0
  call $~lib/date/Date#getUTCMinutes
  i32.sub
  i32.const 60000
  i32.mul
  i64.extend_i32_s
  i64.add
  i64.store
 )
 (func $~lib/date/Date#setUTCHours (param $0 i32) (param $1 i32)
  local.get $1
  i32.const 0
  i32.const 23
  call $~lib/date/throwIfNotInRange
  local.get $0
  local.get $0
  i64.load
  local.get $1
  local.get $0
  call $~lib/date/Date#getUTCHours
  i32.sub
  i32.const 3600000
  i32.mul
  i64.extend_i32_s
  i64.add
  i64.store
 )
 (func $~lib/date/Date#setUTCDate (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i64.load
  i64.const 86400000
  i64.div_s
  i32.wrap_i64
  call $~lib/date/ymdFromEpochDays
  local.get $1
  i32.const 1
  i32.const 0
  i32.const 1
  global.get $~lib/date/year
  local.tee $2
  i32.const 400
  i32.rem_s
  i32.eqz
  local.get $2
  i32.const 100
  i32.rem_s
  select
  local.get $2
  i32.const 3
  i32.and
  select
  i32.const 28
  i32.add
  global.get $~lib/date/month
  local.tee $2
  local.get $2
  i32.const 8
  i32.ge_s
  i32.add
  i32.const 1
  i32.and
  i32.const 30
  i32.add
  local.get $2
  i32.const 2
  i32.eq
  select
  call $~lib/date/throwIfNotInRange
  local.get $0
  local.get $0
  i64.load
  i64.const 86400000
  i64.rem_s
  global.get $~lib/date/year
  global.get $~lib/date/month
  local.get $1
  call $~lib/date/daysSinceEpoch
  i64.extend_i32_s
  i64.const 86400000
  i64.mul
  i64.add
  i64.store
 )
 (func $~lib/date/Date#setUTCMonth (param $0 i32) (param $1 i32)
  local.get $1
  i32.const 1
  i32.const 12
  call $~lib/date/throwIfNotInRange
  local.get $0
  i64.load
  i64.const 86400000
  i64.div_s
  i32.wrap_i64
  call $~lib/date/ymdFromEpochDays
  local.get $0
  local.get $0
  i64.load
  i64.const 86400000
  i64.rem_s
  global.get $~lib/date/year
  local.get $1
  i32.const 1
  i32.add
  global.get $~lib/date/day
  call $~lib/date/daysSinceEpoch
  i64.extend_i32_s
  i64.const 86400000
  i64.mul
  i64.add
  i64.store
 )
 (func $~lib/date/Date#setUTCFullYear (param $0 i32) (param $1 i32)
  local.get $0
  i64.load
  i64.const 86400000
  i64.div_s
  i32.wrap_i64
  call $~lib/date/ymdFromEpochDays
  local.get $0
  local.get $0
  i64.load
  i64.const 86400000
  i64.rem_s
  local.get $1
  global.get $~lib/date/month
  global.get $~lib/date/day
  call $~lib/date/daysSinceEpoch
  i64.extend_i32_s
  i64.const 86400000
  i64.mul
  i64.add
  i64.store
 )
 (func $~lib/number/I32#toString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $__inlined_func$~lib/util/number/itoa32
   local.get $0
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 1808
    local.set $0
    br $__inlined_func$~lib/util/number/itoa32
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   local.get $0
   i32.sub
   local.get $0
   local.get $0
   i32.const 31
   i32.shr_u
   local.tee $2
   select
   local.tee $1
   i32.const 10
   i32.ge_u
   i32.const 1
   i32.add
   local.get $1
   i32.const 10000
   i32.ge_u
   i32.const 3
   i32.add
   local.get $1
   i32.const 1000
   i32.ge_u
   i32.add
   local.get $1
   i32.const 100
   i32.lt_u
   select
   local.get $1
   i32.const 1000000
   i32.ge_u
   i32.const 6
   i32.add
   local.get $1
   i32.const 1000000000
   i32.ge_u
   i32.const 8
   i32.add
   local.get $1
   i32.const 100000000
   i32.ge_u
   i32.add
   local.get $1
   i32.const 10000000
   i32.lt_u
   select
   local.get $1
   i32.const 100000
   i32.lt_u
   select
   local.get $2
   i32.add
   local.tee $3
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
   loop $do-continue|0
    local.get $0
    local.get $3
    i32.const 1
    i32.sub
    local.tee $3
    i32.const 1
    i32.shl
    i32.add
    local.get $1
    i32.const 10
    i32.rem_u
    i32.const 48
    i32.add
    i32.store16
    local.get $1
    i32.const 10
    i32.div_u
    local.tee $1
    br_if $do-continue|0
   end
   local.get $2
   if
    local.get $0
    i32.const 45
    i32.store16
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
  end
  local.get $0
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
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $__inlined_func$~lib/string/String#concat
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.const 1
   i32.shl
   local.tee $4
   local.get $0
   local.tee $2
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.const 1
   i32.shl
   local.tee $3
   i32.add
   local.tee $0
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 1968
    local.set $0
    br $__inlined_func$~lib/string/String#concat
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
   local.get $0
   local.get $2
   local.get $3
   call $~lib/memory/memory.copy
   local.get $0
   local.get $3
   i32.add
   local.get $1
   local.get $4
   call $~lib/memory/memory.copy
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
  end
  local.get $0
 )
 (func $~lib/util/string/compareImpl (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.tee $1
  i32.const 7
  i32.and
  local.get $2
  i32.const 7
  i32.and
  i32.or
  i32.eqz
  i32.const 0
  local.get $3
  i32.const 4
  i32.ge_u
  select
  if
   loop $do-continue|0
    local.get $1
    i64.load
    local.get $2
    i64.load
    i64.eq
    if
     local.get $1
     i32.const 8
     i32.add
     local.set $1
     local.get $2
     i32.const 8
     i32.add
     local.set $2
     local.get $3
     i32.const 4
     i32.sub
     local.tee $3
     i32.const 4
     i32.ge_u
     br_if $do-continue|0
    end
   end
  end
  loop $while-continue|1
   local.get $3
   local.tee $0
   i32.const 1
   i32.sub
   local.set $3
   local.get $0
   if
    local.get $1
    i32.load16_u
    local.tee $0
    local.get $2
    i32.load16_u
    local.tee $4
    i32.ne
    if
     local.get $0
     local.get $4
     i32.sub
     return
    end
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    local.get $2
    i32.const 2
    i32.add
    local.set $2
    br $while-continue|1
   end
  end
  i32.const 0
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  local.get $1
  i32.eqz
  i32.const 1
  local.get $0
  select
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
  local.tee $2
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
  i32.const 0
  local.get $1
  local.get $2
  call $~lib/util/string/compareImpl
  i32.eqz
 )
 (func $~lib/string/String#indexOf (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.tee $4
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
  i32.eqz
  if
   i32.const -1
   return
  end
  local.get $2
  i32.const 0
  local.get $2
  i32.const 0
  i32.gt_s
  select
  local.tee $2
  local.get $3
  local.get $2
  local.get $3
  i32.lt_s
  select
  local.set $2
  local.get $3
  local.get $4
  i32.sub
  local.set $3
  loop $for-loop|0
   local.get $2
   local.get $3
   i32.le_s
   if
    local.get $0
    local.get $2
    local.get $1
    local.get $4
    call $~lib/util/string/compareImpl
    i32.eqz
    if
     local.get $2
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  i32.const -1
 )
 (func $~lib/rt/itcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.eqz
  if
   return
  end
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 1168
   i32.const 294
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
   local.set $4
   local.get $3
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $2
    if
     local.get $0
     call $~lib/rt/itcms/Object#makeGray
    else
     local.get $1
     call $~lib/rt/itcms/Object#makeGray
    end
   else
    global.get $~lib/rt/itcms/state
    i32.const 1
    i32.eq
    i32.const 0
    local.get $4
    i32.const 3
    i32.eq
    select
    if
     local.get $1
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $~lib/array/Array<~lib/string/String>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  i32.load offset=12
  local.tee $10
  i32.const 1
  i32.add
  local.tee $6
  local.set $3
  local.get $6
  local.get $0
  i32.load offset=8
  local.tee $7
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   local.get $3
   i32.const 268435455
   i32.gt_u
   if
    i32.const 2448
    i32.const 2496
    i32.const 14
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   local.tee $8
   local.set $2
   block $__inlined_func$~lib/rt/itcms/__renew
    local.get $3
    i32.const 2
    i32.shl
    local.tee $9
    local.tee $4
    local.get $8
    i32.const 20
    i32.sub
    local.tee $5
    i32.load
    i32.const -4
    i32.and
    i32.const 16
    i32.sub
    i32.le_u
    if
     local.get $5
     local.get $4
     i32.store offset=16
     br $__inlined_func$~lib/rt/itcms/__renew
    end
    local.get $4
    local.get $5
    i32.load offset=12
    call $~lib/rt/itcms/__new
    local.tee $3
    local.get $2
    local.get $4
    local.get $5
    i32.load offset=16
    local.tee $2
    local.get $2
    local.get $4
    i32.gt_u
    select
    call $~lib/memory/memory.copy
    local.get $3
    local.set $2
   end
   local.get $2
   local.get $7
   i32.add
   local.get $9
   local.get $7
   i32.sub
   call $~lib/memory/memory.fill
   local.get $2
   local.get $8
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
   local.get $9
   i32.store offset=8
  end
  local.get $0
  i32.load offset=4
  local.get $10
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 1
  call $~lib/rt/itcms/__link
  local.get $0
  local.get $6
  i32.store offset=12
 )
 (func $~lib/util/string/strtol<i32> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.tee $2
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load16_u
  local.set $1
  loop $while-continue|0
   block $__inlined_func$~lib/util/string/isSpace (result i32)
    local.get $1
    i32.const 128
    i32.or
    i32.const 160
    i32.eq
    local.get $1
    i32.const 9
    i32.sub
    i32.const 4
    i32.le_u
    i32.or
    local.get $1
    i32.const 5760
    i32.lt_u
    br_if $__inlined_func$~lib/util/string/isSpace
    drop
    i32.const 1
    local.get $1
    i32.const -8192
    i32.add
    i32.const 10
    i32.le_u
    br_if $__inlined_func$~lib/util/string/isSpace
    drop
    i32.const 1
    local.get $1
    i32.const 5760
    i32.eq
    local.get $1
    i32.const 8232
    i32.eq
    i32.or
    local.get $1
    i32.const 8233
    i32.eq
    local.get $1
    i32.const 8239
    i32.eq
    i32.or
    i32.or
    local.get $1
    i32.const 8287
    i32.eq
    local.get $1
    i32.const 12288
    i32.eq
    i32.or
    local.get $1
    i32.const 65279
    i32.eq
    i32.or
    i32.or
    br_if $__inlined_func$~lib/util/string/isSpace
    drop
    i32.const 0
   end
   if
    local.get $0
    i32.const 2
    i32.add
    local.tee $0
    i32.load16_u
    local.set $1
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $while-continue|0
   end
  end
  i32.const 1
  local.set $3
  i32.const 1
  local.get $1
  i32.const 43
  i32.eq
  local.get $1
  i32.const 45
  i32.eq
  select
  if
   local.get $2
   i32.const 1
   i32.sub
   local.tee $2
   i32.eqz
   if
    i32.const 0
    return
   end
   i32.const -1
   i32.const 1
   local.get $1
   i32.const 45
   i32.eq
   select
   local.set $3
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   i32.load16_u
   local.set $1
  end
  local.get $2
  i32.const 2
  i32.gt_s
  i32.const 0
  local.get $1
  i32.const 48
  i32.eq
  select
  if
   block $break|1
    block $case2|1
     block $case1|1
      local.get $0
      i32.load16_u offset=2
      i32.const 32
      i32.or
      local.tee $1
      i32.const 98
      i32.ne
      if
       local.get $1
       i32.const 111
       i32.eq
       br_if $case1|1
       local.get $1
       i32.const 120
       i32.eq
       br_if $case2|1
       br $break|1
      end
      local.get $0
      i32.const 4
      i32.add
      local.set $0
      local.get $2
      i32.const 2
      i32.sub
      local.set $2
      i32.const 2
      local.set $5
      br $break|1
     end
     local.get $0
     i32.const 4
     i32.add
     local.set $0
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     i32.const 8
     local.set $5
     br $break|1
    end
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    local.get $2
    i32.const 2
    i32.sub
    local.set $2
    i32.const 16
    local.set $5
   end
  end
  local.get $5
  i32.const 10
  local.get $5
  select
  local.set $5
  loop $while-continue|2
   block $while-break|2
    local.get $2
    local.tee $1
    i32.const 1
    i32.sub
    local.set $2
    local.get $1
    if
     local.get $5
     local.get $0
     i32.load16_u
     local.tee $1
     i32.const 48
     i32.sub
     i32.const 10
     i32.lt_u
     if (result i32)
      local.get $1
      i32.const 48
      i32.sub
     else
      local.get $1
      i32.const 55
      i32.sub
      local.get $1
      i32.const 87
      i32.sub
      local.get $1
      local.get $1
      i32.const 97
      i32.sub
      i32.const 25
      i32.le_u
      select
      local.get $1
      i32.const 65
      i32.sub
      i32.const 25
      i32.le_u
      select
     end
     local.tee $1
     i32.le_u
     if
      local.get $4
      i32.eqz
      if
       i32.const 0
       return
      end
      br $while-break|2
     end
     local.get $1
     local.get $4
     local.get $5
     i32.mul
     i32.add
     local.set $4
     local.get $0
     i32.const 2
     i32.add
     local.set $0
     br $while-continue|2
    end
   end
  end
  local.get $3
  local.get $4
  i32.mul
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $invalid
   block $~lib/array/Array<i32>
    block $~lib/array/Array<~lib/string/String>
     block $~lib/date/Date
      block $~lib/arraybuffer/ArrayBufferView
       block $~lib/string/String
        block $~lib/arraybuffer/ArrayBuffer
         local.get $0
         i32.const 8
         i32.sub
         i32.load
         br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $~lib/date/Date $~lib/array/Array<~lib/string/String> $~lib/array/Array<i32> $invalid
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
       call $~lib/rt/itcms/__visit
      end
      return
     end
     return
    end
    local.get $0
    i32.load offset=4
    local.tee $1
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
    local.get $0
    i32.load
    call $~lib/rt/itcms/__visit
    return
   end
   local.get $0
   i32.load
   call $~lib/rt/itcms/__visit
   return
  end
  unreachable
 )
 (func $~start
  global.get $~started
  if
   return
  end
  i32.const 1
  global.set $~started
  call $start:std/date
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 3156
  i32.lt_s
  if
   i32.const 19568
   i32.const 19616
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/date/Date#toISOString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 112
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=16
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=24
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=32
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=40
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=48
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=56
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=64
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=72
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=80
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=88
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=96
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=104
  local.get $0
  i64.load
  i64.const 86400000
  i64.div_s
  i32.wrap_i64
  call $~lib/date/ymdFromEpochDays
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/date/year
  call $~lib/number/I32#toString
  local.tee $1
  i32.store
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.const 4
  i32.gt_u
  if
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1936
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 1808
   i32.store offset=12
   local.get $1
   i32.const 6
   call $~lib/string/String#padStart
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   i32.const 1936
   local.get $1
   call $~lib/string/String.__concat
   local.tee $1
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 2000
  i32.store offset=100
  local.get $1
  i32.const 2000
  call $~lib/string/String.__concat
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=92
  global.get $~lib/date/month
  call $~lib/number/I32#toString
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=104
  global.get $~lib/memory/__stack_pointer
  i32.const 1808
  i32.store offset=108
  local.get $2
  i32.const 2
  call $~lib/string/String#padStart
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=96
  local.get $1
  local.get $2
  call $~lib/string/String.__concat
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=84
  global.get $~lib/memory/__stack_pointer
  i32.const 2000
  i32.store offset=88
  local.get $1
  i32.const 2000
  call $~lib/string/String.__concat
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=76
  global.get $~lib/date/day
  call $~lib/number/I32#toString
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=84
  global.get $~lib/memory/__stack_pointer
  i32.const 1808
  i32.store offset=92
  local.get $2
  i32.const 2
  call $~lib/string/String#padStart
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=80
  local.get $1
  local.get $2
  call $~lib/string/String.__concat
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=68
  global.get $~lib/memory/__stack_pointer
  i32.const 2032
  i32.store offset=72
  local.get $1
  i32.const 2032
  call $~lib/string/String.__concat
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=60
  local.get $0
  call $~lib/date/Date#getUTCHours
  call $~lib/number/I32#toString
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=68
  global.get $~lib/memory/__stack_pointer
  i32.const 1808
  i32.store offset=76
  local.get $2
  i32.const 2
  call $~lib/string/String#padStart
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=64
  local.get $1
  local.get $2
  call $~lib/string/String.__concat
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=52
  global.get $~lib/memory/__stack_pointer
  i32.const 2064
  i32.store offset=56
  local.get $1
  i32.const 2064
  call $~lib/string/String.__concat
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=44
  local.get $0
  call $~lib/date/Date#getUTCMinutes
  call $~lib/number/I32#toString
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=52
  global.get $~lib/memory/__stack_pointer
  i32.const 1808
  i32.store offset=60
  local.get $2
  i32.const 2
  call $~lib/string/String#padStart
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=48
  local.get $1
  local.get $2
  call $~lib/string/String.__concat
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  i32.const 2064
  i32.store offset=40
  local.get $1
  i32.const 2064
  call $~lib/string/String.__concat
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=28
  local.get $0
  call $~lib/date/Date#getUTCSeconds
  call $~lib/number/I32#toString
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  i32.const 1808
  i32.store offset=44
  local.get $2
  i32.const 2
  call $~lib/string/String#padStart
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=32
  local.get $1
  local.get $2
  call $~lib/string/String.__concat
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 2096
  i32.store offset=24
  local.get $1
  i32.const 2096
  call $~lib/string/String.__concat
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=16
  local.get $0
  i64.load
  i64.const 1000
  i64.rem_s
  i32.wrap_i64
  call $~lib/number/I32#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 1808
  i32.store offset=28
  local.get $0
  i32.const 3
  call $~lib/string/String#padStart
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=20
  local.get $1
  local.get $0
  call $~lib/string/String.__concat
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 2128
  i32.store offset=8
  local.get $0
  i32.const 2128
  call $~lib/string/String.__concat
  global.get $~lib/memory/__stack_pointer
  i32.const 112
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/string/String#split (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=16
  block $folding-inner2
   block $folding-inner1
    local.get $1
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 1
     call $~lib/rt/__newArray
     local.tee $1
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.load offset=4
     i32.store offset=4
     local.get $1
     i32.load offset=4
     local.get $0
     i32.store
     local.get $1
     local.get $0
     i32.const 1
     call $~lib/rt/itcms/__link
     local.get $1
     local.set $0
     br $folding-inner1
    end
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.set $4
    local.get $1
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.tee $5
    local.set $7
    block $folding-inner0
     local.get $5
     if
      local.get $4
      i32.eqz
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 1
       call $~lib/rt/__newArray
       local.tee $0
       i32.store offset=4
       local.get $0
       i32.load offset=4
       i32.const 1968
       i32.store
       br $folding-inner1
      end
     else
      local.get $4
      i32.eqz
      br_if $folding-inner0
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.const 2147483647
      local.get $4
      i32.const 2147483647
      i32.ne
      select
      local.tee $4
      call $~lib/rt/__newArray
      local.tee $1
      i32.store
      local.get $1
      i32.load offset=4
      local.set $5
      loop $for-loop|0
       local.get $2
       local.get $4
       i32.lt_s
       if
        global.get $~lib/memory/__stack_pointer
        i32.const 2
        i32.const 1
        call $~lib/rt/itcms/__new
        local.tee $3
        i32.store offset=8
        local.get $3
        local.get $0
        local.get $2
        i32.const 1
        i32.shl
        i32.add
        i32.load16_u
        i32.store16
        local.get $5
        local.get $2
        i32.const 2
        i32.shl
        i32.add
        local.get $3
        i32.store
        local.get $1
        local.get $3
        i32.const 1
        call $~lib/rt/itcms/__link
        local.get $2
        i32.const 1
        i32.add
        local.set $2
        br $for-loop|0
       end
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 24
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $1
      return
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     call $~lib/rt/__newArray
     local.tee $2
     i32.store offset=12
     loop $while-continue|1
      local.get $0
      local.get $1
      local.get $3
      call $~lib/string/String#indexOf
      local.tee $5
      i32.const -1
      i32.xor
      if
       local.get $5
       local.get $3
       i32.sub
       local.tee $6
       i32.const 0
       i32.gt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.const 1
        i32.shl
        local.tee $8
        i32.const 1
        call $~lib/rt/itcms/__new
        local.tee $6
        i32.store offset=16
        local.get $6
        local.get $0
        local.get $3
        i32.const 1
        i32.shl
        i32.add
        local.get $8
        call $~lib/memory/memory.copy
        local.get $2
        local.get $6
        call $~lib/array/Array<~lib/string/String>#push
       else
        global.get $~lib/memory/__stack_pointer
        i32.const 1968
        i32.store offset=20
        local.get $2
        i32.const 1968
        call $~lib/array/Array<~lib/string/String>#push
       end
       local.get $9
       i32.const 1
       i32.add
       local.tee $9
       i32.const 2147483647
       i32.eq
       br_if $folding-inner2
       local.get $5
       local.get $7
       i32.add
       local.set $3
       br $while-continue|1
      end
     end
     local.get $3
     i32.eqz
     if
      local.get $2
      local.get $0
      call $~lib/array/Array<~lib/string/String>#push
      br $folding-inner2
     end
     local.get $4
     local.get $3
     i32.sub
     local.tee $1
     i32.const 0
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.const 1
      i32.shl
      local.tee $4
      i32.const 1
      call $~lib/rt/itcms/__new
      local.tee $1
      i32.store offset=4
      local.get $1
      local.get $0
      local.get $3
      i32.const 1
      i32.shl
      i32.add
      local.get $4
      call $~lib/memory/memory.copy
      local.get $2
      local.get $1
      call $~lib/array/Array<~lib/string/String>#push
     else
      global.get $~lib/memory/__stack_pointer
      i32.const 1968
      i32.store offset=20
      local.get $2
      i32.const 1968
      call $~lib/array/Array<~lib/string/String>#push
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 24
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $2
     return
    end
    i32.const 0
    call $~lib/rt/__newArray
    local.set $0
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/date/Date.fromString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=16
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=24
  global.get $~lib/memory/__stack_pointer
  i32.const 2032
  i32.store
  local.get $0
  i32.const 2032
  i32.const 0
  call $~lib/string/String#indexOf
  i32.const -1
  i32.ne
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 2032
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.const 2032
   call $~lib/string/String#split
   local.tee $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.const 1
   call $~lib/array/Array<~lib/string/String>#__get
   local.tee $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 2064
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.const 2064
   call $~lib/string/String#split
   local.tee $0
   i32.store offset=12
   local.get $0
   i32.const 0
   call $~lib/array/Array<~lib/string/String>#__get
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=16
   local.get $2
   call $~lib/util/string/strtol<i32>
   local.set $3
   local.get $0
   i32.const 1
   call $~lib/array/Array<~lib/string/String>#__get
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=16
   local.get $2
   call $~lib/util/string/strtol<i32>
   local.set $4
   local.get $0
   i32.const 2
   call $~lib/array/Array<~lib/string/String>#__get
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 2096
   i32.store
   local.get $2
   i32.const 2096
   i32.const 0
   call $~lib/string/String#indexOf
   i32.const -1
   i32.ne
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.const 2
    call $~lib/array/Array<~lib/string/String>#__get
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    i32.const 2096
    i32.store
    local.get $0
    i32.const 2096
    call $~lib/string/String#split
    local.tee $0
    i32.store offset=20
    local.get $0
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=16
    local.get $2
    call $~lib/util/string/strtol<i32>
    local.set $2
    local.get $0
    i32.const 1
    call $~lib/array/Array<~lib/string/String>#__get
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=16
    local.get $0
    call $~lib/util/string/strtol<i32>
    local.set $5
   else
    local.get $0
    i32.const 2
    call $~lib/array/Array<~lib/string/String>#__get
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=16
    local.get $0
    call $~lib/util/string/strtol<i32>
    local.set $2
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.const 0
   call $~lib/array/Array<~lib/string/String>#__get
   local.tee $0
   i32.store offset=24
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 2000
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 2000
  call $~lib/string/String#split
  local.tee $0
  i32.store offset=12
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#__get
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.const 2
  i32.eq
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   i32.const 2672
   i32.store
   local.get $0
   i32.const 0
   call $~lib/array/Array<~lib/string/String>#__get
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=28
   i32.const 2672
   local.get $1
   call $~lib/string/String.__concat
  else
   local.get $0
   i32.const 0
   call $~lib/array/Array<~lib/string/String>#__get
  end
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=16
  local.get $1
  call $~lib/util/string/strtol<i32>
  local.get $0
  i32.const 1
  call $~lib/array/Array<~lib/string/String>#__get
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=16
  local.get $1
  call $~lib/util/string/strtol<i32>
  local.get $0
  i32.const 2
  call $~lib/array/Array<~lib/string/String>#__get
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  local.get $0
  call $~lib/util/string/strtol<i32>
  local.get $3
  local.get $4
  local.get $2
  local.get $5
  call $~lib/date/epochMillis
  call $~lib/date/Date#constructor
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $start:std/date
  (local $0 i32)
  (local $1 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  i32.const 1970
  i32.const 1
  i32.const 1
  i32.const 0
  i32.const 0
  i32.const 0
  i32.const 0
  call $~lib/date/epochMillis
  i64.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 3
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1970
  i32.const 1
  i32.const 1
  i32.const 0
  i32.const 0
  i32.const 0
  i32.const 0
  call $~lib/date/epochMillis
  i64.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 4
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2018
  i32.const 11
  i32.const 10
  i32.const 11
  i32.const 0
  i32.const 0
  i32.const 1
  call $~lib/date/epochMillis
  i64.const 1541847600001
  i64.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 7
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  memory.size
  i32.const 16
  i32.shl
  i32.const 19540
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 1216
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/pinSpace
  i32.const 1248
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/toSpace
  i32.const 1392
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/fromSpace
  global.get $~lib/memory/__stack_pointer
  i64.const 1541847600001
  call $~lib/date/Date#constructor
  local.tee $0
  i32.store
  local.get $0
  i64.load
  i64.const 1541847600001
  i64.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 15
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 1541847600002
  i64.store
  local.get $0
  i64.load
  i64.const 1541847600002
  i64.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 17
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 5918283958183706
  call $~lib/date/Date#constructor
  local.tee $0
  i32.store
  local.get $0
  call $~lib/date/Date#getUTCFullYear
  i32.const 189512
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 25
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/date/Date#getUTCMonth
  i32.const 11
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 26
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/date/Date#getUTCDate
  i32.const 14
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 27
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/date/Date#getUTCHours
  i32.const 22
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 28
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/date/Date#getUTCMinutes
  i32.const 9
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 29
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/date/Date#getUTCSeconds
  i32.const 43
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 30
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.load
  i64.const 1000
  i64.rem_s
  i32.wrap_i64
  i32.const 706
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 31
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 123814991274
  call $~lib/date/Date#constructor
  local.tee $0
  i32.store
  local.get $0
  call $~lib/date/Date#getUTCFullYear
  i32.const 1973
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 37
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/date/Date#getUTCMonth
  i32.const 11
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 38
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/date/Date#getUTCDate
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 39
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/date/Date#getUTCHours
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 40
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/date/Date#getUTCMinutes
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 41
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/date/Date#getUTCSeconds
  i32.const 11
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 42
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.load
  i64.const 1000
  i64.rem_s
  i32.wrap_i64
  i32.const 274
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 43
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 399464523963984
  call $~lib/date/Date#constructor
  local.tee $0
  i32.store
  local.get $0
  i64.load
  i64.const 1000
  i64.rem_s
  i32.wrap_i64
  i32.const 984
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 49
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 12
  call $~lib/date/Date#setUTCMilliseconds
  local.get $0
  i64.load
  i64.const 1000
  i64.rem_s
  i32.wrap_i64
  i32.const 12
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 51
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 568
  call $~lib/date/Date#setUTCMilliseconds
  local.get $0
  i64.load
  i64.const 1000
  i64.rem_s
  i32.wrap_i64
  i32.const 568
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 53
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/date/Date#setUTCMilliseconds
  local.get $0
  i32.const 999
  call $~lib/date/Date#setUTCMilliseconds
  global.get $~lib/memory/__stack_pointer
  i64.const 372027318331986
  call $~lib/date/Date#constructor
  local.tee $0
  i32.store
  local.get $0
  call $~lib/date/Date#getUTCSeconds
  i32.const 31
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 62
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 12
  call $~lib/date/Date#setUTCSeconds
  local.get $0
  call $~lib/date/Date#getUTCSeconds
  i32.const 12
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 64
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 50
  call $~lib/date/Date#setUTCSeconds
  local.get $0
  call $~lib/date/Date#getUTCSeconds
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 66
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/date/Date#setUTCSeconds
  local.get $0
  i32.const 59
  call $~lib/date/Date#setUTCSeconds
  global.get $~lib/memory/__stack_pointer
  i64.const 372027318331986
  call $~lib/date/Date#constructor
  local.tee $0
  i32.store
  local.get $0
  call $~lib/date/Date#getUTCMinutes
  i32.const 45
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 75
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 12
  call $~lib/date/Date#setUTCMinutes
  local.get $0
  call $~lib/date/Date#getUTCMinutes
  i32.const 12
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 77
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 50
  call $~lib/date/Date#setUTCMinutes
  local.get $0
  call $~lib/date/Date#getUTCMinutes
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 79
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/date/Date#setUTCMinutes
  local.get $0
  i32.const 59
  call $~lib/date/Date#setUTCMinutes
  global.get $~lib/memory/__stack_pointer
  i64.const 372027318331986
  call $~lib/date/Date#constructor
  local.tee $0
  i32.store
  local.get $0
  call $~lib/date/Date#getUTCHours
  i32.const 17
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 88
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 12
  call $~lib/date/Date#setUTCHours
  local.get $0
  call $~lib/date/Date#getUTCHours
  i32.const 12
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 90
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/date/Date#setUTCHours
  local.get $0
  call $~lib/date/Date#getUTCHours
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 92
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/date/Date#setUTCHours
  local.get $0
  i32.const 23
  call $~lib/date/Date#setUTCHours
  global.get $~lib/memory/__stack_pointer
  i64.const 123814991274
  call $~lib/date/Date#constructor
  local.tee $0
  i32.store
  local.get $0
  call $~lib/date/Date#getUTCFullYear
  i32.const 1973
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 101
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/date/Date#getUTCMonth
  i32.const 11
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 102
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 12
  call $~lib/date/Date#setUTCDate
  local.get $0
  call $~lib/date/Date#getUTCDate
  i32.const 12
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 106
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/date/Date#setUTCDate
  local.get $0
  call $~lib/date/Date#getUTCDate
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 108
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/date/Date#setUTCDate
  local.get $0
  i32.const 30
  call $~lib/date/Date#setUTCDate
  local.get $0
  i32.const 1
  call $~lib/date/Date#setUTCMonth
  local.get $0
  i32.const 1
  call $~lib/date/Date#setUTCDate
  local.get $0
  i32.const 31
  call $~lib/date/Date#setUTCDate
  local.get $0
  i32.const 2024
  call $~lib/date/Date#setUTCFullYear
  local.get $0
  i32.const 2
  call $~lib/date/Date#setUTCMonth
  local.get $0
  i32.const 1
  call $~lib/date/Date#setUTCDate
  local.get $0
  i32.const 29
  call $~lib/date/Date#setUTCDate
  global.get $~lib/memory/__stack_pointer
  i64.const 7899943856218720
  call $~lib/date/Date#constructor
  local.tee $0
  i32.store
  local.get $0
  call $~lib/date/Date#getUTCMonth
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 130
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 10
  call $~lib/date/Date#setUTCMonth
  local.get $0
  call $~lib/date/Date#getUTCMonth
  i32.const 10
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 132
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/date/Date#setUTCMonth
  local.get $0
  call $~lib/date/Date#getUTCMonth
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 134
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/date/Date#setUTCMonth
  local.get $0
  i32.const 12
  call $~lib/date/Date#setUTCMonth
  global.get $~lib/memory/__stack_pointer
  i64.const 7941202527925698
  call $~lib/date/Date#constructor
  local.tee $0
  i32.store
  local.get $0
  call $~lib/date/Date#getUTCFullYear
  i32.const 253616
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 143
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1976
  call $~lib/date/Date#setUTCFullYear
  local.get $0
  call $~lib/date/Date#getUTCFullYear
  i32.const 1976
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 145
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 20212
  call $~lib/date/Date#setUTCFullYear
  local.get $0
  call $~lib/date/Date#getUTCFullYear
  i32.const 20212
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 147
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 1231231231020
  call $~lib/date/Date#constructor
  local.tee $0
  i32.store
  local.get $0
  call $~lib/date/Date#toISOString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 2160
  i32.store offset=8
  local.get $0
  i32.const 2160
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 153
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 1231231231456
  call $~lib/date/Date#constructor
  local.tee $0
  i32.store
  local.get $0
  call $~lib/date/Date#toISOString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 2240
  i32.store offset=8
  local.get $0
  i32.const 2240
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 155
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 322331231231020
  call $~lib/date/Date#constructor
  local.tee $0
  i32.store
  local.get $0
  call $~lib/date/Date#toISOString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 2320
  i32.store offset=8
  local.get $0
  i32.const 2320
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 157
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 2400
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 2400
  call $~lib/date/Date.fromString
  local.tee $0
  i32.store
  local.get $0
  i64.load
  i64.const 192067200000
  i64.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 164
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 2704
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 2704
  call $~lib/date/Date.fromString
  local.tee $0
  i32.store
  local.get $0
  i64.load
  i64.const 192067200000
  i64.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 166
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 2752
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 2752
  call $~lib/date/Date.fromString
  local.tee $0
  i32.store
  local.get $0
  i64.load
  i64.const 11860387200000
  i64.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 168
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 2800
  i32.store offset=8
  i32.const 2800
  call $~lib/date/Date.fromString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i64.load
  global.get $~lib/memory/__stack_pointer
  i32.const 2848
  i32.store offset=8
  i32.const 2848
  call $~lib/date/Date.fromString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i64.load
  i64.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 171
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 2896
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 2896
  call $~lib/date/Date.fromString
  local.tee $0
  i32.store
  local.get $0
  i64.load
  i64.const 192112496000
  i64.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 178
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 2960
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 2960
  call $~lib/date/Date.fromString
  local.tee $0
  i32.store
  local.get $0
  i64.load
  i64.const 192112496456
  i64.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 182
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 3040
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 3040
  call $~lib/date/Date.fromString
  local.tee $0
  i32.store
  local.get $0
  i64.load
  i64.const 192112496456
  i64.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 186
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/date/Date#constructor (param $0 i64) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 3
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  local.get $1
  i64.const 0
  i64.store
  local.get $1
  local.get $0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/string/String#padStart (param $0 i32) (param $1 i32) (result i32)
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
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 1
  i32.const 1804
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.shl
  local.tee $3
  i32.eqz
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.shl
  local.tee $5
  local.get $1
  i32.const 1
  i32.shl
  local.tee $2
  i32.gt_u
  select
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  local.get $3
  local.get $2
  local.get $5
  i32.sub
  local.tee $2
  i32.lt_u
  if
   local.get $3
   local.get $2
   i32.const 2
   i32.sub
   local.get $3
   i32.div_u
   i32.mul
   local.tee $6
   local.set $7
   loop $while-continue|0
    local.get $4
    local.get $7
    i32.lt_u
    if
     local.get $1
     local.get $4
     i32.add
     i32.const 1808
     local.get $3
     call $~lib/memory/memory.copy
     local.get $3
     local.get $4
     i32.add
     local.set $4
     br $while-continue|0
    end
   end
   local.get $1
   local.get $6
   i32.add
   i32.const 1808
   local.get $2
   local.get $6
   i32.sub
   call $~lib/memory/memory.copy
  else
   local.get $1
   i32.const 1808
   local.get $2
   call $~lib/memory/memory.copy
  end
  local.get $1
  local.get $2
  i32.add
  local.get $0
  local.get $5
  call $~lib/memory/memory.copy
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/rt/__newArray (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 2
  i32.shl
  local.tee $3
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  i32.const 16
  i32.const 4
  call $~lib/rt/itcms/__new
  local.tee $1
  local.get $2
  i32.store
  local.get $1
  local.get $2
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $1
  local.get $2
  i32.store offset=4
  local.get $1
  local.get $3
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
 (func $~lib/array/Array<~lib/string/String>#__get (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1296
   i32.const 2496
   i32.const 92
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.store
  local.get $0
  i32.eqz
  if
   i32.const 2544
   i32.const 2496
   i32.const 96
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
)
