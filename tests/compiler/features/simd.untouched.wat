(module
 (type $none_=>_none (func))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $none_=>_v128 (func (result v128)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 12) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 76) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data (i32.const 140) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00 \00\00\00f\00e\00a\00t\00u\00r\00e\00s\00/\00s\00i\00m\00d\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 1 funcref)
 (global $~lib/ASC_FEATURE_SIMD i32 (i32.const 1))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/ASC_LOW_MEMORY_LIMIT i32 (i32.const 0))
 (global $~lib/builtins/i16.MAX_VALUE i32 (i32.const 32767))
 (global $~lib/builtins/i8.MAX_VALUE i32 (i32.const 127))
 (global $~lib/builtins/u8.MAX_VALUE i32 (i32.const 255))
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $~lib/builtins/u16.MAX_VALUE i32 (i32.const 65535))
 (global $~lib/memory/__data_end i32 (i32.const 204))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16588))
 (global $~lib/memory/__heap_base i32 (i32.const 16588))
 (export "memory" (memory $0))
 (start $~start)
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
   i32.const 32
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
   i32.const 32
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
   i32.const 32
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
   i32.const 32
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
   i32.const 32
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
    i32.const 32
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
   i32.const 32
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
   i32.const 32
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
   i32.const 32
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
   i32.const 32
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
    i32.const 32
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
    i32.const 32
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
   i32.const 96
   i32.const 32
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
   i32.const 32
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
     i32.const 32
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
   i32.const 32
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
    i32.const 32
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
   i32.const 32
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
   i32.const 32
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
 (func $features/simd/test_v128
  (local $0 i32)
  v128.const i32x4 0x04030201 0x08070605 0x0c0b0a09 0x100f0e0d
  v128.const i32x4 0x04030201 0x08070605 0x0c0b0a09 0x100f0e0d
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x04030201 0x08070605 0x0c0b0a09 0x100f0e0d
  v128.const i32x4 0x04030202 0x08070605 0x0c0b0a09 0x100f0e0d
  i8x16.ne
  i8x16.any_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x04030201 0x08070605 0x0c0b0a09 0x100f0e0d
  v128.const i32x4 0x01010101 0x01010101 0x01010101 0x01010101
  v128.and
  v128.const i32x4 0x00010001 0x00010001 0x00010001 0x00010001
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x04030201 0x08070605 0x0c0b0a09 0x100f0e0d
  v128.const i32x4 0x01010101 0x01010101 0x01010101 0x01010101
  v128.or
  v128.const i32x4 0x05030301 0x09070705 0x0d0b0b09 0x110f0f0d
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x04030201 0x08070605 0x0c0b0a09 0x100f0e0d
  v128.const i32x4 0x01010101 0x01010101 0x01010101 0x01010101
  v128.xor
  v128.const i32x4 0x05020300 0x09060704 0x0d0a0b08 0x110e0f0c
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x04030201 0x08070605 0x0c0b0a09 0x100f0e0d
  v128.not
  v128.const i32x4 0xfbfcfdfe 0xf7f8f9fa 0xf3f4f5f6 0xeff0f1f2
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x04030201 0x08070605 0x0c0b0a09 0x100f0e0d
  v128.const i32x4 0x0d0e0f10 0x090a0b0c 0x05060708 0x01020304
  v128.const i32x4 0xff00ff00 0xff00ff00 0xff00ff00 0xff00ff00
  v128.bitselect
  v128.const i32x4 0x040e0210 0x080a060c 0x0c060a08 0x10020e04
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const 64
  call $~lib/rt/tlsf/__alloc
  local.set $0
  local.get $0
  local.get $0
  v128.load offset=16
  v128.store offset=32
  local.get $0
  call $~lib/rt/tlsf/__free
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  local.set $0
  local.get $0
  i32.const 42
  i32.store8
  local.get $0
  v8x16.load_splat
  v128.const i32x4 0x2a2a2a2a 0x2a2a2a2a 0x2a2a2a2a 0x2a2a2a2a
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 59
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/tlsf/__free
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  local.set $0
  local.get $0
  i32.const 42
  i32.store16
  local.get $0
  v16x8.load_splat
  v128.const i32x4 0x002a002a 0x002a002a 0x002a002a 0x002a002a
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 69
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/tlsf/__free
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  local.set $0
  local.get $0
  i32.const 42
  i32.store
  local.get $0
  v32x4.load_splat
  v128.const i32x4 0x0000002a 0x0000002a 0x0000002a 0x0000002a
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 79
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/tlsf/__free
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  local.set $0
  local.get $0
  i64.const 42
  i64.store
  local.get $0
  v64x2.load_splat
  v128.const i32x4 0x0000002a 0x00000000 0x0000002a 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 89
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/tlsf/__free
 )
 (func $features/simd/test_i8x16
  (local $0 v128)
  (local $1 v128)
  (local $2 v128)
  (local $3 v128)
  (local $4 v128)
  (local $5 v128)
  (local $6 v128)
  (local $7 v128)
  (local $8 v128)
  (local $9 v128)
  v128.const i32x4 0x04030201 0x08070605 0x0c0b0a09 0x7f0f0e0d
  local.set $0
  local.get $0
  v128.const i32x4 0x04030201 0x08070605 0x0c0b0a09 0x7f0f0e0d
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 101
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i8x16.splat
  local.set $1
  local.get $1
  v128.const i32x4 0x01010101 0x01010101 0x01010101 0x01010101
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 103
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i8x16.add
  local.set $2
  local.get $2
  v128.const i32x4 0x05040302 0x09080706 0x0d0c0b0a 0x80100f0e
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 105
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i8x16.sub
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 106
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  v128.const i32x4 0x007f7f00 0x00000000 0x00000000 0x00000000
  v128.const i32x4 0x00800080 0x00000000 0x00000000 0x00000000
  i8x16.min_s
  v128.const i32x4 0x00800080 0x00000000 0x00000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x007f7f00 0x00000000 0x00000000 0x00000000
  v128.const i32x4 0x00800080 0x00000000 0x00000000 0x00000000
  i8x16.min_u
  v128.const i32x4 0x007f0000 0x00000000 0x00000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x007f7f00 0x00000000 0x00000000 0x00000000
  v128.const i32x4 0x00800080 0x00000000 0x00000000 0x00000000
  i8x16.max_s
  v128.const i32x4 0x007f7f00 0x00000000 0x00000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x007f7f00 0x00000000 0x00000000 0x00000000
  v128.const i32x4 0x00800080 0x00000000 0x00000000 0x00000000
  i8x16.max_u
  v128.const i32x4 0x00807f80 0x00000000 0x00000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x04040201 0x08070605 0x0c0b0a09 0xff800e0d
  v128.const i32x4 0x04020401 0x08070605 0x0c0b0a09 0xff800e0d
  i8x16.avgr_u
  v128.const i32x4 0x04030301 0x08070605 0x0c0b0a09 0xff800e0d
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  local.get $0
  i8x16.neg
  v128.const i32x4 0xfcfdfeff 0xf8f9fafb 0xf4f5f6f7 0x81f1f2f3
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 147
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i8x16.extract_lane_s 0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 152
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i8x16.extract_lane_s 15
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const -128
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 153
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i8x16.extract_lane_u 15
  i32.const 255
  i32.and
  i32.const 128
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 154
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 17
  i8x16.replace_lane 15
  v128.const i32x4 0x05040302 0x09080706 0x0d0c0b0a 0x11100f0e
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 155
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  v8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  v128.const i32x4 0x04030201 0x08070605 0x01010101 0x01010101
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 160
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  v128.const i32x4 0x7f7f7f7e 0x7f7f7f7f 0x7f7f7f7f 0x7f7f7f7f
  i32.const 2
  i8x16.splat
  i8x16.add_saturate_s
  i32.const 127
  i8x16.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0xfffffffe 0xffffffff 0xffffffff 0xffffffff
  i32.const 2
  i8x16.splat
  i8x16.add_saturate_u
  i32.const -1
  i8x16.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x80808081 0x80808080 0x80808080 0x80808080
  i32.const 2
  i8x16.splat
  i8x16.sub_saturate_s
  i32.const -128
  i8x16.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000001 0x00000000 0x00000000 0x00000000
  i32.const 2
  i8x16.splat
  i8x16.sub_saturate_u
  i32.const 0
  i8x16.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const 1
  i8x16.splat
  i32.const 1
  i8x16.shl
  i32.const 2
  i8x16.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const -2
  i8x16.splat
  i32.const 1
  i8x16.shr_s
  i32.const -1
  i8x16.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const -1
  i8x16.splat
  i32.const 1
  i8x16.shr_u
  i32.const 127
  i8x16.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000001 0x00000000 0x00000000 0x00000000
  i8x16.any_true
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  drop
  i32.const 1
  i8x16.splat
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  drop
  i32.const 0
  i8x16.splat
  i32.const 1
  i8x16.replace_lane 0
  local.set $3
  i32.const 0
  i8x16.splat
  i32.const -1
  i8x16.replace_lane 0
  local.set $4
  local.get $4
  local.set $5
  local.get $4
  v128.not
  local.set $6
  local.get $4
  local.get $3
  i8x16.eq
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 198
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $3
  i8x16.ne
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 199
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $3
  i8x16.lt_s
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 200
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $4
  i8x16.lt_u
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 201
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $4
  i8x16.le_s
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 202
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $3
  i8x16.le_u
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 203
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $4
  i8x16.gt_s
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 204
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $3
  i8x16.gt_u
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 205
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $3
  i8x16.ge_s
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 206
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $4
  i8x16.ge_u
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 207
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/builtins/i16.MAX_VALUE
  i16x8.splat
  global.get $~lib/builtins/i16.MAX_VALUE
  i16x8.splat
  i8x16.narrow_i16x8_s
  global.get $~lib/builtins/i8.MAX_VALUE
  i8x16.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  global.get $~lib/builtins/i16.MAX_VALUE
  i16x8.splat
  global.get $~lib/builtins/i16.MAX_VALUE
  i16x8.splat
  i8x16.narrow_i16x8_u
  global.get $~lib/builtins/u8.MAX_VALUE
  i8x16.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x03020100 0x07060504 0x0b0a0908 0x0f0e0d0c
  local.set $7
  v128.const i32x4 0x13121110 0x17161514 0x1b1a1918 0x1f1e1d1c
  local.set $8
  local.get $7
  local.get $8
  v8x16.shuffle 0 17 2 19 4 21 6 23 8 25 10 27 12 29 14 31
  v128.const i32x4 0x13021100 0x17061504 0x1b0a1908 0x1f0e1d0c
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 213
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  v128.const i32x4 0x0c0d0e10 0x08090a0b 0x04050607 0x00010203
  local.set $9
  local.get $7
  local.get $9
  v8x16.swizzle
  v128.const i32x4 0x0c0d0e00 0x08090a0b 0x04050607 0x00010203
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 219
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $features/simd/test_i16x8
  (local $0 v128)
  (local $1 v128)
  (local $2 v128)
  (local $3 v128)
  (local $4 v128)
  (local $5 v128)
  (local $6 v128)
  (local $7 i32)
  v128.const i32x4 0x00020001 0x00040003 0x00060005 0x7fff0007
  local.set $0
  local.get $0
  v128.const i32x4 0x00020001 0x00040003 0x00060005 0x7fff0007
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 229
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i16x8.splat
  local.set $1
  local.get $1
  v128.const i32x4 0x00010001 0x00010001 0x00010001 0x00010001
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 231
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i16x8.add
  local.set $2
  local.get $2
  v128.const i32x4 0x00030002 0x00050004 0x00070006 0x80000008
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 233
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i16x8.sub
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 234
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i16x8.mul
  local.get $2
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 235
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  v128.const i32x4 0x7fff0000 0x00007fff 0x00000000 0x00000000
  v128.const i32x4 0x00008000 0x00008000 0x00000000 0x00000000
  i16x8.min_s
  v128.const i32x4 0x00008000 0x00008000 0x00000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x7fff0000 0x00007fff 0x00000000 0x00000000
  v128.const i32x4 0x00008000 0x00008000 0x00000000 0x00000000
  i16x8.min_u
  v128.const i32x4 0x00000000 0x00007fff 0x00000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x7fff0000 0x00007fff 0x00000000 0x00000000
  v128.const i32x4 0x00008000 0x00008000 0x00000000 0x00000000
  i16x8.max_s
  v128.const i32x4 0x7fff0000 0x00007fff 0x00000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x7fff0000 0x00007fff 0x00000000 0x00000000
  v128.const i32x4 0x00008000 0x00008000 0x00000000 0x00000000
  i16x8.max_u
  v128.const i32x4 0x7fff8000 0x00008000 0x00000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00020001 0x00040004 0x00060005 0xffff8000
  v128.const i32x4 0x00040001 0x00040002 0x00060005 0xffff8000
  i16x8.avgr_u
  v128.const i32x4 0x00030001 0x00040003 0x00060005 0xffff8000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  local.get $0
  i16x8.neg
  v128.const i32x4 0xfffeffff 0xfffcfffd 0xfffafffb 0x8001fff9
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 276
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i16x8.extract_lane_s 0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 281
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i16x8.extract_lane_s 7
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const -32768
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 282
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i16x8.extract_lane_u 7
  i32.const 65535
  i32.and
  i32.const 32768
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 283
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 9
  i16x8.replace_lane 7
  v128.const i32x4 0x00030002 0x00050004 0x00070006 0x00090008
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 284
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  v8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  v128.const i32x4 0x00020001 0x00040003 0x00010001 0x00010001
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 289
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  v128.const i32x4 0x7fff7ffe 0x7fff7fff 0x7fff7fff 0x7fff7fff
  i32.const 2
  i16x8.splat
  i16x8.add_saturate_s
  i32.const 32767
  i16x8.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0xfffffffe 0xffffffff 0xffffffff 0xffffffff
  i32.const 2
  i16x8.splat
  i16x8.add_saturate_u
  i32.const -1
  i16x8.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x80008001 0x80008000 0x80008000 0x80008000
  i32.const 2
  i16x8.splat
  i16x8.sub_saturate_s
  i32.const -32768
  i16x8.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000001 0x00000000 0x00000000 0x00000000
  i32.const 2
  i16x8.splat
  i16x8.sub_saturate_u
  i32.const 0
  i16x8.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const 1
  i16x8.splat
  i32.const 1
  i16x8.shl
  i32.const 2
  i16x8.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const -2
  i16x8.splat
  i32.const 1
  i16x8.shr_s
  i32.const -1
  i16x8.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const -1
  i16x8.splat
  i32.const 1
  i16x8.shr_u
  i32.const 32767
  i16x8.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000001 0x00000000 0x00000000 0x00000000
  i8x16.any_true
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  drop
  i32.const 1
  i16x8.splat
  i16x8.all_true
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  drop
  i32.const 0
  i16x8.splat
  i32.const 1
  i16x8.replace_lane 0
  local.set $3
  i32.const 0
  i16x8.splat
  i32.const -1
  i16x8.replace_lane 0
  local.set $4
  local.get $4
  local.set $5
  local.get $4
  v128.not
  local.set $6
  local.get $4
  local.get $3
  i16x8.eq
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 327
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $3
  i16x8.ne
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 328
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $3
  i16x8.lt_s
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 329
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $4
  i16x8.lt_u
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 330
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $4
  i16x8.le_s
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 331
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $3
  i16x8.le_u
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 332
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $4
  i16x8.gt_s
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 333
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $3
  i16x8.gt_u
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 334
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $3
  i16x8.ge_s
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 335
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $4
  i16x8.ge_u
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 336
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/builtins/i32.MAX_VALUE
  i32x4.splat
  global.get $~lib/builtins/i32.MAX_VALUE
  i32x4.splat
  i16x8.narrow_i32x4_s
  global.get $~lib/builtins/i16.MAX_VALUE
  i16x8.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  global.get $~lib/builtins/i32.MAX_VALUE
  i32x4.splat
  global.get $~lib/builtins/i32.MAX_VALUE
  i32x4.splat
  i16x8.narrow_i32x4_u
  global.get $~lib/builtins/u16.MAX_VALUE
  i16x8.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const -1
  i8x16.splat
  i32.const 0
  i8x16.replace_lane 8
  i16x8.widen_low_i8x16_s
  i32.const -1
  i16x8.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const -1
  i8x16.splat
  i32.const 0
  i8x16.replace_lane 8
  i16x8.widen_low_i8x16_u
  i32.const 255
  i16x8.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const -1
  i8x16.splat
  i32.const 0
  i8x16.replace_lane 0
  i16x8.widen_high_i8x16_s
  i32.const -1
  i16x8.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const -1
  i8x16.splat
  i32.const 0
  i8x16.replace_lane 0
  i16x8.widen_high_i8x16_u
  i32.const 255
  i16x8.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  local.set $7
  local.get $7
  i32.const 1
  i32.store8
  local.get $7
  i32.const 2
  i32.store8 offset=1
  local.get $7
  i32.const 3
  i32.store8 offset=2
  local.get $7
  i32.const 4
  i32.store8 offset=3
  local.get $7
  i32.const 5
  i32.store8 offset=4
  local.get $7
  i32.const 6
  i32.store8 offset=5
  local.get $7
  i32.const 7
  i32.store8 offset=6
  local.get $7
  i32.const -1
  i32.store8 offset=7
  local.get $7
  i16x8.load8x8_s align=1
  v128.const i32x4 0x00020001 0x00040003 0x00060005 0xffff0007
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 353
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i16x8.load8x8_u align=1
  v128.const i32x4 0x00020001 0x00040003 0x00060005 0x00ff0007
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 358
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  call $~lib/rt/tlsf/__free
 )
 (func $features/simd/test_i32x4
  (local $0 v128)
  (local $1 v128)
  (local $2 v128)
  (local $3 v128)
  (local $4 v128)
  (local $5 v128)
  (local $6 v128)
  (local $7 i32)
  v128.const i32x4 0x00000001 0x00000002 0x00000003 0x7fffffff
  local.set $0
  local.get $0
  v128.const i32x4 0x00000001 0x00000002 0x00000003 0x7fffffff
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 369
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32x4.splat
  local.set $1
  local.get $1
  v128.const i32x4 0x00000001 0x00000001 0x00000001 0x00000001
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 371
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32x4.add
  local.set $2
  local.get $2
  v128.const i32x4 0x00000002 0x00000003 0x00000004 0x80000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 373
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32x4.sub
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 374
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32x4.mul
  local.get $2
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 375
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  v128.const i32x4 0x00000000 0x7fffffff 0x7fffffff 0x00000000
  v128.const i32x4 0x80000000 0x00000000 0x80000000 0x00000000
  i32x4.min_s
  v128.const i32x4 0x80000000 0x00000000 0x80000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000000 0x7fffffff 0x7fffffff 0x00000000
  v128.const i32x4 0x80000000 0x00000000 0x80000000 0x00000000
  i32x4.min_u
  v128.const i32x4 0x00000000 0x00000000 0x7fffffff 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000000 0x7fffffff 0x7fffffff 0x00000000
  v128.const i32x4 0x80000000 0x00000000 0x80000000 0x00000000
  i32x4.max_s
  v128.const i32x4 0x00000000 0x7fffffff 0x7fffffff 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000000 0x7fffffff 0x7fffffff 0x00000000
  v128.const i32x4 0x80000000 0x00000000 0x80000000 0x00000000
  i32x4.max_u
  v128.const i32x4 0x80000000 0x7fffffff 0x80000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00020001 0x00040003 0x0003ffff 0x00000000
  v128.const i32x4 0x00060005 0x00080007 0xffff0002 0x00000000
  i32x4.dot_i16x8_s
  v128.const i32x4 0x00000011 0x00000035 0xfffffffb 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  local.get $0
  i32x4.neg
  v128.const i32x4 0xffffffff 0xfffffffe 0xfffffffd 0x80000001
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 416
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32x4.extract_lane 0
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 421
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32x4.extract_lane 3
  i32.const -2147483648
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 422
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 5
  i32x4.replace_lane 3
  v128.const i32x4 0x00000002 0x00000003 0x00000004 0x00000005
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 423
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  v8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  v128.const i32x4 0x00000001 0x00000002 0x00000001 0x00000001
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 428
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32x4.splat
  i32.const 1
  i32x4.shl
  i32.const 2
  i32x4.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const -2
  i32x4.splat
  i32.const 1
  i32x4.shr_s
  i32.const -1
  i32x4.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const -1
  i32x4.splat
  i32.const 1
  i32x4.shr_u
  i32.const 2147483647
  i32x4.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000001 0x00000000 0x00000000 0x00000000
  i8x16.any_true
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  drop
  i32.const 1
  i32x4.splat
  i32x4.all_true
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  drop
  i32.const 0
  i32x4.splat
  i32.const 1
  i32x4.replace_lane 0
  local.set $3
  i32.const 0
  i32x4.splat
  i32.const -1
  i32x4.replace_lane 0
  local.set $4
  local.get $4
  local.set $5
  local.get $4
  v128.not
  local.set $6
  local.get $4
  local.get $3
  i32x4.eq
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 442
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $3
  i32x4.ne
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 443
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $3
  i32x4.lt_s
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 444
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $4
  i32x4.lt_u
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 445
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $4
  i32x4.le_s
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 446
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $3
  i32x4.le_u
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 447
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $4
  i32x4.gt_s
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 448
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $3
  i32x4.gt_u
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 449
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $3
  i32x4.ge_s
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 450
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $4
  i32x4.ge_u
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 451
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -1.5
  f32x4.splat
  i32x4.trunc_sat_f32x4_s
  i32.const -1
  i32x4.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  f32.const -1.5
  f32x4.splat
  i32x4.trunc_sat_f32x4_u
  i32.const 0
  i32x4.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const -1
  i16x8.splat
  i32.const 0
  i16x8.replace_lane 4
  i32x4.widen_low_i16x8_s
  i32.const -1
  i32x4.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const -1
  i16x8.splat
  i32.const 0
  i16x8.replace_lane 4
  i32x4.widen_low_i16x8_u
  i32.const 65535
  i32x4.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const -1
  i16x8.splat
  i32.const 0
  i16x8.replace_lane 0
  i32x4.widen_high_i16x8_s
  i32.const -1
  i32x4.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const -1
  i16x8.splat
  i32.const 0
  i16x8.replace_lane 0
  i32x4.widen_high_i16x8_u
  i32.const 65535
  i32x4.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  local.set $7
  local.get $7
  i32.const 1
  i32.store16
  local.get $7
  i32.const 2
  i32.store16 offset=2
  local.get $7
  i32.const 3
  i32.store16 offset=4
  local.get $7
  i32.const -1
  i32.store16 offset=6
  local.get $7
  i32x4.load16x4_s align=2
  v128.const i32x4 0x00000001 0x00000002 0x00000003 0xffffffff
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 472
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32x4.load16x4_u align=2
  v128.const i32x4 0x00000001 0x00000002 0x00000003 0x0000ffff
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 477
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  call $~lib/rt/tlsf/__free
 )
 (func $features/simd/test_i64x2
  (local $0 v128)
  (local $1 v128)
  (local $2 v128)
  (local $3 i32)
  v128.const i32x4 0x00000001 0x00000000 0xffffffff 0x7fffffff
  local.set $0
  local.get $0
  v128.const i32x4 0x00000001 0x00000000 0xffffffff 0x7fffffff
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 488
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 1
  i64x2.splat
  local.set $1
  local.get $1
  v128.const i32x4 0x00000001 0x00000000 0x00000001 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 490
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i64x2.add
  local.set $2
  local.get $2
  v128.const i32x4 0x00000002 0x00000000 0x00000000 0x80000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 492
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i64x2.sub
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 493
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i64x2.mul
  local.get $2
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 494
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64x2.neg
  v128.const i32x4 0xffffffff 0xffffffff 0x00000001 0x80000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 495
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i64x2.extract_lane 0
  i64.const 2
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 500
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i64x2.extract_lane 1
  i64.const -9223372036854775808
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 501
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i64.const 3
  i64x2.replace_lane 1
  v128.const i32x4 0x00000002 0x00000000 0x00000003 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 502
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  v8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  v128.const i32x4 0x00000001 0x00000000 0x00000001 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 507
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 1
  i64x2.splat
  i32.const 1
  i64x2.shl
  i64.const 2
  i64x2.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i64.const -2
  i64x2.splat
  i32.const 1
  i64x2.shr_s
  i64.const -1
  i64x2.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i64.const -1
  i64x2.splat
  i32.const 1
  i64x2.shr_u
  i64.const 9223372036854775807
  i64x2.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000001 0x00000000 0x00000000 0x00000000
  i8x16.any_true
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  drop
  i64.const 1
  i64x2.splat
  i32x4.all_true
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 516
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  local.set $3
  local.get $3
  i32.const 1
  i32.store
  local.get $3
  i32.const -1
  i32.store offset=4
  local.get $3
  i64x2.load32x2_s align=4
  v128.const i32x4 0x00000001 0x00000000 0xffffffff 0xffffffff
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 521
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i64x2.load32x2_u align=4
  v128.const i32x4 0x00000001 0x00000000 0xffffffff 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 526
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/tlsf/__free
 )
 (func $features/simd/test_f32x4
  (local $0 v128)
  (local $1 v128)
  (local $2 v128)
  (local $3 v128)
  (local $4 v128)
  (local $5 v128)
  (local $6 v128)
  (local $7 v128)
  v128.const i32x4 0x3fc00000 0x40200000 0x40600000 0x40900000
  local.set $0
  local.get $0
  v128.const i32x4 0x3fc00000 0x40200000 0x40600000 0x40900000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 537
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  f32x4.splat
  local.set $1
  local.get $1
  v128.const i32x4 0x3f800000 0x3f800000 0x3f800000 0x3f800000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 539
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  f32x4.add
  local.set $2
  local.get $2
  v128.const i32x4 0x40200000 0x40600000 0x40900000 0x40b00000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 541
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  f32x4.sub
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 542
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  f32x4.mul
  local.get $2
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 543
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $0
  f32x4.mul
  local.set $3
  local.get $3
  local.get $0
  f32x4.div
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 545
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $0
  f32x4.mul
  local.get $0
  i8x16.ne
  i8x16.any_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 546
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32x4.neg
  v128.const i32x4 0xbfc00000 0xc0200000 0xc0600000 0xc0900000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 547
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  f32x4.extract_lane 0
  f32.const 2.5
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 548
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  f32x4.extract_lane 3
  f32.const 5.5
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 549
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  f32.const 6.5
  f32x4.replace_lane 3
  v128.const i32x4 0x40200000 0x40600000 0x40900000 0x40d00000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 550
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  v8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  v128.const i32x4 0x3fc00000 0x40200000 0x3f800000 0x3f800000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 555
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  f32x4.splat
  f32.const 1
  f32x4.replace_lane 0
  local.set $4
  f32.const 0
  f32x4.splat
  f32.const -1
  f32x4.replace_lane 0
  local.set $5
  v128.const i32x4 0xffffffff 0x00000000 0x00000000 0x00000000
  local.set $6
  v128.const i32x4 0x00000000 0xffffffff 0xffffffff 0xffffffff
  local.set $7
  local.get $5
  local.get $4
  f32x4.eq
  local.get $7
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 564
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  local.get $4
  f32x4.ne
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 565
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  local.get $4
  f32x4.lt
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 566
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $5
  f32x4.le
  local.get $7
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 567
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $5
  f32x4.gt
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 568
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  local.get $4
  f32x4.ge
  local.get $7
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 569
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  local.get $4
  f32x4.min
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 570
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  local.get $4
  f32x4.max
  local.get $4
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 571
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  f32x4.abs
  local.get $4
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 572
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  v128.const i32x4 0x40800000 0x41100000 0x41800000 0x41c80000
  f32x4.sqrt
  v128.const i32x4 0x40000000 0x40400000 0x40800000 0x40a00000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const -1
  i32x4.splat
  f32x4.convert_i32x4_s
  f32.const -1
  f32x4.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const -1
  i32x4.splat
  f32x4.convert_i32x4_u
  f32.const 4294967296
  f32x4.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
 )
 (func $features/simd/test_f64x2
  (local $0 v128)
  (local $1 v128)
  (local $2 v128)
  (local $3 v128)
  (local $4 v128)
  (local $5 v128)
  (local $6 v128)
  (local $7 v128)
  v128.const i32x4 0x00000000 0x3ff80000 0x00000000 0x40040000
  local.set $0
  local.get $0
  v128.const i32x4 0x00000000 0x3ff80000 0x00000000 0x40040000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 588
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  f64x2.splat
  local.set $1
  local.get $1
  v128.const i32x4 0x00000000 0x3ff00000 0x00000000 0x3ff00000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 590
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  f64x2.add
  local.set $2
  local.get $2
  v128.const i32x4 0x00000000 0x40040000 0x00000000 0x400c0000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 592
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  f64x2.sub
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 593
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  f64x2.mul
  local.get $2
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 594
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $0
  f64x2.mul
  local.set $3
  local.get $3
  local.get $0
  f64x2.div
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 596
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $0
  f64x2.mul
  local.get $0
  i8x16.ne
  i8x16.any_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 597
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64x2.neg
  v128.const i32x4 0x00000000 0xbff80000 0x00000000 0xc0040000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 598
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  f64x2.extract_lane 0
  f64.const 2.5
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 599
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  f64x2.extract_lane 1
  f64.const 3.5
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 600
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  f64.const 4.5
  f64x2.replace_lane 1
  v128.const i32x4 0x00000000 0x40040000 0x00000000 0x40120000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 601
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  v8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  v128.const i32x4 0x00000000 0x3ff80000 0x00000000 0x3ff00000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 606
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  f64x2.splat
  f64.const 1
  f64x2.replace_lane 0
  local.set $4
  f64.const 0
  f64x2.splat
  f64.const -1
  f64x2.replace_lane 0
  local.set $5
  v128.const i32x4 0xffffffff 0xffffffff 0x00000000 0x00000000
  local.set $6
  v128.const i32x4 0x00000000 0x00000000 0xffffffff 0xffffffff
  local.set $7
  local.get $5
  local.get $4
  f64x2.eq
  local.get $7
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 615
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  local.get $4
  f64x2.ne
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 616
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  local.get $4
  f64x2.lt
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 617
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $5
  f64x2.le
  local.get $7
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 618
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $5
  f64x2.gt
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 619
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  local.get $4
  f64x2.ge
  local.get $7
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 620
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  local.get $4
  f64x2.min
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 621
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  local.get $4
  f64x2.max
  local.get $4
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 622
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  f64x2.abs
  local.get $4
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 623
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  v128.const i32x4 0x00000000 0x40100000 0x00000000 0x40220000
  f64x2.sqrt
  v128.const i32x4 0x00000000 0x40000000 0x00000000 0x40080000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
 )
 (func $features/simd/test_const (result v128)
  (local $0 v128)
  v128.const i32x4 0x00000001 0x00000001 0x00000001 0x00000001
  local.set $0
  local.get $0
 )
 (func $start:features/simd
  i32.const 1
  drop
  call $features/simd/test_v128
  call $features/simd/test_i8x16
  call $features/simd/test_i16x8
  call $features/simd/test_i32x4
  call $features/simd/test_i64x2
  call $features/simd/test_f32x4
  call $features/simd/test_f64x2
  call $features/simd/test_const
  drop
 )
 (func $~start
  call $start:features/simd
 )
)
