(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1036) "\1c\00\00\00\01")
 (data (i32.const 1052) "\0c\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 1068) "<\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 1132) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1180) ",\00\00\00\01")
 (data (i32.const 1196) "\18")
 (data (i32.const 1206) "\f0?\00\00\00\00\00\00\00@\00\00\00\00\00\00\08@")
 (data (i32.const 1228) "\1c\00\00\00\01")
 (data (i32.const 1244) "\08\00\00\00\01\00\00\00\ff\ff\ff\ff")
 (data (i32.const 1260) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00i\00n\00f\00e\00r\00-\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1308) ",\00\00\00\01")
 (data (i32.const 1324) "\18")
 (data (i32.const 1334) "\f0?\00\00\00\00\00\00\00@\00\00\00\00\00\00\08@")
 (data (i32.const 1356) "\1c\00\00\00\01")
 (data (i32.const 1372) "\0c\00\00\00\00\00\80?\00\00\00@\00\00@@")
 (data (i32.const 1388) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00a")
 (data (i32.const 1420) "\1c\00\00\00\01")
 (data (i32.const 1436) "\08\00\00\00\00\00\00\00\80\05")
 (data (i32.const 1452) "\1c\00\00\00\01")
 (data (i32.const 1468) "\04")
 (data (i32.const 1484) "\1c\00\00\00\01")
 (data (i32.const 1500) "\08")
 (data (i32.const 1516) "\1c\00\00\00\01")
 (data (i32.const 1532) "\08\00\00\00\01")
 (data (i32.const 1548) "\1c\00\00\00\01")
 (data (i32.const 1564) "\08\00\00\00\00\00\00\00\01")
 (data (i32.const 1580) "\1c\00\00\00\01")
 (data (i32.const 1596) "\04\00\00\00\01")
 (data (i32.const 1612) "\1c\00\00\00\01")
 (data (i32.const 1628) "\04\00\00\00\02")
 (data (i32.const 1644) "|\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/stub/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.const 1073741804
  i32.gt_u
  if
   unreachable
  end
  local.get $0
  i32.const 16
  i32.add
  local.tee $2
  i32.const 1073741820
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  global.get $~lib/rt/stub/offset
  i32.const 4
  i32.add
  local.tee $4
  local.get $2
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.tee $7
  i32.add
  local.tee $2
  memory.size
  local.tee $5
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $3
  i32.gt_u
  if
   local.get $5
   local.get $2
   local.get $3
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $3
   local.get $3
   local.get $5
   i32.lt_s
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
  end
  local.get $2
  global.set $~lib/rt/stub/offset
  local.get $7
  i32.store
  local.get $4
  i32.const 4
  i32.sub
  local.tee $2
  i32.const 0
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  local.get $4
  i32.const 16
  i32.add
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
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 16
  local.get $2
  call $~lib/rt/stub/__new
  local.tee $2
  local.get $0
  local.get $1
  i32.shl
  local.tee $1
  local.set $5
  local.get $1
  i32.const 0
  call $~lib/rt/stub/__new
  local.set $4
  local.get $3
  if
   local.get $4
   local.get $3
   local.get $5
   call $~lib/memory/memory.copy
  end
  local.get $4
  local.tee $3
  i32.store
  local.get $2
  local.get $3
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  local.get $2
 )
 (func $start:infer-array
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 1772
  global.set $~lib/rt/stub/offset
  i32.const 3
  i32.const 2
  i32.const 3
  i32.const 1056
  call $~lib/rt/__newArray
  drop
  i32.const 3
  i32.const 3
  i32.const 4
  i32.const 1200
  call $~lib/rt/__newArray
  drop
  i32.const 2
  i32.const 2
  i32.const 5
  i32.const 1248
  call $~lib/rt/__newArray
  local.tee $0
  local.set $1
  block $folding-inner0
   local.get $0
   i32.load offset=12
   i32.const 1
   i32.le_u
   br_if $folding-inner0
   local.get $1
   i32.load offset=4
   i32.load offset=4
   i32.const -1
   i32.ne
   if
    i32.const 0
    i32.const 1280
    i32.const 14
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 3
   i32.const 3
   i32.const 4
   i32.const 1328
   call $~lib/rt/__newArray
   drop
   i32.const 3
   i32.const 2
   i32.const 6
   i32.const 1376
   call $~lib/rt/__newArray
   local.tee $0
   local.get $0
   i32.load offset=12
   i32.const 1
   i32.le_u
   br_if $folding-inner0
   i32.load offset=4
   f32.load offset=4
   drop
   i32.const 0
   i32.const 7
   call $~lib/rt/stub/__new
   local.set $0
   i32.const 0
   i32.const 7
   call $~lib/rt/stub/__new
   local.set $1
   i32.const 2
   i32.const 2
   i32.const 8
   i32.const 0
   call $~lib/rt/__newArray
   i32.load offset=4
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   local.get $1
   i32.store offset=4
   i32.const 0
   i32.const 7
   call $~lib/rt/stub/__new
   local.set $0
   i32.const 0
   i32.const 7
   call $~lib/rt/stub/__new
   local.set $1
   i32.const 2
   i32.const 2
   i32.const 8
   i32.const 0
   call $~lib/rt/__newArray
   i32.load offset=4
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   local.get $1
   i32.store offset=4
   i32.const 0
   i32.const 7
   call $~lib/rt/stub/__new
   local.set $0
   i32.const 2
   i32.const 2
   i32.const 8
   i32.const 0
   call $~lib/rt/__newArray
   i32.load offset=4
   local.tee $1
   local.get $0
   i32.store
   local.get $1
   i32.const 0
   i32.store offset=4
   i32.const 2
   i32.const 2
   i32.const 9
   i32.const 1440
   call $~lib/rt/__newArray
   drop
   i32.const 1
   i32.const 2
   i32.const 10
   i32.const 1472
   call $~lib/rt/__newArray
   drop
   i32.const 2
   i32.const 2
   i32.const 10
   i32.const 1504
   call $~lib/rt/__newArray
   drop
   i32.const 2
   i32.const 2
   i32.const 3
   i32.const 1536
   call $~lib/rt/__newArray
   drop
   i32.const 2
   i32.const 2
   i32.const 3
   i32.const 1568
   call $~lib/rt/__newArray
   drop
   i32.const 2
   i32.const 2
   i32.const 11
   i32.const 0
   call $~lib/rt/__newArray
   i32.load offset=4
   local.tee $0
   i32.const 1
   i32.const 2
   i32.const 3
   i32.const 1600
   call $~lib/rt/__newArray
   i32.store
   local.get $0
   i32.const 1
   i32.const 2
   i32.const 3
   i32.const 1632
   call $~lib/rt/__newArray
   i32.store offset=4
   return
  end
  i32.const 1088
  i32.const 1152
  i32.const 104
  i32.const 42
  call $~lib/builtins/abort
  unreachable
 )
 (func $~start
  call $start:infer-array
 )
)
