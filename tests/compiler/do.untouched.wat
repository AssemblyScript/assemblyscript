(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "rtrace" "onalloc" (func $~lib/rt/rtrace/onalloc (param i32)))
 (import "rtrace" "onincrement" (func $~lib/rt/rtrace/onincrement (param i32)))
 (import "rtrace" "ondecrement" (func $~lib/rt/rtrace/ondecrement (param i32)))
 (import "rtrace" "onfree" (func $~lib/rt/rtrace/onfree (param i32)))
 (memory $0 1)
 (data (i32.const 16) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00d\00o\00.\00t\00s\00")
 (data (i32.const 48) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00")
 (data (i32.const 96) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00")
 (data (i32.const 160) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s\00")
 (table $0 1 funcref)
 (global $do/ran (mut i32) (i32.const 0))
 (global $~lib/rt/common/root (mut i32) (i32.const 0))
 (global $~lib/rt/common/main (mut i32) (i32.const 0))
 (global $~lib/ASC_LOW_MEMORY_LIMIT i32 (i32.const 0))
 (global $~lib/gc/gc.auto (mut i32) (i32.const 1))
 (global $~started (mut i32) (i32.const 0))
 (global $~lib/heap/__heap_base i32 (i32.const 208))
 (export "_start" (func $~start))
 (export "memory" (memory $0))
 (func $do/testSimple
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 10
  local.set $0
  i32.const 0
  local.set $1
  loop $do-continue|0
   local.get $0
   i32.const 1
   i32.sub
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.set $1
   local.get $0
   local.set $2
   local.get $2
   br_if $do-continue|0
  end
  local.get $0
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 10
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 11
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $do/ran
 )
 (func $do/testEmpty
  (local $0 i32)
  (local $1 i32)
  i32.const 10
  local.set $0
  loop $do-continue|0
   nop
   local.get $0
   local.tee $1
   i32.const 1
   i32.sub
   local.set $0
   local.get $1
   local.set $1
   local.get $1
   br_if $do-continue|0
  end
  local.get $0
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 21
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $do/ran
 )
 (func $do/testNested
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 10
  local.set $0
  i32.const 0
  local.set $1
  i32.const 0
  local.set $2
  loop $do-continue|0
   local.get $0
   i32.const 1
   i32.sub
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.set $1
   loop $do-continue|1
    local.get $0
    i32.const 1
    i32.sub
    local.set $0
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $0
    local.set $3
    local.get $3
    br_if $do-continue|1
   end
   local.get $0
   i32.const 0
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 32
    i32.const 39
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   i32.const 9
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 32
    i32.const 40
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.set $3
   local.get $3
   br_if $do-continue|0
  end
  local.get $0
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 42
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 43
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 44
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $do/ran
 )
 (func $do/testAlwaysTrue
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  local.set $0
  block $do-break|0
   loop $do-continue|0
    local.get $0
    i32.const 1
    i32.add
    local.tee $0
    i32.const 10
    i32.eq
    if
     br $do-break|0
    end
    i32.const 1
    local.set $1
    local.get $1
    br_if $do-continue|0
   end
  end
  local.get $0
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 56
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $do/ran
 )
 (func $do/testAlwaysTrueNeverBreaks (result i32)
  (local $0 i32)
  i32.const 0
  local.set $0
  loop $do-continue|0
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   i32.const 10
   i32.eq
   if
    local.get $0
    return
   end
   i32.const 1
   drop
   br $do-continue|0
  end
  unreachable
 )
 (func $do/testAlwaysFalse
  (local $0 i32)
  i32.const 0
  local.set $0
  loop $do-continue|0
   local.get $0
   i32.const 1
   i32.add
   local.set $0
   i32.const 0
   drop
  end
  local.get $0
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 77
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $do/ran
 )
 (func $do/testAlwaysBreaks
  (local $0 i32)
  i32.const 0
  local.set $0
  block $do-break|0
   loop $do-continue|0
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $do-break|0
   end
   unreachable
  end
  local.get $0
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 90
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $do/ran
 )
 (func $do/testAlwaysReturns
  (local $0 i32)
  i32.const 0
  local.set $0
  loop $do-continue|0
   local.get $0
   i32.const 1
   i32.add
   local.set $0
   i32.const 1
   global.set $do/ran
   return
  end
  unreachable
 )
 (func $do/testContinue
  (local $0 i32)
  i32.const 0
  local.set $0
  block $do-break|0
   loop $do-continue|0
    local.get $0
    i32.const 1
    i32.add
    local.tee $0
    i32.const 10
    i32.eq
    if
     br $do-break|0
    end
    br $do-continue|0
   end
   unreachable
  end
  local.get $0
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 116
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $do/ran
 )
 (func $do/testNestedContinue
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  local.set $0
  i32.const 0
  local.set $1
  block $do-break|0
   loop $do-continue|0
    local.get $0
    i32.const 1
    i32.add
    local.tee $0
    i32.const 10
    i32.eq
    if
     br $do-break|0
    end
    block $do-break|1
     loop $do-continue|1
      local.get $1
      i32.const 1
      i32.add
      local.tee $1
      i32.const 10
      i32.rem_s
      i32.const 0
      i32.eq
      if
       br $do-break|1
      end
      br $do-continue|1
     end
     unreachable
    end
    br $do-continue|0
   end
   unreachable
  end
  local.get $0
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 134
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 90
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 135
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $do/ran
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32)
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
  i32.load
  local.set $1
  i32.const 1
  drop
  local.get $1
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 274
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $2
  i32.const 1
  drop
  local.get $2
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
   i32.const 276
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $3
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $4
  else
   i32.const 31
   local.get $2
   i32.clz
   i32.sub
   local.set $3
   local.get $2
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $4
   local.get $3
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $3
  end
  i32.const 1
  drop
  local.get $3
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
   i32.const 289
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=16
  local.set $5
  local.get $0
  i32.load offset=20
  local.set $6
  local.get $5
  if
   local.get $5
   local.get $6
   i32.store offset=20
  end
  local.get $6
  if
   local.get $6
   local.get $5
   i32.store offset=16
  end
  local.get $0
  local.get $3
  local.set $8
  local.get $4
  local.set $7
  global.get $~lib/rt/common/root
  local.get $8
  i32.const 4
  i32.shl
  local.get $7
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=128
  i32.eq
  if
   local.get $3
   local.set $9
   local.get $4
   local.set $8
   local.get $6
   local.set $7
   global.get $~lib/rt/common/root
   local.get $9
   i32.const 4
   i32.shl
   local.get $8
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $7
   i32.store offset=128
   local.get $6
   i32.eqz
   if
    local.get $3
    local.set $7
    global.get $~lib/rt/common/root
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=32
    local.set $7
    local.get $3
    local.set $9
    local.get $7
    i32.const 1
    local.get $4
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $7
    local.set $8
    global.get $~lib/rt/common/root
    local.get $9
    i32.const 2
    i32.shl
    i32.add
    local.get $8
    i32.store offset=32
    local.get $7
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
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  i32.const 1
  drop
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 202
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  local.set $1
  i32.const 1
  drop
  local.get $1
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 204
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $2
  local.get $2
  i32.const 16
  i32.add
  local.get $2
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  local.set $3
  local.get $3
  i32.load
  local.set $4
  local.get $4
  i32.const 1
  i32.and
  if
   local.get $1
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.add
   local.get $4
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $2
   local.get $2
   i32.const 1073741808
   i32.lt_u
   if
    local.get $3
    call $~lib/rt/tlsf/removeBlock
    local.get $0
    local.get $1
    i32.const 3
    i32.and
    local.get $2
    i32.or
    local.tee $1
    i32.store
    local.get $0
    local.set $5
    local.get $5
    i32.const 16
    i32.add
    local.get $5
    i32.load
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    local.set $3
    local.get $3
    i32.load
    local.set $4
   end
  end
  local.get $1
  i32.const 2
  i32.and
  if
   local.get $0
   local.set $5
   local.get $5
   i32.const 4
   i32.sub
   i32.load
   local.set $5
   local.get $5
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
    i32.const 64
    i32.const 225
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.add
   local.get $1
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $6
   local.get $6
   i32.const 1073741808
   i32.lt_u
   if
    local.get $5
    call $~lib/rt/tlsf/removeBlock
    local.get $5
    local.get $2
    i32.const 3
    i32.and
    local.get $6
    i32.or
    local.tee $1
    i32.store
    local.get $5
    local.set $0
   end
  end
  local.get $3
  local.get $4
  i32.const 2
  i32.or
  i32.store
  local.get $1
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $7
  i32.const 1
  drop
  local.get $7
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $7
   i32.const 1073741808
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 240
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  drop
  local.get $0
  i32.const 16
  i32.add
  local.get $7
  i32.add
  local.get $3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
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
  local.get $7
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $8
   local.get $7
   i32.const 4
   i32.shr_u
   local.set $9
  else
   i32.const 31
   local.get $7
   i32.clz
   i32.sub
   local.set $8
   local.get $7
   local.get $8
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $9
   local.get $8
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $8
  end
  i32.const 1
  drop
  local.get $8
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $9
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 257
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  local.set $2
  local.get $9
  local.set $5
  global.get $~lib/rt/common/root
  local.get $2
  i32.const 4
  i32.shl
  local.get $5
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=128
  local.set $10
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  local.get $10
  i32.store offset=20
  local.get $10
  if
   local.get $10
   local.get $0
   i32.store offset=16
  end
  local.get $8
  local.set $2
  local.get $9
  local.set $5
  local.get $0
  local.set $6
  global.get $~lib/rt/common/root
  local.get $2
  i32.const 4
  i32.shl
  local.get $5
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $6
  i32.store offset=128
  global.get $~lib/rt/common/root
  global.get $~lib/rt/common/root
  i32.load offset=8
  i32.const 1
  local.get $8
  i32.shl
  i32.or
  i32.store offset=8
  local.get $8
  local.set $2
  local.get $8
  local.set $6
  global.get $~lib/rt/common/root
  local.get $6
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=32
  i32.const 1
  local.get $9
  i32.shl
  i32.or
  local.set $5
  global.get $~lib/rt/common/root
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $5
  i32.store offset=32
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 1
  drop
  local.get $0
  local.get $1
  i32.le_u
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
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 383
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/common/root
  i32.load offset=1600
  local.set $2
  i32.const 0
  local.set $3
  local.get $2
  if
   i32.const 1
   drop
   local.get $0
   local.get $2
   i32.const 16
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 64
    i32.const 393
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 16
   i32.sub
   local.get $2
   i32.eq
   if
    local.get $0
    i32.const 16
    i32.sub
    local.set $0
    local.get $2
    i32.load
    local.set $3
   else
    nop
   end
  else
   i32.const 1
   drop
   local.get $0
   global.get $~lib/rt/common/root
   i32.const 1604
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 64
    i32.const 405
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $1
  local.get $0
  i32.sub
  local.set $4
  local.get $4
  i32.const 16
  i32.const 16
  i32.add
  i32.const 16
  i32.add
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $4
  i32.const 16
  i32.const 1
  i32.shl
  i32.sub
  local.set $5
  local.get $0
  local.set $6
  local.get $6
  local.get $5
  i32.const 1
  i32.or
  local.get $3
  i32.const 2
  i32.and
  i32.or
  i32.store
  local.get $6
  i32.const 0
  i32.store offset=16
  local.get $6
  i32.const 0
  i32.store offset=20
  local.get $0
  local.get $4
  i32.add
  i32.const 16
  i32.sub
  local.set $2
  local.get $2
  i32.const 0
  i32.const 2
  i32.or
  i32.store
  local.get $2
  local.set $7
  global.get $~lib/rt/common/root
  local.get $7
  i32.store offset=1600
  local.get $6
  call $~lib/rt/tlsf/insertBlock
  i32.const 1
 )
 (func $~lib/rt/tlsf/maybeInitialize
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/rt/common/root
  i32.load
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 1
   global.set $~lib/rt/common/main
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
   i32.const 1604
   i32.add
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $1
   local.get $1
   local.get $0
   i32.gt_s
   if (result i32)
    local.get $1
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
   i32.const 0
   local.set $2
   global.get $~lib/rt/common/root
   local.get $2
   i32.store offset=1600
   i32.const 0
   local.set $2
   loop $for-loop|0
    local.get $2
    i32.const 23
    i32.lt_u
    local.set $3
    local.get $3
    if
     local.get $2
     local.set $5
     i32.const 0
     local.set $4
     global.get $~lib/rt/common/root
     local.get $5
     i32.const 2
     i32.shl
     i32.add
     local.get $4
     i32.store offset=32
     i32.const 0
     local.set $5
     loop $for-loop|1
      local.get $5
      i32.const 16
      i32.lt_u
      local.set $4
      local.get $4
      if
       local.get $2
       local.set $8
       local.get $5
       local.set $7
       i32.const 0
       local.set $6
       global.get $~lib/rt/common/root
       local.get $8
       i32.const 4
       i32.shl
       local.get $7
       i32.add
       i32.const 2
       i32.shl
       i32.add
       local.get $6
       i32.store offset=128
       local.get $5
       i32.const 1
       i32.add
       local.set $5
       br $for-loop|1
      end
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   global.get $~lib/rt/common/root
   i32.const 1604
   i32.add
   i32.const 15
   i32.add
   i32.const 15
   i32.const -1
   i32.xor
   i32.and
   local.set $2
   i32.const 0
   drop
   local.get $2
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   drop
  end
 )
 (func $~lib/rt/tlsf/prepareSize (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741808
  i32.ge_u
  if
   i32.const 112
   i32.const 64
   i32.const 458
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.tee $1
  i32.const 16
  local.tee $2
  local.get $1
  local.get $2
  i32.gt_u
  select
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $1
   local.get $0
   i32.const 4
   i32.shr_u
   local.set $2
  else
   local.get $0
   i32.const 536870904
   i32.lt_u
   if (result i32)
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
   else
    local.get $0
   end
   local.set $3
   i32.const 31
   local.get $3
   i32.clz
   i32.sub
   local.set $1
   local.get $3
   local.get $1
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $2
   local.get $1
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $1
  end
  i32.const 1
  drop
  local.get $1
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
   i32.const 335
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.set $3
  global.get $~lib/rt/common/root
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=32
  i32.const 0
  i32.const -1
  i32.xor
  local.get $2
  i32.shl
  i32.and
  local.set $4
  i32.const 0
  local.set $5
  local.get $4
  i32.eqz
  if
   global.get $~lib/rt/common/root
   i32.load offset=8
   i32.const 0
   i32.const -1
   i32.xor
   local.get $1
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.set $3
   local.get $3
   i32.eqz
   if
    i32.const 0
    local.set $5
   else
    local.get $3
    i32.ctz
    local.set $1
    local.get $1
    local.set $6
    global.get $~lib/rt/common/root
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=32
    local.set $4
    i32.const 1
    drop
    local.get $4
    i32.eqz
    if
     i32.const 0
     i32.const 64
     i32.const 348
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.set $7
    local.get $4
    i32.ctz
    local.set $6
    global.get $~lib/rt/common/root
    local.get $7
    i32.const 4
    i32.shl
    local.get $6
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=128
    local.set $5
   end
  else
   local.get $1
   local.set $7
   local.get $4
   i32.ctz
   local.set $6
   global.get $~lib/rt/common/root
   local.get $7
   i32.const 4
   i32.shl
   local.get $6
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=128
   local.set $5
  end
  local.get $5
 )
 (func $~lib/rt/tlsf/growMemory (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 0
  drop
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
   i32.const 1
   i32.sub
   i32.add
   local.set $0
  end
  memory.size
  local.set $1
  local.get $0
  i32.const 16
  local.get $1
  i32.const 16
  i32.shl
  i32.const 16
  i32.sub
  global.get $~lib/rt/common/root
  i32.load offset=1600
  i32.ne
  i32.shl
  i32.add
  local.set $0
  local.get $0
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $2
  local.get $1
  local.tee $3
  local.get $2
  local.tee $4
  local.get $3
  local.get $4
  i32.gt_s
  select
  local.set $5
  local.get $5
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
  memory.size
  local.set $6
  local.get $1
  i32.const 16
  i32.shl
  local.get $6
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
 )
 (func $~lib/rt/tlsf/prepareBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load
  local.set $2
  i32.const 1
  drop
  local.get $1
  i32.const 15
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 362
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $1
  i32.sub
  local.set $3
  local.get $3
  i32.const 16
  i32.const 16
  i32.add
  i32.ge_u
  if
   local.get $0
   local.get $1
   local.get $2
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $0
   i32.const 16
   i32.add
   local.get $1
   i32.add
   local.set $4
   local.get $4
   local.get $3
   i32.const 16
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $4
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $0
   local.get $2
   i32.const 1
   i32.const -1
   i32.xor
   i32.and
   i32.store
   local.get $0
   local.set $4
   local.get $4
   i32.const 16
   i32.add
   local.get $4
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.get $0
   local.set $4
   local.get $4
   i32.const 16
   i32.add
   local.get $4
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
   i32.store
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1
  drop
  global.get $~lib/rt/common/root
  i32.load
  i32.const 2
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 492
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/tlsf/prepareSize
  local.set $2
  local.get $2
  call $~lib/rt/tlsf/searchBlock
  local.set $3
  local.get $3
  i32.eqz
  if
   global.get $~lib/gc/gc.auto
   if
    i32.const 1
    drop
    global.get $~lib/rt/common/root
    global.get $~lib/rt/common/root
    i32.load
    i32.const 2
    i32.or
    i32.store
    call $~lib/rt/pure/__collect
    i32.const 1
    drop
    global.get $~lib/rt/common/root
    global.get $~lib/rt/common/root
    i32.load
    i32.const 2
    i32.const -1
    i32.xor
    i32.and
    i32.store
    local.get $2
    call $~lib/rt/tlsf/searchBlock
    local.set $3
    local.get $3
    i32.eqz
    if
     local.get $2
     call $~lib/rt/tlsf/growMemory
     local.get $2
     call $~lib/rt/tlsf/searchBlock
     local.set $3
     i32.const 1
     drop
     local.get $3
     i32.eqz
     if
      i32.const 0
      i32.const 64
      i32.const 504
      i32.const 20
      call $~lib/builtins/abort
      unreachable
     end
    end
   else
    local.get $2
    call $~lib/rt/tlsf/growMemory
    local.get $2
    call $~lib/rt/tlsf/searchBlock
    local.set $3
    i32.const 1
    drop
    local.get $3
    i32.eqz
    if
     i32.const 0
     i32.const 64
     i32.const 509
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
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
   i32.const 64
   i32.const 512
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 0
  i32.store offset=4
  local.get $3
  local.get $1
  i32.store offset=8
  local.get $3
  local.get $0
  i32.store offset=12
  local.get $3
  call $~lib/rt/tlsf/removeBlock
  local.get $3
  local.get $2
  call $~lib/rt/tlsf/prepareBlock
  i32.const 1
  drop
  local.get $3
  call $~lib/rt/rtrace/onalloc
  local.get $3
 )
 (func $~lib/rt/tlsf/__alloc (param $0 i32) (param $1 i32) (result i32)
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
 )
 (func $~lib/rt/pure/increment (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 268435455
  i32.const -1
  i32.xor
  i32.and
  local.get $1
  i32.const 1
  i32.add
  i32.const 268435455
  i32.const -1
  i32.xor
  i32.and
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 109
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  i32.store offset=4
  i32.const 1
  drop
  local.get $0
  call $~lib/rt/rtrace/onincrement
  i32.const 1
  drop
  local.get $0
  i32.load
  i32.const 1
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 112
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/rt/pure/__retain (param $0 i32) (result i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/increment
  end
  local.get $0
 )
 (func $do/Ref#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 3
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
 )
 (func $~lib/rt/pure/__release (param $0 i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $do/testRef
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  local.set $0
  i32.const 0
  call $do/Ref#constructor
  local.set $1
  loop $do-continue|0
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   i32.const 10
   i32.eq
   if
    i32.const 0
    local.tee $2
    local.get $1
    local.tee $3
    i32.ne
    if
     local.get $2
     call $~lib/rt/pure/__retain
     local.set $2
     local.get $3
     call $~lib/rt/pure/__release
    end
    local.get $2
    local.set $1
   else
    i32.const 0
    call $do/Ref#constructor
    local.set $3
    local.get $1
    call $~lib/rt/pure/__release
    local.get $3
    local.set $1
   end
   local.get $1
   local.set $3
   local.get $3
   br_if $do-continue|0
  end
  local.get $0
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 150
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 151
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $do/ran
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $do/getRef (result i32)
  i32.const 0
  call $do/Ref#constructor
 )
 (func $do/testRefAutorelease
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  local.set $0
  i32.const 0
  call $do/Ref#constructor
  local.set $1
  block $do-break|0
   loop $do-continue|0
    local.get $0
    i32.const 1
    i32.add
    local.tee $0
    i32.const 10
    i32.eq
    if
     i32.const 0
     local.tee $2
     local.get $1
     local.tee $3
     i32.ne
     if
      local.get $2
      call $~lib/rt/pure/__retain
      local.set $2
      local.get $3
      call $~lib/rt/pure/__release
     end
     local.get $2
     local.set $1
     br $do-break|0
    end
    call $do/getRef
    local.tee $2
    local.set $3
    local.get $2
    call $~lib/rt/pure/__release
    local.get $3
    br_if $do-continue|0
   end
  end
  local.get $0
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 170
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 171
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $do/ran
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $start:do
  i32.const 0
  global.set $do/ran
  call $do/testSimple
  global.get $do/ran
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 16
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $do/ran
  call $do/testEmpty
  global.get $do/ran
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 26
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $do/ran
  call $do/testNested
  global.get $do/ran
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 49
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $do/ran
  call $do/testAlwaysTrue
  global.get $do/ran
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 61
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $do/testAlwaysTrueNeverBreaks
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 70
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $do/ran
  call $do/testAlwaysFalse
  global.get $do/ran
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 82
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $do/ran
  call $do/testAlwaysBreaks
  global.get $do/ran
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 95
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $do/ran
  call $do/testAlwaysReturns
  global.get $do/ran
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 108
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $do/ran
  call $do/testContinue
  global.get $do/ran
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 121
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $do/ran
  call $do/testNestedContinue
  global.get $do/ran
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 140
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $do/ran
  global.get $~lib/heap/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/rt/common/root
  call $do/testRef
  global.get $do/ran
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 156
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $do/ran
  call $do/testRefAutorelease
  global.get $do/ran
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 176
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  global.get $~started
  if
   return
  else
   i32.const 1
   global.set $~started
  end
  call $start:do
 )
 (func $~lib/rt/pure/__collect
  i32.const 1
  drop
  return
 )
 (func $~lib/rt/tlsf/freeBlock (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load
  local.set $1
  local.get $0
  local.get $1
  i32.const 1
  i32.or
  i32.store
  local.get $0
  call $~lib/rt/tlsf/insertBlock
  i32.const 1
  drop
  local.get $0
  call $~lib/rt/rtrace/onfree
 )
 (func $~lib/rt/pure/decrement (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 268435455
  i32.and
  local.set $2
  i32.const 1
  drop
  local.get $0
  call $~lib/rt/rtrace/ondecrement
  i32.const 1
  drop
  local.get $0
  i32.load
  i32.const 1
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 122
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  i32.eq
  if
   local.get $0
   i32.const 16
   i32.add
   i32.const 1
   call $~lib/rt/__visit_members
   i32.const 1
   drop
   i32.const 1
   drop
   local.get $1
   i32.const -2147483648
   i32.and
   i32.eqz
   i32.eqz
   if
    i32.const 0
    i32.const 176
    i32.const 126
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   call $~lib/rt/tlsf/freeBlock
  else
   i32.const 1
   drop
   local.get $2
   i32.const 0
   i32.gt_u
   i32.eqz
   if
    i32.const 0
    i32.const 176
    i32.const 136
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1
   drop
   local.get $0
   local.get $1
   i32.const 268435455
   i32.const -1
   i32.xor
   i32.and
   local.get $2
   i32.const 1
   i32.sub
   i32.or
   i32.store offset=4
  end
 )
 (func $~lib/rt/pure/__visit (param $0 i32) (param $1 i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.lt_u
  if
   return
  end
  i32.const 1
  drop
  i32.const 1
  drop
  local.get $1
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 176
   i32.const 69
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.sub
  call $~lib/rt/pure/decrement
 )
 (func $~lib/rt/__visit_members (param $0 i32) (param $1 i32)
  (local $2 i32)
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
   local.tee $2
   if
    local.get $2
    local.get $1
    call $~lib/rt/pure/__visit
   end
   return
  end
  unreachable
 )
)
