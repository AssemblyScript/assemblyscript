(module
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i64 (func (param i32 i32) (result i64)))
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i64_=>_none (func (param i32 i64)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i64_=>_i32 (func (param i32 i64) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_i32_i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32)))
 (type $i64_i32_i32_i32_i32_i32_i32_i32_i32_=>_none (func (param i64 i32 i32 i32 i32 i32 i32 i32 i32)))
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (type $i32_=>_i64 (func (param i32) (result i64)))
 (type $i32_i64_=>_i64 (func (param i32 i64) (result i64)))
 (type $none_=>_f64 (func (result f64)))
 (type $i32_i32_i32_i32_i32_i32_f64_=>_f64 (func (param i32 i32 i32 i32 i32 i32 f64) (result f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "Date" "UTC" (func $~lib/bindings/Date/UTC (param i32 i32 i32 i32 i32 i32 f64) (result f64)))
 (import "Date" "now" (func $~lib/bindings/Date/now (result f64)))
 (import "Date" "getTimezoneOffset" (func $~lib/bindings/Date/getTimezoneOffset (result i32)))
 (memory $0 1)
 (data (i32.const 12) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 80) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 108) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data (i32.const 172) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data (i32.const 220) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data (i32.const 288) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 320) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 348) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 412) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00U\00T\00C\00\00\00\00\00\00\00")
 (data (i32.const 444) "L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\004\00\00\00\e2\ff\ff\ff\00\00\00\00\1f\00\00\00;\00\00\00Z\00\00\00x\00\00\00\97\00\00\00\b5\00\00\00\d4\00\00\00\f3\00\00\00\11\01\00\000\01\00\00N\01\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 524) ",\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\10\00\00\00\d0\01\00\00\d0\01\00\004\00\00\00\0d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 572) ",\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\18\01\00\00;\f9\n\00\a8\fa\n\00\15\fc\n\00\83\fd\n\00\f0\fe\n\00]\00\0b\00\ca\01\0b\008\03\0b\00\a5\04\0b\00\12\06\0b\00\7f\07\0b\00\ed\08\0b\00Z\n\0b\00\c7\0b\0b\004\0d\0b\00\a2\0e\0b\00\0f\10\0b\00|\11\0b\00\e9\12\0b\00W\14\0b\00\c4\15\0b\001\17\0b\00\9e\18\0b\00\0c\1a\0b\00y\1b\0b\00\e6\1c\0b\00S\1e\0b\00\c1\1f\0b\00.!\0b\00\9b\"\0b\00\08$\0b\00v%\0b\00\e3&\0b\00P(\0b\00\bd)\0b\00++\0b\00\98,\0b\00\05.\0b\00r/\0b\00\e00\0b\00M2\0b\00\ba3\0b\00\'5\0b\00\956\0b\00\028\0b\00o9\0b\00\dc:\0b\00J<\0b\00\b7=\0b\00$?\0b\00\91@\0b\00\ffA\0b\00lC\0b\00\d9D\0b\00FF\0b\00\b4G\0b\00!I\0b\00\8eJ\0b\00\fbK\0b\00iM\0b\00\d6N\0b\00CP\0b\00\b0Q\0b\00\1eS\0b\00\8bT\0b\00\f8U\0b\00eW\0b\00\d3X\0b\00@Z\0b\00\ad[\0b\00\00\00\00\00")
 (data (i32.const 876) ",\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\10\00\00\00P\02\00\00P\02\00\00\18\01\00\00F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 924) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\16\00\00\00s\00t\00d\00/\00d\00a\00t\00e\00.\00t\00s\00\00\00\00\00\00\00")
 (data (i32.const 972) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00G\00M\00T\00\00\00\00\00\00\00")
 (data (i32.const 1004) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1068) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\18\00\00\00~\00l\00i\00b\00/\00d\00a\00t\00e\00.\00t\00s\00\00\00\00\00")
 (data (i32.const 1116) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00")
 (data (i32.const 1168) "\07\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\t\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 1 funcref)
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
 (global $~lib/ASC_LOW_MEMORY_LIMIT i32 (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/util/date/TimeZone.UTC_TIME_ZONE (mut i32) (i32.const 0))
 (global $~lib/util/date/CalendarUtils.SECOND_IN_MILLIS (mut i32) (i32.const 1000))
 (global $~lib/util/date/CalendarUtils.MINUTE_IN_MILLIS (mut i32) (i32.const 60000))
 (global $~lib/util/date/CalendarUtils.HOUR_IN_MILLIS (mut i32) (i32.const 3600000))
 (global $~lib/util/date/CalendarUtils.DAY_IN_MILLIS (mut i32) (i32.const 86400000))
 (global $~lib/util/date/CalendarUtils.DAY_IN_HOURS (mut i32) (i32.const 24))
 (global $~lib/util/date/CalendarUtils.YEAR_IN_MONTHS (mut i32) (i32.const 12))
 (global $~lib/util/date/CalendarUtils.JANUARY (mut i32) (i32.const 1))
 (global $~lib/util/date/CalendarUtils.FEBRUARY (mut i32) (i32.const 2))
 (global $~lib/util/date/CalendarUtils.MARCH (mut i32) (i32.const 3))
 (global $~lib/util/date/CalendarUtils.APRIL (mut i32) (i32.const 4))
 (global $~lib/util/date/CalendarUtils.MAY (mut i32) (i32.const 5))
 (global $~lib/util/date/CalendarUtils.JUNE (mut i32) (i32.const 6))
 (global $~lib/util/date/CalendarUtils.JULY (mut i32) (i32.const 7))
 (global $~lib/util/date/CalendarUtils.AUGUST (mut i32) (i32.const 8))
 (global $~lib/util/date/CalendarUtils.SEPTEMBER (mut i32) (i32.const 9))
 (global $~lib/util/date/CalendarUtils.OCTOBER (mut i32) (i32.const 10))
 (global $~lib/util/date/CalendarUtils.NOVEMBER (mut i32) (i32.const 11))
 (global $~lib/util/date/CalendarUtils.DECEMBER (mut i32) (i32.const 12))
 (global $~lib/util/date/CalendarUtils.BASE_YEAR (mut i32) (i32.const 1970))
 (global $~lib/util/date/CalendarUtils.SUNDAY (mut i32) (i32.const 1))
 (global $~lib/util/date/CalendarUtils.MONDAY (mut i32) (i32.const 2))
 (global $~lib/util/date/CalendarUtils.TUESDAY (mut i32) (i32.const 3))
 (global $~lib/util/date/CalendarUtils.WEDNESDAY (mut i32) (i32.const 4))
 (global $~lib/util/date/CalendarUtils.THURSDAY (mut i32) (i32.const 5))
 (global $~lib/util/date/CalendarUtils.FRIDAY (mut i32) (i32.const 6))
 (global $~lib/util/date/CalendarUtils.SATURDAY (mut i32) (i32.const 7))
 (global $~lib/util/date/CalendarUtils.ACCUMULATED_DAYS_IN_MONTH (mut i32) (i32.const 544))
 (global $~lib/util/date/CalendarUtils.FIXED_DATES (mut i32) (i32.const 896))
 (global $~lib/util/date/CalendarUtils.EPOCH_OFFSET (mut i32) (i32.const 719163))
 (global $std/date/creationTime (mut i64) (i64.const 0))
 (global $std/date/date (mut i32) (i32.const 0))
 (global $std/date/millis (mut i64) (i64.const 0))
 (global $std/date/date1 (mut i32) (i32.const 0))
 (global $std/date/date2 (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 1168))
 (global $~lib/memory/__data_end i32 (i32.const 1228))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 17612))
 (global $~lib/memory/__heap_base i32 (i32.const 17612))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/itcms/Object#get:color (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
 )
 (func $~lib/rt/itcms/Object#get:next (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
 )
 (func $~lib/rt/itcms/Object#set:prev (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/rt/itcms/Object#set:nextWithColor (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
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
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#unlink (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/itcms/Object#get:next
  local.set $1
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 1
   drop
   local.get $0
   i32.load offset=8
   i32.const 0
   i32.eq
   if (result i32)
    local.get $0
    global.get $~lib/memory/__heap_base
    i32.lt_u
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 32
    i32.const 127
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 1
  drop
  local.get $2
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 131
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  call $~lib/rt/itcms/Object#set:prev
  local.get $2
  local.get $1
  call $~lib/rt/itcms/Object#set:next
 )
 (func $~lib/rt/itcms/initLazy (param $0 i32) (result i32)
  local.get $0
  local.get $0
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $0
  local.get $0
  call $~lib/rt/itcms/Object#set:prev
  local.get $0
 )
 (func $~lib/rt/__typeinfo (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/rt/__rtti_base
  local.set $1
  local.get $0
  local.get $1
  i32.load
  i32.gt_u
  if
   i32.const 128
   i32.const 192
   i32.const 22
   i32.const 28
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $0
  i32.const 8
  i32.mul
  i32.add
  i32.load
 )
 (func $~lib/rt/itcms/Object#get:isPointerfree (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load offset=12
  local.set $1
  local.get $1
  i32.const 1
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $1
   call $~lib/rt/__typeinfo
   i32.const 32
   i32.and
   i32.const 0
   i32.ne
  end
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
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $0
  local.get $3
  call $~lib/rt/itcms/Object#set:prev
  local.get $3
  local.get $0
  call $~lib/rt/itcms/Object#set:next
  local.get $1
  local.get $0
  call $~lib/rt/itcms/Object#set:prev
 )
 (func $~lib/rt/itcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  local.get $0
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $0
   i32.load offset=8
   local.tee $1
   i32.eqz
   if (result i32)
    i32.const 0
    i32.const 32
    i32.const 147
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   else
    local.get $1
   end
   global.set $~lib/rt/itcms/iter
  end
  local.get $0
  call $~lib/rt/itcms/Object#unlink
  local.get $0
  global.get $~lib/rt/itcms/toSpace
  local.get $0
  call $~lib/rt/itcms/Object#get:isPointerfree
  if (result i32)
   global.get $~lib/rt/itcms/white
   i32.eqz
  else
   i32.const 2
  end
  call $~lib/rt/itcms/Object#linkTo
 )
 (func $~lib/rt/itcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.eqz
  if
   return
  end
  i32.const 1
  drop
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 294
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 20
  i32.sub
  local.set $3
  local.get $3
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $0
   i32.const 20
   i32.sub
   local.set $4
   local.get $4
   call $~lib/rt/itcms/Object#get:color
   local.set $5
   local.get $5
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $2
    if
     local.get $4
     call $~lib/rt/itcms/Object#makeGray
    else
     local.get $3
     call $~lib/rt/itcms/Object#makeGray
    end
   else
    local.get $5
    i32.const 3
    i32.eq
    if (result i32)
     global.get $~lib/rt/itcms/state
     i32.const 1
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $3
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
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/util/date/TimeZone#set:rawOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/rt/itcms/visitRoots (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/__visit_globals
  global.get $~lib/rt/itcms/pinSpace
  local.set $1
  local.get $1
  call $~lib/rt/itcms/Object#get:next
  local.set $2
  loop $while-continue|0
   local.get $2
   local.get $1
   i32.ne
   local.set $3
   local.get $3
   if
    i32.const 1
    drop
    local.get $2
    call $~lib/rt/itcms/Object#get:color
    i32.const 3
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 32
     i32.const 159
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 20
    i32.add
    local.get $0
    call $~lib/rt/__visit_members
    local.get $2
    call $~lib/rt/itcms/Object#get:next
    local.set $2
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#set:color (param $0 i32) (param $1 i32)
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $1
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  local.set $2
  i32.const 0
  drop
  local.get $2
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $2
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/rt/itcms/visitStack (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  local.set $1
  loop $while-continue|0
   local.get $1
   global.get $~lib/memory/__heap_base
   i32.lt_u
   local.set $2
   local.get $2
   if
    local.get $1
    i32.load
    local.get $0
    call $~lib/rt/itcms/__visit
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#get:size (param $0 i32) (result i32)
  i32.const 4
  local.get $0
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
 )
 (func $~lib/rt/tlsf/Root#set:flMap (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/rt/tlsf/Block#set:prev (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/Block#set:next (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
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
  local.get $1
  i32.load
  local.set $2
  i32.const 1
  drop
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 273
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $3
  i32.const 1
  drop
  local.get $3
  i32.const 12
  i32.ge_u
  if (result i32)
   local.get $3
   i32.const 1073741820
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 275
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $4
   local.get $3
   i32.const 4
   i32.shr_u
   local.set $5
  else
   i32.const 31
   local.get $3
   i32.clz
   i32.sub
   local.set $4
   local.get $3
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $5
   local.get $4
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $4
  end
  i32.const 1
  drop
  local.get $4
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $5
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 288
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=4
  local.set $6
  local.get $1
  i32.load offset=8
  local.set $7
  local.get $6
  if
   local.get $6
   local.get $7
   call $~lib/rt/tlsf/Block#set:next
  end
  local.get $7
  if
   local.get $7
   local.get $6
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $1
  local.get $0
  local.set $10
  local.get $4
  local.set $9
  local.get $5
  local.set $8
  local.get $10
  local.get $9
  i32.const 4
  i32.shl
  local.get $8
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  i32.eq
  if
   local.get $0
   local.set $11
   local.get $4
   local.set $10
   local.get $5
   local.set $9
   local.get $7
   local.set $8
   local.get $11
   local.get $10
   i32.const 4
   i32.shl
   local.get $9
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $8
   i32.store offset=96
   local.get $7
   i32.eqz
   if
    local.get $0
    local.set $9
    local.get $4
    local.set $8
    local.get $9
    local.get $8
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.set $9
    local.get $0
    local.set $8
    local.get $4
    local.set $11
    local.get $9
    i32.const 1
    local.get $5
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $9
    local.set $10
    local.get $8
    local.get $11
    i32.const 2
    i32.shl
    i32.add
    local.get $10
    i32.store offset=4
    local.get $9
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $4
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     call $~lib/rt/tlsf/Root#set:flMap
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
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  i32.const 1
  drop
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.set $2
  i32.const 1
  drop
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.set $3
  local.get $3
  i32.const 4
  i32.add
  local.get $3
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  local.set $4
  local.get $4
  i32.load
  local.set $5
  local.get $5
  i32.const 1
  i32.and
  if
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 4
   i32.add
   local.get $5
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $3
   local.get $3
   i32.const 1073741820
   i32.lt_u
   if
    local.get $0
    local.get $4
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $2
    i32.const 3
    i32.and
    local.get $3
    i32.or
    local.tee $2
    call $~lib/rt/common/BLOCK#set:mmInfo
    local.get $1
    local.set $6
    local.get $6
    i32.const 4
    i32.add
    local.get $6
    i32.load
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    local.set $4
    local.get $4
    i32.load
    local.set $5
   end
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $1
   local.set $6
   local.get $6
   i32.const 4
   i32.sub
   i32.load
   local.set $6
   local.get $6
   i32.load
   local.set $3
   i32.const 1
   drop
   local.get $3
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 224
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 4
   i32.add
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $7
   local.get $7
   i32.const 1073741820
   i32.lt_u
   if
    local.get $0
    local.get $6
    call $~lib/rt/tlsf/removeBlock
    local.get $6
    local.get $3
    i32.const 3
    i32.and
    local.get $7
    i32.or
    local.tee $2
    call $~lib/rt/common/BLOCK#set:mmInfo
    local.get $6
    local.set $1
   end
  end
  local.get $4
  local.get $5
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $8
  i32.const 1
  drop
  local.get $8
  i32.const 12
  i32.ge_u
  if (result i32)
   local.get $8
   i32.const 1073741820
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 239
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  drop
  local.get $1
  i32.const 4
  i32.add
  local.get $8
  i32.add
  local.get $4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 240
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $8
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $9
   local.get $8
   i32.const 4
   i32.shr_u
   local.set $10
  else
   i32.const 31
   local.get $8
   i32.clz
   i32.sub
   local.set $9
   local.get $8
   local.get $9
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $10
   local.get $9
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $9
  end
  i32.const 1
  drop
  local.get $9
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $10
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 256
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $7
  local.get $9
  local.set $3
  local.get $10
  local.set $6
  local.get $7
  local.get $3
  i32.const 4
  i32.shl
  local.get $6
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $11
  local.get $1
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $1
  local.get $11
  call $~lib/rt/tlsf/Block#set:next
  local.get $11
  if
   local.get $11
   local.get $1
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $0
  local.set $12
  local.get $9
  local.set $7
  local.get $10
  local.set $3
  local.get $1
  local.set $6
  local.get $12
  local.get $7
  i32.const 4
  i32.shl
  local.get $3
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $6
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $9
  i32.shl
  i32.or
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $0
  local.set $13
  local.get $9
  local.set $12
  local.get $0
  local.set $3
  local.get $9
  local.set $6
  local.get $3
  local.get $6
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 1
  local.get $10
  i32.shl
  i32.or
  local.set $7
  local.get $13
  local.get $12
  i32.const 2
  i32.shl
  i32.add
  local.get $7
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  i32.const 1
  drop
  local.get $1
  local.get $2
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 381
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $2
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $2
  local.get $0
  local.set $3
  local.get $3
  i32.load offset=1568
  local.set $4
  i32.const 0
  local.set $5
  local.get $4
  if
   i32.const 1
   drop
   local.get $1
   local.get $4
   i32.const 4
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 388
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
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
    local.get $4
    i32.load
    local.set $5
   else
    nop
   end
  else
   i32.const 1
   drop
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 401
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.sub
  local.set $6
  local.get $6
  i32.const 4
  i32.const 12
  i32.add
  i32.const 4
  i32.add
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $6
  i32.const 2
  i32.const 4
  i32.mul
  i32.sub
  local.set $7
  local.get $1
  local.set $8
  local.get $8
  local.get $7
  i32.const 1
  i32.or
  local.get $5
  i32.const 2
  i32.and
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $8
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $8
  i32.const 0
  call $~lib/rt/tlsf/Block#set:next
  local.get $1
  i32.const 4
  i32.add
  local.get $7
  i32.add
  local.set $4
  local.get $4
  i32.const 0
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  local.set $9
  local.get $4
  local.set $3
  local.get $9
  local.get $3
  i32.store offset=1568
  local.get $0
  local.get $8
  call $~lib/rt/tlsf/insertBlock
  i32.const 1
 )
 (func $~lib/rt/tlsf/initialize
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
  i32.const 0
  drop
  global.get $~lib/memory/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $0
  memory.size
  local.set $1
  local.get $0
  i32.const 1572
  i32.add
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $2
  local.get $2
  local.get $1
  i32.gt_s
  if (result i32)
   local.get $2
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
  local.get $0
  local.set $3
  local.get $3
  i32.const 0
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $3
  local.set $5
  i32.const 0
  local.set $4
  local.get $5
  local.get $4
  i32.store offset=1568
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   i32.const 23
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $3
    local.set $8
    local.get $5
    local.set $7
    i32.const 0
    local.set $6
    local.get $8
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    local.get $6
    i32.store offset=4
    i32.const 0
    local.set $8
    loop $for-loop|1
     local.get $8
     i32.const 16
     i32.lt_u
     local.set $7
     local.get $7
     if
      local.get $3
      local.set $11
      local.get $5
      local.set $10
      local.get $8
      local.set $9
      i32.const 0
      local.set $6
      local.get $11
      local.get $10
      i32.const 4
      i32.shl
      local.get $9
      i32.add
      i32.const 2
      i32.shl
      i32.add
      local.get $6
      i32.store offset=96
      local.get $8
      i32.const 1
      i32.add
      local.set $8
      br $for-loop|1
     end
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $0
  i32.const 1572
  i32.add
  local.set $12
  i32.const 0
  drop
  local.get $3
  local.get $12
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
  local.get $3
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/checkUsedBlock (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.const 0
  i32.ne
  if (result i32)
   local.get $0
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
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
   i32.const 368
   i32.const 565
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
 )
 (func $~lib/rt/tlsf/freeBlock (param $0 i32) (param $1 i32)
  i32.const 0
  drop
  local.get $1
  local.get $1
  i32.load
  i32.const 1
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/__free (param $0 i32)
  local.get $0
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   return
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  call $~lib/rt/tlsf/checkUsedBlock
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/itcms/free (param $0 i32)
  local.get $0
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   local.get $0
   i32.const 0
   call $~lib/rt/itcms/Object#set:nextWithColor
   local.get $0
   i32.const 0
   call $~lib/rt/itcms/Object#set:prev
  else
   global.get $~lib/rt/itcms/total
   local.get $0
   call $~lib/rt/itcms/Object#get:size
   i32.sub
   global.set $~lib/rt/itcms/total
   i32.const 0
   drop
   local.get $0
   i32.const 4
   i32.add
   call $~lib/rt/tlsf/__free
  end
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
      local.set $1
      local.get $1
      i32.const 0
      i32.eq
      br_if $case0|0
      local.get $1
      i32.const 1
      i32.eq
      br_if $case1|0
      local.get $1
      i32.const 2
      i32.eq
      br_if $case2|0
      br $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     i32.const 0
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     i32.const 1
     i32.mul
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $1
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $0
    loop $while-continue|1
     local.get $0
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     local.set $2
     local.get $2
     if
      local.get $0
      global.set $~lib/rt/itcms/iter
      local.get $0
      call $~lib/rt/itcms/Object#get:color
      local.get $1
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
       i32.const 0
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       i32.const 1
       i32.mul
       return
      end
      local.get $0
      call $~lib/rt/itcms/Object#get:next
      local.set $0
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    i32.const 0
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $0
    local.get $0
    global.get $~lib/rt/itcms/toSpace
    i32.eq
    if
     i32.const 0
     call $~lib/rt/itcms/visitStack
     global.get $~lib/rt/itcms/iter
     call $~lib/rt/itcms/Object#get:next
     local.set $0
     loop $while-continue|2
      local.get $0
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      local.set $2
      local.get $2
      if
       local.get $0
       call $~lib/rt/itcms/Object#get:color
       local.get $1
       i32.ne
       if
        local.get $0
        local.get $1
        call $~lib/rt/itcms/Object#set:color
        local.get $0
        i32.const 20
        i32.add
        i32.const 0
        call $~lib/rt/__visit_members
       end
       local.get $0
       call $~lib/rt/itcms/Object#get:next
       local.set $0
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $2
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $2
     global.set $~lib/rt/itcms/toSpace
     local.get $1
     global.set $~lib/rt/itcms/white
     local.get $2
     call $~lib/rt/itcms/Object#get:next
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    i32.const 1
    i32.mul
    return
   end
   global.get $~lib/rt/itcms/iter
   local.set $0
   local.get $0
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $0
    call $~lib/rt/itcms/Object#get:next
    global.set $~lib/rt/itcms/iter
    i32.const 1
    drop
    local.get $0
    call $~lib/rt/itcms/Object#get:color
    global.get $~lib/rt/itcms/white
    i32.eqz
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 32
     i32.const 228
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    call $~lib/rt/itcms/free
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:nextWithColor
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:prev
   i32.const 0
   global.set $~lib/rt/itcms/state
   br $break|0
  end
  i32.const 0
 )
 (func $~lib/rt/itcms/interrupt
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 1024
  i32.const 200
  i32.mul
  i32.const 100
  i32.div_u
  local.set $0
  loop $do-continue|0
   local.get $0
   call $~lib/rt/itcms/step
   i32.sub
   local.set $0
   global.get $~lib/rt/itcms/state
   i32.const 0
   i32.eq
   if
    i32.const 0
    drop
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
    i32.const 0
    drop
    return
   end
   local.get $0
   i32.const 0
   i32.gt_s
   local.set $1
   local.get $1
   br_if $do-continue|0
  end
  i32.const 0
  drop
  global.get $~lib/rt/itcms/total
  i32.const 1024
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.sub
  i32.const 1024
  i32.lt_u
  i32.mul
  i32.add
  global.set $~lib/rt/itcms/threshold
  i32.const 0
  drop
 )
 (func $~lib/rt/tlsf/computeSize (param $0 i32) (result i32)
  local.get $0
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $0
   i32.const 4
   i32.add
   i32.const 15
   i32.add
   i32.const 15
   i32.const -1
   i32.xor
   i32.and
   i32.const 4
   i32.sub
  end
 )
 (func $~lib/rt/tlsf/prepareSize (param $0 i32) (result i32)
  local.get $0
  i32.const 1073741820
  i32.ge_u
  if
   i32.const 240
   i32.const 368
   i32.const 462
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/tlsf/computeSize
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $2
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $3
  else
   local.get $1
   i32.const 536870910
   i32.lt_u
   if (result i32)
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
   else
    local.get $1
   end
   local.set $4
   i32.const 31
   local.get $4
   i32.clz
   i32.sub
   local.set $2
   local.get $4
   local.get $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $3
   local.get $2
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $2
  end
  i32.const 1
  drop
  local.get $2
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 334
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $5
  local.get $2
  local.set $4
  local.get $5
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 0
  i32.const -1
  i32.xor
  local.get $3
  i32.shl
  i32.and
  local.set $6
  i32.const 0
  local.set $7
  local.get $6
  i32.eqz
  if
   local.get $0
   i32.load
   i32.const 0
   i32.const -1
   i32.xor
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.set $5
   local.get $5
   i32.eqz
   if
    i32.const 0
    local.set $7
   else
    local.get $5
    i32.ctz
    local.set $2
    local.get $0
    local.set $8
    local.get $2
    local.set $4
    local.get $8
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.set $6
    i32.const 1
    drop
    local.get $6
    i32.eqz
    if
     i32.const 0
     i32.const 368
     i32.const 347
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.set $9
    local.get $2
    local.set $8
    local.get $6
    i32.ctz
    local.set $4
    local.get $9
    local.get $8
    i32.const 4
    i32.shl
    local.get $4
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
    local.set $7
   end
  else
   local.get $0
   local.set $9
   local.get $2
   local.set $8
   local.get $6
   i32.ctz
   local.set $4
   local.get $9
   local.get $8
   i32.const 4
   i32.shl
   local.get $4
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
   local.set $7
  end
  local.get $7
 )
 (func $~lib/rt/tlsf/growMemory (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 0
  drop
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
   i32.const 1
   i32.sub
   i32.add
   local.set $1
  end
  memory.size
  local.set $2
  local.get $1
  i32.const 4
  local.get $2
  i32.const 16
  i32.shl
  i32.const 4
  i32.sub
  local.get $0
  local.set $3
  local.get $3
  i32.load offset=1568
  i32.ne
  i32.shl
  i32.add
  local.set $1
  local.get $1
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $4
  local.get $2
  local.tee $3
  local.get $4
  local.tee $5
  local.get $3
  local.get $5
  i32.gt_s
  select
  local.set $6
  local.get $6
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
  memory.size
  local.set $7
  local.get $0
  local.get $2
  i32.const 16
  i32.shl
  local.get $7
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
 )
 (func $~lib/rt/tlsf/prepareBlock (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.set $3
  i32.const 1
  drop
  local.get $2
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 361
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $2
  i32.sub
  local.set $4
  local.get $4
  i32.const 4
  i32.const 12
  i32.add
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $1
   i32.const 4
   i32.add
   local.get $2
   i32.add
   local.set $5
   local.get $5
   local.get $4
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $0
   local.get $5
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $3
   i32.const 1
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $1
   local.set $5
   local.get $5
   i32.const 4
   i32.add
   local.get $5
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.get $1
   local.set $5
   local.get $5
   i32.const 4
   i32.add
   local.get $5
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   i32.load
   i32.const 2
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.set $2
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/searchBlock
  local.set $3
  local.get $3
  i32.eqz
  if
   local.get $0
   local.get $2
   call $~lib/rt/tlsf/growMemory
   local.get $0
   local.get $2
   call $~lib/rt/tlsf/searchBlock
   local.set $3
   i32.const 1
   drop
   local.get $3
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 500
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  local.get $3
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $2
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 502
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $3
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $3
  local.get $2
  call $~lib/rt/tlsf/prepareBlock
  i32.const 0
  drop
  local.get $3
 )
 (func $~lib/rt/tlsf/__alloc (param $0 i32) (result i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
 )
 (func $~lib/rt/itcms/Object#set:rtId (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/rt/itcms/Object#set:rtSize (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   i32.const 0
   i32.const 1
   i32.gt_s
   drop
   local.get $3
   i32.eqz
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.set $6
   local.get $5
   local.get $4
   i32.store8
   local.get $6
   local.get $4
   i32.store8 offset=3
   local.get $3
   i32.const 2
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $4
   i32.store8 offset=1
   local.get $5
   local.get $4
   i32.store8 offset=2
   local.get $6
   local.get $4
   i32.store8 offset=2
   local.get $6
   local.get $4
   i32.store8 offset=1
   local.get $3
   i32.const 6
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $4
   i32.store8 offset=3
   local.get $6
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
   local.set $7
   local.get $5
   local.get $7
   i32.add
   local.set $5
   local.get $3
   local.get $7
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
   local.set $8
   local.get $5
   local.get $3
   i32.add
   i32.const 28
   i32.sub
   local.set $6
   local.get $5
   local.get $8
   i32.store
   local.get $6
   local.get $8
   i32.store offset=24
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $8
   i32.store offset=4
   local.get $5
   local.get $8
   i32.store offset=8
   local.get $6
   local.get $8
   i32.store offset=16
   local.get $6
   local.get $8
   i32.store offset=20
   local.get $3
   i32.const 24
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $8
   i32.store offset=12
   local.get $5
   local.get $8
   i32.store offset=16
   local.get $5
   local.get $8
   i32.store offset=20
   local.get $5
   local.get $8
   i32.store offset=24
   local.get $6
   local.get $8
   i32.store
   local.get $6
   local.get $8
   i32.store offset=4
   local.get $6
   local.get $8
   i32.store offset=8
   local.get $6
   local.get $8
   i32.store offset=12
   i32.const 24
   local.get $5
   i32.const 4
   i32.and
   i32.add
   local.set $7
   local.get $5
   local.get $7
   i32.add
   local.set $5
   local.get $3
   local.get $7
   i32.sub
   local.set $3
   local.get $8
   i64.extend_i32_u
   local.get $8
   i64.extend_i32_u
   i64.const 32
   i64.shl
   i64.or
   local.set $9
   loop $while-continue|0
    local.get $3
    i32.const 32
    i32.ge_u
    local.set $10
    local.get $10
    if
     local.get $5
     local.get $9
     i64.store
     local.get $5
     local.get $9
     i64.store offset=8
     local.get $5
     local.get $9
     i64.store offset=16
     local.get $5
     local.get $9
     i64.store offset=24
     local.get $3
     i32.const 32
     i32.sub
     local.set $3
     local.get $5
     i32.const 32
     i32.add
     local.set $5
     br $while-continue|0
    end
   end
  end
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 240
   i32.const 32
   i32.const 260
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   call $~lib/rt/itcms/interrupt
  end
  i32.const 16
  local.get $0
  i32.add
  call $~lib/rt/tlsf/__alloc
  i32.const 4
  i32.sub
  local.set $2
  local.get $2
  local.get $1
  call $~lib/rt/itcms/Object#set:rtId
  local.get $2
  local.get $0
  call $~lib/rt/itcms/Object#set:rtSize
  local.get $2
  global.get $~lib/rt/itcms/fromSpace
  global.get $~lib/rt/itcms/white
  call $~lib/rt/itcms/Object#linkTo
  global.get $~lib/rt/itcms/total
  local.get $2
  call $~lib/rt/itcms/Object#get:size
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $2
  i32.const 20
  i32.add
  local.set $3
  local.get $3
  i32.const 0
  local.get $0
  call $~lib/memory/memory.fill
  local.get $3
 )
 (func $start:~lib/date
  call $start:~lib/util/date
 )
 (func $~lib/date/Date#set:value (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store
 )
 (func $~lib/date/Date#set:timeZone (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/date/Date#set:localDate (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/date/Date#set:utcDate (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/date/Date#getTime (param $0 i32) (result i64)
  local.get $0
  i64.load
 )
 (func $~lib/date/Date#setTime (param $0 i32) (param $1 i64) (result i64)
  local.get $0
  local.get $1
  call $~lib/date/Date#set:value
  local.get $1
 )
 (func $~lib/util/date/CalendarDate#set:millis (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=40
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
  local.get $1
  local.get $0
  local.get $1
  call $~lib/util/date/CalendarUtils.floorDivide
  i32.mul
  i32.sub
 )
 (func $~lib/util/date/CalendarUtils.getYearFromFixedDate (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  i32.const 0
  i32.gt_s
  if
   local.get $0
   i32.const 1
   i32.sub
   local.set $1
   local.get $1
   i32.const 146097
   i32.div_s
   local.set $5
   local.get $1
   i32.const 146097
   i32.rem_s
   local.set $2
   local.get $2
   i32.const 36524
   i32.div_s
   local.set $6
   local.get $2
   i32.const 36524
   i32.rem_s
   local.set $3
   local.get $3
   i32.const 1461
   i32.div_s
   local.set $7
   local.get $3
   i32.const 1461
   i32.rem_s
   local.set $4
   local.get $4
   i32.const 365
   i32.div_s
   local.set $8
  else
   local.get $0
   i32.const 1
   i32.sub
   local.set $1
   local.get $1
   i32.const 146097
   call $~lib/util/date/CalendarUtils.floorDivide
   local.set $5
   local.get $1
   i32.const 146097
   call $~lib/util/date/CalendarUtils.mod
   local.set $2
   local.get $2
   i32.const 36524
   call $~lib/util/date/CalendarUtils.floorDivide
   local.set $6
   local.get $2
   i32.const 36524
   call $~lib/util/date/CalendarUtils.mod
   local.set $3
   local.get $3
   i32.const 1461
   call $~lib/util/date/CalendarUtils.floorDivide
   local.set $7
   local.get $3
   i32.const 1461
   call $~lib/util/date/CalendarUtils.mod
   local.set $4
   local.get $4
   i32.const 365
   call $~lib/util/date/CalendarUtils.floorDivide
   local.set $8
  end
  i32.const 400
  local.get $5
  i32.mul
  i32.const 100
  local.get $6
  i32.mul
  i32.add
  i32.const 4
  local.get $7
  i32.mul
  i32.add
  local.get $8
  i32.add
  local.set $9
  local.get $6
  i32.const 4
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $8
   i32.const 4
   i32.eq
  end
  i32.eqz
  if
   local.get $9
   i32.const 1
   i32.add
   local.set $9
  end
  local.get $9
 )
 (func $~lib/util/date/CalendarUtils.hitFixedDateYear (param $0 i32) (result i32)
  local.get $0
  i32.const 1970
  i32.ge_s
  if (result i32)
   local.get $0
   i32.const 2039
   i32.le_s
  else
   i32.const 0
  end
 )
 (func $~lib/array/Array<i32>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 128
   i32.const 1136
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
  local.set $2
  i32.const 0
  drop
  local.get $2
 )
 (func $~lib/util/date/CalendarUtils.getDayOfWeekFromFixedDate (param $0 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ge_s
  if
   local.get $0
   i32.const 7
   i32.rem_s
   global.get $~lib/util/date/CalendarUtils.SUNDAY
   i32.add
   return
  end
  local.get $0
  i32.const 7
  call $~lib/util/date/CalendarUtils.mod
  global.get $~lib/util/date/CalendarUtils.SUNDAY
  i32.add
 )
 (func $~lib/util/date/CalendarDate#set:year (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/util/date/CalendarDate#set:month (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/util/date/CalendarDate#set:dayOfMonth (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/util/date/CalendarDate#set:dayOfWeek (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/util/date/CalendarDate#set:fixedDate (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=52
 )
 (func $~lib/util/date/CalendarDate#set:hours (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/util/date/CalendarDate#set:minutes (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
 )
 (func $~lib/util/date/CalendarDate#set:seconds (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=24
 )
 (func $~lib/util/date/CalendarDate#set:milliseconds (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=28
 )
 (func $~lib/util/date/CalendarDate#set:timeOfDay (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=48
 )
 (func $~lib/util/date/setTimeOfDay (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  local.set $2
  local.get $2
  global.get $~lib/util/date/CalendarUtils.HOUR_IN_MILLIS
  i32.div_s
  local.set $3
  local.get $2
  global.get $~lib/util/date/CalendarUtils.HOUR_IN_MILLIS
  i32.rem_s
  local.set $2
  local.get $2
  global.get $~lib/util/date/CalendarUtils.MINUTE_IN_MILLIS
  i32.div_s
  local.set $4
  local.get $2
  global.get $~lib/util/date/CalendarUtils.MINUTE_IN_MILLIS
  i32.rem_s
  local.set $2
  local.get $2
  global.get $~lib/util/date/CalendarUtils.SECOND_IN_MILLIS
  i32.div_s
  local.set $5
  local.get $2
  global.get $~lib/util/date/CalendarUtils.SECOND_IN_MILLIS
  i32.rem_s
  local.set $2
  local.get $0
  local.get $3
  call $~lib/util/date/CalendarDate#set:hours
  local.get $0
  local.get $4
  call $~lib/util/date/CalendarDate#set:minutes
  local.get $0
  local.get $5
  call $~lib/util/date/CalendarDate#set:seconds
  local.get $0
  local.get $2
  call $~lib/util/date/CalendarDate#set:milliseconds
  local.get $0
  local.get $1
  call $~lib/util/date/CalendarDate#set:timeOfDay
 )
 (func $~lib/util/date/CalendarDate#set:isNormalized (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=32
 )
 (func $~lib/util/date/CalendarDate#set:timeZone (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=56
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/util/date/setHours (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=16
  local.get $1
  i32.ne
  if
   local.get $0
   i32.load offset=16
   local.set $2
   local.get $0
   local.get $0
   i64.load offset=40
   local.get $1
   local.get $2
   i32.sub
   i64.extend_i32_s
   global.get $~lib/util/date/CalendarUtils.HOUR_IN_MILLIS
   i64.extend_i32_s
   i64.mul
   i64.add
   call $~lib/util/date/CalendarDate#set:millis
   local.get $0
   i32.const 0
   call $~lib/util/date/CalendarDate#set:isNormalized
  end
 )
 (func $~lib/util/date/setMinutes (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=20
  local.get $1
  i32.ne
  if
   local.get $0
   i32.load offset=20
   local.set $2
   local.get $0
   local.get $0
   i64.load offset=40
   local.get $1
   local.get $2
   i32.sub
   i64.extend_i32_s
   global.get $~lib/util/date/CalendarUtils.MINUTE_IN_MILLIS
   i64.extend_i32_s
   i64.mul
   i64.add
   call $~lib/util/date/CalendarDate#set:millis
   local.get $0
   i32.const 0
   call $~lib/util/date/CalendarDate#set:isNormalized
  end
 )
 (func $~lib/util/date/setSeconds (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=24
  local.get $1
  i32.ne
  if
   local.get $0
   i32.load offset=24
   local.set $2
   local.get $0
   local.get $0
   i64.load offset=40
   local.get $1
   local.get $2
   i32.sub
   i64.extend_i32_s
   global.get $~lib/util/date/CalendarUtils.SECOND_IN_MILLIS
   i64.extend_i32_s
   i64.mul
   i64.add
   call $~lib/util/date/CalendarDate#set:millis
   local.get $0
   i32.const 0
   call $~lib/util/date/CalendarDate#set:isNormalized
  end
 )
 (func $~lib/util/date/setMilliseconds (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=28
  local.get $1
  i32.ne
  if
   local.get $0
   i32.load offset=28
   local.set $2
   local.get $0
   local.get $0
   i64.load offset=40
   local.get $1
   local.get $2
   i32.sub
   i64.extend_i32_s
   i64.add
   call $~lib/util/date/CalendarDate#set:millis
   local.get $0
   i32.const 0
   call $~lib/util/date/CalendarDate#set:isNormalized
  end
 )
 (func $~lib/date/Date#getTimezoneOffset (param $0 i32) (result i32)
  call $~lib/bindings/Date/getTimezoneOffset
 )
 (func $~lib/rt/__visit_globals (param $0 i32)
  (local $1 i32)
  global.get $std/date/date
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/date/date1
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/date/date2
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 128
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 240
  local.get $0
  call $~lib/rt/itcms/__visit
  global.get $~lib/util/date/TimeZone.UTC_TIME_ZONE
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/util/date/CalendarUtils.ACCUMULATED_DAYS_IN_MONTH
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/util/date/CalendarUtils.FIXED_DATES
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/arraybuffer/ArrayBufferView~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/util/date/TimeZone~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/array/Array<i32>#__visit (param $0 i32) (param $1 i32)
  i32.const 0
  drop
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__visit
 )
 (func $~lib/date/Date~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=12
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=16
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/util/date/CalendarDate~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=56
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/rt/__visit_members (param $0 i32) (param $1 i32)
  block $invalid
   block $~lib/util/date/CalendarDate
    block $~lib/date/Date
     block $~lib/array/Array<i32>
      block $~lib/util/date/TimeZone
       block $~lib/arraybuffer/ArrayBufferView
        block $~lib/string/String
         block $~lib/arraybuffer/ArrayBuffer
          local.get $0
          i32.const 8
          i32.sub
          i32.load
          br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $~lib/util/date/TimeZone $~lib/array/Array<i32> $~lib/date/Date $~lib/util/date/CalendarDate $invalid
         end
         return
        end
        return
       end
       local.get $0
       local.get $1
       call $~lib/arraybuffer/ArrayBufferView~visit
       return
      end
      local.get $0
      local.get $1
      call $~lib/util/date/TimeZone~visit
      return
     end
     local.get $0
     local.get $1
     call $~lib/array/Array<i32>~visit
     return
    end
    local.get $0
    local.get $1
    call $~lib/date/Date~visit
    return
   end
   local.get $0
   local.get $1
   call $~lib/util/date/CalendarDate~visit
   return
  end
  unreachable
 )
 (func $~start
  call $start:std/date
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 17632
   i32.const 17680
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start:~lib/util/date
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 80
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/toSpace
  i32.const 288
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/pinSpace
  i32.const 320
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/fromSpace
  i32.const 0
  i32.const 432
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i32.const 0
  call $~lib/util/date/TimeZone#constructor
  global.set $~lib/util/date/TimeZone.UTC_TIME_ZONE
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/date/Date#constructor (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i64.const 0
  call $~lib/date/Date#set:value
  local.get $0
  i32.const 0
  call $~lib/date/Date#set:timeZone
  local.get $0
  i32.const 0
  call $~lib/date/Date#set:localDate
  local.get $0
  i32.const 0
  call $~lib/date/Date#set:utcDate
  local.get $0
  local.get $1
  call $~lib/date/Date#set:value
  local.get $0
  i32.const 0
  i32.const 992
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/bindings/Date/getTimezoneOffset
  call $~lib/util/date/TimeZone#constructor
  call $~lib/date/Date#set:timeZone
  local.get $0
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/util/date/CalendarUtils.getFixedDate (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  local.get $1
  global.get $~lib/util/date/CalendarUtils.JANUARY
  i32.eq
  if (result i32)
   local.get $2
   i32.const 1
   i32.eq
  else
   i32.const 0
  end
  local.set $3
  local.get $3
  if (result i32)
   local.get $0
   call $~lib/util/date/CalendarUtils.hitFixedDateYear
  else
   i32.const 0
  end
  if
   global.get $~lib/util/date/CalendarUtils.FIXED_DATES
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store
   local.get $7
   local.get $0
   global.get $~lib/util/date/CalendarUtils.BASE_YEAR
   i32.sub
   call $~lib/array/Array<i32>#__get
   local.set $7
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $7
   return
  end
  local.get $0
  i32.const 1
  i32.sub
  local.set $4
  local.get $2
  local.set $5
  local.get $5
  i32.const 365
  local.get $4
  i32.mul
  block $~lib/util/date/CalendarUtils.countLeaps|inlined.0 (result i32)
   local.get $4
   local.set $6
   local.get $6
   i32.const 0
   i32.ge_s
   if
    local.get $6
    i32.const 4
    i32.div_s
    local.get $6
    i32.const 100
    i32.div_s
    i32.sub
    local.get $6
    i32.const 400
    i32.div_s
    i32.add
    br $~lib/util/date/CalendarUtils.countLeaps|inlined.0
   else
    local.get $6
    i32.const 4
    call $~lib/util/date/CalendarUtils.floorDivide
    local.get $6
    i32.const 100
    call $~lib/util/date/CalendarUtils.floorDivide
    i32.sub
    local.get $6
    i32.const 400
    call $~lib/util/date/CalendarUtils.floorDivide
    i32.add
    br $~lib/util/date/CalendarUtils.countLeaps|inlined.0
   end
   unreachable
  end
  i32.add
  i32.const 367
  local.get $1
  i32.mul
  i32.const 362
  i32.sub
  i32.const 12
  i32.div_s
  i32.add
  i32.add
  local.set $5
  local.get $1
  global.get $~lib/util/date/CalendarUtils.FEBRUARY
  i32.gt_s
  if
   local.get $5
   local.get $0
   local.set $6
   local.get $6
   i32.const 3
   i32.and
   i32.const 0
   i32.eq
   if (result i32)
    local.get $6
    i32.const 25
    i32.rem_s
    i32.const 0
    i32.ne
    if (result i32)
     i32.const 1
    else
     local.get $6
     i32.const 15
     i32.and
     i32.const 0
     i32.eq
    end
   else
    i32.const 0
   end
   if (result i32)
    i32.const 1
   else
    i32.const 2
   end
   i32.sub
   local.set $5
  end
  local.get $5
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $~lib/util/date/setCalendarDateFromFixedDate (param $0 i32) (param $1 i32)
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
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  call $~lib/util/date/CalendarUtils.getYearFromFixedDate
  local.set $2
  local.get $2
  global.get $~lib/util/date/CalendarUtils.JANUARY
  i32.const 1
  call $~lib/util/date/CalendarUtils.getFixedDate
  local.set $3
  local.get $2
  local.set $4
  local.get $4
  i32.const 3
  i32.and
  i32.const 0
  i32.eq
  if (result i32)
   local.get $4
   i32.const 25
   i32.rem_s
   i32.const 0
   i32.ne
   if (result i32)
    i32.const 1
   else
    local.get $4
    i32.const 15
    i32.and
    i32.const 0
    i32.eq
   end
  else
   i32.const 0
  end
  local.set $5
  local.get $1
  local.get $3
  i32.sub
  local.set $6
  local.get $3
  i32.const 31
  i32.add
  i32.const 28
  i32.add
  local.set $7
  local.get $5
  if
   local.get $7
   i32.const 1
   i32.add
   local.set $7
  end
  local.get $1
  local.get $7
  i32.ge_s
  if
   local.get $6
   local.get $5
   if (result i32)
    i32.const 1
   else
    i32.const 2
   end
   i32.add
   local.set $6
  end
  i32.const 12
  local.get $6
  i32.mul
  i32.const 373
  i32.add
  local.set $8
  local.get $8
  i32.const 0
  i32.gt_s
  if
   local.get $8
   i32.const 367
   i32.div_s
   local.set $8
  else
   local.get $8
   i32.const 367
   call $~lib/util/date/CalendarUtils.floorDivide
   local.set $8
  end
  global.get $~lib/util/date/CalendarUtils.ACCUMULATED_DAYS_IN_MONTH
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  local.get $8
  call $~lib/array/Array<i32>#__get
  local.set $9
  local.get $3
  local.get $9
  i32.add
  local.set $10
  local.get $5
  if (result i32)
   local.get $8
   global.get $~lib/util/date/CalendarUtils.MARCH
   i32.ge_s
  else
   i32.const 0
  end
  if
   local.get $10
   i32.const 1
   i32.add
   local.set $10
  end
  local.get $1
  local.get $10
  i32.sub
  i32.const 1
  i32.add
  local.set $11
  local.get $1
  call $~lib/util/date/CalendarUtils.getDayOfWeekFromFixedDate
  local.set $12
  local.get $0
  local.get $2
  call $~lib/util/date/CalendarDate#set:year
  local.get $0
  local.get $8
  call $~lib/util/date/CalendarDate#set:month
  local.get $0
  local.get $11
  call $~lib/util/date/CalendarDate#set:dayOfMonth
  local.get $0
  local.get $12
  call $~lib/util/date/CalendarDate#set:dayOfWeek
  local.get $0
  local.get $1
  call $~lib/util/date/CalendarDate#set:fixedDate
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/util/date/getCalendarDate (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 0
  local.set $2
  i32.const 0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=56
  local.tee $4
  i32.store
  local.get $4
  i32.const 0
  i32.ne
  if (result i32)
   local.get $4
   i32.load offset=4
   i32.const 0
   i32.ne
  else
   i32.const 0
  end
  if
   local.get $4
   i32.load offset=4
   i64.extend_i32_s
   local.set $5
   local.get $3
   local.get $1
   local.get $5
   i64.add
   global.get $~lib/util/date/CalendarUtils.DAY_IN_MILLIS
   i64.extend_i32_s
   i64.div_s
   i32.wrap_i64
   i32.add
   local.set $3
   local.get $2
   local.get $1
   local.get $5
   i64.add
   global.get $~lib/util/date/CalendarUtils.DAY_IN_MILLIS
   i64.extend_i32_s
   i64.rem_s
   i32.wrap_i64
   i32.add
   local.set $2
  else
   local.get $1
   global.get $~lib/util/date/CalendarUtils.DAY_IN_MILLIS
   i64.extend_i32_s
   i64.div_s
   i32.wrap_i64
   local.set $3
   local.get $1
   global.get $~lib/util/date/CalendarUtils.DAY_IN_MILLIS
   i64.extend_i32_s
   i64.rem_s
   i32.wrap_i64
   local.set $2
  end
  local.get $3
  global.get $~lib/util/date/CalendarUtils.EPOCH_OFFSET
  i32.add
  local.set $3
  local.get $0
  local.get $1
  call $~lib/util/date/CalendarDate#set:millis
  local.get $0
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $3
  call $~lib/util/date/setCalendarDateFromFixedDate
  local.get $0
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $2
  call $~lib/util/date/setTimeOfDay
  local.get $0
  i32.const 1
  call $~lib/util/date/CalendarDate#set:isNormalized
  local.get $0
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/date/Date#getUTCCalendarDate (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
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
  local.get $0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/date/Date#isNormalizeUTCDate
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=16
   local.tee $1
   i32.store offset=4
   local.get $1
   if (result i32)
    local.get $1
   else
    i32.const 1024
    i32.const 1088
    i32.const 70
    i32.const 14
    call $~lib/builtins/abort
    unreachable
   end
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  else
   local.get $0
   i32.load offset=16
   i32.const 0
   i32.ne
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=16
    local.tee $1
    i32.store offset=4
    local.get $1
    if (result i32)
     local.get $1
    else
     i32.const 1024
     i32.const 1088
     i32.const 72
     i32.const 30
     call $~lib/builtins/abort
     unreachable
    end
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    local.get $3
    local.get $0
    i64.load
    call $~lib/util/date/getCalendarDate
    local.set $3
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $3
    return
   else
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    local.get $0
    i64.load
    global.get $~lib/util/date/TimeZone.UTC_TIME_ZONE
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    local.get $3
    call $~lib/util/date/CalendarDate#constructor
    local.tee $1
    i32.store offset=4
    local.get $0
    local.get $1
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    local.get $3
    local.get $0
    i64.load
    call $~lib/util/date/getCalendarDate
    call $~lib/date/Date#set:utcDate
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=16
    local.tee $2
    i32.store offset=12
    local.get $2
    if (result i32)
     local.get $2
    else
     i32.const 1024
     i32.const 1088
     i32.const 76
     i32.const 14
     call $~lib/builtins/abort
     unreachable
    end
    local.set $3
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $3
    return
   end
   unreachable
  end
  unreachable
 )
 (func $~lib/date/Date#getUTCFullYear (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/date/Date#getUTCCalendarDate
  i32.load
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/date/Date#getUTCMonth (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/date/Date#getUTCCalendarDate
  i32.load offset=4
  i32.const 1
  i32.sub
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/date/Date#getUTCDate (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/date/Date#getUTCCalendarDate
  i32.load offset=8
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/date/Date#getUTCDay (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/date/Date#getUTCCalendarDate
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/date/Date#getUTCHours (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/date/Date#getUTCCalendarDate
  i32.load offset=16
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/date/Date#getUTCMinutes (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/date/Date#getUTCCalendarDate
  i32.load offset=20
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/date/Date#getUTCSeconds (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/date/Date#getUTCCalendarDate
  i32.load offset=24
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/date/Date#getUTCMilliseconds (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/date/Date#getUTCCalendarDate
  i32.load offset=28
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $std/date/test_utc_date (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (param $7 i32) (param $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $~lib/date/Date#getUTCFullYear
  local.get $1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 944
   i32.const 7
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $~lib/date/Date#getUTCMonth
  local.get $2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 944
   i32.const 8
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $~lib/date/Date#getUTCDate
  local.get $3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 944
   i32.const 9
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $~lib/date/Date#getUTCDay
  local.get $4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 944
   i32.const 10
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $~lib/date/Date#getUTCHours
  local.get $5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 944
   i32.const 11
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $~lib/date/Date#getUTCMinutes
  local.get $6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 944
   i32.const 12
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $~lib/date/Date#getUTCSeconds
  local.get $7
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 944
   i32.const 13
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $~lib/date/Date#getUTCMilliseconds
  local.get $8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 944
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
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $0
  call $~lib/date/Date#constructor
  local.tee $9
  i32.store
  local.get $9
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=4
  local.get $10
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
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load
  local.get $1
  i32.ne
  if
   local.get $0
   i32.load
   global.get $~lib/util/date/CalendarUtils.JANUARY
   i32.const 1
   call $~lib/util/date/CalendarUtils.getFixedDate
   local.set $2
   local.get $1
   global.get $~lib/util/date/CalendarUtils.JANUARY
   i32.const 1
   call $~lib/util/date/CalendarUtils.getFixedDate
   local.set $3
   local.get $3
   local.get $0
   i32.load offset=52
   local.get $2
   i32.sub
   i32.add
   local.set $4
   local.get $0
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store
   local.get $5
   local.get $4
   call $~lib/util/date/setCalendarDateFromFixedDate
   local.get $0
   local.get $0
   i64.load offset=40
   local.get $3
   local.get $2
   i32.sub
   i64.extend_i32_s
   global.get $~lib/util/date/CalendarUtils.DAY_IN_MILLIS
   i64.extend_i32_s
   i64.mul
   i64.add
   call $~lib/util/date/CalendarDate#set:millis
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/date/Date#setUTCFullYear (param $0 i32) (param $1 i32) (result i64)
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
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/date/Date#getUTCCalendarDate
  local.tee $2
  i32.store offset=4
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $1
  call $~lib/util/date/setFullYear
  local.get $0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $2
  i64.load offset=40
  call $~lib/date/Date#setTime
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/util/date/setMonth (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load offset=4
  local.get $1
  i32.ne
  if
   local.get $1
   global.get $~lib/util/date/CalendarUtils.YEAR_IN_MONTHS
   call $~lib/util/date/CalendarUtils.floorDivide
   local.set $2
   local.get $1
   global.get $~lib/util/date/CalendarUtils.YEAR_IN_MONTHS
   call $~lib/util/date/CalendarUtils.mod
   local.set $3
   local.get $0
   i32.load offset=8
   local.set $4
   local.get $0
   i32.load
   local.get $2
   i32.add
   local.get $3
   i32.const 1
   call $~lib/util/date/CalendarUtils.getFixedDate
   local.set $5
   local.get $5
   local.get $4
   i32.add
   i32.const 1
   i32.sub
   local.set $6
   local.get $0
   i32.load offset=52
   local.set $7
   local.get $0
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $8
   local.get $6
   call $~lib/util/date/setCalendarDateFromFixedDate
   local.get $0
   local.get $0
   i64.load offset=40
   local.get $6
   local.get $7
   i32.sub
   i64.extend_i32_s
   global.get $~lib/util/date/CalendarUtils.DAY_IN_MILLIS
   i64.extend_i32_s
   i64.mul
   i64.add
   call $~lib/util/date/CalendarDate#set:millis
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/date/Date#setUTCMonth (param $0 i32) (param $1 i32) (result i64)
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
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/date/Date#getUTCCalendarDate
  local.tee $2
  i32.store offset=4
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $1
  i32.const 1
  i32.add
  call $~lib/util/date/setMonth
  local.get $0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $2
  i64.load offset=40
  call $~lib/date/Date#setTime
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/util/date/setDate (param $0 i32) (param $1 i32)
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
  local.get $0
  i32.load offset=8
  local.get $1
  i32.ne
  if
   local.get $0
   i32.load offset=8
   local.set $2
   local.get $0
   i32.load offset=52
   local.get $1
   i32.add
   local.get $2
   i32.sub
   local.set $3
   local.get $0
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   local.get $4
   local.get $3
   call $~lib/util/date/setCalendarDateFromFixedDate
   local.get $0
   local.get $0
   i64.load offset=40
   local.get $1
   local.get $2
   i32.sub
   i64.extend_i32_s
   global.get $~lib/util/date/CalendarUtils.DAY_IN_MILLIS
   i64.extend_i32_s
   i64.mul
   i64.add
   call $~lib/util/date/CalendarDate#set:millis
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/date/Date#setUTCDate (param $0 i32) (param $1 i32) (result i64)
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
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/date/Date#getUTCCalendarDate
  local.tee $2
  i32.store offset=4
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $1
  call $~lib/util/date/setDate
  local.get $0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $2
  i64.load offset=40
  call $~lib/date/Date#setTime
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/date/Date#setUTCHours (param $0 i32) (param $1 i32) (result i64)
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
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/date/Date#getUTCCalendarDate
  local.tee $2
  i32.store offset=4
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $1
  call $~lib/util/date/setHours
  local.get $0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $2
  i64.load offset=40
  call $~lib/date/Date#setTime
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/date/Date#setUTCMinutes (param $0 i32) (param $1 i32) (result i64)
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
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/date/Date#getUTCCalendarDate
  local.tee $2
  i32.store offset=4
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $1
  call $~lib/util/date/setMinutes
  local.get $0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $2
  i64.load offset=40
  call $~lib/date/Date#setTime
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/date/Date#setUTCSeconds (param $0 i32) (param $1 i32) (result i64)
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
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/date/Date#getUTCCalendarDate
  local.tee $2
  i32.store offset=4
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $1
  call $~lib/util/date/setSeconds
  local.get $0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $2
  i64.load offset=40
  call $~lib/date/Date#setTime
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/date/Date#setUTCMilliseconds (param $0 i32) (param $1 i32) (result i64)
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
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/date/Date#getUTCCalendarDate
  local.tee $2
  i32.store offset=4
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $1
  call $~lib/util/date/setMilliseconds
  local.get $0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $2
  i64.load offset=40
  call $~lib/date/Date#setTime
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/date/Date#getLocalCalendarDate (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
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
  local.get $0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/date/Date#isNormalizeLocalDate
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=12
   local.tee $1
   i32.store offset=4
   local.get $1
   if (result i32)
    local.get $1
   else
    i32.const 1024
    i32.const 1088
    i32.const 58
    i32.const 14
    call $~lib/builtins/abort
    unreachable
   end
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  else
   local.get $0
   i32.load offset=12
   i32.const 0
   i32.ne
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=12
    local.tee $1
    i32.store offset=4
    local.get $1
    if (result i32)
     local.get $1
    else
     i32.const 1024
     i32.const 1088
     i32.const 59
     i32.const 43
     call $~lib/builtins/abort
     unreachable
    end
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
    if (result i32)
     local.get $1
    else
     i32.const 1024
     i32.const 1088
     i32.const 60
     i32.const 30
     call $~lib/builtins/abort
     unreachable
    end
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    local.get $3
    local.get $0
    i64.load
    call $~lib/util/date/getCalendarDate
    local.set $3
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $3
    return
   else
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    local.get $0
    i64.load
    local.get $0
    i32.load offset=8
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    local.get $3
    call $~lib/util/date/CalendarDate#constructor
    local.tee $1
    i32.store offset=4
    local.get $0
    local.get $1
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    local.get $3
    local.get $0
    i64.load
    call $~lib/util/date/getCalendarDate
    call $~lib/date/Date#set:localDate
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=12
    local.tee $2
    i32.store offset=12
    local.get $2
    if (result i32)
     local.get $2
    else
     i32.const 1024
     i32.const 1088
     i32.const 64
     i32.const 14
     call $~lib/builtins/abort
     unreachable
    end
    local.set $3
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $3
    return
   end
   unreachable
  end
  unreachable
 )
 (func $~lib/date/Date#setFullYear (param $0 i32) (param $1 i32) (result i64)
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
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/date/Date#getLocalCalendarDate
  local.tee $2
  i32.store offset=4
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $1
  call $~lib/util/date/setFullYear
  local.get $0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $2
  i64.load offset=40
  call $~lib/date/Date#setTime
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/date/Date#getFullYear (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/date/Date#getLocalCalendarDate
  i32.load
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/date/Date#setMonth (param $0 i32) (param $1 i32) (result i64)
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
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/date/Date#getLocalCalendarDate
  local.tee $2
  i32.store offset=4
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $1
  i32.const 1
  i32.add
  call $~lib/util/date/setMonth
  local.get $0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $2
  i64.load offset=40
  call $~lib/date/Date#setTime
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/date/Date#getMonth (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/date/Date#getLocalCalendarDate
  i32.load offset=4
  i32.const 1
  i32.sub
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/date/Date#setDate (param $0 i32) (param $1 i32) (result i64)
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
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/date/Date#getLocalCalendarDate
  local.tee $2
  i32.store offset=4
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $1
  call $~lib/util/date/setDate
  local.get $0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $2
  i64.load offset=40
  call $~lib/date/Date#setTime
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/date/Date#getDate (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/date/Date#getLocalCalendarDate
  i32.load offset=8
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/date/Date#setHours (param $0 i32) (param $1 i32) (result i64)
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
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/date/Date#getLocalCalendarDate
  local.tee $2
  i32.store offset=4
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $1
  call $~lib/util/date/setHours
  local.get $0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $2
  i64.load offset=40
  call $~lib/date/Date#setTime
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/date/Date#getHours (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/date/Date#getLocalCalendarDate
  i32.load offset=16
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/date/Date#setMinutes (param $0 i32) (param $1 i32) (result i64)
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
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/date/Date#getLocalCalendarDate
  local.tee $2
  i32.store offset=4
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $1
  call $~lib/util/date/setMinutes
  local.get $0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $2
  i64.load offset=40
  call $~lib/date/Date#setTime
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/date/Date#getMinutes (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/date/Date#getLocalCalendarDate
  i32.load offset=20
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/date/Date#setSeconds (param $0 i32) (param $1 i32) (result i64)
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
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/date/Date#getLocalCalendarDate
  local.tee $2
  i32.store offset=4
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $1
  call $~lib/util/date/setSeconds
  local.get $0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $2
  i64.load offset=40
  call $~lib/date/Date#setTime
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/date/Date#getSeconds (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/date/Date#getLocalCalendarDate
  i32.load offset=24
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/date/Date#setMilliseconds (param $0 i32) (param $1 i32) (result i64)
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
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/date/Date#getLocalCalendarDate
  local.tee $2
  i32.store offset=4
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $1
  call $~lib/util/date/setMilliseconds
  local.get $0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $2
  i64.load offset=40
  call $~lib/date/Date#setTime
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/date/Date#getMilliseconds (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/date/Date#getLocalCalendarDate
  i32.load offset=28
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $start:std/date
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  call $start:~lib/date
  i32.const 1970
  local.set $2
  i32.const 0
  local.set $1
  i32.const 1
  local.set $0
  i32.const 0
  local.set $3
  i32.const 0
  local.set $4
  i32.const 0
  local.set $5
  i64.const 0
  local.set $6
  local.get $2
  local.get $1
  local.get $0
  local.get $3
  local.get $4
  local.get $5
  local.get $6
  f64.convert_i64_s
  call $~lib/bindings/Date/UTC
  i64.trunc_f64_s
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 944
   i32.const 17
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1970
  local.set $5
  i32.const 0
  local.set $4
  i32.const 1
  local.set $3
  i32.const 0
  local.set $2
  i32.const 0
  local.set $1
  i32.const 0
  local.set $0
  i64.const 0
  local.set $6
  local.get $5
  local.get $4
  local.get $3
  local.get $2
  local.get $1
  local.get $0
  local.get $6
  f64.convert_i64_s
  call $~lib/bindings/Date/UTC
  i64.trunc_f64_s
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 944
   i32.const 18
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2018
  local.set $5
  i32.const 10
  local.set $4
  i32.const 10
  local.set $3
  i32.const 11
  local.set $2
  i32.const 0
  local.set $1
  i32.const 0
  local.set $0
  i64.const 1
  local.set $6
  local.get $5
  local.get $4
  local.get $3
  local.get $2
  local.get $1
  local.get $0
  local.get $6
  f64.convert_i64_s
  call $~lib/bindings/Date/UTC
  i64.trunc_f64_s
  global.set $std/date/creationTime
  global.get $std/date/creationTime
  i64.const 1541847600001
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 944
   i32.const 21
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/bindings/Date/now
  i64.trunc_f64_s
  global.get $std/date/creationTime
  i64.gt_s
  i32.eqz
  if
   i32.const 0
   i32.const 944
   i32.const 23
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.get $std/date/creationTime
  call $~lib/date/Date#constructor
  global.set $std/date/date
  global.get $std/date/date
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  call $~lib/date/Date#getTime
  global.get $std/date/creationTime
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 944
   i32.const 26
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/date/date
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  global.get $std/date/creationTime
  i64.const 1
  i64.add
  call $~lib/date/Date#setTime
  drop
  global.get $std/date/date
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  call $~lib/date/Date#getTime
  global.get $std/date/creationTime
  i64.const 1
  i64.add
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 944
   i32.const 28
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2018
  local.set $5
  i32.const 10
  local.set $4
  i32.const 10
  local.set $3
  i32.const 11
  local.set $2
  i32.const 0
  local.set $1
  i32.const 0
  local.set $0
  i64.const 1
  local.set $6
  local.get $5
  local.get $4
  local.get $3
  local.get $2
  local.get $1
  local.get $0
  local.get $6
  f64.convert_i64_s
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
  local.set $5
  i32.const 0
  local.set $4
  i32.const 1
  local.set $3
  i32.const 0
  local.set $2
  i32.const 0
  local.set $1
  i32.const 0
  local.set $0
  i64.const 0
  local.set $6
  local.get $5
  local.get $4
  local.get $3
  local.get $2
  local.get $1
  local.get $0
  local.get $6
  f64.convert_i64_s
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
  local.set $5
  i32.const 0
  local.set $4
  i32.const 1
  local.set $3
  i32.const 11
  local.set $2
  i32.const 11
  local.set $1
  i32.const 22
  local.set $0
  i64.const 22
  local.set $6
  local.get $5
  local.get $4
  local.get $3
  local.get $2
  local.get $1
  local.get $0
  local.get $6
  f64.convert_i64_s
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
  local.set $5
  i32.const 0
  local.set $4
  i32.const 1
  local.set $3
  i32.const 0
  local.set $2
  i32.const 0
  local.set $1
  i32.const 0
  local.set $0
  i64.const 0
  local.set $6
  local.get $5
  local.get $4
  local.get $3
  local.get $2
  local.get $1
  local.get $0
  local.get $6
  f64.convert_i64_s
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
  local.set $5
  i32.const 12
  local.set $4
  i32.const 12
  local.set $3
  i32.const 12
  local.set $2
  i32.const 12
  local.set $1
  i32.const 61
  local.set $0
  i64.const 61
  local.set $6
  local.get $5
  local.get $4
  local.get $3
  local.get $2
  local.get $1
  local.get $0
  local.get $6
  f64.convert_i64_s
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
  local.set $5
  i32.const 1
  local.set $4
  i32.const 29
  local.set $3
  i32.const 0
  local.set $2
  i32.const 0
  local.set $1
  i32.const 0
  local.set $0
  i64.const 0
  local.set $6
  local.get $5
  local.get $4
  local.get $3
  local.get $2
  local.get $1
  local.get $0
  local.get $6
  f64.convert_i64_s
  call $~lib/bindings/Date/UTC
  i64.trunc_f64_s
  global.set $std/date/creationTime
  i32.const 0
  global.get $std/date/creationTime
  call $~lib/date/Date#constructor
  global.set $std/date/date
  global.get $std/date/date
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  i32.const 2000
  call $~lib/date/Date#setUTCFullYear
  global.set $std/date/millis
  global.get $std/date/millis
  i64.const 951782400000
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 944
   i32.const 50
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/date/date
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  i32.const 2000
  i32.const 1
  i32.const 29
  i32.const 2
  i32.const 0
  i32.const 0
  i32.const 0
  i32.const 0
  call $std/date/test_utc_date
  global.get $std/date/date
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  i32.const 1999
  call $~lib/date/Date#setUTCFullYear
  global.set $std/date/millis
  global.get $std/date/millis
  i64.const 920246400000
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 944
   i32.const 53
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/date/date
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  i32.const 1999
  i32.const 2
  i32.const 1
  i32.const 1
  i32.const 0
  i32.const 0
  i32.const 0
  i32.const 0
  call $std/date/test_utc_date
  global.get $std/date/date
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  i32.const 1996
  call $~lib/date/Date#setUTCFullYear
  global.set $std/date/millis
  global.get $std/date/millis
  i64.const 825552000000
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 944
   i32.const 56
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/date/date
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  i32.const 1996
  i32.const 1
  i32.const 29
  i32.const 4
  i32.const 0
  i32.const 0
  i32.const 0
  i32.const 0
  call $std/date/test_utc_date
  global.get $std/date/date
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  i32.const 13
  call $~lib/date/Date#setUTCMonth
  drop
  global.get $std/date/date
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  i32.const 1997
  i32.const 2
  i32.const 1
  i32.const 6
  i32.const 0
  i32.const 0
  i32.const 0
  i32.const 0
  call $std/date/test_utc_date
  i32.const 0
  i64.const 825552000000
  call $~lib/date/Date#constructor
  global.set $std/date/date
  global.get $std/date/date
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  i32.const -11
  call $~lib/date/Date#setUTCMonth
  i64.const 794016000000
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 944
   i32.const 64
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/date/date
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  i32.const 1995
  i32.const 2
  i32.const 1
  i32.const 3
  i32.const 0
  i32.const 0
  i32.const 0
  i32.const 0
  call $std/date/test_utc_date
  i32.const 0
  i32.const 1996
  local.set $5
  i32.const 1
  local.set $4
  i32.const 29
  local.set $3
  i32.const 0
  local.set $2
  i32.const 0
  local.set $1
  i32.const 0
  local.set $0
  i64.const 0
  local.set $6
  local.get $5
  local.get $4
  local.get $3
  local.get $2
  local.get $1
  local.get $0
  local.get $6
  f64.convert_i64_s
  call $~lib/bindings/Date/UTC
  i64.trunc_f64_s
  call $~lib/date/Date#constructor
  global.set $std/date/date
  global.get $std/date/date
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  i32.const 30
  call $~lib/date/Date#setUTCDate
  i64.const 825638400000
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 944
   i32.const 69
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/date/date
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  i32.const 1996
  i32.const 2
  i32.const 1
  i32.const 5
  i32.const 0
  i32.const 0
  i32.const 0
  i32.const 0
  call $std/date/test_utc_date
  i32.const 0
  i32.const 1996
  local.set $5
  i32.const 1
  local.set $4
  i32.const 29
  local.set $3
  i32.const 0
  local.set $2
  i32.const 0
  local.set $1
  i32.const 0
  local.set $0
  i64.const 0
  local.set $6
  local.get $5
  local.get $4
  local.get $3
  local.get $2
  local.get $1
  local.get $0
  local.get $6
  f64.convert_i64_s
  call $~lib/bindings/Date/UTC
  i64.trunc_f64_s
  call $~lib/date/Date#constructor
  global.set $std/date/date
  global.get $std/date/date
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  i32.const 24
  call $~lib/date/Date#setUTCHours
  i64.const 825638400000
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 944
   i32.const 74
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/date/date
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  i32.const 1996
  i32.const 2
  i32.const 1
  i32.const 5
  i32.const 0
  i32.const 0
  i32.const 0
  i32.const 0
  call $std/date/test_utc_date
  i32.const 0
  i32.const 1996
  local.set $5
  i32.const 1
  local.set $4
  i32.const 29
  local.set $3
  i32.const 0
  local.set $2
  i32.const 0
  local.set $1
  i32.const 0
  local.set $0
  i64.const 0
  local.set $6
  local.get $5
  local.get $4
  local.get $3
  local.get $2
  local.get $1
  local.get $0
  local.get $6
  f64.convert_i64_s
  call $~lib/bindings/Date/UTC
  i64.trunc_f64_s
  call $~lib/date/Date#constructor
  global.set $std/date/date
  global.get $std/date/date
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  i32.const 24
  i32.const 60
  i32.mul
  i32.const 55
  i32.add
  call $~lib/date/Date#setUTCMinutes
  i64.const 825641700000
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 944
   i32.const 79
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/date/date
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  i32.const 1996
  i32.const 2
  i32.const 1
  i32.const 5
  i32.const 0
  i32.const 55
  i32.const 0
  i32.const 0
  call $std/date/test_utc_date
  global.get $std/date/date
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  i32.const 6
  i32.const 60
  i32.mul
  call $~lib/date/Date#setUTCSeconds
  i64.const 825642060000
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 944
   i32.const 83
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/date/date
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  i32.const 1996
  i32.const 2
  i32.const 1
  i32.const 5
  i32.const 1
  i32.const 1
  i32.const 0
  i32.const 0
  call $std/date/test_utc_date
  global.get $std/date/date
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  i32.const 1001
  call $~lib/date/Date#setUTCMilliseconds
  i64.const 825642061001
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 944
   i32.const 87
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/date/date
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
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
  local.set $5
  i32.const 1
  local.set $4
  i32.const 29
  local.set $3
  i32.const 0
  local.set $2
  i32.const 0
  local.set $1
  i32.const 0
  local.set $0
  i64.const 0
  local.set $6
  local.get $5
  local.get $4
  local.get $3
  local.get $2
  local.get $1
  local.get $0
  local.get $6
  f64.convert_i64_s
  call $~lib/bindings/Date/UTC
  i64.trunc_f64_s
  global.set $std/date/creationTime
  i32.const 0
  global.get $std/date/creationTime
  call $~lib/date/Date#constructor
  global.set $std/date/date
  global.get $std/date/date
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  i32.const 2000
  call $~lib/date/Date#setFullYear
  drop
  global.get $std/date/date
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  call $~lib/date/Date#getFullYear
  i32.const 2000
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 944
   i32.const 94
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/date/date
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  i32.const 1
  call $~lib/date/Date#setMonth
  drop
  global.get $std/date/date
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  call $~lib/date/Date#getMonth
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 944
   i32.const 98
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/date/date
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  i32.const 8
  call $~lib/date/Date#setDate
  drop
  global.get $std/date/date
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  call $~lib/date/Date#getDate
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 944
   i32.const 102
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/date/date
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  i32.const 24
  call $~lib/date/Date#setHours
  drop
  global.get $std/date/date
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  call $~lib/date/Date#getHours
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 944
   i32.const 106
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/date/date
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  i32.const 24
  i32.const 60
  i32.mul
  i32.const 55
  i32.add
  call $~lib/date/Date#setMinutes
  drop
  global.get $std/date/date
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  call $~lib/date/Date#getMinutes
  i32.const 55
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 944
   i32.const 110
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/date/date
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  i32.const 6
  i32.const 60
  i32.mul
  call $~lib/date/Date#setSeconds
  drop
  global.get $std/date/date
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  call $~lib/date/Date#getSeconds
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 944
   i32.const 114
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/date/date
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  i32.const 1001
  call $~lib/date/Date#setMilliseconds
  drop
  global.get $std/date/date
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  call $~lib/date/Date#getMilliseconds
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 944
   i32.const 118
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 1970
  local.set $5
  i32.const 0
  local.set $4
  i32.const 1
  local.set $3
  i32.const 0
  local.set $2
  i32.const 0
  local.set $1
  i32.const 0
  local.set $0
  i64.const 0
  local.set $6
  local.get $5
  local.get $4
  local.get $3
  local.get $2
  local.get $1
  local.get $0
  local.get $6
  f64.convert_i64_s
  call $~lib/bindings/Date/UTC
  i64.trunc_f64_s
  call $~lib/date/Date#constructor
  global.set $std/date/date1
  i32.const 0
  call $~lib/bindings/Date/now
  i64.trunc_f64_s
  call $~lib/date/Date#constructor
  global.set $std/date/date2
  global.get $std/date/date1
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  call $~lib/date/Date#getTimezoneOffset
  global.get $std/date/date2
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  call $~lib/date/Date#getTimezoneOffset
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 944
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
 (func $~lib/util/date/TimeZone#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 3
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  call $~lib/util/date/TimeZone#set:ID
  local.get $0
  i32.const 0
  call $~lib/util/date/TimeZone#set:rawOffset
  local.get $0
  local.get $1
  call $~lib/util/date/TimeZone#set:ID
  local.get $0
  local.get $2
  call $~lib/util/date/TimeZone#set:rawOffset
  local.get $0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/date/Date#isNormalizeUTCDate (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
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
  i32.const 0
  i32.ne
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=16
   local.tee $1
   i32.store
   local.get $1
   if (result i32)
    local.get $1
   else
    i32.const 1024
    i32.const 1088
    i32.const 88
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
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
   if (result i32)
    local.get $1
   else
    i32.const 1024
    i32.const 1088
    i32.const 89
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
   i32.load8_u offset=32
  else
   i32.const 0
  end
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/util/date/CalendarDate#constructor (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 60
   i32.const 6
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  call $~lib/util/date/CalendarDate#set:year
  local.get $0
  i32.const 0
  call $~lib/util/date/CalendarDate#set:month
  local.get $0
  i32.const 0
  call $~lib/util/date/CalendarDate#set:dayOfMonth
  local.get $0
  i32.const 0
  call $~lib/util/date/CalendarDate#set:dayOfWeek
  local.get $0
  i32.const 0
  call $~lib/util/date/CalendarDate#set:hours
  local.get $0
  i32.const 0
  call $~lib/util/date/CalendarDate#set:minutes
  local.get $0
  i32.const 0
  call $~lib/util/date/CalendarDate#set:seconds
  local.get $0
  i32.const 0
  call $~lib/util/date/CalendarDate#set:milliseconds
  local.get $0
  i32.const 0
  call $~lib/util/date/CalendarDate#set:isNormalized
  local.get $0
  i64.const 0
  call $~lib/util/date/CalendarDate#set:millis
  local.get $0
  i32.const 0
  call $~lib/util/date/CalendarDate#set:timeOfDay
  local.get $0
  i32.const 0
  call $~lib/util/date/CalendarDate#set:fixedDate
  local.get $0
  i32.const 0
  call $~lib/util/date/CalendarDate#set:timeZone
  local.get $0
  local.get $1
  call $~lib/util/date/CalendarDate#set:millis
  local.get $0
  i32.const 0
  call $~lib/util/date/CalendarDate#set:isNormalized
  local.get $0
  local.get $2
  call $~lib/util/date/CalendarDate#set:timeZone
  local.get $0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/date/Date#isNormalizeLocalDate (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
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
  i32.const 0
  i32.ne
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=12
   local.tee $1
   i32.store
   local.get $1
   if (result i32)
    local.get $1
   else
    i32.const 1024
    i32.const 1088
    i32.const 82
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
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
   if (result i32)
    local.get $1
   else
    i32.const 1024
    i32.const 1088
    i32.const 83
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
   i32.load8_u offset=32
  else
   i32.const 0
  end
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
)
