(module
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_none (func))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "rtrace" "onalloc" (func $~lib/rt/rtrace/onalloc (param i32)))
 (import "rtrace" "onincrement" (func $~lib/rt/rtrace/onincrement (param i32)))
 (import "rtrace" "onfree" (func $~lib/rt/rtrace/onfree (param i32)))
 (import "rtrace" "ondecrement" (func $~lib/rt/rtrace/ondecrement (param i32)))
 (memory $0 1)
 (data (i32.const 1024) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00h\00e\00l\00l\00o\00 \00w\00o\00r\00l\00d")
 (data (i32.const 1072) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1120) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1184) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s")
 (data (i32.const 1232) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00o\00b\00j\00e\00c\00t\00-\00l\00i\00t\00e\00r\00a\00l\00.\00t\00s")
 (data (i32.const 1300) "\01\00\00\00\01")
 (data (i32.const 1312) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00h\00e\00l\00l\00o")
 (data (i32.const 1344) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00t\00e\00s\00t")
 (data (i32.const 1376) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00b\00a\00r")
 (data (i32.const 1408) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00b\00a\00z")
 (global $~lib/rt/common/root (mut i32) (i32.const 0))
 (global $~started (mut i32) (i32.const 0))
 (export "_start" (func $~start))
 (export "memory" (memory $0))
 (func $~lib/rt/tlsf/removeBlock (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load
  local.tee $1
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 274
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const -4
  i32.and
  local.tee $1
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $1
   i32.const 1073741808
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 276
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
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
   i32.const 31
   local.get $1
   i32.clz
   i32.sub
   local.tee $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $1
   local.get $3
   i32.const 7
   i32.sub
   local.set $3
  end
  local.get $1
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
   i32.const 1088
   i32.const 289
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=20
  local.set $2
  local.get $0
  i32.load offset=16
  local.tee $4
  if
   local.get $4
   local.get $2
   i32.store offset=20
  end
  local.get $2
  if
   local.get $2
   local.get $4
   i32.store offset=16
  end
  local.get $0
  global.get $~lib/rt/common/root
  local.get $1
  local.get $3
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=128
  i32.eq
  if
   global.get $~lib/rt/common/root
   local.get $1
   local.get $3
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $2
   i32.store offset=128
   local.get $2
   i32.eqz
   if
    local.get $3
    i32.const 2
    i32.shl
    local.tee $2
    global.get $~lib/rt/common/root
    i32.add
    i32.load offset=32
    i32.const 1
    local.get $1
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.set $0
    local.get $2
    global.get $~lib/rt/common/root
    i32.add
    local.get $0
    i32.store offset=32
    local.get $0
    i32.eqz
    if
     global.get $~lib/rt/common/root
     global.get $~lib/rt/common/root
     i32.load offset=8
     i32.const 1
     local.get $3
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     i32.store offset=8
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 202
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 204
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.add
  local.get $0
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $3
  i32.load
  local.tee $4
  i32.const 1
  i32.and
  if
   local.get $2
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $4
   i32.const -4
   i32.and
   i32.add
   local.tee $1
   i32.const 1073741808
   i32.lt_u
   if
    local.get $3
    call $~lib/rt/tlsf/removeBlock
    local.get $0
    local.get $1
    local.get $2
    i32.const 3
    i32.and
    i32.or
    local.tee $2
    i32.store
    local.get $0
    i32.const 16
    i32.add
    local.get $0
    i32.load
    i32.const -4
    i32.and
    i32.add
    local.tee $3
    i32.load
    local.set $4
   end
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
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
    i32.const 1088
    i32.const 225
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $6
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $7
   i32.const 1073741808
   i32.lt_u
   if
    local.get $1
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $7
    local.get $6
    i32.const 3
    i32.and
    i32.or
    local.tee $2
    i32.store
    local.get $1
    local.set $0
   end
  end
  local.get $3
  local.get $4
  i32.const 2
  i32.or
  i32.store
  local.get $2
  i32.const -4
  i32.and
  local.tee $1
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $1
   i32.const 1073741808
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 240
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.const 16
  i32.add
  i32.add
  local.get $3
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 241
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 4
  i32.sub
  local.get $0
  i32.store
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
   local.set $5
  end
  local.get $1
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
   i32.const 1088
   i32.const 257
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/common/root
  local.get $1
  local.get $5
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=128
  local.set $2
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  local.get $2
  i32.store offset=20
  local.get $2
  if
   local.get $2
   local.get $0
   i32.store offset=16
  end
  global.get $~lib/rt/common/root
  local.get $1
  local.get $5
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $0
  i32.store offset=128
  global.get $~lib/rt/common/root
  global.get $~lib/rt/common/root
  i32.load offset=8
  i32.const 1
  local.get $5
  i32.shl
  i32.or
  i32.store offset=8
  local.get $5
  i32.const 2
  i32.shl
  local.tee $0
  global.get $~lib/rt/common/root
  i32.add
  local.get $0
  global.get $~lib/rt/common/root
  i32.add
  i32.load offset=32
  i32.const 1
  local.get $1
  i32.shl
  i32.or
  i32.store offset=32
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $0
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $0
  local.get $1
  i32.le_u
  select
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 383
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/common/root
  i32.load offset=1600
  local.tee $2
  if
   local.get $0
   local.get $2
   i32.const 16
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 1088
    i32.const 393
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $0
   i32.const 16
   i32.sub
   i32.eq
   if
    local.get $2
    i32.load
    local.set $3
    local.get $0
    i32.const 16
    i32.sub
    local.set $0
   end
  else
   local.get $0
   global.get $~lib/rt/common/root
   i32.const 1604
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 1088
    i32.const 405
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $1
  local.get $0
  i32.sub
  local.tee $1
  i32.const 48
  i32.lt_u
  if
   return
  end
  local.get $0
  local.get $3
  i32.const 2
  i32.and
  local.get $1
  i32.const 32
  i32.sub
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
  local.get $0
  local.get $1
  i32.add
  i32.const 16
  i32.sub
  local.tee $1
  i32.const 2
  i32.store
  global.get $~lib/rt/common/root
  local.get $1
  i32.store offset=1600
  local.get $0
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/maybeInitialize
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/common/root
  i32.load
  i32.const 1
  i32.and
  i32.eqz
  if
   global.get $~lib/rt/common/root
   global.get $~lib/rt/common/root
   i32.load
   i32.const 1
   i32.or
   i32.store
   global.get $~lib/rt/common/root
   i32.const 0
   i32.store offset=8
   memory.size
   local.set $0
   global.get $~lib/rt/common/root
   i32.const 67139
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $2
   local.get $0
   i32.gt_s
   if (result i32)
    local.get $2
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
   global.get $~lib/rt/common/root
   i32.const 0
   i32.store offset=1600
   loop $for-loop|0
    local.get $1
    i32.const 23
    i32.lt_u
    if
     global.get $~lib/rt/common/root
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     i32.const 0
     i32.store offset=32
     i32.const 0
     local.set $0
     loop $for-loop|1
      local.get $0
      i32.const 16
      i32.lt_u
      if
       global.get $~lib/rt/common/root
       local.get $1
       i32.const 4
       i32.shl
       local.get $0
       i32.add
       i32.const 2
       i32.shl
       i32.add
       i32.const 0
       i32.store offset=128
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
   global.get $~lib/rt/common/root
   i32.const 1619
   i32.add
   i32.const -16
   i32.and
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
  end
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 256
  i32.lt_u
  if
   local.get $0
   i32.const 4
   i32.shr_u
   local.set $0
  else
   local.get $0
   i32.const 536870904
   i32.lt_u
   if
    local.get $0
    i32.const 1
    i32.const 27
    local.get $0
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
    local.set $0
   end
   local.get $0
   i32.const 31
   local.get $0
   i32.clz
   i32.sub
   local.tee $1
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $0
   local.get $1
   i32.const 7
   i32.sub
   local.set $1
  end
  local.get $0
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $1
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 335
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/common/root
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=32
  i32.const -1
  local.get $0
  i32.shl
  i32.and
  local.tee $0
  if (result i32)
   global.get $~lib/rt/common/root
   local.get $0
   i32.ctz
   local.get $1
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=128
  else
   global.get $~lib/rt/common/root
   i32.load offset=8
   i32.const -1
   local.get $1
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $0
   if (result i32)
    global.get $~lib/rt/common/root
    local.get $0
    i32.ctz
    local.tee $0
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=32
    local.tee $1
    i32.eqz
    if
     i32.const 0
     i32.const 1088
     i32.const 348
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/rt/common/root
    local.get $1
    i32.ctz
    local.get $0
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=128
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/tlsf/prepareBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load
  local.set $2
  local.get $1
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1088
   i32.const 362
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const -4
  i32.and
  local.get $1
  i32.sub
  local.tee $3
  i32.const 32
  i32.ge_u
  if
   local.get $0
   local.get $1
   local.get $2
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $1
   local.get $0
   i32.const 16
   i32.add
   i32.add
   local.tee $0
   local.get $3
   i32.const 16
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $0
   local.get $2
   i32.const -2
   i32.and
   i32.store
   local.get $0
   i32.const 16
   i32.add
   local.tee $1
   local.get $0
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.get $1
   local.get $0
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
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/rt/common/root
  i32.load
  i32.const 2
  i32.and
  if
   i32.const 0
   i32.const 1088
   i32.const 492
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1073741808
  i32.ge_u
  if
   i32.const 1136
   i32.const 1088
   i32.const 458
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $2
  i32.const 16
  local.get $2
  i32.const 16
  i32.gt_u
  select
  local.tee $3
  call $~lib/rt/tlsf/searchBlock
  local.tee $2
  i32.eqz
  if
   global.get $~lib/rt/common/root
   global.get $~lib/rt/common/root
   i32.load
   i32.const 2
   i32.or
   i32.store
   global.get $~lib/rt/common/root
   global.get $~lib/rt/common/root
   i32.load
   i32.const -3
   i32.and
   i32.store
   local.get $3
   call $~lib/rt/tlsf/searchBlock
   local.tee $2
   i32.eqz
   if
    i32.const 16
    memory.size
    local.tee $2
    i32.const 16
    i32.shl
    i32.const 16
    i32.sub
    global.get $~lib/rt/common/root
    i32.load offset=1600
    i32.ne
    i32.shl
    local.get $3
    i32.const 1
    i32.const 27
    local.get $3
    i32.clz
    i32.sub
    i32.shl
    i32.const 1
    i32.sub
    i32.add
    local.get $3
    local.get $3
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
    local.set $4
    local.get $2
    local.get $4
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
    local.get $2
    i32.const 16
    i32.shl
    memory.size
    i32.const 16
    i32.shl
    call $~lib/rt/tlsf/addMemory
    local.get $3
    call $~lib/rt/tlsf/searchBlock
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1088
     i32.const 504
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
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
   i32.const 1088
   i32.const 512
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  local.get $2
  call $~lib/rt/tlsf/removeBlock
  local.get $2
  local.get $3
  call $~lib/rt/tlsf/prepareBlock
  local.get $2
  call $~lib/rt/rtrace/onalloc
  local.get $2
 )
 (func $~lib/rt/tlsf/__alloc (param $0 i32) (param $1 i32) (result i32)
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
 )
 (func $~lib/rt/pure/__retain (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1432
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
    i32.const 1200
    i32.const 109
    i32.const 3
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
    i32.const 1200
    i32.const 112
    i32.const 14
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
 )
 (func $~lib/rt/pure/__release (param $0 i32)
  local.get $0
  i32.const 1432
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/string/compareImpl (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 7
  i32.and
  local.get $1
  i32.const 7
  i32.and
  i32.or
  i32.eqz
  i32.const 0
  local.get $2
  i32.const 4
  i32.ge_u
  select
  if
   loop $do-continue|0
    local.get $0
    i64.load
    local.get $1
    i64.load
    i64.eq
    if
     local.get $0
     i32.const 8
     i32.add
     local.set $0
     local.get $1
     i32.const 8
     i32.add
     local.set $1
     local.get $2
     i32.const 4
     i32.sub
     local.tee $2
     i32.const 4
     i32.ge_u
     br_if $do-continue|0
    end
   end
  end
  loop $while-continue|1
   local.get $2
   local.tee $3
   i32.const 1
   i32.sub
   local.set $2
   local.get $3
   if
    local.get $0
    i32.load16_u
    local.tee $3
    local.get $1
    i32.load16_u
    local.tee $4
    i32.ne
    if
     local.get $3
     local.get $4
     i32.sub
     return
    end
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
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
  block $folding-inner0
   local.get $1
   i32.eqz
   i32.const 1
   local.get $0
   select
   br_if $folding-inner0
   local.get $0
   call $~lib/string/String#get:length
   local.tee $2
   local.get $1
   call $~lib/string/String#get:length
   i32.ne
   br_if $folding-inner0
   local.get $0
   local.get $1
   local.get $2
   call $~lib/util/string/compareImpl
   i32.eqz
   return
  end
  i32.const 0
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
 (func $~lib/rt/tlsf/freeBlock (param $0 i32)
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  i32.or
  i32.store
  local.get $0
  call $~lib/rt/tlsf/insertBlock
  local.get $0
  call $~lib/rt/rtrace/onfree
 )
 (func $object-literal/testUnmanaged (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load
  i32.const 123
  i32.ne
  if
   i32.const 0
   i32.const 1248
   i32.const 27
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 1328
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1248
   i32.const 28
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  call $~lib/rt/pure/__release
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  i32.const 16
  i32.sub
  local.set $1
  local.get $0
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $0
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
   i32.const 1088
   i32.const 572
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/tlsf/freeBlock
 )
 (func $object-literal/testOmittedTypes (param $0 i32)
  local.get $0
  i32.load
  if
   i32.const 0
   i32.const 1248
   i32.const 58
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  if
   i32.const 0
   i32.const 1248
   i32.const 59
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.load offset=8
  i64.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 1248
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.load offset=16
  i64.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 1248
   i32.const 61
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32.load offset=24
  f32.const 0
  f32.ne
  if
   i32.const 0
   i32.const 1248
   i32.const 62
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.load offset=32
  f64.const 0
  f64.ne
  if
   i32.const 0
   i32.const 1248
   i32.const 63
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_s offset=40
  if
   i32.const 0
   i32.const 1248
   i32.const 64
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=41
  if
   i32.const 0
   i32.const 1248
   i32.const 65
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load16_s offset=42
  if
   i32.const 0
   i32.const 1248
   i32.const 66
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load16_u offset=44
  if
   i32.const 0
   i32.const 1248
   i32.const 67
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=48
  if
   i32.const 0
   i32.const 1248
   i32.const 68
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=52
  if
   i32.const 0
   i32.const 1248
   i32.const 69
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.load offset=56
  f64.const 0
  f64.ne
  if
   i32.const 0
   i32.const 1248
   i32.const 70
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=64
  if
   i32.const 0
   i32.const 1248
   i32.const 71
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $object-literal/testOmittedFoo (param $0 i32)
  local.get $0
  i32.load
  i32.const 1392
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1248
   i32.const 108
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 1424
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1248
   i32.const 109
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=8
  i32.const 0
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1248
   i32.const 110
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=12
  i32.const 0
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1248
   i32.const 111
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=16
  i32.const 0
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1248
   i32.const 112
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=20
  i32.const 0
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1248
   i32.const 113
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=24
  i32.const 0
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1248
   i32.const 114
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=28
  i32.const 0
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1248
   i32.const 115
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=32
  if
   i32.const 0
   i32.const 1248
   i32.const 116
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=36
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1248
   i32.const 117
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start:object-literal
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1440
  global.set $~lib/rt/common/root
  i32.const 8
  i32.const 3
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  i32.const 0
  i32.store offset=4
  local.get $3
  i32.const 123
  i32.store
  local.get $3
  i32.const 1040
  i32.store offset=4
  local.get $3
  i32.load
  i32.const 123
  i32.ne
  if
   i32.const 0
   i32.const 1248
   i32.const 9
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=4
  i32.const 1040
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1248
   i32.const 10
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 123
  i32.store
  local.get $1
  block $__inlined_func$~lib/string/String#substring (result i32)
   i32.const 1312
   i32.const 0
   i32.const 1040
   call $~lib/string/String#get:length
   local.tee $5
   i32.const 0
   local.get $5
   i32.lt_s
   select
   local.tee $4
   i32.const 5
   local.get $5
   i32.const 5
   local.get $5
   i32.lt_s
   select
   local.tee $0
   local.get $4
   local.get $0
   i32.gt_s
   select
   i32.const 1
   i32.shl
   local.tee $2
   local.get $4
   local.get $0
   local.get $4
   local.get $0
   i32.lt_s
   select
   i32.const 1
   i32.shl
   local.tee $4
   i32.sub
   local.tee $0
   i32.eqz
   br_if $__inlined_func$~lib/string/String#substring
   drop
   i32.const 1040
   i32.const 0
   local.get $2
   local.get $5
   i32.const 1
   i32.shl
   i32.eq
   local.get $4
   select
   br_if $__inlined_func$~lib/string/String#substring
   drop
   local.get $0
   i32.const 1
   call $~lib/rt/tlsf/__alloc
   local.tee $2
   local.get $4
   i32.const 1040
   i32.add
   local.get $0
   call $~lib/memory/memory.copy
   local.get $2
   call $~lib/rt/pure/__retain
  end
  i32.store offset=4
  local.get $1
  call $object-literal/testUnmanaged
  i32.const 65
  i32.const 4
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  i32.const 0
  i32.store offset=4
  local.get $2
  i64.const 0
  i64.store offset=8
  local.get $2
  i64.const 0
  i64.store offset=16
  local.get $2
  f32.const 0
  f32.store offset=24
  local.get $2
  f64.const 0
  f64.store offset=32
  local.get $2
  i32.const 0
  i32.store8 offset=40
  local.get $2
  i32.const 0
  i32.store8 offset=41
  local.get $2
  i32.const 0
  i32.store16 offset=42
  local.get $2
  i32.const 0
  i32.store16 offset=44
  local.get $2
  i32.const 0
  i32.store offset=48
  local.get $2
  i32.const 0
  i32.store offset=52
  local.get $2
  f64.const 0
  f64.store offset=56
  local.get $2
  i32.const 0
  i32.store8 offset=64
  local.get $2
  i32.const 0
  i32.store
  local.get $2
  i32.const 0
  i32.store offset=4
  local.get $2
  i64.const 0
  i64.store offset=8
  local.get $2
  i64.const 0
  i64.store offset=16
  local.get $2
  f32.const 0
  f32.store offset=24
  local.get $2
  f64.const 0
  f64.store offset=32
  local.get $2
  i32.const 0
  i32.store8 offset=40
  local.get $2
  i32.const 0
  i32.store8 offset=41
  local.get $2
  i32.const 0
  i32.store16 offset=42
  local.get $2
  i32.const 0
  i32.store16 offset=44
  local.get $2
  i32.const 0
  i32.store offset=48
  local.get $2
  i32.const 0
  i32.store offset=52
  local.get $2
  f64.const 0
  f64.store offset=56
  local.get $2
  i32.const 0
  i32.store8 offset=64
  local.get $2
  call $object-literal/testOmittedTypes
  i32.const 16
  i32.const 5
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  f64.const 0
  f64.store offset=8
  local.get $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 1360
  i32.store offset=4
  local.get $1
  f64.const 0
  f64.store offset=8
  local.get $1
  local.tee $0
  i32.load
  if
   i32.const 0
   i32.const 1248
   i32.const 83
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 1360
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1248
   i32.const 84
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.load offset=8
  f64.const 0
  f64.ne
  if
   i32.const 0
   i32.const 1248
   i32.const 85
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 40
  i32.const 6
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 1392
  i32.store
  local.get $0
  i32.const 1424
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
  i32.const 0
  i32.store offset=24
  local.get $0
  i32.const 0
  i32.store offset=28
  local.get $0
  i32.const 0
  i32.store offset=32
  local.get $0
  i32.const -1
  i32.store offset=36
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
  i32.const 0
  i32.store offset=24
  local.get $0
  i32.const 0
  i32.store offset=28
  local.get $0
  i32.const 0
  i32.store offset=32
  local.get $0
  call $object-literal/testOmittedFoo
  local.get $3
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~start
  global.get $~started
  if
   return
  else
   i32.const 1
   global.set $~started
  end
  call $start:object-literal
 )
 (func $~lib/rt/pure/decrement (param $0 i32)
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
   i32.const 1200
   i32.const 122
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.eq
  if
   local.get $0
   i32.const 16
   i32.add
   call $~lib/rt/__visit_members
   local.get $2
   i32.const -2147483648
   i32.and
   if
    i32.const 0
    i32.const 1200
    i32.const 126
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   call $~lib/rt/tlsf/freeBlock
  else
   local.get $1
   i32.const 0
   i32.le_u
   if
    i32.const 0
    i32.const 1200
    i32.const 136
    i32.const 16
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
 (func $~lib/rt/pure/__visit (param $0 i32)
  local.get $0
  i32.const 1432
  i32.lt_u
  if
   return
  end
  local.get $0
  i32.const 16
  i32.sub
  call $~lib/rt/pure/decrement
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  block $switch$1$default
   block $switch$1$case$8
    block $switch$1$case$5
     block $switch$1$case$4
      block $switch$1$case$2
       local.get $0
       i32.const 8
       i32.sub
       i32.load
       br_table $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$5 $switch$1$case$2 $switch$1$case$5 $switch$1$case$8 $switch$1$default
      end
      return
     end
     local.get $0
     i32.load
     local.tee $0
     if
      local.get $0
      call $~lib/rt/pure/__visit
     end
     return
    end
    local.get $0
    i32.load offset=4
    local.tee $0
    if
     local.get $0
     call $~lib/rt/pure/__visit
    end
    return
   end
   local.get $0
   i32.load
   local.tee $1
   if
    local.get $1
    call $~lib/rt/pure/__visit
   end
   local.get $0
   i32.load offset=4
   local.tee $1
   if
    local.get $1
    call $~lib/rt/pure/__visit
   end
   local.get $0
   i32.load offset=8
   local.tee $1
   if
    local.get $1
    call $~lib/rt/pure/__visit
   end
   local.get $0
   i32.load offset=12
   local.tee $1
   if
    local.get $1
    call $~lib/rt/pure/__visit
   end
   local.get $0
   i32.load offset=16
   local.tee $1
   if
    local.get $1
    call $~lib/rt/pure/__visit
   end
   local.get $0
   i32.load offset=20
   local.tee $1
   if
    local.get $1
    call $~lib/rt/pure/__visit
   end
   local.get $0
   i32.load offset=24
   local.tee $1
   if
    local.get $1
    call $~lib/rt/pure/__visit
   end
   local.get $0
   i32.load offset=28
   local.tee $0
   if
    local.get $0
    call $~lib/rt/pure/__visit
   end
   return
  end
  unreachable
 )
)
