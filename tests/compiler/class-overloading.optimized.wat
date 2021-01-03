(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1036) "\1c")
 (data (i32.const 1048) "\01")
 (data (i32.const 1068) "<")
 (data (i32.const 1080) "\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1132) "<")
 (data (i32.const 1144) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00c\00m\00s\00.\00t\00s")
 (data (i32.const 1196) "<")
 (data (i32.const 1208) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1292) "\1c")
 (data (i32.const 1304) "\01\00\00\00\02\00\00\00A")
 (data (i32.const 1324) "\1c")
 (data (i32.const 1336) "\01\00\00\00\02\00\00\00B")
 (data (i32.const 1356) "<")
 (data (i32.const 1368) "\01\00\00\00(\00\00\00c\00l\00a\00s\00s\00-\00o\00v\00e\00r\00l\00o\00a\00d\00i\00n\00g\00.\00t\00s")
 (data (i32.const 1420) "\1c")
 (data (i32.const 1432) "\01\00\00\00\02\00\00\00C")
 (data (i32.const 1452) "\1c")
 (data (i32.const 1464) "\01\00\00\00\02\00\00\00F")
 (data (i32.const 1484) "\1c")
 (data (i32.const 1496) "\01\00\00\00\04\00\00\00I\00B")
 (data (i32.const 1516) "\1c")
 (data (i32.const 1528) "\01\00\00\00\04\00\00\00I\00C")
 (data (i32.const 1548) "<")
 (data (i32.const 1560) "\01\00\00\00\1e\00\00\00n\00o\00t\00 \00i\00m\00p\00l\00e\00m\00e\00n\00t\00e\00d")
 (global $class-overloading/which (mut i32) (i32.const 1056))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/fromSpace (mut i32) (i32.const 0))
 (global $class-overloading/a (mut i32) (i32.const 0))
 (global $class-overloading/ia (mut i32) (i32.const 0))
 (global $class-overloading/ic (mut i32) (i32.const 0))
 (global $class-overloading/b2 (mut i32) (i32.const 0))
 (global $~started (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "_start" (func $~start))
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
   i32.const 1216
   i32.const 272
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
   i32.const 1216
   i32.const 274
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
   i32.const 1216
   i32.const 287
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
   i32.const 1216
   i32.const 200
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
   i32.const 1216
   i32.const 202
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
    i32.const 1216
    i32.const 223
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
   i32.const 1216
   i32.const 238
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
   i32.const 1216
   i32.const 239
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
   i32.const 1216
   i32.const 255
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
   i32.const 1216
   i32.const 380
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
    i32.const 1216
    i32.const 387
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
    i32.const 1216
    i32.const 400
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
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  i32.const -2
  i32.and
  local.tee $2
  if (result i32)
   local.get $0
   local.get $2
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
     i32.const 1216
     i32.const 346
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
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/tlsf/searchBlock
  local.tee $1
  i32.eqz
  if
   i32.const 4
   memory.size
   local.tee $2
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   local.get $0
   i32.load offset=1568
   i32.ne
   i32.shl
   i32.const 65563
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.set $1
   local.get $2
   local.get $1
   local.get $1
   local.get $2
   i32.lt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $1
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $0
   local.get $2
   i32.const 16
   i32.shl
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   local.get $0
   call $~lib/rt/tlsf/searchBlock
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1216
    i32.const 499
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.const 28
  i32.lt_u
  if
   i32.const 0
   i32.const 1216
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/removeBlock
  local.get $1
  i32.load
  local.tee $2
  i32.const -4
  i32.and
  i32.const 28
  i32.sub
  local.tee $3
  i32.const 16
  i32.ge_u
  if
   local.get $1
   local.get $2
   i32.const 2
   i32.and
   i32.const 28
   i32.or
   i32.store
   local.get $1
   i32.const 32
   i32.add
   local.tee $2
   local.get $3
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
   local.get $2
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
 (func $~lib/rt/tcms/__new (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   memory.size
   local.tee $2
   i32.const 1
   i32.lt_s
   if (result i32)
    i32.const 1
    local.get $2
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
   i32.const 1616
   i32.const 0
   i32.store
   i32.const 3184
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
     i32.const 1616
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
       i32.const 1616
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
   i32.const 1616
   i32.const 3188
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   i32.const 1616
   global.set $~lib/rt/tlsf/ROOT
  end
  global.get $~lib/rt/tlsf/ROOT
  call $~lib/rt/tlsf/allocateBlock
  local.tee $1
  local.get $0
  i32.store offset=12
  local.get $1
  i32.const 0
  i32.store offset=16
  global.get $~lib/rt/tcms/fromSpace
  local.tee $2
  i32.load offset=8
  local.set $0
  local.get $1
  local.get $2
  i32.store offset=4
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $1
  i32.const 20
  i32.add
 )
 (func $class-overloading/B#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 3
   call $~lib/rt/tcms/__new
  end
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  local.get $1
  i32.eqz
  i32.const 1
  local.get $0
  select
  if
   i32.const 0
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.tee $2
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.ne
  if
   i32.const 0
   return
  end
  block $__inlined_func$~lib/util/string/compareImpl (result i32)
   local.get $0
   local.tee $3
   i32.const 7
   i32.and
   local.get $1
   i32.const 7
   i32.and
   i32.or
   i32.eqz
   i32.const 0
   local.get $2
   local.tee $0
   i32.const 4
   i32.ge_u
   select
   if
    loop $do-continue|0
     local.get $3
     i64.load
     local.get $1
     i64.load
     i64.eq
     if
      local.get $3
      i32.const 8
      i32.add
      local.set $3
      local.get $1
      i32.const 8
      i32.add
      local.set $1
      local.get $0
      i32.const 4
      i32.sub
      local.tee $0
      i32.const 4
      i32.ge_u
      br_if $do-continue|0
     end
    end
   end
   loop $while-continue|1
    local.get $0
    local.tee $2
    i32.const 1
    i32.sub
    local.set $0
    local.get $2
    if
     local.get $3
     i32.load16_u
     local.tee $2
     local.get $1
     i32.load16_u
     local.tee $4
     i32.ne
     if
      local.get $2
      local.get $4
      i32.sub
      br $__inlined_func$~lib/util/string/compareImpl
     end
     local.get $3
     i32.const 2
     i32.add
     local.set $3
     local.get $1
     i32.const 2
     i32.add
     local.set $1
     br $while-continue|1
    end
   end
   i32.const 0
  end
  i32.eqz
 )
 (func $class-overloading/C#a<i32>
  i32.const 1344
  global.set $class-overloading/which
  i32.const 1344
  i32.const 1344
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1376
   i32.const 52
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1440
  global.set $class-overloading/which
 )
 (func $class-overloading/E#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 7
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 6
   call $~lib/rt/tcms/__new
  end
  call $class-overloading/B#constructor
 )
 (func $start:class-overloading
  (local $0 i32)
  i32.const 1268
  i32.const 1264
  i32.store
  i32.const 1272
  i32.const 1264
  i32.store
  i32.const 1264
  global.set $~lib/rt/tcms/fromSpace
  i32.const 0
  call $class-overloading/B#constructor
  global.set $class-overloading/a
  global.get $class-overloading/a
  call $class-overloading/A#a<i32>@virtual
  global.get $class-overloading/which
  i32.const 1344
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1376
   i32.const 38
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1056
  global.set $class-overloading/which
  global.get $class-overloading/a
  call $class-overloading/A#b@virtual
  global.get $class-overloading/which
  i32.const 1344
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1376
   i32.const 41
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1056
  global.set $class-overloading/which
  global.get $class-overloading/a
  call $class-overloading/A#b@virtual
  global.get $class-overloading/which
  i32.const 1344
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1376
   i32.const 44
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1056
  global.set $class-overloading/which
  global.get $class-overloading/a
  call $class-overloading/A#b@virtual
  global.get $class-overloading/which
  i32.const 1344
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1376
   i32.const 47
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  call $~lib/rt/tcms/__new
  call $class-overloading/B#constructor
  drop
  i32.const 1056
  global.set $class-overloading/which
  call $class-overloading/C#a<i32>
  global.get $class-overloading/which
  i32.const 1440
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1376
   i32.const 71
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1056
  global.set $class-overloading/which
  i32.const 1440
  global.set $class-overloading/which
  i32.const 1440
  i32.const 1440
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1376
   i32.const 74
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1056
  global.set $class-overloading/which
  i32.const 1440
  global.set $class-overloading/which
  i32.const 1440
  i32.const 1440
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1376
   i32.const 77
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1440
  global.set $class-overloading/which
  i32.const 1440
  i32.const 1440
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1376
   i32.const 79
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 6
  call $~lib/rt/tcms/__new
  call $class-overloading/B#constructor
  global.set $class-overloading/a
  i32.const 1056
  global.set $class-overloading/which
  global.get $class-overloading/a
  call $class-overloading/A#a<i32>@virtual
  global.get $class-overloading/which
  i32.const 1344
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1376
   i32.const 89
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1056
  global.set $class-overloading/which
  global.get $class-overloading/a
  call $class-overloading/A#b@virtual
  global.get $class-overloading/which
  i32.const 1344
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1376
   i32.const 92
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1056
  global.set $class-overloading/which
  global.get $class-overloading/a
  call $class-overloading/A#b@virtual
  global.get $class-overloading/which
  i32.const 1344
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1376
   i32.const 95
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $class-overloading/a
  call $class-overloading/A#b@virtual
  global.get $class-overloading/which
  i32.const 1344
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1376
   i32.const 97
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $class-overloading/E#constructor
  global.set $class-overloading/a
  i32.const 1056
  global.set $class-overloading/which
  global.get $class-overloading/a
  call $class-overloading/A#a<i32>@virtual
  global.get $class-overloading/which
  i32.const 1344
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1376
   i32.const 107
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1056
  global.set $class-overloading/which
  global.get $class-overloading/a
  call $class-overloading/A#b@virtual
  global.get $class-overloading/which
  i32.const 1344
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1376
   i32.const 110
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1056
  global.set $class-overloading/which
  global.get $class-overloading/a
  call $class-overloading/A#b@virtual
  global.get $class-overloading/which
  i32.const 1344
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1376
   i32.const 113
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $class-overloading/a
  call $class-overloading/A#b@virtual
  global.get $class-overloading/which
  i32.const 1344
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1376
   i32.const 115
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  call $~lib/rt/tcms/__new
  call $class-overloading/E#constructor
  global.set $class-overloading/a
  i32.const 1056
  global.set $class-overloading/which
  global.get $class-overloading/a
  call $class-overloading/A#a<i32>@virtual
  global.get $class-overloading/which
  i32.const 1472
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1376
   i32.const 137
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1056
  global.set $class-overloading/which
  global.get $class-overloading/a
  call $class-overloading/A#b@virtual
  global.get $class-overloading/which
  i32.const 1472
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1376
   i32.const 140
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1056
  global.set $class-overloading/which
  global.get $class-overloading/a
  call $class-overloading/A#b@virtual
  global.get $class-overloading/which
  i32.const 1472
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1376
   i32.const 143
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1056
  global.set $class-overloading/which
  global.get $class-overloading/a
  call $class-overloading/A#b@virtual
  global.get $class-overloading/which
  i32.const 1472
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1376
   i32.const 146
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 10
  call $~lib/rt/tcms/__new
  global.set $class-overloading/ia
  i32.const 1056
  global.set $class-overloading/which
  global.get $class-overloading/ia
  call $class-overloading/IA#foo@virtual
  global.get $class-overloading/which
  i32.const 1504
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1376
   i32.const 162
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  call $~lib/rt/tcms/__new
  global.set $class-overloading/ic
  i32.const 1056
  global.set $class-overloading/which
  global.get $class-overloading/ic
  call $class-overloading/IA#foo@virtual
  global.get $class-overloading/which
  i32.const 1536
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1376
   i32.const 177
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 14
  call $~lib/rt/tcms/__new
  local.tee $0
  if (result i32)
   local.get $0
  else
   i32.const 13
   call $~lib/rt/tcms/__new
  end
  global.set $class-overloading/b2
  block $__inlined_func$class-overloading/A2#foo@virtual
   global.get $class-overloading/b2
   i32.const 8
   i32.sub
   i32.load
   i32.const 14
   i32.eq
   if
    i32.const 15
    call $~lib/rt/tcms/__new
    local.tee $0
    if (result i32)
     local.get $0
    else
     i32.const 16
     call $~lib/rt/tcms/__new
    end
    i32.const 8
    i32.sub
    i32.load
    i32.const 15
    i32.eq
    br_if $__inlined_func$class-overloading/A2#foo@virtual
    i32.const 1568
    i32.const 1376
    i32.const 186
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1568
   i32.const 1376
   i32.const 198
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $class-overloading/A#a<i32>@virtual (param $0 i32)
  block $default
   block $case2
    block $case1
     block $case0
      local.get $0
      i32.const 8
      i32.sub
      i32.load
      local.tee $0
      i32.const 4
      i32.eq
      local.get $0
      i32.const 6
      i32.eq
      i32.or
      br_if $case0
      block $tablify|0
       local.get $0
       i32.const 5
       i32.sub
       br_table $case1 $tablify|0 $case0 $case2 $tablify|0
      end
      br $default
     end
     i32.const 1344
     global.set $class-overloading/which
     return
    end
    call $class-overloading/C#a<i32>
    return
   end
   i32.const 1472
   global.set $class-overloading/which
   return
  end
  i32.const 1312
  global.set $class-overloading/which
 )
 (func $class-overloading/A#b@virtual (param $0 i32)
  block $default
   block $case2
    block $case1
     block $case0
      local.get $0
      i32.const 8
      i32.sub
      i32.load
      local.tee $0
      i32.const 4
      i32.eq
      local.get $0
      i32.const 6
      i32.eq
      i32.or
      br_if $case0
      block $tablify|0
       local.get $0
       i32.const 5
       i32.sub
       br_table $case1 $tablify|0 $case0 $case2 $tablify|0
      end
      br $default
     end
     i32.const 1344
     global.set $class-overloading/which
     return
    end
    i32.const 1440
    global.set $class-overloading/which
    return
   end
   i32.const 1472
   global.set $class-overloading/which
   return
  end
  i32.const 1312
  global.set $class-overloading/which
 )
 (func $class-overloading/IA#foo@virtual (param $0 i32)
  block $default
   block $case1
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    local.tee $0
    i32.const 10
    i32.ne
    if
     local.get $0
     i32.const 12
     i32.eq
     br_if $case1
     br $default
    end
    i32.const 1504
    global.set $class-overloading/which
    return
   end
   i32.const 1536
   global.set $class-overloading/which
   return
  end
  unreachable
 )
 (func $~start
  global.get $~started
  if
   return
  end
  i32.const 1
  global.set $~started
  call $start:class-overloading
 )
)
