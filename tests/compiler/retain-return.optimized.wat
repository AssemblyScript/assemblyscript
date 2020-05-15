(module
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1024) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1072) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1136) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s")
 (global $~lib/rt/common/root (mut i32) (i32.const 0))
 (global $retain-return/ref (mut i32) (i32.const 0))
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
   i32.const 1040
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
   i32.const 1040
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
   i32.const 1040
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
   i32.const 1040
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
   i32.const 1040
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
    i32.const 1040
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
   i32.const 1040
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
   i32.const 1040
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
   i32.const 1040
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
   i32.const 1040
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
    i32.const 1040
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
    i32.const 1040
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
 (func $~lib/rt/tlsf/searchBlock (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/rt/common/root
  i32.load offset=32
  i32.const -2
  i32.and
  local.tee $1
  if (result i32)
   global.get $~lib/rt/common/root
   local.get $1
   i32.ctz
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=128
  else
   global.get $~lib/rt/common/root
   i32.load offset=8
   i32.const -2
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
     i32.const 1040
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
 (func $~lib/rt/tlsf/allocateBlock (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/common/root
  i32.load
  i32.const 2
  i32.and
  if
   i32.const 0
   i32.const 1040
   i32.const 492
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/rt/tlsf/searchBlock
  local.tee $0
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
   call $~lib/rt/tlsf/searchBlock
   local.tee $0
   i32.eqz
   if
    i32.const 16
    memory.size
    local.tee $1
    i32.const 16
    i32.shl
    i32.const 16
    i32.sub
    global.get $~lib/rt/common/root
    i32.load offset=1600
    i32.ne
    i32.shl
    i32.const 65551
    i32.add
    i32.const -65536
    i32.and
    i32.const 16
    i32.shr_u
    local.set $0
    local.get $1
    local.get $0
    local.get $1
    local.get $0
    i32.gt_s
    select
    memory.grow
    i32.const 0
    i32.lt_s
    if
     local.get $0
     memory.grow
     i32.const 0
     i32.lt_s
     if
      unreachable
     end
    end
    local.get $1
    i32.const 16
    i32.shl
    memory.size
    i32.const 16
    i32.shl
    call $~lib/rt/tlsf/addMemory
    call $~lib/rt/tlsf/searchBlock
    local.tee $0
    i32.eqz
    if
     i32.const 0
     i32.const 1040
     i32.const 504
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
   end
  end
  local.get $0
  i32.load
  i32.const -4
  i32.and
  i32.const 16
  i32.lt_u
  if
   i32.const 0
   i32.const 1040
   i32.const 512
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 3
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  i32.load
  local.tee $1
  i32.const -4
  i32.and
  i32.const 16
  i32.sub
  local.tee $2
  i32.const 32
  i32.ge_u
  if
   local.get $0
   local.get $1
   i32.const 2
   i32.and
   i32.const 16
   i32.or
   i32.store
   local.get $0
   i32.const 32
   i32.add
   local.tee $1
   local.get $2
   i32.const 16
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $1
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $0
   local.get $1
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
  local.get $0
 )
 (func $~lib/rt/pure/__retain (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1184
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
   i32.load
   i32.const 1
   i32.and
   if
    i32.const 0
    i32.const 1152
    i32.const 112
    i32.const 14
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
 )
 (func $retain-return/Ref#constructor (result i32)
  call $~lib/rt/tlsf/maybeInitialize
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
  call $~lib/rt/pure/__retain
 )
 (func $~lib/rt/pure/__release (param $0 i32)
  local.get $0
  i32.const 1184
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $~start
  (local $0 i32)
  global.get $~started
  if
   return
  else
   i32.const 1
   global.set $~started
  end
  i32.const 1184
  global.set $~lib/rt/common/root
  call $retain-return/Ref#constructor
  call $~lib/rt/pure/__release
  call $retain-return/Ref#constructor
  call $~lib/rt/pure/__release
  call $retain-return/Ref#constructor
  call $~lib/rt/pure/__release
  call $retain-return/Ref#constructor
  call $~lib/rt/pure/__release
  call $retain-return/Ref#constructor
  global.set $retain-return/ref
  call $retain-return/Ref#constructor
  call $~lib/rt/pure/__release
  call $retain-return/Ref#constructor
  call $~lib/rt/pure/__release
  call $retain-return/Ref#constructor
  call $~lib/rt/pure/__release
  call $retain-return/Ref#constructor
  call $~lib/rt/pure/__release
  call $retain-return/Ref#constructor
  call $~lib/rt/pure/__release
  call $retain-return/Ref#constructor
  call $~lib/rt/pure/__release
  global.get $retain-return/ref
  local.tee $0
  if
   local.get $0
   call $~lib/rt/pure/__release
  end
  i32.const 0
  global.set $retain-return/ref
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
  i32.load
  i32.const 1
  i32.and
  if
   i32.const 0
   i32.const 1152
   i32.const 122
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.eq
  if
   block $__inlined_func$~lib/rt/__visit_members
    block $switch$1$default
     block $switch$1$case$4
      local.get $0
      i32.const 8
      i32.add
      i32.load
      br_table $__inlined_func$~lib/rt/__visit_members $__inlined_func$~lib/rt/__visit_members $switch$1$case$4 $__inlined_func$~lib/rt/__visit_members $switch$1$default
     end
     local.get $0
     i32.load offset=16
     local.tee $1
     if
      local.get $1
      i32.const 1184
      i32.ge_u
      if
       local.get $1
       i32.const 16
       i32.sub
       call $~lib/rt/pure/decrement
      end
     end
     br $__inlined_func$~lib/rt/__visit_members
    end
    unreachable
   end
   local.get $2
   i32.const -2147483648
   i32.and
   if
    i32.const 0
    i32.const 1152
    i32.const 126
    i32.const 18
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
  else
   local.get $1
   i32.const 0
   i32.le_u
   if
    i32.const 0
    i32.const 1152
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
)
