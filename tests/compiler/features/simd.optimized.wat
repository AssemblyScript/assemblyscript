(module
 (type $none_=>_none (func))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 1036) "<")
 (data (i32.const 1048) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1100) "<")
 (data (i32.const 1112) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1164) "<")
 (data (i32.const 1176) "\01\00\00\00 \00\00\00f\00e\00a\00t\00u\00r\00e\00s\00/\00s\00i\00m\00d\00.\00t\00s")
 (export "memory" (memory $0))
 (start $~start)
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
   i32.const 1056
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
   i32.const 1056
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
   i32.const 1056
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
   i32.const 1056
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
   i32.const 1056
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
    i32.const 1056
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
   i32.const 1056
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $1
  i32.const 4
  i32.add
  i32.add
  local.get $4
  i32.ne
  if
   i32.const 0
   i32.const 1056
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
   i32.const 1056
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
   i32.const 1056
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
    i32.const 1056
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
    i32.const 1056
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
  i32.const 17616
  i32.const 0
  i32.store
  i32.const 19184
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
    i32.const 17616
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
      i32.const 17616
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
  i32.const 17616
  i32.const 19188
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 17616
  global.set $~lib/rt/tlsf/ROOT
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
   i32.const 1056
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
     i32.const 1056
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
  i32.gt_u
  if
   i32.const 1120
   i32.const 1056
   i32.const 458
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.tee $2
  local.get $1
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $1
   i32.const 19
   i32.add
   i32.const -16
   i32.and
   i32.const 4
   i32.sub
  end
  local.tee $0
  call $~lib/rt/tlsf/searchBlock
  local.tee $1
  i32.eqz
  if
   local.get $0
   i32.const 536870910
   i32.lt_u
   if (result i32)
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
   else
    local.get $0
   end
   i32.const 4
   memory.size
   local.tee $1
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   local.get $2
   i32.load offset=1568
   i32.ne
   i32.shl
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
   local.get $2
   local.get $1
   i32.const 16
   i32.shl
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   local.get $2
   local.get $0
   call $~lib/rt/tlsf/searchBlock
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1056
    i32.const 496
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.gt_u
  if
   i32.const 0
   i32.const 1056
   i32.const 498
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  call $~lib/rt/tlsf/removeBlock
  local.get $1
  i32.load
  local.set $3
  local.get $0
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1056
   i32.const 357
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.get $0
  i32.sub
  local.tee $4
  i32.const 16
  i32.ge_u
  if
   local.get $1
   local.get $0
   local.get $3
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $0
   local.get $1
   i32.const 4
   i32.add
   i32.add
   local.tee $0
   local.get $4
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $2
   local.get $0
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
 (func $~lib/rt/tlsf/__free (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 17612
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
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.const 15
  i32.and
  i32.const 1
  local.get $0
  select
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.load
   i32.const 1
   i32.and
  end
  if
   i32.const 0
   i32.const 1056
   i32.const 559
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.tee $0
  i32.load
  i32.const 1
  i32.or
  local.set $1
  local.get $0
  local.get $1
  i32.store
  local.get $0
  call $~lib/rt/tlsf/insertBlock
 )
 (func $features/simd/test_i8x16
  (local $0 v128)
  (local $1 v128)
  (local $2 v128)
  (local $3 v128)
  v128.const i32x4 0x04030201 0x08070605 0x0c0b0a09 0x7f0f0e0d
  local.tee $2
  v128.const i32x4 0x04030201 0x08070605 0x0c0b0a09 0x7f0f0e0d
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 131
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i8x16.splat
  local.tee $1
  v128.const i32x4 0x01010101 0x01010101 0x01010101 0x01010101
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 133
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i8x16.add
  local.tee $0
  v128.const i32x4 0x05040302 0x09080706 0x0d0c0b0a 0x80100f0e
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 135
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i8x16.sub
  local.get $2
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 136
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i8x16.neg
  v128.const i32x4 0xfcfdfeff 0xf8f9fafb 0xf4f5f6f7 0x81f1f2f3
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 177
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i8x16.extract_lane_s 0
  i32.const 255
  i32.and
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1184
   i32.const 182
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i8x16.extract_lane_s 15
  i32.const 255
  i32.and
  i32.const 128
  i32.ne
  if
   i32.const 0
   i32.const 1184
   i32.const 183
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i8x16.extract_lane_u 15
  i32.const 255
  i32.and
  i32.const 128
  i32.ne
  if
   i32.const 0
   i32.const 1184
   i32.const 184
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 17
  i8x16.replace_lane 15
  v128.const i32x4 0x05040302 0x09080706 0x0d0c0b0a 0x11100f0e
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 185
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  v128.const i32x4 0x04030201 0x08070605 0x01010101 0x01010101
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 190
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i8x16.splat
  local.tee $0
  i32.const 1
  i8x16.replace_lane 0
  local.set $1
  local.get $0
  i32.const -1
  i8x16.replace_lane 0
  local.tee $0
  v128.not
  local.set $3
  local.get $0
  local.get $1
  i8x16.eq
  local.get $3
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 228
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i8x16.ne
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 229
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i8x16.lt_s
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 230
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i8x16.lt_u
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 231
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i8x16.le_s
  local.get $3
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 232
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i8x16.le_u
  local.get $3
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 233
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i8x16.gt_s
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 234
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i8x16.gt_u
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 235
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i8x16.ge_s
  local.get $3
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 236
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i8x16.ge_u
  local.get $3
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 237
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  v128.const i32x4 0x03020100 0x07060504 0x0b0a0908 0x0f0e0d0c
  local.tee $0
  v128.const i32x4 0x13121110 0x17161514 0x1b1a1918 0x1f1e1d1c
  i8x16.shuffle 0 17 2 19 4 21 6 23 8 25 10 27 12 29 14 31
  v128.const i32x4 0x13021100 0x17061504 0x1b0a1908 0x1f0e1d0c
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 243
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  v128.const i32x4 0x0c0d0e10 0x08090a0b 0x04050607 0x00010203
  i8x16.swizzle
  v128.const i32x4 0x0c0d0e00 0x08090a0b 0x04050607 0x00010203
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 249
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i8x16.popcnt
  v128.const i32x4 0x02010100 0x03020201 0x03020201 0x04030302
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 255
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $features/simd/test_i16x8
  (local $0 v128)
  (local $1 v128)
  (local $2 i32)
  (local $3 v128)
  v128.const i32x4 0x00020001 0x00040003 0x00060005 0x7fff0007
  local.tee $1
  v128.const i32x4 0x00020001 0x00040003 0x00060005 0x7fff0007
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 260
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i16x8.splat
  local.tee $3
  v128.const i32x4 0x00010001 0x00010001 0x00010001 0x00010001
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 262
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $3
  i16x8.add
  local.tee $0
  v128.const i32x4 0x00030002 0x00050004 0x00070006 0x80000008
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 264
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $3
  i16x8.sub
  local.get $1
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 265
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $3
  i16x8.mul
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 266
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i16x8.neg
  v128.const i32x4 0xfffeffff 0xfffcfffd 0xfffafffb 0x8001fff9
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 307
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i16x8.extract_lane_s 0
  i32.const 65535
  i32.and
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1184
   i32.const 312
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i16x8.extract_lane_s 7
  i32.const 65535
  i32.and
  i32.const 32768
  i32.ne
  if
   i32.const 0
   i32.const 1184
   i32.const 313
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i16x8.extract_lane_u 7
  i32.const 65535
  i32.and
  i32.const 32768
  i32.ne
  if
   i32.const 0
   i32.const 1184
   i32.const 314
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 9
  i16x8.replace_lane 7
  v128.const i32x4 0x00030002 0x00050004 0x00070006 0x00090008
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 315
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $3
  i8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  v128.const i32x4 0x00020001 0x00040003 0x00010001 0x00010001
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 320
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i16x8.splat
  local.tee $1
  i32.const -1
  i16x8.replace_lane 0
  local.tee $0
  local.get $1
  i32.const 1
  i16x8.replace_lane 0
  local.tee $1
  i16x8.eq
  local.get $0
  v128.not
  local.tee $3
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 358
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i16x8.ne
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 359
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i16x8.lt_s
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 360
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i16x8.lt_u
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 361
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i16x8.le_s
  local.get $3
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 362
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i16x8.le_u
  local.get $3
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 363
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i16x8.gt_s
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 364
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i16x8.gt_u
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 365
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i16x8.ge_s
  local.get $3
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 366
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i16x8.ge_u
  local.get $3
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 367
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 16
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  local.tee $2
  i32.const 1
  i32.store8
  local.get $2
  i32.const 2
  i32.store8 offset=1
  local.get $2
  i32.const 3
  i32.store8 offset=2
  local.get $2
  i32.const 4
  i32.store8 offset=3
  local.get $2
  i32.const 5
  i32.store8 offset=4
  local.get $2
  i32.const 6
  i32.store8 offset=5
  local.get $2
  i32.const 7
  i32.store8 offset=6
  local.get $2
  i32.const 255
  i32.store8 offset=7
  local.get $2
  v128.load8x8_s align=1
  v128.const i32x4 0x00020001 0x00040003 0x00060005 0xffff0007
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 384
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  v128.load8x8_u align=1
  v128.const i32x4 0x00020001 0x00040003 0x00060005 0x00ff0007
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 389
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/tlsf/__free
 )
 (func $features/simd/test_i32x4
  (local $0 v128)
  (local $1 v128)
  (local $2 v128)
  (local $3 i32)
  v128.const i32x4 0x00000001 0x00000002 0x00000003 0x7fffffff
  local.tee $1
  v128.const i32x4 0x00000001 0x00000002 0x00000003 0x7fffffff
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 409
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32x4.splat
  local.tee $2
  v128.const i32x4 0x00000001 0x00000001 0x00000001 0x00000001
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 411
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  i32x4.add
  local.tee $0
  v128.const i32x4 0x00000002 0x00000003 0x00000004 0x80000000
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 413
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  i32x4.sub
  local.get $1
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 414
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  i32x4.mul
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 415
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32x4.neg
  v128.const i32x4 0xffffffff 0xfffffffe 0xfffffffd 0x80000001
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 456
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32x4.extract_lane 0
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1184
   i32.const 461
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32x4.extract_lane 3
  i32.const -2147483648
  i32.ne
  if
   i32.const 0
   i32.const 1184
   i32.const 462
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 5
  i32x4.replace_lane 3
  v128.const i32x4 0x00000002 0x00000003 0x00000004 0x00000005
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 463
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  i8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  v128.const i32x4 0x00000001 0x00000002 0x00000001 0x00000001
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 468
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32x4.splat
  local.tee $1
  i32.const -1
  i32x4.replace_lane 0
  local.tee $0
  local.get $1
  i32.const 1
  i32x4.replace_lane 0
  local.tee $1
  i32x4.eq
  local.get $0
  v128.not
  local.tee $2
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 482
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32x4.ne
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 483
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32x4.lt_s
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 484
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32x4.lt_u
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 485
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32x4.le_s
  local.get $2
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 486
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32x4.le_u
  local.get $2
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 487
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32x4.gt_s
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 488
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32x4.gt_u
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 489
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32x4.ge_s
  local.get $2
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 490
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32x4.ge_u
  local.get $2
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 491
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 16
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  local.tee $3
  i32.const 1
  i32.store16
  local.get $3
  i32.const 2
  i32.store16 offset=2
  local.get $3
  i32.const 3
  i32.store16 offset=4
  local.get $3
  i32.const 65535
  i32.store16 offset=6
  local.get $3
  v128.load16x4_s align=2
  v128.const i32x4 0x00000001 0x00000002 0x00000003 0xffffffff
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 512
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  v128.load16x4_u align=2
  v128.const i32x4 0x00000001 0x00000002 0x00000003 0x0000ffff
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 517
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
  v128.const i32x4 0x3fc00000 0x40200000 0x40600000 0x40900000
  local.tee $0
  v128.const i32x4 0x3fc00000 0x40200000 0x40600000 0x40900000
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 591
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  f32x4.splat
  local.tee $2
  v128.const i32x4 0x3f800000 0x3f800000 0x3f800000 0x3f800000
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 593
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  f32x4.add
  local.tee $1
  v128.const i32x4 0x40200000 0x40600000 0x40900000 0x40b00000
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 595
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  f32x4.sub
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 596
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  f32x4.mul
  local.get $1
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 597
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $0
  f32x4.mul
  local.tee $3
  local.get $0
  f32x4.div
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 599
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $0
  f32x4.mul
  local.get $0
  i8x16.ne
  v128.any_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 600
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32x4.neg
  v128.const i32x4 0xbfc00000 0xc0200000 0xc0600000 0xc0900000
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 601
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  f32x4.extract_lane 0
  f32.const 2.5
  f32.ne
  if
   i32.const 0
   i32.const 1184
   i32.const 602
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  f32x4.extract_lane 3
  f32.const 5.5
  f32.ne
  if
   i32.const 0
   i32.const 1184
   i32.const 603
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  f32.const 6.5
  f32x4.replace_lane 3
  v128.const i32x4 0x40200000 0x40600000 0x40900000 0x40d00000
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 604
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  i8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  v128.const i32x4 0x3fc00000 0x40200000 0x3f800000 0x3f800000
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 609
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  f32x4.splat
  local.tee $1
  f32.const 1
  f32x4.replace_lane 0
  local.set $0
  v128.const i32x4 0xffffffff 0x00000000 0x00000000 0x00000000
  local.set $2
  local.get $1
  f32.const -1
  f32x4.replace_lane 0
  local.tee $1
  local.get $0
  f32x4.eq
  v128.const i32x4 0x00000000 0xffffffff 0xffffffff 0xffffffff
  local.tee $3
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 618
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  f32x4.ne
  local.get $2
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 619
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  f32x4.lt
  local.get $2
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 620
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  f32x4.le
  local.get $3
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 621
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  f32x4.gt
  local.get $2
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 622
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  f32x4.ge
  local.get $3
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 623
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  f32x4.min
  local.get $1
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 624
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  f32x4.max
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 625
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  f32x4.abs
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 626
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $features/simd/test_f64x2
  (local $0 v128)
  (local $1 v128)
  (local $2 v128)
  (local $3 v128)
  v128.const i32x4 0x00000000 0x3ff80000 0x00000000 0x40040000
  local.tee $0
  v128.const i32x4 0x00000000 0x3ff80000 0x00000000 0x40040000
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 645
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  f64x2.splat
  local.tee $2
  v128.const i32x4 0x00000000 0x3ff00000 0x00000000 0x3ff00000
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 647
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  f64x2.add
  local.tee $1
  v128.const i32x4 0x00000000 0x40040000 0x00000000 0x400c0000
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 649
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  f64x2.sub
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 650
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  f64x2.mul
  local.get $1
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 651
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $0
  f64x2.mul
  local.tee $3
  local.get $0
  f64x2.div
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 653
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $0
  f64x2.mul
  local.get $0
  i8x16.ne
  v128.any_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 654
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64x2.neg
  v128.const i32x4 0x00000000 0xbff80000 0x00000000 0xc0040000
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 655
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  f64x2.extract_lane 0
  f64.const 2.5
  f64.ne
  if
   i32.const 0
   i32.const 1184
   i32.const 656
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  f64x2.extract_lane 1
  f64.const 3.5
  f64.ne
  if
   i32.const 0
   i32.const 1184
   i32.const 657
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  f64.const 4.5
  f64x2.replace_lane 1
  v128.const i32x4 0x00000000 0x40040000 0x00000000 0x40120000
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 658
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  i8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  v128.const i32x4 0x00000000 0x3ff80000 0x00000000 0x3ff00000
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 663
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  f64x2.splat
  local.tee $1
  f64.const 1
  f64x2.replace_lane 0
  local.set $0
  v128.const i32x4 0xffffffff 0xffffffff 0x00000000 0x00000000
  local.set $2
  local.get $1
  f64.const -1
  f64x2.replace_lane 0
  local.tee $1
  local.get $0
  f64x2.eq
  v128.const i32x4 0x00000000 0x00000000 0xffffffff 0xffffffff
  local.tee $3
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 672
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  f64x2.ne
  local.get $2
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 673
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  f64x2.lt
  local.get $2
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 674
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  f64x2.le
  local.get $3
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 675
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  f64x2.gt
  local.get $2
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 676
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  f64x2.ge
  local.get $3
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 677
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  f64x2.min
  local.get $1
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 678
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  f64x2.max
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 679
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  f64x2.abs
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 680
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  (local $0 i32)
  (local $1 v128)
  (local $2 v128)
  (local $3 v128)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 64
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  local.tee $0
  local.get $0
  v128.load offset=16
  v128.store offset=32
  local.get $0
  call $~lib/rt/tlsf/__free
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 16
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  local.tee $0
  i32.const 42
  i32.store8
  local.get $0
  v128.load8_splat
  v128.const i32x4 0x2a2a2a2a 0x2a2a2a2a 0x2a2a2a2a 0x2a2a2a2a
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 59
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/tlsf/__free
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 16
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  local.tee $0
  i32.const 42
  i32.store16
  local.get $0
  v128.load16_splat
  v128.const i32x4 0x002a002a 0x002a002a 0x002a002a 0x002a002a
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 69
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/tlsf/__free
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 16
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  local.tee $0
  i32.const 42
  i32.store
  local.get $0
  v128.load32_splat
  v128.const i32x4 0x0000002a 0x0000002a 0x0000002a 0x0000002a
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 79
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/tlsf/__free
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 16
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  local.tee $0
  i64.const 42
  i64.store
  local.get $0
  v128.load64_splat
  v128.const i32x4 0x0000002a 0x00000000 0x0000002a 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 89
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/tlsf/__free
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 16
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  local.tee $0
  i32.const 42
  i32.store
  local.get $0
  v128.load32_zero
  v128.const i32x4 0x00000000 0x00000000 0x00000000 0x0000002a
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 99
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/tlsf/__free
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 16
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  local.tee $0
  i64.const 42
  i64.store
  local.get $0
  v128.load64_zero
  v128.const i32x4 0x00000000 0x00000000 0x0000002a 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 109
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/tlsf/__free
  call $features/simd/test_i8x16
  call $features/simd/test_i16x8
  call $features/simd/test_i32x4
  v128.const i32x4 0x00000001 0x00000000 0xffffffff 0x7fffffff
  local.tee $2
  v128.const i32x4 0x00000001 0x00000000 0xffffffff 0x7fffffff
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 538
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 1
  i64x2.splat
  local.tee $3
  v128.const i32x4 0x00000001 0x00000000 0x00000001 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 540
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $3
  i64x2.add
  local.tee $1
  v128.const i32x4 0x00000002 0x00000000 0x00000000 0x80000000
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 542
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $3
  i64x2.sub
  local.get $2
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 543
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $3
  i64x2.mul
  local.get $1
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 544
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i64x2.neg
  v128.const i32x4 0xffffffff 0xffffffff 0x00000001 0x80000000
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 545
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i64x2.extract_lane 0
  i64.const 2
  i64.ne
  if
   i32.const 0
   i32.const 1184
   i32.const 550
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i64x2.extract_lane 1
  i64.const -9223372036854775808
  i64.ne
  if
   i32.const 0
   i32.const 1184
   i32.const 551
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i64.const 3
  i64x2.replace_lane 1
  v128.const i32x4 0x00000002 0x00000000 0x00000003 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 552
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $3
  i8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  v128.const i32x4 0x00000001 0x00000000 0x00000001 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 557
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 16
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  local.tee $0
  i32.const 1
  i32.store
  local.get $0
  i32.const -1
  i32.store offset=4
  local.get $0
  v128.load32x2_s align=4
  v128.const i32x4 0x00000001 0x00000000 0xffffffff 0xffffffff
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 571
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  v128.load32x2_u align=4
  v128.const i32x4 0x00000001 0x00000000 0xffffffff 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 576
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/tlsf/__free
  call $features/simd/test_f32x4
  call $features/simd/test_f64x2
 )
)
