(module
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i64_=>_i32 (func (param i32 i64) (result i32)))
 (type $i32_f32_=>_i32 (func (param i32 f32) (result i32)))
 (type $i32_f64_=>_i32 (func (param i32 f64) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i64_=>_none (func (param i32 i32 i64)))
 (type $i32_i64_=>_none (func (param i32 i64)))
 (type $i32_f32_=>_none (func (param i32 f32)))
 (type $i32_f64_=>_none (func (param i32 f64)))
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (type $i32_f32_i32_=>_i32 (func (param i32 f32 i32) (result i32)))
 (type $i32_f64_i32_=>_i32 (func (param i32 f64 i32) (result i32)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $i32_i32_=>_i64 (func (param i32 i32) (result i64)))
 (type $i32_i32_=>_f32 (func (param i32 i32) (result f32)))
 (type $i32_i32_=>_f64 (func (param i32 i32) (result f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "rtrace" "onalloc" (func $~lib/rt/rtrace/onalloc (param i32)))
 (import "rtrace" "onincrement" (func $~lib/rt/rtrace/onincrement (param i32)))
 (import "rtrace" "onrealloc" (func $~lib/rt/rtrace/onrealloc (param i32 i32)))
 (import "rtrace" "onfree" (func $~lib/rt/rtrace/onfree (param i32)))
 (import "rtrace" "ondecrement" (func $~lib/rt/rtrace/ondecrement (param i32)))
 (memory $0 1)
 (data (i32.const 1024) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1072) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1136) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s")
 (data (i32.const 1184) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 1232) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 1296) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00s\00t\00d\00/\00s\00e\00t\00.\00t\00s")
 (data (i32.const 1344) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1392) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/collectLock (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/tlsf/removeBlock (; 6 ;) (param $0 i32) (param $1 i32)
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
   i32.const 1040
   i32.const 277
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const -4
  i32.and
  local.tee $2
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $2
   i32.const 1073741808
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 279
   i32.const 13
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
   local.tee $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $2
   local.get $4
   i32.const 7
   i32.sub
   local.set $4
  end
  local.get $2
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $4
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 292
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=20
  local.set $3
  local.get $1
  i32.load offset=16
  local.tee $5
  if
   local.get $5
   local.get $3
   i32.store offset=20
  end
  local.get $3
  if
   local.get $3
   local.get $5
   i32.store offset=16
  end
  local.get $1
  local.get $0
  local.get $2
  local.get $4
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
   local.get $4
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $3
   i32.store offset=96
   local.get $3
   i32.eqz
   if
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    local.tee $3
    i32.load offset=4
    i32.const 1
    local.get $2
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.set $1
    local.get $3
    local.get $1
    i32.store offset=4
    local.get $1
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
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (; 7 ;) (param $0 i32) (param $1 i32)
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
   i32.const 1040
   i32.const 205
   i32.const 13
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
   i32.const 1040
   i32.const 207
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 16
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load
  local.tee $5
  i32.const 1
  i32.and
  if
   local.get $3
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $5
   i32.const -4
   i32.and
   i32.add
   local.tee $2
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $4
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $2
    local.get $3
    i32.const 3
    i32.and
    i32.or
    local.tee $3
    i32.store
    local.get $1
    i32.const 16
    i32.add
    local.get $1
    i32.load
    i32.const -4
    i32.and
    i32.add
    local.tee $4
    i32.load
    local.set $5
   end
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $2
   i32.load
   local.tee $7
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1040
    i32.const 228
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $7
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $8
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $2
    call $~lib/rt/tlsf/removeBlock
    local.get $2
    local.get $8
    local.get $7
    i32.const 3
    i32.and
    i32.or
    local.tee $3
    i32.store
    local.get $2
    local.set $1
   end
  end
  local.get $4
  local.get $5
  i32.const 2
  i32.or
  i32.store
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $2
   i32.const 1073741808
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 243
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.const 16
  i32.add
  i32.add
  local.get $4
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 244
   i32.const 13
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
   local.set $6
  end
  local.get $2
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
   i32.const 1040
   i32.const 260
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  local.get $6
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $3
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  local.get $3
  i32.store offset=20
  local.get $3
  if
   local.get $3
   local.get $1
   i32.store offset=16
  end
  local.get $0
  local.get $2
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
  local.get $2
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (; 8 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $1
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $1
  local.get $2
  i32.le_u
  select
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 386
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=1568
  local.tee $3
  if
   local.get $1
   local.get $3
   i32.const 16
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 1040
    i32.const 396
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   local.get $1
   i32.const 16
   i32.sub
   i32.eq
   if
    local.get $3
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
    i32.const 1040
    i32.const 408
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.sub
  local.tee $2
  i32.const 48
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $4
  i32.const 2
  i32.and
  local.get $2
  i32.const 32
  i32.sub
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  i32.const 0
  i32.store offset=20
  local.get $1
  local.get $2
  i32.add
  i32.const 16
  i32.sub
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
 (func $~lib/rt/tlsf/maybeInitialize (; 9 ;) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/tlsf/ROOT
  local.tee $0
  i32.eqz
  if
   i32.const 1
   memory.size
   local.tee $0
   i32.gt_s
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
   i32.const 1456
   local.tee $0
   i32.const 0
   i32.store
   i32.const 3024
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
     i32.const 1456
     i32.add
     i32.const 0
     i32.store offset=4
     i32.const 0
     local.set $2
     loop $for-loop|1
      local.get $2
      i32.const 16
      i32.lt_u
      if
       local.get $2
       local.get $1
       i32.const 4
       i32.shl
       i32.add
       i32.const 2
       i32.shl
       i32.const 1456
       i32.add
       i32.const 0
       i32.store offset=96
       local.get $2
       i32.const 1
       i32.add
       local.set $2
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
   i32.const 1456
   i32.const 3040
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   i32.const 1456
   global.set $~lib/rt/tlsf/ROOT
  end
  local.get $0
 )
 (func $~lib/rt/tlsf/prepareSize (; 10 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 1073741808
  i32.ge_u
  if
   i32.const 1088
   i32.const 1040
   i32.const 457
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $0
  i32.const 16
  local.get $0
  i32.const 16
  i32.gt_u
  select
 )
 (func $~lib/rt/tlsf/searchBlock (; 11 ;) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 536870904
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
  i32.const 0
  local.get $2
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 338
   i32.const 13
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
     i32.const 1040
     i32.const 351
     i32.const 17
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
 (func $~lib/rt/tlsf/prepareBlock (; 12 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load
  local.set $3
  local.get $2
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1040
   i32.const 365
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.get $2
  i32.sub
  local.tee $4
  i32.const 32
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
   i32.const 16
   i32.add
   i32.add
   local.tee $1
   local.get $4
   i32.const 16
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $3
   i32.const -2
   i32.and
   i32.store
   local.get $1
   i32.const 16
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
 )
 (func $~lib/rt/tlsf/allocateBlock (; 13 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/rt/tlsf/collectLock
  if
   i32.const 0
   i32.const 1040
   i32.const 490
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.tee $4
  call $~lib/rt/tlsf/searchBlock
  local.tee $3
  i32.eqz
  if
   i32.const 1
   global.set $~lib/rt/tlsf/collectLock
   i32.const 0
   global.set $~lib/rt/tlsf/collectLock
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/searchBlock
   local.tee $3
   i32.eqz
   if
    i32.const 16
    memory.size
    local.tee $3
    i32.const 16
    i32.shl
    i32.const 16
    i32.sub
    local.get $0
    i32.load offset=1568
    i32.ne
    i32.shl
    local.get $4
    i32.const 1
    i32.const 27
    local.get $4
    i32.clz
    i32.sub
    i32.shl
    i32.const 1
    i32.sub
    i32.add
    local.get $4
    local.get $4
    i32.const 536870904
    i32.lt_u
    select
    i32.add
    i32.const 65535
    i32.add
    i32.const -65536
    i32.and
    i32.const 16
    i32.shr_u
    local.set $5
    local.get $3
    local.get $5
    local.get $3
    local.get $5
    i32.gt_s
    select
    memory.grow
    i32.const 0
    i32.lt_s
    if
     local.get $5
     memory.grow
     i32.const 0
     i32.lt_s
     if
      unreachable
     end
    end
    local.get $0
    local.get $3
    i32.const 16
    i32.shl
    memory.size
    i32.const 16
    i32.shl
    call $~lib/rt/tlsf/addMemory
    local.get $0
    local.get $4
    call $~lib/rt/tlsf/searchBlock
    local.tee $3
    i32.eqz
    if
     i32.const 0
     i32.const 1040
     i32.const 502
     i32.const 19
     call $~lib/builtins/abort
     unreachable
    end
   end
  end
  local.get $3
  i32.load
  i32.const -4
  i32.and
  local.get $4
  i32.lt_u
  if
   i32.const 0
   i32.const 1040
   i32.const 510
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 0
  i32.store offset=4
  local.get $3
  local.get $2
  i32.store offset=8
  local.get $3
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $3
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $3
  local.get $4
  call $~lib/rt/tlsf/prepareBlock
  local.get $3
  call $~lib/rt/rtrace/onalloc
  local.get $3
 )
 (func $~lib/rt/tlsf/__alloc (; 14 ;) (param $0 i32) (param $1 i32) (result i32)
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
 )
 (func $~lib/rt/pure/__retain (; 15 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1444
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   local.tee $1
   i32.load offset=4
   local.tee $2
   i32.const -268435456
   i32.and
   local.get $2
   i32.const 1
   i32.add
   i32.const -268435456
   i32.and
   i32.ne
   if
    i32.const 0
    i32.const 1152
    i32.const 109
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   local.get $2
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $1
   call $~lib/rt/rtrace/onincrement
   local.get $1
   i32.load
   i32.const 1
   i32.and
   if
    i32.const 0
    i32.const 1152
    i32.const 112
    i32.const 13
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
 )
 (func $~lib/memory/memory.fill (; 16 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 17 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   i32.const 1200
   i32.const 1248
   i32.const 54
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $0
  call $~lib/memory/memory.fill
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $~lib/rt/pure/__release (; 18 ;) (param $0 i32)
  local.get $0
  i32.const 1444
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $~lib/set/Set<i8>#clear (; 19 ;) (param $0 i32)
  (local $1 i32)
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $0
  i32.load
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  i32.store
  local.get $0
  i32.const 3
  i32.store offset=4
  i32.const 32
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $0
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/set/Set<i8>#constructor (; 20 ;) (result i32)
  (local $0 i32)
  i32.const 24
  i32.const 3
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
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
  call $~lib/set/Set<i8>#clear
  local.get $0
 )
 (func $~lib/util/hash/hash8 (; 21 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
 )
 (func $~lib/set/Set<i8>#find (; 22 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  loop $while-continue|0
   local.get $0
   if
    local.get $0
    i32.load offset=4
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $0
     i32.load8_u
     local.get $1
     i32.const 255
     i32.and
     i32.eq
    end
    if
     local.get $0
     return
    end
    local.get $0
    i32.load offset=4
    i32.const -2
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<i8>#has (; 23 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/util/hash/hash8
  call $~lib/set/Set<i8>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<i8>#rehash (; 24 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $3
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $3
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $8
  i32.const 3
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $0
  i32.load offset=8
  local.tee $6
  local.get $0
  i32.load offset=16
  i32.const 3
  i32.shl
  i32.add
  local.set $7
  local.get $3
  local.set $4
  loop $while-continue|0
   local.get $6
   local.get $7
   i32.ne
   if
    local.get $6
    local.tee $2
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $4
     local.get $2
     i32.load8_s
     i32.store8
     local.get $4
     local.get $5
     local.get $2
     i32.load8_s
     call $~lib/util/hash/hash8
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $2
     i32.load
     i32.store offset=4
     local.get $2
     local.get $4
     i32.store
     local.get $4
     i32.const 8
     i32.add
     local.set $4
    end
    local.get $6
    i32.const 8
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $5
  local.tee $4
  local.get $0
  local.tee $2
  i32.load
  local.tee $6
  i32.ne
  if
   local.get $4
   call $~lib/rt/pure/__retain
   local.set $4
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $2
  local.get $4
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
  local.set $1
  local.get $3
  local.tee $2
  local.get $1
  i32.load offset=8
  local.tee $4
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $1
  local.get $8
  i32.store offset=12
  local.get $1
  local.get $1
  i32.load offset=20
  i32.store offset=16
  local.get $5
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $~lib/set/Set<i8>#add (; 25 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/util/hash/hash8
  local.tee $3
  call $~lib/set/Set<i8>#find
  i32.eqz
  if
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<i8>#rehash
   end
   local.get $0
   i32.load offset=8
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $4
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $4
   i32.const 3
   i32.shl
   i32.add
   local.tee $2
   local.get $1
   i32.store8
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $2
   local.get $0
   i32.load
   local.get $3
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $1
   i32.load
   i32.store offset=4
   local.get $1
   local.get $2
   i32.store
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/memory/memory.copy (; 26 ;) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/rt/tlsf/freeBlock (; 27 ;) (param $0 i32) (param $1 i32)
  local.get $1
  local.get $1
  i32.load
  i32.const 1
  i32.or
  i32.store
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
  local.get $1
  call $~lib/rt/rtrace/onfree
 )
 (func $~lib/rt/tlsf/reallocateBlock (; 28 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $2
  call $~lib/rt/tlsf/prepareSize
  local.tee $3
  local.get $1
  i32.load
  local.tee $5
  i32.const -4
  i32.and
  i32.le_u
  if
   local.get $0
   local.get $1
   local.get $3
   call $~lib/rt/tlsf/prepareBlock
   local.get $1
   local.get $2
   i32.store offset=12
   local.get $1
   return
  end
  local.get $1
  i32.const 16
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $6
  i32.load
  local.tee $4
  i32.const 1
  i32.and
  if
   local.get $5
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $4
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   local.get $3
   i32.ge_u
   if
    local.get $0
    local.get $6
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $4
    local.get $5
    i32.const 3
    i32.and
    i32.or
    i32.store
    local.get $1
    local.get $2
    i32.store offset=12
    local.get $0
    local.get $1
    local.get $3
    call $~lib/rt/tlsf/prepareBlock
    local.get $1
    return
   end
  end
  local.get $0
  local.get $2
  local.get $1
  i32.load offset=8
  call $~lib/rt/tlsf/allocateBlock
  local.tee $3
  local.get $1
  i32.load offset=4
  i32.store offset=4
  local.get $3
  i32.const 16
  i32.add
  local.get $1
  i32.const 16
  i32.add
  local.get $2
  call $~lib/memory/memory.copy
  local.get $1
  i32.const 1444
  i32.ge_u
  if
   local.get $1
   local.get $3
   call $~lib/rt/rtrace/onrealloc
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/freeBlock
  end
  local.get $3
 )
 (func $~lib/array/ensureSize (; 29 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $4
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 1073741808
   local.get $2
   i32.shr_u
   i32.gt_u
   if
    i32.const 1200
    i32.const 1360
    i32.const 14
    i32.const 47
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   local.set $3
   local.get $1
   local.get $2
   i32.shl
   local.tee $2
   local.set $5
   call $~lib/rt/tlsf/maybeInitialize
   local.get $3
   i32.const 16
   i32.sub
   local.set $1
   local.get $3
   i32.const 15
   i32.and
   i32.eqz
   i32.const 0
   local.get $3
   select
   if (result i32)
    local.get $1
    i32.load
    i32.const 1
    i32.and
    i32.eqz
   else
    i32.const 0
   end
   if (result i32)
    local.get $1
    i32.load offset=4
    i32.const -268435456
    i32.and
    i32.eqz
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1040
    i32.const 570
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   local.get $5
   call $~lib/rt/tlsf/reallocateBlock
   i32.const 16
   i32.add
   local.tee $1
   local.get $4
   i32.add
   local.get $2
   local.get $4
   i32.sub
   call $~lib/memory/memory.fill
   local.get $1
   local.get $3
   i32.ne
   if
    local.get $0
    local.get $1
    i32.store
    local.get $0
    local.get $1
    i32.store offset=4
   end
   local.get $0
   local.get $2
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<i8>#__set (; 30 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 1408
    i32.const 1360
    i32.const 120
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   i32.const 0
   call $~lib/array/ensureSize
   local.get $0
   local.get $3
   i32.store offset=12
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/set/Set<i8>#values (; 31 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $0
  i32.load offset=16
  local.tee $7
  local.tee $4
  i32.const 1073741808
  i32.gt_u
  if
   i32.const 1200
   i32.const 1360
   i32.const 57
   i32.const 59
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $4
  call $~lib/memory/memory.fill
  i32.const 16
  i32.const 4
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $1
  local.set $2
  local.get $1
  local.get $0
  i32.load
  local.tee $8
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $8
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $2
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $4
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  loop $for-loop|0
   local.get $5
   local.get $7
   i32.lt_s
   if
    local.get $6
    local.get $5
    i32.const 3
    i32.shl
    i32.add
    local.tee $2
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.tee $1
     i32.const 1
     i32.add
     local.set $3
     local.get $0
     local.get $1
     local.get $2
     i32.load8_s
     call $~lib/array/Array<i8>#__set
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $0
 )
 (func $~lib/array/Array<i8>#__get (; 32 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1408
   i32.const 1360
   i32.const 104
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  i32.load8_s
 )
 (func $~lib/set/Set<i8>#delete (; 33 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/util/hash/hash8
  call $~lib/set/Set<i8>#find
  local.tee $1
  i32.eqz
  if
   return
  end
  local.get $1
  local.get $1
  i32.load offset=4
  i32.const 1
  i32.or
  i32.store offset=4
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.tee $2
  i32.const 1
  i32.add
  i32.const 4
  local.get $0
  i32.load offset=20
  local.tee $1
  i32.const 4
  local.get $1
  i32.gt_u
  select
  i32.ge_u
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   local.get $0
   local.get $2
   call $~lib/set/Set<i8>#rehash
  end
 )
 (func $std/set/testNumeric<i8> (; 34 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  call $~lib/set/Set<i8>#constructor
  local.set $0
  loop $for-loop|1
   local.get $2
   i32.const 24
   i32.shl
   i32.const 24
   i32.shr_s
   i32.const 100
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/set/Set<i8>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 6
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    call $~lib/set/Set<i8>#add
    call $~lib/rt/pure/__release
    local.get $0
    local.get $2
    call $~lib/set/Set<i8>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 8
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  local.get $0
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 10
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 50
  local.set $2
  loop $for-loop|3
   local.get $2
   i32.const 24
   i32.shl
   i32.const 24
   i32.shr_s
   i32.const 100
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/set/Set<i8>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 14
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    call $~lib/set/Set<i8>#add
    call $~lib/rt/pure/__release
    local.get $0
    local.get $2
    call $~lib/set/Set<i8>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 16
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|3
   end
  end
  local.get $0
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 18
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i8>#values
  local.set $2
  call $~lib/set/Set<i8>#constructor
  local.set $3
  loop $for-loop|4
   local.get $1
   local.get $2
   i32.load offset=12
   i32.lt_s
   if
    local.get $0
    local.get $2
    local.get $1
    call $~lib/array/Array<i8>#__get
    call $~lib/set/Set<i8>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 24
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $3
    local.get $2
    local.get $1
    call $~lib/array/Array<i8>#__get
    call $~lib/set/Set<i8>#add
    call $~lib/rt/pure/__release
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|4
   end
  end
  local.get $3
  i32.load offset=20
  local.get $0
  i32.load offset=20
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 27
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $1
  loop $for-loop|6
   local.get $1
   i32.const 24
   i32.shl
   i32.const 24
   i32.shr_s
   i32.const 50
   i32.lt_s
   if
    local.get $0
    local.get $1
    call $~lib/set/Set<i8>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 31
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<i8>#delete
    local.get $0
    local.get $1
    call $~lib/set/Set<i8>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 33
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|6
   end
  end
  local.get $0
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 35
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $1
  loop $for-loop|8
   local.get $1
   i32.const 24
   i32.shl
   i32.const 24
   i32.shr_s
   i32.const 50
   i32.lt_s
   if
    local.get $0
    local.get $1
    call $~lib/set/Set<i8>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 39
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<i8>#add
    call $~lib/rt/pure/__release
    local.get $0
    local.get $1
    call $~lib/set/Set<i8>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 41
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<i8>#delete
    local.get $0
    local.get $1
    call $~lib/set/Set<i8>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 43
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|8
   end
  end
  local.get $0
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 45
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i8>#clear
  local.get $0
  i32.load offset=20
  if
   i32.const 0
   i32.const 1312
   i32.const 49
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/set/Set<u8>#constructor (; 35 ;) (result i32)
  (local $0 i32)
  i32.const 24
  i32.const 5
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
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
  call $~lib/set/Set<i8>#clear
  local.get $0
 )
 (func $~lib/set/Set<u8>#has (; 36 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 255
  i32.and
  call $~lib/util/hash/hash8
  call $~lib/set/Set<i8>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<u8>#rehash (; 37 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $3
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $3
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $8
  i32.const 3
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $0
  i32.load offset=8
  local.tee $6
  local.get $0
  i32.load offset=16
  i32.const 3
  i32.shl
  i32.add
  local.set $7
  local.get $3
  local.set $4
  loop $while-continue|0
   local.get $6
   local.get $7
   i32.ne
   if
    local.get $6
    local.tee $2
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $4
     local.get $2
     i32.load8_u
     i32.store8
     local.get $4
     local.get $5
     local.get $2
     i32.load8_u
     call $~lib/util/hash/hash8
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $2
     i32.load
     i32.store offset=4
     local.get $2
     local.get $4
     i32.store
     local.get $4
     i32.const 8
     i32.add
     local.set $4
    end
    local.get $6
    i32.const 8
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $5
  local.tee $4
  local.get $0
  local.tee $2
  i32.load
  local.tee $6
  i32.ne
  if
   local.get $4
   call $~lib/rt/pure/__retain
   local.set $4
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $2
  local.get $4
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
  local.set $1
  local.get $3
  local.tee $2
  local.get $1
  i32.load offset=8
  local.tee $4
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $1
  local.get $8
  i32.store offset=12
  local.get $1
  local.get $1
  i32.load offset=20
  i32.store offset=16
  local.get $5
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $~lib/set/Set<u8>#add (; 38 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 255
  i32.and
  call $~lib/util/hash/hash8
  local.tee $3
  call $~lib/set/Set<i8>#find
  i32.eqz
  if
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<u8>#rehash
   end
   local.get $0
   i32.load offset=8
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $4
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $4
   i32.const 3
   i32.shl
   i32.add
   local.tee $2
   local.get $1
   i32.store8
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $2
   local.get $0
   i32.load
   local.get $3
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $1
   i32.load
   i32.store offset=4
   local.get $1
   local.get $2
   i32.store
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/set/Set<u8>#values (; 39 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $0
  i32.load offset=16
  local.tee $7
  local.tee $4
  i32.const 1073741808
  i32.gt_u
  if
   i32.const 1200
   i32.const 1360
   i32.const 57
   i32.const 59
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $4
  call $~lib/memory/memory.fill
  i32.const 16
  i32.const 6
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $1
  local.set $2
  local.get $1
  local.get $0
  i32.load
  local.tee $8
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $8
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $2
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $4
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  loop $for-loop|0
   local.get $5
   local.get $7
   i32.lt_s
   if
    local.get $6
    local.get $5
    i32.const 3
    i32.shl
    i32.add
    local.tee $2
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.tee $1
     i32.const 1
     i32.add
     local.set $3
     local.get $0
     local.get $1
     local.get $2
     i32.load8_u
     call $~lib/array/Array<i8>#__set
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $0
 )
 (func $~lib/array/Array<u8>#__get (; 40 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1408
   i32.const 1360
   i32.const 104
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  i32.load8_u
 )
 (func $~lib/set/Set<u8>#delete (; 41 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 255
  i32.and
  call $~lib/util/hash/hash8
  call $~lib/set/Set<i8>#find
  local.tee $1
  i32.eqz
  if
   return
  end
  local.get $1
  local.get $1
  i32.load offset=4
  i32.const 1
  i32.or
  i32.store offset=4
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.tee $2
  i32.const 1
  i32.add
  i32.const 4
  local.get $0
  i32.load offset=20
  local.tee $1
  i32.const 4
  local.get $1
  i32.gt_u
  select
  i32.ge_u
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   local.get $0
   local.get $2
   call $~lib/set/Set<u8>#rehash
  end
 )
 (func $std/set/testNumeric<u8> (; 42 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  call $~lib/set/Set<u8>#constructor
  local.set $0
  loop $for-loop|1
   local.get $2
   i32.const 255
   i32.and
   i32.const 100
   i32.lt_u
   if
    local.get $0
    local.get $2
    call $~lib/set/Set<u8>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 6
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    call $~lib/set/Set<u8>#add
    call $~lib/rt/pure/__release
    local.get $0
    local.get $2
    call $~lib/set/Set<u8>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 8
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  local.get $0
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 10
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 50
  local.set $2
  loop $for-loop|3
   local.get $2
   i32.const 255
   i32.and
   i32.const 100
   i32.lt_u
   if
    local.get $0
    local.get $2
    call $~lib/set/Set<u8>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 14
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    call $~lib/set/Set<u8>#add
    call $~lib/rt/pure/__release
    local.get $0
    local.get $2
    call $~lib/set/Set<u8>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 16
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|3
   end
  end
  local.get $0
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 18
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u8>#values
  local.set $2
  call $~lib/set/Set<u8>#constructor
  local.set $3
  loop $for-loop|4
   local.get $1
   local.get $2
   i32.load offset=12
   i32.lt_s
   if
    local.get $0
    local.get $2
    local.get $1
    call $~lib/array/Array<u8>#__get
    call $~lib/set/Set<u8>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 24
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $3
    local.get $2
    local.get $1
    call $~lib/array/Array<u8>#__get
    call $~lib/set/Set<u8>#add
    call $~lib/rt/pure/__release
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|4
   end
  end
  local.get $3
  i32.load offset=20
  local.get $0
  i32.load offset=20
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 27
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $1
  loop $for-loop|6
   local.get $1
   i32.const 255
   i32.and
   i32.const 50
   i32.lt_u
   if
    local.get $0
    local.get $1
    call $~lib/set/Set<u8>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 31
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<u8>#delete
    local.get $0
    local.get $1
    call $~lib/set/Set<u8>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 33
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|6
   end
  end
  local.get $0
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 35
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $1
  loop $for-loop|8
   local.get $1
   i32.const 255
   i32.and
   i32.const 50
   i32.lt_u
   if
    local.get $0
    local.get $1
    call $~lib/set/Set<u8>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 39
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<u8>#add
    call $~lib/rt/pure/__release
    local.get $0
    local.get $1
    call $~lib/set/Set<u8>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 41
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<u8>#delete
    local.get $0
    local.get $1
    call $~lib/set/Set<u8>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 43
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|8
   end
  end
  local.get $0
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 45
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i8>#clear
  local.get $0
  i32.load offset=20
  if
   i32.const 0
   i32.const 1312
   i32.const 49
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/set/Set<i16>#constructor (; 43 ;) (result i32)
  (local $0 i32)
  i32.const 24
  i32.const 7
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
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
  call $~lib/set/Set<i8>#clear
  local.get $0
 )
 (func $~lib/util/hash/hash16 (; 44 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $0
  i32.const 8
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
 )
 (func $~lib/set/Set<i16>#find (; 45 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  loop $while-continue|0
   local.get $0
   if
    local.get $0
    i32.load offset=4
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $0
     i32.load16_u
     local.get $1
     i32.const 65535
     i32.and
     i32.eq
    end
    if
     local.get $0
     return
    end
    local.get $0
    i32.load offset=4
    i32.const -2
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<i16>#has (; 46 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  call $~lib/util/hash/hash16
  call $~lib/set/Set<i16>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<i16>#rehash (; 47 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $3
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $3
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $8
  i32.const 3
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $0
  i32.load offset=8
  local.tee $6
  local.get $0
  i32.load offset=16
  i32.const 3
  i32.shl
  i32.add
  local.set $7
  local.get $3
  local.set $4
  loop $while-continue|0
   local.get $6
   local.get $7
   i32.ne
   if
    local.get $6
    local.tee $2
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $4
     local.get $2
     i32.load16_s
     i32.store16
     local.get $4
     local.get $5
     local.get $2
     i32.load16_s
     call $~lib/util/hash/hash16
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $2
     i32.load
     i32.store offset=4
     local.get $2
     local.get $4
     i32.store
     local.get $4
     i32.const 8
     i32.add
     local.set $4
    end
    local.get $6
    i32.const 8
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $5
  local.tee $4
  local.get $0
  local.tee $2
  i32.load
  local.tee $6
  i32.ne
  if
   local.get $4
   call $~lib/rt/pure/__retain
   local.set $4
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $2
  local.get $4
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
  local.set $1
  local.get $3
  local.tee $2
  local.get $1
  i32.load offset=8
  local.tee $4
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $1
  local.get $8
  i32.store offset=12
  local.get $1
  local.get $1
  i32.load offset=20
  i32.store offset=16
  local.get $5
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $~lib/set/Set<i16>#add (; 48 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  call $~lib/util/hash/hash16
  local.tee $3
  call $~lib/set/Set<i16>#find
  i32.eqz
  if
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<i16>#rehash
   end
   local.get $0
   i32.load offset=8
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $4
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $4
   i32.const 3
   i32.shl
   i32.add
   local.tee $2
   local.get $1
   i32.store16
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $2
   local.get $0
   i32.load
   local.get $3
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $1
   i32.load
   i32.store offset=4
   local.get $1
   local.get $2
   i32.store
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<i16>#__set (; 49 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 1408
    i32.const 1360
    i32.const 120
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   call $~lib/array/ensureSize
   local.get $0
   local.get $3
   i32.store offset=12
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.get $2
  i32.store16
 )
 (func $~lib/set/Set<i16>#values (; 50 ;) (param $0 i32) (result i32)
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
  i32.load offset=8
  local.set $8
  local.get $0
  i32.load offset=16
  local.tee $5
  local.set $6
  local.get $5
  i32.const 536870904
  i32.gt_u
  if
   i32.const 1200
   i32.const 1360
   i32.const 57
   i32.const 59
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.const 1
  i32.shl
  local.tee $7
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $7
  call $~lib/memory/memory.fill
  i32.const 16
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $1
  local.set $2
  local.get $1
  local.get $0
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $2
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $7
  i32.store offset=8
  local.get $0
  local.get $6
  i32.store offset=12
  loop $for-loop|0
   local.get $4
   local.get $5
   i32.lt_s
   if
    local.get $8
    local.get $4
    i32.const 3
    i32.shl
    i32.add
    local.tee $2
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.tee $1
     i32.const 1
     i32.add
     local.set $3
     local.get $0
     local.get $1
     local.get $2
     i32.load16_s
     call $~lib/array/Array<i16>#__set
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  local.get $0
 )
 (func $~lib/array/Array<i16>#__get (; 51 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1408
   i32.const 1360
   i32.const 104
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_s
 )
 (func $~lib/set/Set<i16>#delete (; 52 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  call $~lib/util/hash/hash16
  call $~lib/set/Set<i16>#find
  local.tee $1
  i32.eqz
  if
   return
  end
  local.get $1
  local.get $1
  i32.load offset=4
  i32.const 1
  i32.or
  i32.store offset=4
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.tee $2
  i32.const 1
  i32.add
  i32.const 4
  local.get $0
  i32.load offset=20
  local.tee $1
  i32.const 4
  local.get $1
  i32.gt_u
  select
  i32.ge_u
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   local.get $0
   local.get $2
   call $~lib/set/Set<i16>#rehash
  end
 )
 (func $std/set/testNumeric<i16> (; 53 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  call $~lib/set/Set<i16>#constructor
  local.set $0
  loop $for-loop|1
   local.get $2
   i32.const 16
   i32.shl
   i32.const 16
   i32.shr_s
   i32.const 100
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/set/Set<i16>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 6
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    call $~lib/set/Set<i16>#add
    call $~lib/rt/pure/__release
    local.get $0
    local.get $2
    call $~lib/set/Set<i16>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 8
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  local.get $0
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 10
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 50
  local.set $2
  loop $for-loop|3
   local.get $2
   i32.const 16
   i32.shl
   i32.const 16
   i32.shr_s
   i32.const 100
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/set/Set<i16>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 14
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    call $~lib/set/Set<i16>#add
    call $~lib/rt/pure/__release
    local.get $0
    local.get $2
    call $~lib/set/Set<i16>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 16
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|3
   end
  end
  local.get $0
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 18
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i16>#values
  local.set $2
  call $~lib/set/Set<i16>#constructor
  local.set $3
  loop $for-loop|4
   local.get $1
   local.get $2
   i32.load offset=12
   i32.lt_s
   if
    local.get $0
    local.get $2
    local.get $1
    call $~lib/array/Array<i16>#__get
    call $~lib/set/Set<i16>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 24
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $3
    local.get $2
    local.get $1
    call $~lib/array/Array<i16>#__get
    call $~lib/set/Set<i16>#add
    call $~lib/rt/pure/__release
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|4
   end
  end
  local.get $3
  i32.load offset=20
  local.get $0
  i32.load offset=20
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 27
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $1
  loop $for-loop|6
   local.get $1
   i32.const 16
   i32.shl
   i32.const 16
   i32.shr_s
   i32.const 50
   i32.lt_s
   if
    local.get $0
    local.get $1
    call $~lib/set/Set<i16>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 31
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<i16>#delete
    local.get $0
    local.get $1
    call $~lib/set/Set<i16>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 33
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|6
   end
  end
  local.get $0
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 35
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $1
  loop $for-loop|8
   local.get $1
   i32.const 16
   i32.shl
   i32.const 16
   i32.shr_s
   i32.const 50
   i32.lt_s
   if
    local.get $0
    local.get $1
    call $~lib/set/Set<i16>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 39
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<i16>#add
    call $~lib/rt/pure/__release
    local.get $0
    local.get $1
    call $~lib/set/Set<i16>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 41
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<i16>#delete
    local.get $0
    local.get $1
    call $~lib/set/Set<i16>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 43
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|8
   end
  end
  local.get $0
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 45
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i8>#clear
  local.get $0
  i32.load offset=20
  if
   i32.const 0
   i32.const 1312
   i32.const 49
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/set/Set<u16>#constructor (; 54 ;) (result i32)
  (local $0 i32)
  i32.const 24
  i32.const 9
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
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
  call $~lib/set/Set<i8>#clear
  local.get $0
 )
 (func $~lib/set/Set<u16>#has (; 55 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 65535
  i32.and
  call $~lib/util/hash/hash16
  call $~lib/set/Set<i16>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<u16>#rehash (; 56 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $3
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $3
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $8
  i32.const 3
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $0
  i32.load offset=8
  local.tee $6
  local.get $0
  i32.load offset=16
  i32.const 3
  i32.shl
  i32.add
  local.set $7
  local.get $3
  local.set $4
  loop $while-continue|0
   local.get $6
   local.get $7
   i32.ne
   if
    local.get $6
    local.tee $2
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $4
     local.get $2
     i32.load16_u
     i32.store16
     local.get $4
     local.get $5
     local.get $2
     i32.load16_u
     call $~lib/util/hash/hash16
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $2
     i32.load
     i32.store offset=4
     local.get $2
     local.get $4
     i32.store
     local.get $4
     i32.const 8
     i32.add
     local.set $4
    end
    local.get $6
    i32.const 8
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $5
  local.tee $4
  local.get $0
  local.tee $2
  i32.load
  local.tee $6
  i32.ne
  if
   local.get $4
   call $~lib/rt/pure/__retain
   local.set $4
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $2
  local.get $4
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
  local.set $1
  local.get $3
  local.tee $2
  local.get $1
  i32.load offset=8
  local.tee $4
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $1
  local.get $8
  i32.store offset=12
  local.get $1
  local.get $1
  i32.load offset=20
  i32.store offset=16
  local.get $5
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $~lib/set/Set<u16>#add (; 57 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 65535
  i32.and
  call $~lib/util/hash/hash16
  local.tee $3
  call $~lib/set/Set<i16>#find
  i32.eqz
  if
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<u16>#rehash
   end
   local.get $0
   i32.load offset=8
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $4
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $4
   i32.const 3
   i32.shl
   i32.add
   local.tee $2
   local.get $1
   i32.store16
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $2
   local.get $0
   i32.load
   local.get $3
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $1
   i32.load
   i32.store offset=4
   local.get $1
   local.get $2
   i32.store
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/set/Set<u16>#values (; 58 ;) (param $0 i32) (result i32)
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
  i32.load offset=8
  local.set $8
  local.get $0
  i32.load offset=16
  local.tee $5
  local.set $6
  local.get $5
  i32.const 536870904
  i32.gt_u
  if
   i32.const 1200
   i32.const 1360
   i32.const 57
   i32.const 59
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.const 1
  i32.shl
  local.tee $7
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $7
  call $~lib/memory/memory.fill
  i32.const 16
  i32.const 10
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $1
  local.set $2
  local.get $1
  local.get $0
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $2
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $7
  i32.store offset=8
  local.get $0
  local.get $6
  i32.store offset=12
  loop $for-loop|0
   local.get $4
   local.get $5
   i32.lt_s
   if
    local.get $8
    local.get $4
    i32.const 3
    i32.shl
    i32.add
    local.tee $2
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.tee $1
     i32.const 1
     i32.add
     local.set $3
     local.get $0
     local.get $1
     local.get $2
     i32.load16_u
     call $~lib/array/Array<i16>#__set
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  local.get $0
 )
 (func $~lib/array/Array<u16>#__get (; 59 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1408
   i32.const 1360
   i32.const 104
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
 )
 (func $~lib/set/Set<u16>#delete (; 60 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $1
  i32.const 65535
  i32.and
  call $~lib/util/hash/hash16
  call $~lib/set/Set<i16>#find
  local.tee $1
  i32.eqz
  if
   return
  end
  local.get $1
  local.get $1
  i32.load offset=4
  i32.const 1
  i32.or
  i32.store offset=4
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.tee $2
  i32.const 1
  i32.add
  i32.const 4
  local.get $0
  i32.load offset=20
  local.tee $1
  i32.const 4
  local.get $1
  i32.gt_u
  select
  i32.ge_u
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   local.get $0
   local.get $2
   call $~lib/set/Set<u16>#rehash
  end
 )
 (func $std/set/testNumeric<u16> (; 61 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  call $~lib/set/Set<u16>#constructor
  local.set $0
  loop $for-loop|1
   local.get $2
   i32.const 65535
   i32.and
   i32.const 100
   i32.lt_u
   if
    local.get $0
    local.get $2
    call $~lib/set/Set<u16>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 6
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    call $~lib/set/Set<u16>#add
    call $~lib/rt/pure/__release
    local.get $0
    local.get $2
    call $~lib/set/Set<u16>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 8
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  local.get $0
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 10
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 50
  local.set $2
  loop $for-loop|3
   local.get $2
   i32.const 65535
   i32.and
   i32.const 100
   i32.lt_u
   if
    local.get $0
    local.get $2
    call $~lib/set/Set<u16>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 14
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    call $~lib/set/Set<u16>#add
    call $~lib/rt/pure/__release
    local.get $0
    local.get $2
    call $~lib/set/Set<u16>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 16
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|3
   end
  end
  local.get $0
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 18
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u16>#values
  local.set $2
  call $~lib/set/Set<u16>#constructor
  local.set $3
  loop $for-loop|4
   local.get $1
   local.get $2
   i32.load offset=12
   i32.lt_s
   if
    local.get $0
    local.get $2
    local.get $1
    call $~lib/array/Array<u16>#__get
    call $~lib/set/Set<u16>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 24
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $3
    local.get $2
    local.get $1
    call $~lib/array/Array<u16>#__get
    call $~lib/set/Set<u16>#add
    call $~lib/rt/pure/__release
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|4
   end
  end
  local.get $3
  i32.load offset=20
  local.get $0
  i32.load offset=20
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 27
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $1
  loop $for-loop|6
   local.get $1
   i32.const 65535
   i32.and
   i32.const 50
   i32.lt_u
   if
    local.get $0
    local.get $1
    call $~lib/set/Set<u16>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 31
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<u16>#delete
    local.get $0
    local.get $1
    call $~lib/set/Set<u16>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 33
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|6
   end
  end
  local.get $0
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 35
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $1
  loop $for-loop|8
   local.get $1
   i32.const 65535
   i32.and
   i32.const 50
   i32.lt_u
   if
    local.get $0
    local.get $1
    call $~lib/set/Set<u16>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 39
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<u16>#add
    call $~lib/rt/pure/__release
    local.get $0
    local.get $1
    call $~lib/set/Set<u16>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 41
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<u16>#delete
    local.get $0
    local.get $1
    call $~lib/set/Set<u16>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 43
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|8
   end
  end
  local.get $0
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 45
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i8>#clear
  local.get $0
  i32.load offset=20
  if
   i32.const 0
   i32.const 1312
   i32.const 49
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/set/Set<i32>#constructor (; 62 ;) (result i32)
  (local $0 i32)
  i32.const 24
  i32.const 11
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
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
  call $~lib/set/Set<i8>#clear
  local.get $0
 )
 (func $~lib/util/hash/hash32 (; 63 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $0
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $0
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $0
  i32.const 24
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
 )
 (func $~lib/set/Set<i32>#find (; 64 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  loop $while-continue|0
   local.get $0
   if
    local.get $0
    i32.load offset=4
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $1
     local.get $0
     i32.load
     i32.eq
    end
    if
     local.get $0
     return
    end
    local.get $0
    i32.load offset=4
    i32.const -2
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<i32>#has (; 65 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/hash32
  call $~lib/set/Set<i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<i32>#rehash (; 66 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $3
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $3
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $8
  i32.const 3
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $0
  i32.load offset=8
  local.tee $6
  local.get $0
  i32.load offset=16
  i32.const 3
  i32.shl
  i32.add
  local.set $7
  local.get $3
  local.set $4
  loop $while-continue|0
   local.get $6
   local.get $7
   i32.ne
   if
    local.get $6
    local.tee $2
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $4
     local.get $2
     i32.load
     i32.store
     local.get $4
     local.get $5
     local.get $2
     i32.load
     call $~lib/util/hash/hash32
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $2
     i32.load
     i32.store offset=4
     local.get $2
     local.get $4
     i32.store
     local.get $4
     i32.const 8
     i32.add
     local.set $4
    end
    local.get $6
    i32.const 8
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $5
  local.tee $4
  local.get $0
  local.tee $2
  i32.load
  local.tee $6
  i32.ne
  if
   local.get $4
   call $~lib/rt/pure/__retain
   local.set $4
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $2
  local.get $4
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
  local.set $1
  local.get $3
  local.tee $2
  local.get $1
  i32.load offset=8
  local.tee $4
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $1
  local.get $8
  i32.store offset=12
  local.get $1
  local.get $1
  i32.load offset=20
  i32.store offset=16
  local.get $5
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $~lib/set/Set<i32>#add (; 67 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/hash32
  local.tee $3
  call $~lib/set/Set<i32>#find
  i32.eqz
  if
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<i32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $4
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $4
   i32.const 3
   i32.shl
   i32.add
   local.tee $2
   local.get $1
   i32.store
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $2
   local.get $0
   i32.load
   local.get $3
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $1
   i32.load
   i32.store offset=4
   local.get $1
   local.get $2
   i32.store
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<i32>#__set (; 68 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 1408
    i32.const 1360
    i32.const 120
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   i32.const 2
   call $~lib/array/ensureSize
   local.get $0
   local.get $3
   i32.store offset=12
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $~lib/set/Set<i32>#values (; 69 ;) (param $0 i32) (result i32)
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
  i32.load offset=8
  local.set $8
  local.get $0
  i32.load offset=16
  local.tee $5
  local.set $6
  local.get $5
  i32.const 268435452
  i32.gt_u
  if
   i32.const 1200
   i32.const 1360
   i32.const 57
   i32.const 59
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.const 2
  i32.shl
  local.tee $7
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $7
  call $~lib/memory/memory.fill
  i32.const 16
  i32.const 12
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $1
  local.set $2
  local.get $1
  local.get $0
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $2
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $7
  i32.store offset=8
  local.get $0
  local.get $6
  i32.store offset=12
  loop $for-loop|0
   local.get $4
   local.get $5
   i32.lt_s
   if
    local.get $8
    local.get $4
    i32.const 3
    i32.shl
    i32.add
    local.tee $2
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.tee $1
     i32.const 1
     i32.add
     local.set $3
     local.get $0
     local.get $1
     local.get $2
     i32.load
     call $~lib/array/Array<i32>#__set
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  local.get $0
 )
 (func $~lib/array/Array<i32>#__get (; 70 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1408
   i32.const 1360
   i32.const 104
   i32.const 41
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
 (func $~lib/set/Set<i32>#delete (; 71 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/hash32
  call $~lib/set/Set<i32>#find
  local.tee $1
  i32.eqz
  if
   return
  end
  local.get $1
  local.get $1
  i32.load offset=4
  i32.const 1
  i32.or
  i32.store offset=4
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.tee $2
  i32.const 1
  i32.add
  i32.const 4
  local.get $0
  i32.load offset=20
  local.tee $1
  i32.const 4
  local.get $1
  i32.gt_u
  select
  i32.ge_u
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   local.get $0
   local.get $2
   call $~lib/set/Set<i32>#rehash
  end
 )
 (func $std/set/testNumeric<i32> (; 72 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  call $~lib/set/Set<i32>#constructor
  local.set $0
  loop $for-loop|0
   local.get $2
   i32.const 100
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/set/Set<i32>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 6
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    call $~lib/set/Set<i32>#add
    call $~lib/rt/pure/__release
    local.get $0
    local.get $2
    call $~lib/set/Set<i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 8
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $0
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 10
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 50
  local.set $2
  loop $for-loop|1
   local.get $2
   i32.const 100
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/set/Set<i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 14
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    call $~lib/set/Set<i32>#add
    call $~lib/rt/pure/__release
    local.get $0
    local.get $2
    call $~lib/set/Set<i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 16
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  local.get $0
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 18
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i32>#values
  local.set $2
  call $~lib/set/Set<i32>#constructor
  local.set $3
  loop $for-loop|2
   local.get $1
   local.get $2
   i32.load offset=12
   i32.lt_s
   if
    local.get $0
    local.get $2
    local.get $1
    call $~lib/array/Array<i32>#__get
    call $~lib/set/Set<i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 24
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $3
    local.get $2
    local.get $1
    call $~lib/array/Array<i32>#__get
    call $~lib/set/Set<i32>#add
    call $~lib/rt/pure/__release
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|2
   end
  end
  local.get $3
  i32.load offset=20
  local.get $0
  i32.load offset=20
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 27
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $1
  loop $for-loop|3
   local.get $1
   i32.const 50
   i32.lt_s
   if
    local.get $0
    local.get $1
    call $~lib/set/Set<i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 31
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<i32>#delete
    local.get $0
    local.get $1
    call $~lib/set/Set<i32>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 33
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|3
   end
  end
  local.get $0
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 35
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $1
  loop $for-loop|4
   local.get $1
   i32.const 50
   i32.lt_s
   if
    local.get $0
    local.get $1
    call $~lib/set/Set<i32>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 39
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<i32>#add
    call $~lib/rt/pure/__release
    local.get $0
    local.get $1
    call $~lib/set/Set<i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 41
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<i32>#delete
    local.get $0
    local.get $1
    call $~lib/set/Set<i32>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 43
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|4
   end
  end
  local.get $0
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 45
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i8>#clear
  local.get $0
  i32.load offset=20
  if
   i32.const 0
   i32.const 1312
   i32.const 49
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/set/Set<u32>#constructor (; 73 ;) (result i32)
  (local $0 i32)
  i32.const 24
  i32.const 13
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
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
  call $~lib/set/Set<i8>#clear
  local.get $0
 )
 (func $~lib/set/Set<u32>#values (; 74 ;) (param $0 i32) (result i32)
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
  i32.load offset=8
  local.set $8
  local.get $0
  i32.load offset=16
  local.tee $5
  local.set $6
  local.get $5
  i32.const 268435452
  i32.gt_u
  if
   i32.const 1200
   i32.const 1360
   i32.const 57
   i32.const 59
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.const 2
  i32.shl
  local.tee $7
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $7
  call $~lib/memory/memory.fill
  i32.const 16
  i32.const 14
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $1
  local.set $2
  local.get $1
  local.get $0
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $2
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $7
  i32.store offset=8
  local.get $0
  local.get $6
  i32.store offset=12
  loop $for-loop|0
   local.get $4
   local.get $5
   i32.lt_s
   if
    local.get $8
    local.get $4
    i32.const 3
    i32.shl
    i32.add
    local.tee $2
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.tee $1
     i32.const 1
     i32.add
     local.set $3
     local.get $0
     local.get $1
     local.get $2
     i32.load
     call $~lib/array/Array<i32>#__set
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  local.get $0
 )
 (func $std/set/testNumeric<u32> (; 75 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  call $~lib/set/Set<u32>#constructor
  local.set $0
  loop $for-loop|0
   local.get $2
   i32.const 100
   i32.lt_u
   if
    local.get $0
    local.get $2
    call $~lib/set/Set<i32>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 6
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    call $~lib/set/Set<i32>#add
    call $~lib/rt/pure/__release
    local.get $0
    local.get $2
    call $~lib/set/Set<i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 8
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $0
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 10
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 50
  local.set $2
  loop $for-loop|1
   local.get $2
   i32.const 100
   i32.lt_u
   if
    local.get $0
    local.get $2
    call $~lib/set/Set<i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 14
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    call $~lib/set/Set<i32>#add
    call $~lib/rt/pure/__release
    local.get $0
    local.get $2
    call $~lib/set/Set<i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 16
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  local.get $0
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 18
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<u32>#values
  local.set $2
  call $~lib/set/Set<u32>#constructor
  local.set $3
  loop $for-loop|2
   local.get $1
   local.get $2
   i32.load offset=12
   i32.lt_s
   if
    local.get $0
    local.get $2
    local.get $1
    call $~lib/array/Array<i32>#__get
    call $~lib/set/Set<i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 24
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $3
    local.get $2
    local.get $1
    call $~lib/array/Array<i32>#__get
    call $~lib/set/Set<i32>#add
    call $~lib/rt/pure/__release
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|2
   end
  end
  local.get $3
  i32.load offset=20
  local.get $0
  i32.load offset=20
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 27
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $1
  loop $for-loop|3
   local.get $1
   i32.const 50
   i32.lt_u
   if
    local.get $0
    local.get $1
    call $~lib/set/Set<i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 31
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<i32>#delete
    local.get $0
    local.get $1
    call $~lib/set/Set<i32>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 33
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|3
   end
  end
  local.get $0
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 35
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $1
  loop $for-loop|4
   local.get $1
   i32.const 50
   i32.lt_u
   if
    local.get $0
    local.get $1
    call $~lib/set/Set<i32>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 39
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<i32>#add
    call $~lib/rt/pure/__release
    local.get $0
    local.get $1
    call $~lib/set/Set<i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 41
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/set/Set<i32>#delete
    local.get $0
    local.get $1
    call $~lib/set/Set<i32>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 43
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|4
   end
  end
  local.get $0
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 45
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/set/Set<i8>#clear
  local.get $0
  i32.load offset=20
  if
   i32.const 0
   i32.const 1312
   i32.const 49
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/set/Set<i64>#clear (; 76 ;) (param $0 i32)
  (local $1 i32)
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $0
  i32.load
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  i32.store
  local.get $0
  i32.const 3
  i32.store offset=4
  i32.const 64
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $0
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/set/Set<i64>#constructor (; 77 ;) (result i32)
  (local $0 i32)
  i32.const 24
  i32.const 15
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
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
  call $~lib/set/Set<i64>#clear
  local.get $0
 )
 (func $~lib/util/hash/hash64 (; 78 ;) (param $0 i64) (result i32)
  (local $1 i32)
  local.get $0
  i32.wrap_i64
  local.tee $1
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $1
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $1
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $1
  i32.const 24
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $0
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.tee $1
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $1
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $1
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $1
  i32.const 24
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
 )
 (func $~lib/set/Set<i64>#find (; 79 ;) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  loop $while-continue|0
   local.get $0
   if
    local.get $0
    i32.load offset=8
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $1
     local.get $0
     i64.load
     i64.eq
    end
    if
     local.get $0
     return
    end
    local.get $0
    i32.load offset=8
    i32.const -2
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<i64>#has (; 80 ;) (param $0 i32) (param $1 i64) (result i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/hash64
  call $~lib/set/Set<i64>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<i64>#rehash (; 81 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $3
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $3
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $8
  i32.const 4
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $0
  i32.load offset=8
  local.tee $6
  local.get $0
  i32.load offset=16
  i32.const 4
  i32.shl
  i32.add
  local.set $7
  local.get $3
  local.set $4
  loop $while-continue|0
   local.get $6
   local.get $7
   i32.ne
   if
    local.get $6
    local.tee $2
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $4
     local.get $2
     i64.load
     i64.store
     local.get $4
     local.get $5
     local.get $2
     i64.load
     call $~lib/util/hash/hash64
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $2
     i32.load
     i32.store offset=8
     local.get $2
     local.get $4
     i32.store
     local.get $4
     i32.const 16
     i32.add
     local.set $4
    end
    local.get $6
    i32.const 16
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $5
  local.tee $4
  local.get $0
  local.tee $2
  i32.load
  local.tee $6
  i32.ne
  if
   local.get $4
   call $~lib/rt/pure/__retain
   local.set $4
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $2
  local.get $4
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
  local.set $1
  local.get $3
  local.tee $2
  local.get $1
  i32.load offset=8
  local.tee $4
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $1
  local.get $8
  i32.store offset=12
  local.get $1
  local.get $1
  i32.load offset=20
  i32.store offset=16
  local.get $5
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $~lib/set/Set<i64>#add (; 82 ;) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/hash64
  local.tee $4
  call $~lib/set/Set<i64>#find
  i32.eqz
  if
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<i64>#rehash
   end
   local.get $0
   i32.load offset=8
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $3
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $3
   i32.const 4
   i32.shl
   i32.add
   local.tee $2
   local.get $1
   i64.store
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $2
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $3
   i32.load
   i32.store offset=8
   local.get $3
   local.get $2
   i32.store
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<i64>#__set (; 83 ;) (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 1408
    i32.const 1360
    i32.const 120
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   i32.const 3
   call $~lib/array/ensureSize
   local.get $0
   local.get $3
   i32.store offset=12
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  local.get $2
  i64.store
 )
 (func $~lib/set/Set<i64>#values (; 84 ;) (param $0 i32) (result i32)
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
  i32.load offset=8
  local.set $8
  local.get $0
  i32.load offset=16
  local.tee $5
  local.set $6
  local.get $5
  i32.const 134217726
  i32.gt_u
  if
   i32.const 1200
   i32.const 1360
   i32.const 57
   i32.const 59
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.const 3
  i32.shl
  local.tee $7
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $7
  call $~lib/memory/memory.fill
  i32.const 16
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $1
  local.set $2
  local.get $1
  local.get $0
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $2
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $7
  i32.store offset=8
  local.get $0
  local.get $6
  i32.store offset=12
  loop $for-loop|0
   local.get $4
   local.get $5
   i32.lt_s
   if
    local.get $8
    local.get $4
    i32.const 4
    i32.shl
    i32.add
    local.tee $2
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.tee $1
     i32.const 1
     i32.add
     local.set $3
     local.get $0
     local.get $1
     local.get $2
     i64.load
     call $~lib/array/Array<i64>#__set
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  local.get $0
 )
 (func $~lib/array/Array<i64>#__get (; 85 ;) (param $0 i32) (param $1 i32) (result i64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1408
   i32.const 1360
   i32.const 104
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $~lib/set/Set<i64>#delete (; 86 ;) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/hash64
  call $~lib/set/Set<i64>#find
  local.tee $2
  i32.eqz
  if
   return
  end
  local.get $2
  local.get $2
  i32.load offset=8
  i32.const 1
  i32.or
  i32.store offset=8
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.tee $3
  i32.const 1
  i32.add
  i32.const 4
  local.get $0
  i32.load offset=20
  local.tee $2
  i32.const 4
  local.get $2
  i32.gt_u
  select
  i32.ge_u
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   local.get $0
   local.get $3
   call $~lib/set/Set<i64>#rehash
  end
 )
 (func $std/set/testNumeric<i64> (; 87 ;)
  (local $0 i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  call $~lib/set/Set<i64>#constructor
  local.set $1
  loop $for-loop|0
   local.get $0
   i64.const 100
   i64.lt_s
   if
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 6
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#add
    call $~lib/rt/pure/__release
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 8
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i64.const 1
    i64.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 10
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 50
  local.set $0
  loop $for-loop|1
   local.get $0
   i64.const 100
   i64.lt_s
   if
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 14
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#add
    call $~lib/rt/pure/__release
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 16
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i64.const 1
    i64.add
    local.set $0
    br $for-loop|1
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 18
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/set/Set<i64>#values
  local.set $2
  call $~lib/set/Set<i64>#constructor
  local.set $4
  loop $for-loop|2
   local.get $3
   local.get $2
   i32.load offset=12
   i32.lt_s
   if
    local.get $1
    local.get $2
    local.get $3
    call $~lib/array/Array<i64>#__get
    call $~lib/set/Set<i64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 24
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $4
    local.get $2
    local.get $3
    call $~lib/array/Array<i64>#__get
    call $~lib/set/Set<i64>#add
    call $~lib/rt/pure/__release
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|2
   end
  end
  local.get $4
  i32.load offset=20
  local.get $1
  i32.load offset=20
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 27
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 0
  local.set $0
  loop $for-loop|3
   local.get $0
   i64.const 50
   i64.lt_s
   if
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 31
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#delete
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 33
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i64.const 1
    i64.add
    local.set $0
    br $for-loop|3
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 35
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 0
  local.set $0
  loop $for-loop|4
   local.get $0
   i64.const 50
   i64.lt_s
   if
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 39
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#add
    call $~lib/rt/pure/__release
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 41
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#delete
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 43
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i64.const 1
    i64.add
    local.set $0
    br $for-loop|4
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 45
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/set/Set<i64>#clear
  local.get $1
  i32.load offset=20
  if
   i32.const 0
   i32.const 1312
   i32.const 49
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/set/Set<u64>#constructor (; 88 ;) (result i32)
  (local $0 i32)
  i32.const 24
  i32.const 17
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
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
  call $~lib/set/Set<i64>#clear
  local.get $0
 )
 (func $~lib/set/Set<u64>#values (; 89 ;) (param $0 i32) (result i32)
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
  i32.load offset=8
  local.set $8
  local.get $0
  i32.load offset=16
  local.tee $5
  local.set $6
  local.get $5
  i32.const 134217726
  i32.gt_u
  if
   i32.const 1200
   i32.const 1360
   i32.const 57
   i32.const 59
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.const 3
  i32.shl
  local.tee $7
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $7
  call $~lib/memory/memory.fill
  i32.const 16
  i32.const 18
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $1
  local.set $2
  local.get $1
  local.get $0
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $2
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $7
  i32.store offset=8
  local.get $0
  local.get $6
  i32.store offset=12
  loop $for-loop|0
   local.get $4
   local.get $5
   i32.lt_s
   if
    local.get $8
    local.get $4
    i32.const 4
    i32.shl
    i32.add
    local.tee $2
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.tee $1
     i32.const 1
     i32.add
     local.set $3
     local.get $0
     local.get $1
     local.get $2
     i64.load
     call $~lib/array/Array<i64>#__set
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  local.get $0
 )
 (func $std/set/testNumeric<u64> (; 90 ;)
  (local $0 i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  call $~lib/set/Set<u64>#constructor
  local.set $1
  loop $for-loop|0
   local.get $0
   i64.const 100
   i64.lt_u
   if
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 6
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#add
    call $~lib/rt/pure/__release
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 8
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i64.const 1
    i64.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 10
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 50
  local.set $0
  loop $for-loop|1
   local.get $0
   i64.const 100
   i64.lt_u
   if
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 14
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#add
    call $~lib/rt/pure/__release
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 16
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i64.const 1
    i64.add
    local.set $0
    br $for-loop|1
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 18
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/set/Set<u64>#values
  local.set $2
  call $~lib/set/Set<u64>#constructor
  local.set $4
  loop $for-loop|2
   local.get $3
   local.get $2
   i32.load offset=12
   i32.lt_s
   if
    local.get $1
    local.get $2
    local.get $3
    call $~lib/array/Array<i64>#__get
    call $~lib/set/Set<i64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 24
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $4
    local.get $2
    local.get $3
    call $~lib/array/Array<i64>#__get
    call $~lib/set/Set<i64>#add
    call $~lib/rt/pure/__release
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|2
   end
  end
  local.get $4
  i32.load offset=20
  local.get $1
  i32.load offset=20
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 27
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 0
  local.set $0
  loop $for-loop|3
   local.get $0
   i64.const 50
   i64.lt_u
   if
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 31
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#delete
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 33
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i64.const 1
    i64.add
    local.set $0
    br $for-loop|3
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 35
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 0
  local.set $0
  loop $for-loop|4
   local.get $0
   i64.const 50
   i64.lt_u
   if
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 39
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#add
    call $~lib/rt/pure/__release
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 41
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#delete
    local.get $1
    local.get $0
    call $~lib/set/Set<i64>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 43
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i64.const 1
    i64.add
    local.set $0
    br $for-loop|4
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 45
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/set/Set<i64>#clear
  local.get $1
  i32.load offset=20
  if
   i32.const 0
   i32.const 1312
   i32.const 49
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/set/Set<f32>#constructor (; 91 ;) (result i32)
  (local $0 i32)
  i32.const 24
  i32.const 19
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
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
  call $~lib/set/Set<i8>#clear
  local.get $0
 )
 (func $~lib/set/Set<f32>#find (; 92 ;) (param $0 i32) (param $1 f32) (param $2 i32) (result i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  loop $while-continue|0
   local.get $0
   if
    local.get $0
    i32.load offset=4
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $0
     f32.load
     local.get $1
     f32.eq
    end
    if
     local.get $0
     return
    end
    local.get $0
    i32.load offset=4
    i32.const -2
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<f32>#has (; 93 ;) (param $0 i32) (param $1 f32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  i32.reinterpret_f32
  call $~lib/util/hash/hash32
  call $~lib/set/Set<f32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<f32>#rehash (; 94 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $3
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $3
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $8
  i32.const 3
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $0
  i32.load offset=8
  local.tee $6
  local.get $0
  i32.load offset=16
  i32.const 3
  i32.shl
  i32.add
  local.set $7
  local.get $3
  local.set $4
  loop $while-continue|0
   local.get $6
   local.get $7
   i32.ne
   if
    local.get $6
    local.tee $2
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $4
     local.get $2
     f32.load
     f32.store
     local.get $4
     local.get $5
     local.get $2
     f32.load
     i32.reinterpret_f32
     call $~lib/util/hash/hash32
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $2
     i32.load
     i32.store offset=4
     local.get $2
     local.get $4
     i32.store
     local.get $4
     i32.const 8
     i32.add
     local.set $4
    end
    local.get $6
    i32.const 8
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $5
  local.tee $4
  local.get $0
  local.tee $2
  i32.load
  local.tee $6
  i32.ne
  if
   local.get $4
   call $~lib/rt/pure/__retain
   local.set $4
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $2
  local.get $4
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
  local.set $1
  local.get $3
  local.tee $2
  local.get $1
  i32.load offset=8
  local.tee $4
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $1
  local.get $8
  i32.store offset=12
  local.get $1
  local.get $1
  i32.load offset=20
  i32.store offset=16
  local.get $5
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $~lib/set/Set<f32>#add (; 95 ;) (param $0 i32) (param $1 f32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  local.get $1
  i32.reinterpret_f32
  call $~lib/util/hash/hash32
  local.tee $4
  call $~lib/set/Set<f32>#find
  i32.eqz
  if
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<f32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $3
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $3
   i32.const 3
   i32.shl
   i32.add
   local.tee $2
   local.get $1
   f32.store
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $2
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $3
   i32.load
   i32.store offset=4
   local.get $3
   local.get $2
   i32.store
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/set/Set<f32>#values (; 96 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 f32)
  local.get $0
  i32.load offset=8
  local.set $8
  local.get $0
  i32.load offset=16
  local.tee $5
  local.set $6
  local.get $5
  i32.const 268435452
  i32.gt_u
  if
   i32.const 1200
   i32.const 1360
   i32.const 57
   i32.const 59
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.const 2
  i32.shl
  local.tee $7
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $0
  local.get $7
  call $~lib/memory/memory.fill
  i32.const 16
  i32.const 20
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  i32.const 0
  i32.store offset=4
  local.get $3
  i32.const 0
  i32.store offset=8
  local.get $3
  i32.const 0
  i32.store offset=12
  local.get $0
  local.set $1
  local.get $0
  local.get $3
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   local.set $1
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $3
  local.get $1
  i32.store
  local.get $3
  local.get $0
  i32.store offset=4
  local.get $3
  local.get $7
  i32.store offset=8
  local.get $3
  local.get $6
  i32.store offset=12
  loop $for-loop|0
   local.get $4
   local.get $5
   i32.lt_s
   if
    local.get $8
    local.get $4
    i32.const 3
    i32.shl
    i32.add
    local.tee $1
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $2
     local.tee $0
     i32.const 1
     i32.add
     local.set $2
     local.get $1
     f32.load
     local.set $10
     local.get $0
     local.get $3
     i32.load offset=12
     i32.ge_u
     if
      local.get $0
      i32.const 0
      i32.lt_s
      if
       i32.const 1408
       i32.const 1360
       i32.const 120
       i32.const 21
       call $~lib/builtins/abort
       unreachable
      end
      local.get $3
      local.get $0
      i32.const 1
      i32.add
      local.tee $1
      i32.const 2
      call $~lib/array/ensureSize
      local.get $3
      local.get $1
      i32.store offset=12
     end
     local.get $3
     i32.load offset=4
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     local.get $10
     f32.store
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  local.get $3
 )
 (func $~lib/array/Array<f32>#__get (; 97 ;) (param $0 i32) (param $1 i32) (result f32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1408
   i32.const 1360
   i32.const 104
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  f32.load
 )
 (func $~lib/set/Set<f32>#delete (; 98 ;) (param $0 i32) (param $1 f32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  local.get $1
  i32.reinterpret_f32
  call $~lib/util/hash/hash32
  call $~lib/set/Set<f32>#find
  local.tee $2
  i32.eqz
  if
   return
  end
  local.get $2
  local.get $2
  i32.load offset=4
  i32.const 1
  i32.or
  i32.store offset=4
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.tee $3
  i32.const 1
  i32.add
  i32.const 4
  local.get $0
  i32.load offset=20
  local.tee $2
  i32.const 4
  local.get $2
  i32.gt_u
  select
  i32.ge_u
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   local.get $0
   local.get $3
   call $~lib/set/Set<f32>#rehash
  end
 )
 (func $std/set/testNumeric<f32> (; 99 ;)
  (local $0 f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  call $~lib/set/Set<f32>#constructor
  local.set $1
  loop $for-loop|0
   local.get $0
   f32.const 100
   f32.lt
   if
    local.get $1
    local.get $0
    call $~lib/set/Set<f32>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 6
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/set/Set<f32>#add
    call $~lib/rt/pure/__release
    local.get $1
    local.get $0
    call $~lib/set/Set<f32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 8
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    f32.const 1
    f32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 10
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 50
  local.set $0
  loop $for-loop|1
   local.get $0
   f32.const 100
   f32.lt
   if
    local.get $1
    local.get $0
    call $~lib/set/Set<f32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 14
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/set/Set<f32>#add
    call $~lib/rt/pure/__release
    local.get $1
    local.get $0
    call $~lib/set/Set<f32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 16
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    f32.const 1
    f32.add
    local.set $0
    br $for-loop|1
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 18
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/set/Set<f32>#values
  local.set $2
  call $~lib/set/Set<f32>#constructor
  local.set $4
  loop $for-loop|2
   local.get $3
   local.get $2
   i32.load offset=12
   i32.lt_s
   if
    local.get $1
    local.get $2
    local.get $3
    call $~lib/array/Array<f32>#__get
    call $~lib/set/Set<f32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 24
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $4
    local.get $2
    local.get $3
    call $~lib/array/Array<f32>#__get
    call $~lib/set/Set<f32>#add
    call $~lib/rt/pure/__release
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|2
   end
  end
  local.get $4
  i32.load offset=20
  local.get $1
  i32.load offset=20
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 27
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  local.set $0
  loop $for-loop|3
   local.get $0
   f32.const 50
   f32.lt
   if
    local.get $1
    local.get $0
    call $~lib/set/Set<f32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 31
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/set/Set<f32>#delete
    local.get $1
    local.get $0
    call $~lib/set/Set<f32>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 33
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    f32.const 1
    f32.add
    local.set $0
    br $for-loop|3
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 35
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  local.set $0
  loop $for-loop|4
   local.get $0
   f32.const 50
   f32.lt
   if
    local.get $1
    local.get $0
    call $~lib/set/Set<f32>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 39
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/set/Set<f32>#add
    call $~lib/rt/pure/__release
    local.get $1
    local.get $0
    call $~lib/set/Set<f32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 41
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/set/Set<f32>#delete
    local.get $1
    local.get $0
    call $~lib/set/Set<f32>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 43
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    f32.const 1
    f32.add
    local.set $0
    br $for-loop|4
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 45
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/set/Set<i8>#clear
  local.get $1
  i32.load offset=20
  if
   i32.const 0
   i32.const 1312
   i32.const 49
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/set/Set<f64>#constructor (; 100 ;) (result i32)
  (local $0 i32)
  i32.const 24
  i32.const 21
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
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
  call $~lib/set/Set<i64>#clear
  local.get $0
 )
 (func $~lib/set/Set<f64>#find (; 101 ;) (param $0 i32) (param $1 f64) (param $2 i32) (result i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  loop $while-continue|0
   local.get $0
   if
    local.get $0
    i32.load offset=8
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $0
     f64.load
     local.get $1
     f64.eq
    end
    if
     local.get $0
     return
    end
    local.get $0
    i32.load offset=8
    i32.const -2
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/set/Set<f64>#has (; 102 ;) (param $0 i32) (param $1 f64) (result i32)
  local.get $0
  local.get $1
  local.get $1
  i64.reinterpret_f64
  call $~lib/util/hash/hash64
  call $~lib/set/Set<f64>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/set/Set<f64>#rehash (; 103 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $3
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $3
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $8
  i32.const 4
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $0
  i32.load offset=8
  local.tee $6
  local.get $0
  i32.load offset=16
  i32.const 4
  i32.shl
  i32.add
  local.set $7
  local.get $3
  local.set $4
  loop $while-continue|0
   local.get $6
   local.get $7
   i32.ne
   if
    local.get $6
    local.tee $2
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $4
     local.get $2
     f64.load
     f64.store
     local.get $4
     local.get $5
     local.get $2
     f64.load
     i64.reinterpret_f64
     call $~lib/util/hash/hash64
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $2
     i32.load
     i32.store offset=8
     local.get $2
     local.get $4
     i32.store
     local.get $4
     i32.const 16
     i32.add
     local.set $4
    end
    local.get $6
    i32.const 16
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $5
  local.tee $4
  local.get $0
  local.tee $2
  i32.load
  local.tee $6
  i32.ne
  if
   local.get $4
   call $~lib/rt/pure/__retain
   local.set $4
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $2
  local.get $4
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
  local.set $1
  local.get $3
  local.tee $2
  local.get $1
  i32.load offset=8
  local.tee $4
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $1
  local.get $8
  i32.store offset=12
  local.get $1
  local.get $1
  i32.load offset=20
  i32.store offset=16
  local.get $5
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $~lib/set/Set<f64>#add (; 104 ;) (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  local.get $1
  i64.reinterpret_f64
  call $~lib/util/hash/hash64
  local.tee $4
  call $~lib/set/Set<f64>#find
  i32.eqz
  if
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<f64>#rehash
   end
   local.get $0
   i32.load offset=8
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $3
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $3
   i32.const 4
   i32.shl
   i32.add
   local.tee $2
   local.get $1
   f64.store
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $2
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $3
   i32.load
   i32.store offset=8
   local.get $3
   local.get $2
   i32.store
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/set/Set<f64>#values (; 105 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 f64)
  local.get $0
  i32.load offset=8
  local.set $8
  local.get $0
  i32.load offset=16
  local.tee $5
  local.set $6
  local.get $5
  i32.const 134217726
  i32.gt_u
  if
   i32.const 1200
   i32.const 1360
   i32.const 57
   i32.const 59
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.const 3
  i32.shl
  local.tee $7
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $0
  local.get $7
  call $~lib/memory/memory.fill
  i32.const 16
  i32.const 22
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  i32.const 0
  i32.store offset=4
  local.get $3
  i32.const 0
  i32.store offset=8
  local.get $3
  i32.const 0
  i32.store offset=12
  local.get $0
  local.set $1
  local.get $0
  local.get $3
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   local.set $1
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $3
  local.get $1
  i32.store
  local.get $3
  local.get $0
  i32.store offset=4
  local.get $3
  local.get $7
  i32.store offset=8
  local.get $3
  local.get $6
  i32.store offset=12
  loop $for-loop|0
   local.get $4
   local.get $5
   i32.lt_s
   if
    local.get $8
    local.get $4
    i32.const 4
    i32.shl
    i32.add
    local.tee $1
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $2
     local.tee $0
     i32.const 1
     i32.add
     local.set $2
     local.get $1
     f64.load
     local.set $10
     local.get $0
     local.get $3
     i32.load offset=12
     i32.ge_u
     if
      local.get $0
      i32.const 0
      i32.lt_s
      if
       i32.const 1408
       i32.const 1360
       i32.const 120
       i32.const 21
       call $~lib/builtins/abort
       unreachable
      end
      local.get $3
      local.get $0
      i32.const 1
      i32.add
      local.tee $1
      i32.const 3
      call $~lib/array/ensureSize
      local.get $3
      local.get $1
      i32.store offset=12
     end
     local.get $3
     i32.load offset=4
     local.get $0
     i32.const 3
     i32.shl
     i32.add
     local.get $10
     f64.store
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  local.get $3
 )
 (func $~lib/array/Array<f64>#__get (; 106 ;) (param $0 i32) (param $1 i32) (result f64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1408
   i32.const 1360
   i32.const 104
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  f64.load
 )
 (func $~lib/set/Set<f64>#delete (; 107 ;) (param $0 i32) (param $1 f64)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  local.get $1
  i64.reinterpret_f64
  call $~lib/util/hash/hash64
  call $~lib/set/Set<f64>#find
  local.tee $2
  i32.eqz
  if
   return
  end
  local.get $2
  local.get $2
  i32.load offset=8
  i32.const 1
  i32.or
  i32.store offset=8
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  i32.store offset=20
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.tee $3
  i32.const 1
  i32.add
  i32.const 4
  local.get $0
  i32.load offset=20
  local.tee $2
  i32.const 4
  local.get $2
  i32.gt_u
  select
  i32.ge_u
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   local.get $0
   local.get $3
   call $~lib/set/Set<f64>#rehash
  end
 )
 (func $std/set/testNumeric<f64> (; 108 ;)
  (local $0 f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  call $~lib/set/Set<f64>#constructor
  local.set $1
  loop $for-loop|0
   local.get $0
   f64.const 100
   f64.lt
   if
    local.get $1
    local.get $0
    call $~lib/set/Set<f64>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 6
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/set/Set<f64>#add
    call $~lib/rt/pure/__release
    local.get $1
    local.get $0
    call $~lib/set/Set<f64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 8
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    f64.const 1
    f64.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 10
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 50
  local.set $0
  loop $for-loop|1
   local.get $0
   f64.const 100
   f64.lt
   if
    local.get $1
    local.get $0
    call $~lib/set/Set<f64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 14
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/set/Set<f64>#add
    call $~lib/rt/pure/__release
    local.get $1
    local.get $0
    call $~lib/set/Set<f64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 16
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    f64.const 1
    f64.add
    local.set $0
    br $for-loop|1
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 18
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/set/Set<f64>#values
  local.set $2
  call $~lib/set/Set<f64>#constructor
  local.set $4
  loop $for-loop|2
   local.get $3
   local.get $2
   i32.load offset=12
   i32.lt_s
   if
    local.get $1
    local.get $2
    local.get $3
    call $~lib/array/Array<f64>#__get
    call $~lib/set/Set<f64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 24
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $4
    local.get $2
    local.get $3
    call $~lib/array/Array<f64>#__get
    call $~lib/set/Set<f64>#add
    call $~lib/rt/pure/__release
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|2
   end
  end
  local.get $4
  i32.load offset=20
  local.get $1
  i32.load offset=20
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 27
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  local.set $0
  loop $for-loop|3
   local.get $0
   f64.const 50
   f64.lt
   if
    local.get $1
    local.get $0
    call $~lib/set/Set<f64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 31
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/set/Set<f64>#delete
    local.get $1
    local.get $0
    call $~lib/set/Set<f64>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 33
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    f64.const 1
    f64.add
    local.set $0
    br $for-loop|3
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 35
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  local.set $0
  loop $for-loop|4
   local.get $0
   f64.const 50
   f64.lt
   if
    local.get $1
    local.get $0
    call $~lib/set/Set<f64>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 39
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/set/Set<f64>#add
    call $~lib/rt/pure/__release
    local.get $1
    local.get $0
    call $~lib/set/Set<f64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1312
     i32.const 41
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    call $~lib/set/Set<f64>#delete
    local.get $1
    local.get $0
    call $~lib/set/Set<f64>#has
    if
     i32.const 0
     i32.const 1312
     i32.const 43
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    f64.const 1
    f64.add
    local.set $0
    br $for-loop|4
   end
  end
  local.get $1
  i32.load offset=20
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 45
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/set/Set<i64>#clear
  local.get $1
  i32.load offset=20
  if
   i32.const 0
   i32.const 1312
   i32.const 49
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~start (; 109 ;)
  call $std/set/testNumeric<i8>
  call $std/set/testNumeric<u8>
  call $std/set/testNumeric<i16>
  call $std/set/testNumeric<u16>
  call $std/set/testNumeric<i32>
  call $std/set/testNumeric<u32>
  call $std/set/testNumeric<i64>
  call $std/set/testNumeric<u64>
  call $std/set/testNumeric<f32>
  call $std/set/testNumeric<f64>
 )
 (func $~lib/rt/pure/decrement (; 110 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 268435455
  i32.and
  local.set $1
  local.get $0
  call $~lib/rt/rtrace/ondecrement
  local.get $0
  i32.load
  i32.const 1
  i32.and
  if
   i32.const 0
   i32.const 1152
   i32.const 122
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.eq
  if
   block $__inlined_func$~lib/rt/__visit_members
    block $folding-inner1
     block $folding-inner0
      block $switch$1$default
       block $switch$1$case$4
        local.get $0
        i32.const 16
        i32.add
        local.tee $1
        i32.const 8
        i32.sub
        i32.load
        br_table $__inlined_func$~lib/rt/__visit_members $__inlined_func$~lib/rt/__visit_members $switch$1$case$4 $folding-inner0 $folding-inner1 $folding-inner0 $folding-inner1 $folding-inner0 $folding-inner1 $folding-inner0 $folding-inner1 $folding-inner0 $folding-inner1 $folding-inner0 $folding-inner1 $folding-inner0 $folding-inner1 $folding-inner0 $folding-inner1 $folding-inner0 $folding-inner1 $folding-inner0 $folding-inner1 $switch$1$default
       end
       local.get $1
       i32.load
       local.tee $1
       if
        local.get $1
        call $~lib/rt/pure/__visit
       end
       br $__inlined_func$~lib/rt/__visit_members
      end
      unreachable
     end
     local.get $1
     i32.load
     call $~lib/rt/pure/__visit
     local.get $1
     i32.load offset=8
     call $~lib/rt/pure/__visit
     br $__inlined_func$~lib/rt/__visit_members
    end
    local.get $1
    i32.load
    call $~lib/rt/pure/__visit
   end
   local.get $2
   i32.const -2147483648
   i32.and
   if
    i32.const 0
    i32.const 1152
    i32.const 126
    i32.const 17
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/rt/tlsf/ROOT
   local.get $0
   call $~lib/rt/tlsf/freeBlock
  else
   local.get $1
   i32.const 0
   i32.le_u
   if
    i32.const 0
    i32.const 1152
    i32.const 136
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.sub
   local.get $2
   i32.const -268435456
   i32.and
   i32.or
   i32.store offset=4
  end
 )
 (func $~lib/rt/pure/__visit (; 111 ;) (param $0 i32)
  local.get $0
  i32.const 1444
  i32.lt_u
  if
   return
  end
  local.get $0
  i32.const 16
  i32.sub
  call $~lib/rt/pure/decrement
 )
)
