(module
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_none (func))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_=>_i64 (func (param i32 i32) (result i64)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_i32_i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32)))
 (type $i64_i32_i32_i32_i32_i32_i32_i32_i32_=>_none (func (param i64 i32 i32 i32 i32 i32 i32 i32 i32)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $i32_i64_=>_i32 (func (param i32 i64) (result i32)))
 (type $i64_i32_=>_i32 (func (param i64 i32) (result i32)))
 (type $none_=>_f64 (func (result f64)))
 (type $i32_i32_i32_i32_i32_i32_f64_=>_f64 (func (param i32 i32 i32 i32 i32 i32 f64) (result f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "Date" "UTC" (func $~lib/bindings/Date/UTC (param i32 i32 i32 i32 i32 i32 f64) (result f64)))
 (import "Date" "now" (func $~lib/bindings/Date/now (result f64)))
 (import "Date" "getTimezoneOffset" (func $~lib/bindings/Date/getTimezoneOffset (result i32)))
 (memory $0 1)
 (data (i32.const 1036) "<")
 (data (i32.const 1048) "\01\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data (i32.const 1132) "<")
 (data (i32.const 1144) "\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 1196) ",")
 (data (i32.const 1208) "\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data (i32.const 1244) "<")
 (data (i32.const 1256) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1372) "<")
 (data (i32.const 1384) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1436) "\1c")
 (data (i32.const 1448) "\01\00\00\00\06\00\00\00U\00T\00C")
 (data (i32.const 1468) "L")
 (data (i32.const 1484) "4\00\00\00\e2\ff\ff\ff\00\00\00\00\1f\00\00\00;\00\00\00Z\00\00\00x\00\00\00\97\00\00\00\b5\00\00\00\d4\00\00\00\f3\00\00\00\11\01\00\000\01\00\00N\01")
 (data (i32.const 1548) ",")
 (data (i32.const 1560) "\04\00\00\00\10\00\00\00\d0\05\00\00\d0\05\00\004\00\00\00\0d")
 (data (i32.const 1596) ",\01")
 (data (i32.const 1612) "\18\01\00\00;\f9\n\00\a8\fa\n\00\15\fc\n\00\83\fd\n\00\f0\fe\n\00]\00\0b\00\ca\01\0b\008\03\0b\00\a5\04\0b\00\12\06\0b\00\7f\07\0b\00\ed\08\0b\00Z\n\0b\00\c7\0b\0b\004\0d\0b\00\a2\0e\0b\00\0f\10\0b\00|\11\0b\00\e9\12\0b\00W\14\0b\00\c4\15\0b\001\17\0b\00\9e\18\0b\00\0c\1a\0b\00y\1b\0b\00\e6\1c\0b\00S\1e\0b\00\c1\1f\0b\00.!\0b\00\9b\"\0b\00\08$\0b\00v%\0b\00\e3&\0b\00P(\0b\00\bd)\0b\00++\0b\00\98,\0b\00\05.\0b\00r/\0b\00\e00\0b\00M2\0b\00\ba3\0b\00\'5\0b\00\956\0b\00\028\0b\00o9\0b\00\dc:\0b\00J<\0b\00\b7=\0b\00$?\0b\00\91@\0b\00\ffA\0b\00lC\0b\00\d9D\0b\00FF\0b\00\b4G\0b\00!I\0b\00\8eJ\0b\00\fbK\0b\00iM\0b\00\d6N\0b\00CP\0b\00\b0Q\0b\00\1eS\0b\00\8bT\0b\00\f8U\0b\00eW\0b\00\d3X\0b\00@Z\0b\00\ad[\0b")
 (data (i32.const 1900) ",")
 (data (i32.const 1912) "\04\00\00\00\10\00\00\00P\06\00\00P\06\00\00\18\01\00\00F")
 (data (i32.const 1948) ",")
 (data (i32.const 1960) "\01\00\00\00\16\00\00\00s\00t\00d\00/\00d\00a\00t\00e\00.\00t\00s")
 (data (i32.const 1996) "\1c")
 (data (i32.const 2008) "\01\00\00\00\06\00\00\00G\00M\00T")
 (data (i32.const 2028) "<")
 (data (i32.const 2040) "\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l")
 (data (i32.const 2092) ",")
 (data (i32.const 2104) "\01\00\00\00\18\00\00\00~\00l\00i\00b\00/\00d\00a\00t\00e\00.\00t\00s")
 (data (i32.const 2140) ",")
 (data (i32.const 2152) "\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 2192) "\07\00\00\00 \00\00\00\00\00\00\00 ")
 (data (i32.const 2228) "\02\t")
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 1024))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/util/date/TimeZone.UTC_TIME_ZONE (mut i32) (i32.const 0))
 (global $std/date/creationTime (mut i64) (i64.const 0))
 (global $std/date/date (mut i32) (i32.const 0))
 (global $std/date/millis (mut i64) (i64.const 0))
 (global $std/date/date1 (mut i32) (i32.const 0))
 (global $std/date/date2 (mut i32) (i32.const 0))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 18636))
 (export "memory" (memory $0))
 (start $~start)
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
 (func $~lib/rt/itcms/initLazy (param $0 i32) (result i32)
  local.get $0
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $0
  i32.store offset=8
  local.get $0
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
    i32.const 1056
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
    i32.const 18636
    i32.lt_u
    local.get $0
    i32.load offset=8
    select
    i32.eqz
    if
     i32.const 0
     i32.const 1056
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
    i32.const 1056
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
   i32.const 2192
   i32.load
   i32.gt_u
   if
    i32.const 1152
    i32.const 1216
    i32.const 22
    i32.const 28
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 3
   i32.shl
   i32.const 2196
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
 (func $~lib/rt/itcms/__link (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  i32.eqz
  if
   return
  end
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 1056
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
   i32.load offset=4
   i32.const 3
   i32.and
   local.tee $0
   local.set $2
   local.get $0
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $1
    call $~lib/rt/itcms/Object#makeGray
   else
    global.get $~lib/rt/itcms/state
    i32.const 1
    i32.eq
    i32.const 0
    local.get $2
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
 (func $~lib/util/date/TimeZone#set:ID (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  call $~lib/rt/itcms/__link
 )
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  global.get $std/date/date
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/date/date1
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/date/date2
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 1152
  call $~lib/rt/itcms/__visit
  i32.const 1264
  call $~lib/rt/itcms/__visit
  global.get $~lib/util/date/TimeZone.UTC_TIME_ZONE
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 1568
  call $~lib/rt/itcms/__visit
  i32.const 1920
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
     i32.const 1056
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
   i32.const 1392
   i32.const 273
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const -4
  i32.and
  local.tee $2
  i32.const 1073741820
  i32.lt_u
  i32.const 0
  local.get $2
  i32.const 12
  i32.ge_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 275
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
   local.get $2
   i32.const 31
   local.get $2
   i32.clz
   i32.sub
   local.tee $3
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
   i32.const 1392
   i32.const 288
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
  (local $7 i32)
  (local $8 i32)
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
  local.tee $4
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
  local.tee $5
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  if
   local.get $4
   i32.const -4
   i32.and
   i32.const 4
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.const 1073741820
   i32.lt_u
   if
    local.get $0
    local.get $5
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $3
    local.get $4
    i32.const 3
    i32.and
    i32.or
    local.tee $4
    i32.store
    local.get $1
    i32.const 4
    i32.add
    local.get $1
    i32.load
    i32.const -4
    i32.and
    i32.add
    local.tee $5
    i32.load
    local.set $2
   end
  end
  local.get $4
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $3
   i32.load
   local.tee $7
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1392
    i32.const 224
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $7
   i32.const -4
   i32.and
   i32.const 4
   i32.add
   local.get $4
   i32.const -4
   i32.and
   i32.add
   local.tee $8
   i32.const 1073741820
   i32.lt_u
   if (result i32)
    local.get $0
    local.get $3
    call $~lib/rt/tlsf/removeBlock
    local.get $3
    local.get $8
    local.get $7
    i32.const 3
    i32.and
    i32.or
    local.tee $4
    i32.store
    local.get $3
   else
    local.get $1
   end
   local.set $1
  end
  local.get $5
  local.get $2
  i32.const 2
  i32.or
  i32.store
  local.get $4
  i32.const -4
  i32.and
  local.tee $3
  i32.const 1073741820
  i32.lt_u
  i32.const 0
  local.get $3
  i32.const 12
  i32.ge_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 239
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  local.get $3
  local.get $1
  i32.const 4
  i32.add
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 1392
   i32.const 240
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $3
  i32.const 256
  i32.lt_u
  if
   local.get $3
   i32.const 4
   i32.shr_u
   local.set $3
  else
   local.get $3
   i32.const 31
   local.get $3
   i32.clz
   i32.sub
   local.tee $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $3
   local.get $4
   i32.const 7
   i32.sub
   local.set $6
  end
  local.get $3
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $6
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 256
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $3
  local.get $6
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
  local.get $6
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
  local.get $6
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $6
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
   i32.const 1392
   i32.const 381
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
    i32.const 1392
    i32.const 388
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
    i32.const 1392
    i32.const 401
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
  i32.const 18640
  i32.const 0
  i32.store
  i32.const 20208
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
    i32.const 18640
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
      i32.const 18640
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
  i32.const 18640
  i32.const 20212
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 18640
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
       i32.const 18636
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
      i32.const 1056
      i32.const 228
      i32.const 20
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     i32.const 18636
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
      i32.const 18636
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
        i32.const 1392
        i32.const 565
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
  i32.ge_u
  if
   i32.const 1264
   i32.const 1392
   i32.const 462
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
    i32.const 1392
    i32.const 500
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
   i32.const 1392
   i32.const 502
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
   i32.const 1392
   i32.const 361
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
   i32.const 4
   i32.sub
   local.tee $2
   i32.const 0
   i32.store8 offset=3
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
   i32.const 0
   i32.store8 offset=2
   local.get $2
   i32.const 0
   i32.store8 offset=1
   local.get $1
   i32.const 6
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 offset=3
   local.get $2
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
   i32.const 28
   i32.sub
   local.tee $1
   i32.const 0
   i32.store offset=24
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
   i32.const 0
   i32.store offset=16
   local.get $1
   i32.const 0
   i32.store offset=20
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
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.store offset=12
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
   i32.const 1264
   i32.const 1056
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
 (func $~lib/date/Date#set:timeZone (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  call $~lib/rt/itcms/__link
 )
 (func $~lib/date/Date#set:localDate (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $1
  call $~lib/rt/itcms/__link
 )
 (func $~lib/date/Date#set:utcDate (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
  local.get $0
  local.get $1
  call $~lib/rt/itcms/__link
 )
 (func $~lib/util/date/CalendarUtils.floorDivide (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ge_s
  if (result i32)
   local.get $0
   local.get $1
   i32.div_s
  else
   local.get $0
   i32.const 1
   i32.add
   local.get $1
   i32.div_s
   i32.const 1
   i32.sub
  end
 )
 (func $~lib/util/date/CalendarUtils.mod (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $0
  local.get $1
  call $~lib/util/date/CalendarUtils.floorDivide
  local.get $1
  i32.mul
  i32.sub
 )
 (func $~lib/util/date/CalendarUtils.getYearFromFixedDate (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 0
  i32.gt_s
  if (result i32)
   local.get $0
   i32.const 1
   i32.sub
   local.tee $0
   i32.const 146097
   i32.div_s
   local.set $2
   local.get $0
   i32.const 146097
   i32.rem_s
   local.tee $1
   i32.const 36524
   i32.div_s
   local.set $0
   local.get $1
   i32.const 36524
   i32.rem_s
   local.tee $1
   i32.const 1461
   i32.div_s
   local.set $3
   local.get $1
   i32.const 1461
   i32.rem_s
   i32.const 365
   i32.div_s
  else
   local.get $0
   i32.const 1
   i32.sub
   local.tee $0
   i32.const 146097
   call $~lib/util/date/CalendarUtils.floorDivide
   local.set $2
   local.get $0
   i32.const 146097
   call $~lib/util/date/CalendarUtils.mod
   local.tee $1
   i32.const 36524
   call $~lib/util/date/CalendarUtils.floorDivide
   local.set $0
   local.get $1
   i32.const 36524
   call $~lib/util/date/CalendarUtils.mod
   local.tee $1
   i32.const 1461
   call $~lib/util/date/CalendarUtils.floorDivide
   local.set $3
   local.get $1
   i32.const 1461
   call $~lib/util/date/CalendarUtils.mod
   i32.const 365
   call $~lib/util/date/CalendarUtils.floorDivide
  end
  local.tee $1
  local.get $2
  i32.const 400
  i32.mul
  local.get $0
  i32.const 100
  i32.mul
  i32.add
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  i32.add
  local.tee $2
  local.get $2
  i32.const 1
  i32.add
  i32.const 1
  local.get $1
  i32.const 4
  i32.eq
  local.get $0
  i32.const 4
  i32.eq
  select
  select
 )
 (func $~lib/array/Array<i32>#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1152
   i32.const 2160
   i32.const 92
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/util/date/CalendarDate#set:timeZone (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=56
  local.get $0
  local.get $1
  call $~lib/rt/itcms/__link
 )
 (func $~lib/util/date/setHours (param $0 i32)
  local.get $0
  i32.load offset=16
  i32.const 24
  i32.ne
  if
   local.get $0
   local.get $0
   i64.load offset=40
   i32.const 24
   local.get $0
   i32.load offset=16
   i32.sub
   i64.extend_i32_s
   i64.const 3600000
   i64.mul
   i64.add
   i64.store offset=40
   local.get $0
   i32.const 0
   i32.store8 offset=32
  end
 )
 (func $~lib/util/date/setMinutes (param $0 i32)
  local.get $0
  i32.load offset=20
  i32.const 1495
  i32.ne
  if
   local.get $0
   local.get $0
   i64.load offset=40
   i32.const 1495
   local.get $0
   i32.load offset=20
   i32.sub
   i64.extend_i32_s
   i64.const 60000
   i64.mul
   i64.add
   i64.store offset=40
   local.get $0
   i32.const 0
   i32.store8 offset=32
  end
 )
 (func $~lib/util/date/setSeconds (param $0 i32)
  local.get $0
  i32.load offset=24
  i32.const 360
  i32.ne
  if
   local.get $0
   local.get $0
   i64.load offset=40
   i32.const 360
   local.get $0
   i32.load offset=24
   i32.sub
   i64.extend_i32_s
   i64.const 1000
   i64.mul
   i64.add
   i64.store offset=40
   local.get $0
   i32.const 0
   i32.store8 offset=32
  end
 )
 (func $~lib/util/date/setMilliseconds (param $0 i32)
  local.get $0
  i32.load offset=28
  i32.const 1001
  i32.ne
  if
   local.get $0
   local.get $0
   i64.load offset=40
   i32.const 1001
   local.get $0
   i32.load offset=28
   i32.sub
   i64.extend_i32_s
   i64.add
   i64.store offset=40
   local.get $0
   i32.const 0
   i32.store8 offset=32
  end
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  block $folding-inner0
   block $invalid
    block $~lib/util/date/CalendarDate
     block $~lib/date/Date
      block $~lib/array/Array<i32>
       block $~lib/string/String
        block $~lib/arraybuffer/ArrayBuffer
         local.get $0
         i32.const 8
         i32.sub
         i32.load
         br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $folding-inner0 $folding-inner0 $~lib/array/Array<i32> $~lib/date/Date $~lib/util/date/CalendarDate $invalid
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
     i32.load offset=8
     local.tee $1
     if
      local.get $1
      call $~lib/rt/itcms/__visit
     end
     local.get $0
     i32.load offset=12
     local.tee $1
     if
      local.get $1
      call $~lib/rt/itcms/__visit
     end
     local.get $0
     i32.load offset=16
     local.tee $0
     if
      local.get $0
      call $~lib/rt/itcms/__visit
     end
     return
    end
    local.get $0
    i32.load offset=56
    local.tee $0
    if
     local.get $0
     call $~lib/rt/itcms/__visit
    end
    return
   end
   unreachable
  end
  local.get $0
  i32.load
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~start
  call $start:std/date
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 2252
  i32.lt_s
  if
   i32.const 18656
   i32.const 18704
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/date/Date#constructor (param $0 i64) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.const 5
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  local.get $1
  i64.const 0
  i64.store
  local.get $1
  i32.const 0
  call $~lib/date/Date#set:timeZone
  local.get $1
  i32.const 0
  call $~lib/date/Date#set:localDate
  local.get $1
  i32.const 0
  call $~lib/date/Date#set:utcDate
  local.get $1
  local.get $0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 2016
  i32.store offset=4
  local.get $1
  i32.const 2016
  call $~lib/bindings/Date/getTimezoneOffset
  call $~lib/util/date/TimeZone#constructor
  call $~lib/date/Date#set:timeZone
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/util/date/CalendarUtils.getFixedDate (param $0 i32) (param $1 i32) (result i32)
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
  local.get $0
  i32.const 2039
  i32.le_s
  i32.const 0
  local.get $0
  i32.const 1970
  i32.ge_s
  select
  i32.const 0
  local.get $1
  i32.const 1
  i32.eq
  select
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 1920
   i32.store
   i32.const 1920
   local.get $0
   i32.const 1970
   i32.sub
   call $~lib/array/Array<i32>#__get
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  local.get $0
  i32.const 1
  i32.sub
  local.tee $2
  i32.const 0
  i32.ge_s
  if (result i32)
   local.get $2
   i32.const 4
   i32.div_s
   local.get $2
   i32.const 100
   i32.div_s
   i32.sub
   local.get $2
   i32.const 400
   i32.div_s
   i32.add
  else
   local.get $2
   i32.const 4
   call $~lib/util/date/CalendarUtils.floorDivide
   local.get $2
   i32.const 100
   call $~lib/util/date/CalendarUtils.floorDivide
   i32.sub
   local.get $2
   i32.const 400
   call $~lib/util/date/CalendarUtils.floorDivide
   i32.add
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  i32.const 365
  i32.mul
  i32.add
  local.get $1
  i32.const 367
  i32.mul
  i32.const 362
  i32.sub
  i32.const 12
  i32.div_s
  i32.add
  i32.const 1
  i32.add
  local.tee $2
  i32.const 1
  i32.const 2
  i32.const 0
  i32.const 1
  local.get $0
  i32.const 15
  i32.and
  i32.eqz
  local.get $0
  i32.const 25
  i32.rem_s
  select
  local.get $0
  i32.const 3
  i32.and
  select
  select
  i32.sub
  local.get $2
  local.get $1
  i32.const 2
  i32.gt_s
  select
 )
 (func $~lib/util/date/setCalendarDateFromFixedDate (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  local.get $1
  call $~lib/util/date/CalendarUtils.getYearFromFixedDate
  local.tee $4
  i32.const 1
  call $~lib/util/date/CalendarUtils.getFixedDate
  local.tee $3
  i32.sub
  local.set $5
  local.get $1
  local.get $3
  i32.const 59
  i32.add
  local.tee $2
  i32.const 1
  i32.add
  local.get $2
  i32.const 0
  i32.const 1
  local.get $4
  i32.const 15
  i32.and
  i32.eqz
  local.get $4
  i32.const 25
  i32.rem_s
  select
  local.get $4
  i32.const 3
  i32.and
  select
  local.tee $6
  select
  i32.ge_s
  if (result i32)
   local.get $5
   i32.const 1
   i32.const 2
   local.get $6
   select
   i32.add
  else
   local.get $5
  end
  i32.const 12
  i32.mul
  i32.const 373
  i32.add
  local.tee $2
  i32.const 0
  i32.gt_s
  if (result i32)
   local.get $2
   i32.const 367
   i32.div_s
  else
   local.get $2
   i32.const 367
   call $~lib/util/date/CalendarUtils.floorDivide
  end
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 1568
  i32.store
  i32.const 1568
  local.get $2
  call $~lib/array/Array<i32>#__get
  local.get $3
  i32.add
  local.set $3
  local.get $1
  i32.const 0
  i32.ge_s
  if (result i32)
   local.get $1
   i32.const 7
   i32.rem_s
   i32.const 1
   i32.add
  else
   local.get $1
   i32.const 7
   call $~lib/util/date/CalendarUtils.mod
   i32.const 1
   i32.add
  end
  local.set $5
  local.get $0
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.store offset=4
  local.get $0
  local.get $1
  local.get $3
  i32.const 1
  i32.add
  local.get $3
  local.get $2
  i32.const 3
  i32.ge_s
  i32.const 0
  local.get $6
  select
  select
  i32.sub
  i32.const 1
  i32.add
  i32.store offset=8
  local.get $0
  local.get $5
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=52
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/util/date/getCalendarDate (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=56
  local.tee $2
  i32.store
  local.get $2
  if (result i32)
   local.get $2
   i32.load offset=4
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   local.get $2
   i32.load offset=4
   i64.extend_i32_s
   local.tee $4
   i64.add
   i64.const 86400000
   i64.div_s
   i32.wrap_i64
   local.set $3
   local.get $1
   local.get $4
   i64.add
   i64.const 86400000
   i64.rem_s
   i32.wrap_i64
  else
   local.get $1
   i64.const 86400000
   i64.div_s
   i32.wrap_i64
   local.set $3
   local.get $1
   i64.const 86400000
   i64.rem_s
   i32.wrap_i64
  end
  local.set $2
  local.get $0
  local.get $1
  i64.store offset=40
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $3
  i32.const 719163
  i32.add
  call $~lib/util/date/setCalendarDateFromFixedDate
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $2
  i32.const 3600000
  i32.div_s
  i32.store offset=16
  local.get $0
  local.get $2
  i32.const 3600000
  i32.rem_s
  local.tee $3
  i32.const 60000
  i32.div_s
  i32.store offset=20
  local.get $0
  local.get $3
  i32.const 60000
  i32.rem_s
  local.tee $3
  i32.const 1000
  i32.div_s
  i32.store offset=24
  local.get $0
  local.get $3
  i32.const 1000
  i32.rem_s
  i32.store offset=28
  local.get $0
  local.get $2
  i32.store offset=48
  local.get $0
  i32.const 1
  i32.store8 offset=32
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/date/Date#getUTCCalendarDate (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
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
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load offset=16
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=16
   local.tee $1
   i32.store
   local.get $1
   i32.eqz
   if
    i32.const 2048
    i32.const 2112
    i32.const 88
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i64.load offset=40
   local.get $0
   i64.load
   i64.eq
  else
   i32.const 0
  end
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=16
   local.tee $1
   i32.store
   local.get $1
   i32.eqz
   if
    i32.const 2048
    i32.const 2112
    i32.const 89
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.load8_u offset=32
  else
   i32.const 0
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=16
   local.tee $0
   i32.store offset=4
   local.get $0
   i32.eqz
   if
    i32.const 2048
    i32.const 2112
    i32.const 70
    i32.const 14
    call $~lib/builtins/abort
    unreachable
   end
  else
   local.get $0
   i32.load offset=16
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=16
    local.tee $1
    i32.store offset=4
    local.get $1
    i32.eqz
    if
     i32.const 2048
     i32.const 2112
     i32.const 72
     i32.const 30
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $1
    local.get $0
    i64.load
    call $~lib/util/date/getCalendarDate
    local.set $0
   else
    local.get $0
    i64.load
    local.set $2
    global.get $~lib/memory/__stack_pointer
    global.get $~lib/util/date/TimeZone.UTC_TIME_ZONE
    local.tee $1
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    local.get $1
    call $~lib/util/date/CalendarDate#constructor
    local.tee $1
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $0
    local.get $1
    local.get $0
    i64.load
    call $~lib/util/date/getCalendarDate
    call $~lib/date/Date#set:utcDate
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=16
    local.tee $0
    i32.store offset=12
    local.get $0
    i32.eqz
    if
     i32.const 2048
     i32.const 2112
     i32.const 76
     i32.const 14
     call $~lib/builtins/abort
     unreachable
    end
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $std/date/test_utc_date (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (param $7 i32) (param $8 i32)
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
  i32.store
  local.get $1
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
  i32.store
  local.get $0
  call $~lib/date/Date#getUTCCalendarDate
  i32.load
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.ne
  if
   i32.const 0
   i32.const 1968
   i32.const 7
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
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
  i32.store
  local.get $0
  call $~lib/date/Date#getUTCCalendarDate
  i32.load offset=4
  i32.const 1
  i32.sub
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  i32.ne
  if
   i32.const 0
   i32.const 1968
   i32.const 8
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
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
  i32.store
  local.get $0
  call $~lib/date/Date#getUTCCalendarDate
  i32.load offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  i32.ne
  if
   i32.const 0
   i32.const 1968
   i32.const 9
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
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
  i32.store
  local.get $0
  call $~lib/date/Date#getUTCCalendarDate
  i32.load offset=12
  i32.const 1
  i32.sub
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  i32.ne
  if
   i32.const 0
   i32.const 1968
   i32.const 10
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
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
  i32.store
  local.get $0
  call $~lib/date/Date#getUTCCalendarDate
  i32.load offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  i32.ne
  if
   i32.const 0
   i32.const 1968
   i32.const 11
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
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
  i32.store
  local.get $0
  call $~lib/date/Date#getUTCCalendarDate
  i32.load offset=20
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  i32.ne
  if
   i32.const 0
   i32.const 1968
   i32.const 12
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
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
  i32.store
  local.get $0
  call $~lib/date/Date#getUTCCalendarDate
  i32.load offset=24
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
  i32.ne
  if
   i32.const 0
   i32.const 1968
   i32.const 13
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
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
  i32.store
  local.get $0
  call $~lib/date/Date#getUTCCalendarDate
  i32.load offset=28
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
  i32.ne
  if
   i32.const 0
   i32.const 1968
   i32.const 14
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $std/date/test_utc_millis (param $0 i64) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (param $7 i32) (param $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/date/Date#constructor
  local.tee $9
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  local.get $9
  local.get $1
  local.get $2
  local.get $3
  local.get $4
  local.get $5
  local.get $6
  local.get $7
  local.get $8
  call $std/date/test_utc_date
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/util/date/setFullYear (param $0 i32) (param $1 i32)
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
  local.get $1
  local.get $0
  i32.load
  i32.ne
  if
   local.get $0
   i32.load
   i32.const 1
   call $~lib/util/date/CalendarUtils.getFixedDate
   local.set $2
   local.get $1
   i32.const 1
   call $~lib/util/date/CalendarUtils.getFixedDate
   local.tee $1
   local.get $0
   i32.load offset=52
   local.get $2
   i32.sub
   i32.add
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.get $3
   call $~lib/util/date/setCalendarDateFromFixedDate
   local.get $0
   local.get $0
   i64.load offset=40
   local.get $1
   local.get $2
   i32.sub
   i64.extend_i32_s
   i64.const 86400000
   i64.mul
   i64.add
   i64.store offset=40
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/date/Date#setUTCFullYear (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/date/Date#getUTCCalendarDate
  local.tee $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $1
  call $~lib/util/date/setFullYear
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $2
  i64.load offset=40
  local.tee $3
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/util/date/setMonth (param $0 i32) (param $1 i32)
  (local $2 i32)
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
  i32.load offset=4
  i32.ne
  if
   local.get $1
   i32.const 12
   call $~lib/util/date/CalendarUtils.floorDivide
   local.set $2
   local.get $1
   i32.const 12
   call $~lib/util/date/CalendarUtils.mod
   local.set $1
   local.get $0
   i32.load offset=8
   local.get $2
   local.get $0
   i32.load
   i32.add
   local.get $1
   call $~lib/util/date/CalendarUtils.getFixedDate
   i32.add
   i32.const 1
   i32.sub
   local.set $1
   local.get $0
   i32.load offset=52
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.get $1
   call $~lib/util/date/setCalendarDateFromFixedDate
   local.get $0
   local.get $0
   i64.load offset=40
   local.get $1
   local.get $2
   i32.sub
   i64.extend_i32_s
   i64.const 86400000
   i64.mul
   i64.add
   i64.store offset=40
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/date/Date#setUTCMonth (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/date/Date#getUTCCalendarDate
  local.tee $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $1
  i32.const 1
  i32.add
  call $~lib/util/date/setMonth
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $2
  i64.load offset=40
  local.tee $3
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/util/date/setDate (param $0 i32) (param $1 i32)
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
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ne
  if
   local.get $1
   local.get $0
   i32.load offset=52
   i32.add
   local.get $0
   i32.load offset=8
   local.tee $2
   i32.sub
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.get $3
   call $~lib/util/date/setCalendarDateFromFixedDate
   local.get $0
   local.get $0
   i64.load offset=40
   local.get $1
   local.get $2
   i32.sub
   i64.extend_i32_s
   i64.const 86400000
   i64.mul
   i64.add
   i64.store offset=40
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/date/Date#getLocalCalendarDate (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
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
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load offset=12
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=12
   local.tee $1
   i32.store
   local.get $1
   i32.eqz
   if
    i32.const 2048
    i32.const 2112
    i32.const 82
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i64.load offset=40
   local.get $0
   i64.load
   i64.eq
  else
   i32.const 0
  end
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=12
   local.tee $1
   i32.store
   local.get $1
   i32.eqz
   if
    i32.const 2048
    i32.const 2112
    i32.const 83
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.load8_u offset=32
  else
   i32.const 0
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=12
   local.tee $0
   i32.store offset=4
   local.get $0
   i32.eqz
   if
    i32.const 2048
    i32.const 2112
    i32.const 58
    i32.const 14
    call $~lib/builtins/abort
    unreachable
   end
  else
   local.get $0
   i32.load offset=12
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=12
    local.tee $1
    i32.store offset=4
    local.get $1
    i32.eqz
    if
     i32.const 2048
     i32.const 2112
     i32.const 59
     i32.const 43
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i32.load8_u offset=32
    i32.eqz
   else
    i32.const 0
   end
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=12
    local.tee $1
    i32.store offset=4
    local.get $1
    i32.eqz
    if
     i32.const 2048
     i32.const 2112
     i32.const 60
     i32.const 30
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $1
    local.get $0
    i64.load
    call $~lib/util/date/getCalendarDate
    local.set $0
   else
    local.get $0
    i64.load
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=8
    local.tee $1
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    local.get $1
    call $~lib/util/date/CalendarDate#constructor
    local.tee $1
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $0
    local.get $1
    local.get $0
    i64.load
    call $~lib/util/date/getCalendarDate
    call $~lib/date/Date#set:localDate
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=12
    local.tee $0
    i32.store offset=12
    local.get $0
    i32.eqz
    if
     i32.const 2048
     i32.const 2112
     i32.const 64
     i32.const 14
     call $~lib/builtins/abort
     unreachable
    end
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $start:std/date
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 1104
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/toSpace
  i32.const 1312
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/pinSpace
  i32.const 1344
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/fromSpace
  global.get $~lib/memory/__stack_pointer
  i32.const 1456
  i32.store
  i32.const 1456
  i32.const 0
  call $~lib/util/date/TimeZone#constructor
  global.set $~lib/util/date/TimeZone.UTC_TIME_ZONE
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 1970
  i32.const 0
  i32.const 1
  i32.const 0
  i32.const 0
  i32.const 0
  f64.const 0
  call $~lib/bindings/Date/UTC
  i64.trunc_f64_s
  i64.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 1968
   i32.const 17
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1970
  i32.const 0
  i32.const 1
  i32.const 0
  i32.const 0
  i32.const 0
  f64.const 0
  call $~lib/bindings/Date/UTC
  i64.trunc_f64_s
  i64.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 1968
   i32.const 18
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2018
  i32.const 10
  i32.const 10
  i32.const 11
  i32.const 0
  i32.const 0
  f64.const 1
  call $~lib/bindings/Date/UTC
  i64.trunc_f64_s
  global.set $std/date/creationTime
  global.get $std/date/creationTime
  i64.const 1541847600001
  i64.ne
  if
   i32.const 0
   i32.const 1968
   i32.const 21
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/bindings/Date/now
  i64.trunc_f64_s
  global.get $std/date/creationTime
  i64.le_s
  if
   i32.const 0
   i32.const 1968
   i32.const 23
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/date/creationTime
  call $~lib/date/Date#constructor
  global.set $std/date/date
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date
  local.tee $0
  i32.store
  global.get $std/date/creationTime
  local.get $0
  i64.load
  i64.ne
  if
   i32.const 0
   i32.const 1968
   i32.const 26
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date
  local.tee $0
  i32.store
  local.get $0
  global.get $std/date/creationTime
  i64.const 1
  i64.add
  i64.store
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date
  local.tee $0
  i32.store
  local.get $0
  i64.load
  global.get $std/date/creationTime
  i64.const 1
  i64.add
  i64.ne
  if
   i32.const 0
   i32.const 1968
   i32.const 28
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2018
  i32.const 10
  i32.const 10
  i32.const 11
  i32.const 0
  i32.const 0
  f64.const 1
  call $~lib/bindings/Date/UTC
  i64.trunc_f64_s
  global.set $std/date/creationTime
  global.get $std/date/creationTime
  i32.const 2018
  i32.const 10
  i32.const 10
  i32.const 6
  i32.const 11
  i32.const 0
  i32.const 0
  i32.const 1
  call $std/date/test_utc_millis
  i32.const 1970
  i32.const 0
  i32.const 1
  i32.const 0
  i32.const 0
  i32.const 0
  f64.const 0
  call $~lib/bindings/Date/UTC
  i64.trunc_f64_s
  global.set $std/date/creationTime
  global.get $std/date/creationTime
  i32.const 1970
  i32.const 0
  i32.const 1
  i32.const 4
  i32.const 0
  i32.const 0
  i32.const 0
  i32.const 0
  call $std/date/test_utc_millis
  i32.const 70
  i32.const 0
  i32.const 1
  i32.const 11
  i32.const 11
  i32.const 22
  f64.const 22
  call $~lib/bindings/Date/UTC
  i64.trunc_f64_s
  global.set $std/date/creationTime
  global.get $std/date/creationTime
  i32.const 1970
  i32.const 0
  i32.const 1
  i32.const 4
  i32.const 11
  i32.const 11
  i32.const 22
  i32.const 22
  call $std/date/test_utc_millis
  i32.const 0
  i32.const 0
  i32.const 1
  i32.const 0
  i32.const 0
  i32.const 0
  f64.const 0
  call $~lib/bindings/Date/UTC
  i64.trunc_f64_s
  global.set $std/date/creationTime
  global.get $std/date/creationTime
  i32.const 1900
  i32.const 0
  i32.const 1
  i32.const 1
  i32.const 0
  i32.const 0
  i32.const 0
  i32.const 0
  call $std/date/test_utc_millis
  i32.const 2018
  i32.const 12
  i32.const 12
  i32.const 12
  i32.const 12
  i32.const 61
  f64.const 61
  call $~lib/bindings/Date/UTC
  i64.trunc_f64_s
  global.set $std/date/creationTime
  global.get $std/date/creationTime
  i32.const 2019
  i32.const 0
  i32.const 12
  i32.const 6
  i32.const 12
  i32.const 13
  i32.const 1
  i32.const 61
  call $std/date/test_utc_millis
  i32.const 2000
  i32.const 1
  i32.const 29
  i32.const 0
  i32.const 0
  i32.const 0
  f64.const 0
  call $~lib/bindings/Date/UTC
  i64.trunc_f64_s
  global.set $std/date/creationTime
  global.get $std/date/creationTime
  call $~lib/date/Date#constructor
  global.set $std/date/date
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date
  local.tee $0
  i32.store
  local.get $0
  i32.const 2000
  call $~lib/date/Date#setUTCFullYear
  global.set $std/date/millis
  global.get $std/date/millis
  i64.const 951782400000
  i64.ne
  if
   i32.const 0
   i32.const 1968
   i32.const 50
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date
  local.tee $0
  i32.store
  local.get $0
  i32.const 2000
  i32.const 1
  i32.const 29
  i32.const 2
  i32.const 0
  i32.const 0
  i32.const 0
  i32.const 0
  call $std/date/test_utc_date
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date
  local.tee $0
  i32.store
  local.get $0
  i32.const 1999
  call $~lib/date/Date#setUTCFullYear
  global.set $std/date/millis
  global.get $std/date/millis
  i64.const 920246400000
  i64.ne
  if
   i32.const 0
   i32.const 1968
   i32.const 53
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date
  local.tee $0
  i32.store
  local.get $0
  i32.const 1999
  i32.const 2
  i32.const 1
  i32.const 1
  i32.const 0
  i32.const 0
  i32.const 0
  i32.const 0
  call $std/date/test_utc_date
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date
  local.tee $0
  i32.store
  local.get $0
  i32.const 1996
  call $~lib/date/Date#setUTCFullYear
  global.set $std/date/millis
  global.get $std/date/millis
  i64.const 825552000000
  i64.ne
  if
   i32.const 0
   i32.const 1968
   i32.const 56
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date
  local.tee $0
  i32.store
  local.get $0
  i32.const 1996
  i32.const 1
  i32.const 29
  i32.const 4
  i32.const 0
  i32.const 0
  i32.const 0
  i32.const 0
  call $std/date/test_utc_date
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date
  local.tee $0
  i32.store
  local.get $0
  i32.const 13
  call $~lib/date/Date#setUTCMonth
  drop
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date
  local.tee $0
  i32.store
  local.get $0
  i32.const 1997
  i32.const 2
  i32.const 1
  i32.const 6
  i32.const 0
  i32.const 0
  i32.const 0
  i32.const 0
  call $std/date/test_utc_date
  i64.const 825552000000
  call $~lib/date/Date#constructor
  global.set $std/date/date
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date
  local.tee $0
  i32.store
  local.get $0
  i32.const -11
  call $~lib/date/Date#setUTCMonth
  i64.const 794016000000
  i64.ne
  if
   i32.const 0
   i32.const 1968
   i32.const 64
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date
  local.tee $0
  i32.store
  local.get $0
  i32.const 1995
  i32.const 2
  i32.const 1
  i32.const 3
  i32.const 0
  i32.const 0
  i32.const 0
  i32.const 0
  call $std/date/test_utc_date
  i32.const 1996
  i32.const 1
  i32.const 29
  i32.const 0
  i32.const 0
  i32.const 0
  f64.const 0
  call $~lib/bindings/Date/UTC
  i64.trunc_f64_s
  call $~lib/date/Date#constructor
  global.set $std/date/date
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/date/Date#getUTCCalendarDate
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 30
  call $~lib/util/date/setDate
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  i64.load offset=40
  local.tee $2
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  i64.const 825638400000
  i64.ne
  if
   i32.const 0
   i32.const 1968
   i32.const 69
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date
  local.tee $0
  i32.store
  local.get $0
  i32.const 1996
  i32.const 2
  i32.const 1
  i32.const 5
  i32.const 0
  i32.const 0
  i32.const 0
  i32.const 0
  call $std/date/test_utc_date
  i32.const 1996
  i32.const 1
  i32.const 29
  i32.const 0
  i32.const 0
  i32.const 0
  f64.const 0
  call $~lib/bindings/Date/UTC
  i64.trunc_f64_s
  call $~lib/date/Date#constructor
  global.set $std/date/date
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/date/Date#getUTCCalendarDate
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/util/date/setHours
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  i64.load offset=40
  local.tee $2
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  i64.const 825638400000
  i64.ne
  if
   i32.const 0
   i32.const 1968
   i32.const 74
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date
  local.tee $0
  i32.store
  local.get $0
  i32.const 1996
  i32.const 2
  i32.const 1
  i32.const 5
  i32.const 0
  i32.const 0
  i32.const 0
  i32.const 0
  call $std/date/test_utc_date
  i32.const 1996
  i32.const 1
  i32.const 29
  i32.const 0
  i32.const 0
  i32.const 0
  f64.const 0
  call $~lib/bindings/Date/UTC
  i64.trunc_f64_s
  call $~lib/date/Date#constructor
  global.set $std/date/date
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/date/Date#getUTCCalendarDate
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/util/date/setMinutes
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  i64.load offset=40
  local.tee $2
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  i64.const 825641700000
  i64.ne
  if
   i32.const 0
   i32.const 1968
   i32.const 79
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date
  local.tee $0
  i32.store
  local.get $0
  i32.const 1996
  i32.const 2
  i32.const 1
  i32.const 5
  i32.const 0
  i32.const 55
  i32.const 0
  i32.const 0
  call $std/date/test_utc_date
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/date/Date#getUTCCalendarDate
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/util/date/setSeconds
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  i64.load offset=40
  local.tee $2
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  i64.const 825642060000
  i64.ne
  if
   i32.const 0
   i32.const 1968
   i32.const 83
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date
  local.tee $0
  i32.store
  local.get $0
  i32.const 1996
  i32.const 2
  i32.const 1
  i32.const 5
  i32.const 1
  i32.const 1
  i32.const 0
  i32.const 0
  call $std/date/test_utc_date
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/date/Date#getUTCCalendarDate
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/util/date/setMilliseconds
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  i64.load offset=40
  local.tee $2
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  i64.const 825642061001
  i64.ne
  if
   i32.const 0
   i32.const 1968
   i32.const 87
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date
  local.tee $0
  i32.store
  local.get $0
  i32.const 1996
  i32.const 2
  i32.const 1
  i32.const 5
  i32.const 1
  i32.const 1
  i32.const 1
  i32.const 1
  call $std/date/test_utc_date
  i32.const 2000
  i32.const 1
  i32.const 29
  i32.const 0
  i32.const 0
  i32.const 0
  f64.const 0
  call $~lib/bindings/Date/UTC
  i64.trunc_f64_s
  global.set $std/date/creationTime
  global.get $std/date/creationTime
  call $~lib/date/Date#constructor
  global.set $std/date/date
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/date/Date#getLocalCalendarDate
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 2000
  call $~lib/util/date/setFullYear
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  i64.load offset=40
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date
  local.tee $0
  i32.store
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
  i32.store
  local.get $0
  call $~lib/date/Date#getLocalCalendarDate
  i32.load
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 2000
  i32.ne
  if
   i32.const 0
   i32.const 1968
   i32.const 94
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/date/Date#getLocalCalendarDate
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 2
  call $~lib/util/date/setMonth
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  i64.load offset=40
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date
  local.tee $0
  i32.store
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
  i32.store
  local.get $0
  call $~lib/date/Date#getLocalCalendarDate
  i32.load offset=4
  i32.const 1
  i32.sub
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1968
   i32.const 98
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/date/Date#getLocalCalendarDate
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 8
  call $~lib/util/date/setDate
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  i64.load offset=40
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date
  local.tee $0
  i32.store
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
  i32.store
  local.get $0
  call $~lib/date/Date#getLocalCalendarDate
  i32.load offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 1968
   i32.const 102
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/date/Date#getLocalCalendarDate
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/util/date/setHours
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  i64.load offset=40
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date
  local.tee $0
  i32.store
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
  i32.store
  local.get $0
  call $~lib/date/Date#getLocalCalendarDate
  i32.load offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  if
   i32.const 0
   i32.const 1968
   i32.const 106
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/date/Date#getLocalCalendarDate
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/util/date/setMinutes
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  i64.load offset=40
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date
  local.tee $0
  i32.store
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
  i32.store
  local.get $0
  call $~lib/date/Date#getLocalCalendarDate
  i32.load offset=20
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 55
  i32.ne
  if
   i32.const 0
   i32.const 1968
   i32.const 110
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/date/Date#getLocalCalendarDate
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/util/date/setSeconds
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  i64.load offset=40
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date
  local.tee $0
  i32.store
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
  i32.store
  local.get $0
  call $~lib/date/Date#getLocalCalendarDate
  i32.load offset=24
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  if
   i32.const 0
   i32.const 1968
   i32.const 114
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/date/Date#getLocalCalendarDate
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/util/date/setMilliseconds
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  i64.load offset=40
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date
  local.tee $0
  i32.store
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
  i32.store
  local.get $0
  call $~lib/date/Date#getLocalCalendarDate
  i32.load offset=28
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1968
   i32.const 118
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1970
  i32.const 0
  i32.const 1
  i32.const 0
  i32.const 0
  i32.const 0
  f64.const 0
  call $~lib/bindings/Date/UTC
  i64.trunc_f64_s
  call $~lib/date/Date#constructor
  global.set $std/date/date1
  call $~lib/bindings/Date/now
  i64.trunc_f64_s
  call $~lib/date/Date#constructor
  global.set $std/date/date2
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date1
  i32.store
  call $~lib/bindings/Date/getTimezoneOffset
  local.set $0
  global.get $~lib/memory/__stack_pointer
  global.get $std/date/date2
  i32.store
  call $~lib/bindings/Date/getTimezoneOffset
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 1968
   i32.const 123
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/util/date/TimeZone#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
  local.tee $2
  i32.store
  local.get $2
  i32.const 0
  call $~lib/util/date/TimeZone#set:ID
  local.get $2
  i32.const 0
  i32.store offset=4
  local.get $2
  local.get $0
  call $~lib/util/date/TimeZone#set:ID
  local.get $2
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/util/date/CalendarDate#constructor (param $0 i64) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 60
  i32.const 6
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  local.get $2
  i32.const 0
  i32.store
  local.get $2
  i32.const 0
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=8
  local.get $2
  i32.const 0
  i32.store offset=12
  local.get $2
  i32.const 0
  i32.store offset=16
  local.get $2
  i32.const 0
  i32.store offset=20
  local.get $2
  i32.const 0
  i32.store offset=24
  local.get $2
  i32.const 0
  i32.store offset=28
  local.get $2
  i32.const 0
  i32.store8 offset=32
  local.get $2
  i64.const 0
  i64.store offset=40
  local.get $2
  i32.const 0
  i32.store offset=48
  local.get $2
  i32.const 0
  i32.store offset=52
  local.get $2
  i32.const 0
  call $~lib/util/date/CalendarDate#set:timeZone
  local.get $2
  local.get $0
  i64.store offset=40
  local.get $2
  i32.const 0
  i32.store8 offset=32
  local.get $2
  local.get $1
  call $~lib/util/date/CalendarDate#set:timeZone
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
)
