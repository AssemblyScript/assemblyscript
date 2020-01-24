(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "rtrace" "onalloc" (func $~lib/rt/rtrace/onalloc (param i32)))
 (import "rtrace" "onincrement" (func $~lib/rt/rtrace/onincrement (param i32)))
 (import "rtrace" "ondecrement" (func $~lib/rt/rtrace/ondecrement (param i32)))
 (import "rtrace" "onfree" (func $~lib/rt/rtrace/onfree (param i32)))
 (memory $0 1)
 (data (i32.const 16) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00w\00h\00i\00l\00e\00.\00t\00s")
 (data (i32.const 48) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 96) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 160) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s")
 (global $while/ran (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/collectLock (mut i32) (i32.const 0))
 (global $~started (mut i32) (i32.const 0))
 (export "_start" (func $~start))
 (export "memory" (memory $0))
 (func $while/testSimple (; 5 ;)
  (local $0 i32)
  (local $1 i32)
  i32.const 10
  local.set $0
  loop $while-continue|0
   local.get $0
   if
    local.get $0
    i32.const 1
    i32.sub
    local.set $0
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|0
   end
  end
  local.get $0
  if
   i32.const 0
   i32.const 32
   i32.const 10
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 10
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 11
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $while/ran
 )
 (func $while/testNested (; 6 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 10
  local.set $0
  loop $while-continue|0
   local.get $0
   if
    local.get $0
    i32.const 1
    i32.sub
    local.set $0
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    loop $while-continue|1
     local.get $0
     if
      local.get $0
      i32.const 1
      i32.sub
      local.set $0
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $while-continue|1
     end
    end
    local.get $0
    if
     i32.const 0
     i32.const 32
     i32.const 29
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i32.const 9
    i32.ne
    if
     i32.const 0
     i32.const 32
     i32.const 30
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    br $while-continue|0
   end
  end
  local.get $0
  if
   i32.const 0
   i32.const 32
   i32.const 32
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 33
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 9
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 34
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $while/ran
 )
 (func $while/testEmpty (; 7 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 1
  local.set $0
  loop $while-continue|0
   local.get $0
   local.tee $2
   i32.const 1
   i32.sub
   local.set $0
   local.get $2
   if (result i32)
    local.get $1
    i32.const 1
    i32.add
    local.tee $1
   else
    i32.const 0
   end
   br_if $while-continue|0
  end
  local.get $0
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 45
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 46
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $while/ran
 )
 (func $while/testAlwaysTrue (; 8 ;)
  (local $0 i32)
  loop $while-continue|0
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   i32.const 10
   i32.ne
   br_if $while-continue|0
  end
  local.get $0
  i32.const 10
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 58
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $while/ran
 )
 (func $while/testContinue (; 9 ;)
  (local $0 i32)
  i32.const 10
  local.set $0
  loop $while-continue|0
   local.get $0
   if
    local.get $0
    i32.const 1
    i32.sub
    local.set $0
    br $while-continue|0
   end
  end
  local.get $0
  if
   i32.const 0
   i32.const 32
   i32.const 108
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $while/ran
 )
 (func $while/testNestedContinue (; 10 ;)
  (local $0 i32)
  (local $1 i32)
  i32.const 10
  local.set $0
  i32.const 10
  local.set $1
  loop $while-continue|0
   local.get $0
   if
    loop $while-continue|1
     local.get $1
     if
      local.get $1
      i32.const 1
      i32.sub
      local.set $1
      br $while-continue|1
     end
    end
    local.get $0
    i32.const 1
    i32.sub
    local.set $0
    br $while-continue|0
   end
  end
  local.get $0
  if
   i32.const 0
   i32.const 32
   i32.const 126
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  if
   i32.const 0
   i32.const 32
   i32.const 127
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $while/ran
 )
 (func $~lib/rt/tlsf/removeBlock (; 11 ;) (param $0 i32) (param $1 i32)
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
   i32.const 64
   i32.const 277
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
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
   i32.const 64
   i32.const 279
   i32.const 13
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
   local.set $2
   i32.const 0
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
  end
  local.tee $3
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 292
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=20
  local.set $4
  local.get $1
  i32.load offset=16
  local.tee $5
  if
   local.get $5
   local.get $4
   i32.store offset=20
  end
  local.get $4
  if
   local.get $4
   local.get $5
   i32.store offset=16
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
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    i32.const 1
    local.get $2
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $1
    i32.store offset=4
    local.get $1
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $3
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (; 12 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 64
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
   i32.const 64
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
   local.tee $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 64
    i32.const 228
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $6
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $7
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $2
    call $~lib/rt/tlsf/removeBlock
    local.get $2
    local.get $7
    local.get $6
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
   i32.const 64
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
   i32.const 64
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
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $4
   i32.const 0
  else
   local.get $2
   i32.const 31
   local.get $2
   i32.clz
   i32.sub
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $4
   local.get $2
   i32.const 7
   i32.sub
  end
  local.tee $3
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $4
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 260
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $4
  local.get $3
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $2
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  local.get $2
  i32.store offset=20
  local.get $2
  if
   local.get $2
   local.get $1
   i32.store offset=16
  end
  local.get $0
  local.get $4
  local.get $3
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
  local.get $3
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  local.get $0
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 1
  local.get $4
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (; 13 ;) (param $0 i32) (param $1 i32) (param $2 i32)
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
   i32.const 64
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
    i32.const 64
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
    i32.const 64
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
 (func $~lib/rt/tlsf/maybeInitialize (; 14 ;) (result i32)
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
   i32.const 208
   local.tee $0
   i32.const 0
   i32.store
   i32.const 1776
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
     i32.const 208
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
       local.get $1
       i32.const 4
       i32.shl
       local.get $2
       i32.add
       i32.const 2
       i32.shl
       i32.const 208
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
   i32.const 208
   i32.const 1792
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   i32.const 208
   global.set $~lib/rt/tlsf/ROOT
  end
  local.get $0
 )
 (func $~lib/rt/tlsf/searchBlock (; 15 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  i32.const -2
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $1
   i32.ctz
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
  else
   local.get $0
   i32.load
   i32.const -2
   i32.and
   local.tee $2
   if (result i32)
    local.get $0
    local.get $2
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
     i32.const 64
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
 (func $~lib/rt/tlsf/growMemory (; 16 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  memory.size
  local.tee $1
  i32.const 16
  local.get $0
  i32.load offset=1568
  local.get $1
  i32.const 16
  i32.shl
  i32.const 16
  i32.sub
  i32.ne
  i32.shl
  i32.const 65551
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
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
 )
 (func $~lib/rt/tlsf/prepareBlock (; 17 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.load
  local.tee $2
  i32.const -4
  i32.and
  i32.const 16
  i32.sub
  local.tee $3
  i32.const 32
  i32.ge_u
  if
   local.get $1
   local.get $2
   i32.const 2
   i32.and
   i32.const 16
   i32.or
   i32.store
   local.get $1
   i32.const 32
   i32.add
   local.tee $1
   local.get $3
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
   local.get $2
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
 (func $~lib/rt/tlsf/allocateBlock (; 18 ;) (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/rt/tlsf/collectLock
  if
   i32.const 0
   i32.const 64
   i32.const 490
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/tlsf/searchBlock
  local.tee $1
  i32.eqz
  if
   i32.const 1
   global.set $~lib/rt/tlsf/collectLock
   i32.const 0
   global.set $~lib/rt/tlsf/collectLock
   local.get $0
   call $~lib/rt/tlsf/searchBlock
   local.tee $1
   i32.eqz
   if
    local.get $0
    call $~lib/rt/tlsf/growMemory
    local.get $0
    call $~lib/rt/tlsf/searchBlock
    local.tee $1
    i32.eqz
    if
     i32.const 0
     i32.const 64
     i32.const 502
     i32.const 19
     call $~lib/builtins/abort
     unreachable
    end
   end
  end
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.const 16
  i32.lt_u
  if
   i32.const 0
   i32.const 64
   i32.const 510
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 3
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/prepareBlock
  local.get $1
  call $~lib/rt/rtrace/onalloc
  local.get $1
 )
 (func $~lib/rt/pure/increment (; 19 ;) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.const -268435456
  i32.and
  local.get $1
  i32.const 1
  i32.add
  i32.const -268435456
  i32.and
  i32.ne
  if
   i32.const 0
   i32.const 176
   i32.const 109
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $0
  call $~lib/rt/rtrace/onincrement
  local.get $0
  i32.load
  i32.const 1
  i32.and
  if
   i32.const 0
   i32.const 176
   i32.const 112
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $while/Ref#constructor (; 20 ;) (result i32)
  (local $0 i32)
  call $~lib/rt/tlsf/maybeInitialize
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
  local.tee $0
  i32.const 208
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/increment
  end
  local.get $0
 )
 (func $~lib/rt/pure/__release (; 21 ;) (param $0 i32)
  local.get $0
  i32.const 208
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $while/testRef (; 22 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  call $while/Ref#constructor
  local.set $0
  loop $while-continue|0
   local.get $0
   if
    local.get $1
    i32.const 1
    i32.add
    local.tee $1
    i32.const 10
    i32.eq
    if
     i32.const 0
     local.set $2
     local.get $0
     if
      local.get $0
      call $~lib/rt/pure/__release
     end
    else
     call $while/Ref#constructor
     local.set $2
     local.get $0
     call $~lib/rt/pure/__release
    end
    local.get $2
    local.set $0
    br $while-continue|0
   end
  end
  local.get $1
  i32.const 10
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 142
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  if
   i32.const 0
   i32.const 32
   i32.const 143
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $while/ran
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $while/testRefAutorelease (; 23 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  call $while/Ref#constructor
  local.set $0
  loop $while-continue|0
   block $while-break|0
    call $while/Ref#constructor
    local.tee $1
    call $~lib/rt/pure/__release
    local.get $1
    if
     local.get $2
     i32.const 1
     i32.add
     local.tee $2
     i32.const 10
     i32.eq
     if
      i32.const 0
      local.set $1
      local.get $0
      if
       local.get $0
       call $~lib/rt/pure/__release
      end
      i32.const 0
      local.set $0
      br $while-break|0
     end
     br $while-continue|0
    end
   end
  end
  local.get $2
  i32.const 10
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 162
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  if
   i32.const 0
   i32.const 32
   i32.const 163
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $while/ran
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $start:while (; 24 ;)
  i32.const 0
  global.set $while/ran
  call $while/testSimple
  global.get $while/ran
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 16
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $while/ran
  call $while/testNested
  global.get $while/ran
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 39
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $while/ran
  call $while/testEmpty
  global.get $while/ran
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 51
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $while/ran
  call $while/testAlwaysTrue
  global.get $while/ran
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 63
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $while/ran
  i32.const 1
  global.set $while/ran
  i32.const 0
  global.set $while/ran
  i32.const 1
  global.set $while/ran
  i32.const 0
  global.set $while/ran
  i32.const 1
  global.set $while/ran
  i32.const 0
  global.set $while/ran
  call $while/testContinue
  global.get $while/ran
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 113
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $while/ran
  call $while/testNestedContinue
  global.get $while/ran
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 132
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $while/ran
  call $while/testRef
  global.get $while/ran
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 148
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $while/ran
  call $while/testRefAutorelease
  global.get $while/ran
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 168
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start (; 25 ;)
  global.get $~started
  if
   return
  else
   i32.const 1
   global.set $~started
  end
  call $start:while
 )
 (func $~lib/rt/pure/decrement (; 26 ;) (param $0 i32)
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
   i32.const 176
   i32.const 122
   i32.const 13
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
    i32.const 176
    i32.const 126
    i32.const 17
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $0
   i32.load
   i32.const 1
   i32.or
   i32.store
   global.get $~lib/rt/tlsf/ROOT
   local.get $0
   call $~lib/rt/tlsf/insertBlock
   local.get $0
   call $~lib/rt/rtrace/onfree
  else
   local.get $1
   i32.const 0
   i32.le_u
   if
    i32.const 0
    i32.const 176
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
 (func $~lib/rt/__visit_members (; 27 ;) (param $0 i32)
  block $switch$1$default
   block $switch$1$case$4
    block $switch$1$case$2
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     br_table $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$2 $switch$1$default
    end
    return
   end
   local.get $0
   i32.load
   local.tee $0
   if
    local.get $0
    i32.const 208
    i32.ge_u
    if
     local.get $0
     i32.const 16
     i32.sub
     call $~lib/rt/pure/decrement
    end
   end
   return
  end
  unreachable
 )
)
