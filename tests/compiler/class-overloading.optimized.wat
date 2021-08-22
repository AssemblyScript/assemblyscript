(module
 (type $none_=>_none (func))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $class-overloading/which (mut i32) (i32.const 1056))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $class-overloading/a (mut i32) (i32.const 0))
 (global $class-overloading/c (mut i32) (i32.const 0))
 (global $class-overloading/ia (mut i32) (i32.const 0))
 (global $class-overloading/ic (mut i32) (i32.const 0))
 (global $class-overloading/b2 (mut i32) (i32.const 0))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 18316))
 (global $~started (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 1036) "\1c")
 (data (i32.const 1048) "\01")
 (data (i32.const 1068) "<")
 (data (i32.const 1080) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1132) "<")
 (data (i32.const 1144) "\01\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data (i32.const 1260) "<")
 (data (i32.const 1272) "\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 1324) ",")
 (data (i32.const 1336) "\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data (i32.const 1404) "<")
 (data (i32.const 1416) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1468) "\1c")
 (data (i32.const 1480) "\01\00\00\00\02\00\00\00A")
 (data (i32.const 1500) "\1c")
 (data (i32.const 1512) "\01\00\00\00\02\00\00\00B")
 (data (i32.const 1532) "<")
 (data (i32.const 1544) "\01\00\00\00(\00\00\00c\00l\00a\00s\00s\00-\00o\00v\00e\00r\00l\00o\00a\00d\00i\00n\00g\00.\00t\00s")
 (data (i32.const 1596) "\1c")
 (data (i32.const 1608) "\01\00\00\00\02\00\00\00C")
 (data (i32.const 1628) "\1c")
 (data (i32.const 1640) "\01\00\00\00\02\00\00\00F")
 (data (i32.const 1660) "\1c")
 (data (i32.const 1672) "\01\00\00\00\04\00\00\00I\00B")
 (data (i32.const 1692) "\1c")
 (data (i32.const 1704) "\01\00\00\00\04\00\00\00I\00C")
 (data (i32.const 1724) "<")
 (data (i32.const 1736) "\01\00\00\00\1e\00\00\00n\00o\00t\00 \00i\00m\00p\00l\00e\00m\00e\00n\00t\00e\00d")
 (data (i32.const 1792) "\11\00\00\00 \00\00\00\00\00\00\00 ")
 (data (i32.const 1820) " \00\00\00\00\00\00\00 \00\00\00\03\00\00\00 \00\00\00\04\00\00\00 \00\00\00\04\00\00\00 \00\00\00\06\00\00\00 \00\00\00\07\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\t\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\0d\00\00\00 \00\00\00\10\00\00\00 ")
 (export "memory" (memory $0))
 (export "_start" (func $~start))
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  global.get $class-overloading/which
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $class-overloading/a
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $class-overloading/c
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $class-overloading/ia
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $class-overloading/ic
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $class-overloading/b2
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 1280
  call $~lib/rt/itcms/__visit
  i32.const 1088
  call $~lib/rt/itcms/__visit
  global.get $~lib/rt/itcms/pinSpace
  local.tee $1
  i32.load offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.ne
   if
    local.get $0
    i32.load offset=4
    i32.const 3
    i32.and
    i32.const 3
    i32.ne
    if
     i32.const 0
     i32.const 1152
     i32.const 159
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 20
    i32.add
    call $~lib/rt/__visit_members
    local.get $0
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/__visit (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  global.get $~lib/rt/itcms/white
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   global.get $~lib/rt/itcms/iter
   local.get $0
   i32.eq
   if
    local.get $0
    i32.load offset=8
    local.tee $1
    i32.eqz
    if
     i32.const 0
     i32.const 1152
     i32.const 147
     i32.const 30
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    global.set $~lib/rt/itcms/iter
   end
   block $__inlined_func$~lib/rt/itcms/Object#unlink
    local.get $0
    i32.load offset=4
    i32.const -4
    i32.and
    local.tee $2
    i32.eqz
    if
     i32.const 0
     local.get $0
     i32.const 18316
     i32.lt_u
     local.get $0
     i32.load offset=8
     select
     i32.eqz
     if
      i32.const 0
      i32.const 1152
      i32.const 127
      i32.const 18
      call $~lib/builtins/abort
      unreachable
     end
     br $__inlined_func$~lib/rt/itcms/Object#unlink
    end
    local.get $0
    i32.load offset=8
    local.tee $1
    i32.eqz
    if
     i32.const 0
     i32.const 1152
     i32.const 131
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    local.get $1
    i32.store offset=8
    local.get $1
    local.get $1
    i32.load offset=4
    i32.const 3
    i32.and
    local.get $2
    i32.or
    i32.store offset=4
   end
   global.get $~lib/rt/itcms/toSpace
   local.set $2
   local.get $0
   i32.load offset=12
   local.tee $1
   i32.const 1
   i32.le_u
   if (result i32)
    i32.const 1
   else
    i32.const 1792
    i32.load
    local.get $1
    i32.lt_u
    if
     i32.const 1280
     i32.const 1344
     i32.const 22
     i32.const 28
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i32.const 3
    i32.shl
    i32.const 1796
    i32.add
    i32.load
    i32.const 32
    i32.and
   end
   if (result i32)
    global.get $~lib/rt/itcms/white
    i32.eqz
   else
    i32.const 2
   end
   local.set $3
   local.get $2
   i32.load offset=8
   local.set $1
   local.get $0
   local.get $2
   local.get $3
   i32.or
   i32.store offset=4
   local.get $0
   local.get $1
   i32.store offset=8
   local.get $1
   local.get $1
   i32.load offset=4
   i32.const 3
   i32.and
   local.get $0
   i32.or
   i32.store offset=4
   local.get $2
   local.get $0
   i32.store offset=8
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
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
   i32.const 1424
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
   i32.const 1424
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
   i32.const 1424
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
  local.get $2
  local.get $3
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=96
  local.get $1
  i32.eq
  if
   local.get $2
   local.get $3
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   local.get $0
   i32.add
   local.get $4
   i32.store offset=96
   local.get $4
   i32.eqz
   if
    local.get $3
    i32.const 2
    i32.shl
    local.get $0
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
   i32.const 1424
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
   i32.const 1424
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
    i32.const 1424
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
   i32.const 1424
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
   i32.const 1424
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
   i32.const 1424
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $5
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  local.get $0
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
  local.get $3
  local.get $5
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  local.get $0
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
  local.get $5
  i32.const 2
  i32.shl
  local.get $0
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
   i32.const 1424
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
    i32.const 1424
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
    i32.const 1424
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
  i32.const 18320
  i32.const 0
  i32.store
  i32.const 19888
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
    i32.const 18320
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
      i32.const 18320
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
  i32.const 18320
  i32.const 19892
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 18320
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $folding-inner0
   block $break|0
    block $case2|0
     block $case1|0
      block $case0|0
       global.get $~lib/rt/itcms/state
       br_table $case0|0 $case1|0 $case2|0 $break|0
      end
      i32.const 1
      global.set $~lib/rt/itcms/state
      i32.const 0
      global.set $~lib/rt/itcms/visitCount
      call $~lib/rt/itcms/visitRoots
      global.get $~lib/rt/itcms/toSpace
      global.set $~lib/rt/itcms/iter
      br $folding-inner0
     end
     global.get $~lib/rt/itcms/white
     i32.eqz
     local.set $1
     global.get $~lib/rt/itcms/iter
     i32.load offset=4
     i32.const -4
     i32.and
     local.set $0
     loop $while-continue|1
      global.get $~lib/rt/itcms/toSpace
      local.get $0
      i32.ne
      if
       local.get $0
       global.set $~lib/rt/itcms/iter
       local.get $0
       i32.load offset=4
       i32.const 3
       i32.and
       local.get $1
       i32.ne
       if
        local.get $0
        local.get $1
        local.get $0
        i32.load offset=4
        i32.const -4
        i32.and
        i32.or
        i32.store offset=4
        i32.const 0
        global.set $~lib/rt/itcms/visitCount
        local.get $0
        i32.const 20
        i32.add
        call $~lib/rt/__visit_members
        br $folding-inner0
       end
       local.get $0
       i32.load offset=4
       i32.const -4
       i32.and
       local.set $0
       br $while-continue|1
      end
     end
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.get $~lib/rt/itcms/iter
     i32.load offset=4
     i32.const -4
     i32.and
     i32.eq
     if
      global.get $~lib/memory/__stack_pointer
      local.set $0
      loop $while-continue|0
       local.get $0
       i32.const 18316
       i32.lt_u
       if
        local.get $0
        i32.load
        call $~lib/rt/itcms/__visit
        local.get $0
        i32.const 4
        i32.add
        local.set $0
        br $while-continue|0
       end
      end
      global.get $~lib/rt/itcms/iter
      i32.load offset=4
      i32.const -4
      i32.and
      local.set $0
      loop $while-continue|2
       global.get $~lib/rt/itcms/toSpace
       local.get $0
       i32.ne
       if
        local.get $0
        i32.load offset=4
        i32.const 3
        i32.and
        local.get $1
        i32.ne
        if
         local.get $0
         local.get $1
         local.get $0
         i32.load offset=4
         i32.const -4
         i32.and
         i32.or
         i32.store offset=4
         local.get $0
         i32.const 20
         i32.add
         call $~lib/rt/__visit_members
        end
        local.get $0
        i32.load offset=4
        i32.const -4
        i32.and
        local.set $0
        br $while-continue|2
       end
      end
      global.get $~lib/rt/itcms/fromSpace
      local.set $0
      global.get $~lib/rt/itcms/toSpace
      global.set $~lib/rt/itcms/fromSpace
      local.get $0
      global.set $~lib/rt/itcms/toSpace
      local.get $1
      global.set $~lib/rt/itcms/white
      local.get $0
      i32.load offset=4
      i32.const -4
      i32.and
      global.set $~lib/rt/itcms/iter
      i32.const 2
      global.set $~lib/rt/itcms/state
     end
     br $folding-inner0
    end
    global.get $~lib/rt/itcms/iter
    local.tee $0
    global.get $~lib/rt/itcms/toSpace
    i32.ne
    if
     local.get $0
     i32.load offset=4
     local.tee $1
     i32.const -4
     i32.and
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/white
     i32.eqz
     local.get $1
     i32.const 3
     i32.and
     i32.ne
     if
      i32.const 0
      i32.const 1152
      i32.const 228
      i32.const 20
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     i32.const 18316
     i32.lt_u
     if
      local.get $0
      i32.const 0
      i32.store offset=4
      local.get $0
      i32.const 0
      i32.store offset=8
     else
      global.get $~lib/rt/itcms/total
      local.get $0
      i32.load
      i32.const -4
      i32.and
      i32.const 4
      i32.add
      i32.sub
      global.set $~lib/rt/itcms/total
      local.get $0
      i32.const 4
      i32.add
      local.tee $0
      i32.const 18316
      i32.ge_u
      if
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
        i32.const 1424
        i32.const 559
        i32.const 3
        call $~lib/builtins/abort
        unreachable
       end
       local.get $1
       local.tee $0
       local.get $0
       i32.load
       i32.const 1
       i32.or
       i32.store
       local.get $0
       call $~lib/rt/tlsf/insertBlock
      end
     end
     i32.const 10
     return
    end
    global.get $~lib/rt/itcms/toSpace
    local.tee $0
    local.tee $1
    local.get $1
    i32.store offset=4
    local.get $0
    local.get $0
    i32.store offset=8
    i32.const 0
    global.set $~lib/rt/itcms/state
   end
   i32.const 0
   return
  end
  global.get $~lib/rt/itcms/visitCount
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
   local.get $2
   i32.ctz
   i32.const 2
   i32.shl
   local.get $0
   i32.add
   i32.load offset=96
  else
   local.get $0
   i32.load
   i32.const -2
   i32.and
   local.tee $1
   if (result i32)
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1424
     i32.const 343
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   block $__inlined_func$~lib/rt/itcms/interrupt
    i32.const 2048
    local.set $1
    loop $do-continue|0
     local.get $1
     call $~lib/rt/itcms/step
     i32.sub
     local.set $1
     global.get $~lib/rt/itcms/state
     i32.eqz
     if
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
      br $__inlined_func$~lib/rt/itcms/interrupt
     end
     local.get $1
     i32.const 0
     i32.gt_s
     br_if $do-continue|0
    end
    global.get $~lib/rt/itcms/total
    local.tee $1
    local.get $1
    global.get $~lib/rt/itcms/threshold
    i32.sub
    i32.const 1024
    i32.lt_u
    i32.const 10
    i32.shl
    i32.add
    global.set $~lib/rt/itcms/threshold
   end
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.tee $3
  call $~lib/rt/tlsf/searchBlock
  local.tee $1
  i32.eqz
  if
   memory.size
   local.tee $2
   i32.const 4
   local.get $3
   i32.load offset=1568
   local.get $2
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   i32.ne
   i32.shl
   i32.const 65563
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $1
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
   local.get $3
   local.get $2
   i32.const 16
   i32.shl
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   local.get $3
   call $~lib/rt/tlsf/searchBlock
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1424
    i32.const 496
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
   i32.const 1424
   i32.const 498
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $1
  call $~lib/rt/tlsf/removeBlock
  local.get $1
  i32.load
  local.tee $2
  i32.const -4
  i32.and
  i32.const 28
  i32.sub
  local.tee $4
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
   local.get $4
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $3
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
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $2
   local.get $2
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
  local.get $1
  local.get $0
  i32.store offset=12
  local.get $1
  i32.const 0
  i32.store offset=16
  global.get $~lib/rt/itcms/fromSpace
  local.tee $0
  i32.load offset=8
  local.set $2
  local.get $1
  global.get $~lib/rt/itcms/white
  local.get $0
  i32.or
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $2
  local.get $2
  i32.load offset=4
  i32.const 3
  i32.and
  local.get $1
  i32.or
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  global.get $~lib/rt/itcms/total
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.const 4
  i32.add
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $1
  i32.const 20
  i32.add
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
  i32.const 0
  local.get $0
  select
  i32.eqz
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
   i32.const 1
   local.get $2
   local.tee $0
   i32.const 4
   i32.ge_u
   select
   i32.eqz
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
 (func $class-overloading/A#a<i32>@virtual (param $0 i32)
  block $default
   block $case2
    block $case1
     block $case0
      local.get $0
      i32.const 8
      i32.sub
      i32.load
      i32.const 4
      i32.sub
      br_table $case0 $case1 $case0 $case0 $case2 $default
     end
     i32.const 1520
     global.set $class-overloading/which
     return
    end
    call $class-overloading/C#a<i32>
    return
   end
   i32.const 1648
   global.set $class-overloading/which
   return
  end
  i32.const 1488
  global.set $class-overloading/which
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  block $invalid
   block $class-overloading/A1
    block $class-overloading/B1
     block $class-overloading/B2
      block $class-overloading/A2
       block $class-overloading/CC
        block $class-overloading/IC
         block $class-overloading/CA
          block $class-overloading/IA
           block $class-overloading/F
            block $class-overloading/E
             block $class-overloading/D
              block $class-overloading/C
               block $class-overloading/B
                block $class-overloading/A
                 block $~lib/arraybuffer/ArrayBufferView
                  block $~lib/string/String
                   block $~lib/arraybuffer/ArrayBuffer
                    local.get $0
                    i32.const 8
                    i32.sub
                    i32.load
                    br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $class-overloading/A $class-overloading/B $class-overloading/C $class-overloading/D $class-overloading/E $class-overloading/F $class-overloading/IA $class-overloading/CA $class-overloading/IC $class-overloading/CC $class-overloading/A2 $class-overloading/B2 $class-overloading/B1 $class-overloading/A1 $invalid
                   end
                   return
                  end
                  return
                 end
                 local.get $0
                 i32.load
                 local.tee $0
                 if
                  local.get $0
                  call $~lib/rt/itcms/__visit
                 end
                 return
                end
                return
               end
               return
              end
              return
             end
             return
            end
            return
           end
           return
          end
          return
         end
         return
        end
        return
       end
       return
      end
      return
     end
     return
    end
    return
   end
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
 (func $class-overloading/C#a<i32>
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1932
  i32.lt_s
  if
   i32.const 18336
   i32.const 18384
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store
  i32.const 1520
  global.set $class-overloading/which
  local.get $0
  i32.const 1520
  i32.store
  local.get $0
  i32.const 1520
  i32.store offset=4
  i32.const 1520
  i32.const 1520
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1552
   i32.const 52
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1616
  global.set $class-overloading/which
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $start:class-overloading
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 1932
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   memory.size
   i32.const 16
   i32.shl
   i32.const 18316
   i32.sub
   i32.const 1
   i32.shr_u
   global.set $~lib/rt/itcms/threshold
   i32.const 1204
   i32.const 1200
   i32.store
   i32.const 1208
   i32.const 1200
   i32.store
   i32.const 1200
   global.set $~lib/rt/itcms/pinSpace
   i32.const 1236
   i32.const 1232
   i32.store
   i32.const 1240
   i32.const 1232
   i32.store
   i32.const 1232
   global.set $~lib/rt/itcms/toSpace
   i32.const 1380
   i32.const 1376
   i32.store
   i32.const 1384
   i32.const 1376
   i32.store
   i32.const 1376
   global.set $~lib/rt/itcms/fromSpace
   i32.const 0
   call $class-overloading/B#constructor
   global.set $class-overloading/a
   global.get $~lib/memory/__stack_pointer
   global.get $class-overloading/a
   local.tee $0
   i32.store
   local.get $0
   call $class-overloading/A#a<i32>@virtual
   global.get $~lib/memory/__stack_pointer
   global.get $class-overloading/which
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 1520
   i32.store offset=4
   local.get $0
   i32.const 1520
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 38
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1056
   global.set $class-overloading/which
   global.get $~lib/memory/__stack_pointer
   global.get $class-overloading/a
   local.tee $0
   i32.store
   block $__inlined_func$class-overloading/A#b@virtual
    block $default
     block $case2
      block $case1
       block $case0
        local.get $0
        i32.const 8
        i32.sub
        i32.load
        i32.const 4
        i32.sub
        br_table $case0 $case1 $case0 $case0 $case2 $default
       end
       i32.const 1520
       global.set $class-overloading/which
       br $__inlined_func$class-overloading/A#b@virtual
      end
      i32.const 1616
      global.set $class-overloading/which
      br $__inlined_func$class-overloading/A#b@virtual
     end
     i32.const 1648
     global.set $class-overloading/which
     br $__inlined_func$class-overloading/A#b@virtual
    end
    i32.const 1488
    global.set $class-overloading/which
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $class-overloading/which
   local.tee $1
   i32.store
   local.get $0
   i32.const 1520
   i32.store offset=4
   local.get $1
   i32.const 1520
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 41
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1056
   global.set $class-overloading/which
   global.get $~lib/memory/__stack_pointer
   global.get $class-overloading/a
   local.tee $0
   i32.store
   block $__inlined_func$class-overloading/A#get:c@virtual
    block $default6
     block $case27
      block $case18
       block $case09
        local.get $0
        i32.const 8
        i32.sub
        i32.load
        i32.const 4
        i32.sub
        br_table $case09 $case18 $case09 $case09 $case27 $default6
       end
       i32.const 1520
       global.set $class-overloading/which
       br $__inlined_func$class-overloading/A#get:c@virtual
      end
      i32.const 1616
      global.set $class-overloading/which
      br $__inlined_func$class-overloading/A#get:c@virtual
     end
     i32.const 1648
     global.set $class-overloading/which
     br $__inlined_func$class-overloading/A#get:c@virtual
    end
    i32.const 1488
    global.set $class-overloading/which
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $class-overloading/which
   local.tee $1
   i32.store
   local.get $0
   i32.const 1520
   i32.store offset=4
   local.get $1
   i32.const 1520
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 44
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1056
   global.set $class-overloading/which
   global.get $~lib/memory/__stack_pointer
   global.get $class-overloading/a
   local.tee $0
   i32.store
   block $__inlined_func$class-overloading/A#b@virtual10
    block $default11
     block $case212
      block $case113
       block $case014
        local.get $0
        i32.const 8
        i32.sub
        i32.load
        i32.const 4
        i32.sub
        br_table $case014 $case113 $case014 $case014 $case212 $default11
       end
       i32.const 1520
       global.set $class-overloading/which
       br $__inlined_func$class-overloading/A#b@virtual10
      end
      i32.const 1616
      global.set $class-overloading/which
      br $__inlined_func$class-overloading/A#b@virtual10
     end
     i32.const 1648
     global.set $class-overloading/which
     br $__inlined_func$class-overloading/A#b@virtual10
    end
    i32.const 1488
    global.set $class-overloading/which
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $class-overloading/which
   local.tee $1
   i32.store
   local.get $0
   i32.const 1520
   i32.store offset=4
   local.get $1
   i32.const 1520
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 47
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1932
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $class-overloading/B#constructor
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $class-overloading/c
   i32.const 1056
   global.set $class-overloading/which
   global.get $~lib/memory/__stack_pointer
   global.get $class-overloading/c
   i32.store
   call $class-overloading/C#a<i32>
   global.get $~lib/memory/__stack_pointer
   global.get $class-overloading/which
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 1616
   i32.store offset=4
   local.get $0
   i32.const 1616
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 71
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1056
   global.set $class-overloading/which
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $class-overloading/c
   i32.store
   i32.const 1616
   global.set $class-overloading/which
   local.get $0
   i32.const 1616
   i32.store
   local.get $0
   i32.const 1616
   i32.store offset=4
   i32.const 1616
   i32.const 1616
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 74
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1056
   global.set $class-overloading/which
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $class-overloading/c
   i32.store
   i32.const 1616
   global.set $class-overloading/which
   local.get $0
   i32.const 1616
   i32.store
   local.get $0
   i32.const 1616
   i32.store offset=4
   i32.const 1616
   i32.const 1616
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 77
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $class-overloading/c
   i32.store
   i32.const 1616
   global.set $class-overloading/which
   local.get $0
   i32.const 1616
   i32.store
   local.get $0
   i32.const 1616
   i32.store offset=4
   i32.const 1616
   i32.const 1616
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 79
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   call $class-overloading/D#constructor
   global.set $class-overloading/a
   i32.const 1056
   global.set $class-overloading/which
   global.get $~lib/memory/__stack_pointer
   global.get $class-overloading/a
   local.tee $0
   i32.store
   local.get $0
   call $class-overloading/A#a<i32>@virtual
   global.get $~lib/memory/__stack_pointer
   global.get $class-overloading/which
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 1520
   i32.store offset=4
   local.get $0
   i32.const 1520
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 89
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1056
   global.set $class-overloading/which
   global.get $~lib/memory/__stack_pointer
   global.get $class-overloading/a
   local.tee $0
   i32.store
   block $__inlined_func$class-overloading/A#b@virtual21
    block $default22
     block $case223
      block $case124
       block $case025
        local.get $0
        i32.const 8
        i32.sub
        i32.load
        i32.const 4
        i32.sub
        br_table $case025 $case124 $case025 $case025 $case223 $default22
       end
       i32.const 1520
       global.set $class-overloading/which
       br $__inlined_func$class-overloading/A#b@virtual21
      end
      i32.const 1616
      global.set $class-overloading/which
      br $__inlined_func$class-overloading/A#b@virtual21
     end
     i32.const 1648
     global.set $class-overloading/which
     br $__inlined_func$class-overloading/A#b@virtual21
    end
    i32.const 1488
    global.set $class-overloading/which
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $class-overloading/which
   local.tee $1
   i32.store
   local.get $0
   i32.const 1520
   i32.store offset=4
   local.get $1
   i32.const 1520
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 92
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1056
   global.set $class-overloading/which
   global.get $~lib/memory/__stack_pointer
   global.get $class-overloading/a
   local.tee $0
   i32.store
   block $__inlined_func$class-overloading/A#get:c@virtual30
    block $default31
     block $case232
      block $case133
       block $case034
        local.get $0
        i32.const 8
        i32.sub
        i32.load
        i32.const 4
        i32.sub
        br_table $case034 $case133 $case034 $case034 $case232 $default31
       end
       i32.const 1520
       global.set $class-overloading/which
       br $__inlined_func$class-overloading/A#get:c@virtual30
      end
      i32.const 1616
      global.set $class-overloading/which
      br $__inlined_func$class-overloading/A#get:c@virtual30
     end
     i32.const 1648
     global.set $class-overloading/which
     br $__inlined_func$class-overloading/A#get:c@virtual30
    end
    i32.const 1488
    global.set $class-overloading/which
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $class-overloading/which
   local.tee $1
   i32.store
   local.get $0
   i32.const 1520
   i32.store offset=4
   local.get $1
   i32.const 1520
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 95
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $class-overloading/a
   local.tee $0
   i32.store
   block $__inlined_func$class-overloading/A#b@virtual39
    block $default40
     block $case241
      block $case142
       block $case043
        local.get $0
        i32.const 8
        i32.sub
        i32.load
        i32.const 4
        i32.sub
        br_table $case043 $case142 $case043 $case043 $case241 $default40
       end
       i32.const 1520
       global.set $class-overloading/which
       br $__inlined_func$class-overloading/A#b@virtual39
      end
      i32.const 1616
      global.set $class-overloading/which
      br $__inlined_func$class-overloading/A#b@virtual39
     end
     i32.const 1648
     global.set $class-overloading/which
     br $__inlined_func$class-overloading/A#b@virtual39
    end
    i32.const 1488
    global.set $class-overloading/which
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $class-overloading/which
   local.tee $1
   i32.store
   local.get $0
   i32.const 1520
   i32.store offset=4
   local.get $1
   i32.const 1520
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
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
   global.get $~lib/memory/__stack_pointer
   global.get $class-overloading/a
   local.tee $0
   i32.store
   local.get $0
   call $class-overloading/A#a<i32>@virtual
   global.get $~lib/memory/__stack_pointer
   global.get $class-overloading/which
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 1520
   i32.store offset=4
   local.get $0
   i32.const 1520
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 107
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1056
   global.set $class-overloading/which
   global.get $~lib/memory/__stack_pointer
   global.get $class-overloading/a
   local.tee $0
   i32.store
   block $__inlined_func$class-overloading/A#b@virtual48
    block $default49
     block $case250
      block $case151
       block $case052
        local.get $0
        i32.const 8
        i32.sub
        i32.load
        i32.const 4
        i32.sub
        br_table $case052 $case151 $case052 $case052 $case250 $default49
       end
       i32.const 1520
       global.set $class-overloading/which
       br $__inlined_func$class-overloading/A#b@virtual48
      end
      i32.const 1616
      global.set $class-overloading/which
      br $__inlined_func$class-overloading/A#b@virtual48
     end
     i32.const 1648
     global.set $class-overloading/which
     br $__inlined_func$class-overloading/A#b@virtual48
    end
    i32.const 1488
    global.set $class-overloading/which
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $class-overloading/which
   local.tee $1
   i32.store
   local.get $0
   i32.const 1520
   i32.store offset=4
   local.get $1
   i32.const 1520
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 110
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1056
   global.set $class-overloading/which
   global.get $~lib/memory/__stack_pointer
   global.get $class-overloading/a
   local.tee $0
   i32.store
   block $__inlined_func$class-overloading/A#get:c@virtual57
    block $default58
     block $case259
      block $case160
       block $case061
        local.get $0
        i32.const 8
        i32.sub
        i32.load
        i32.const 4
        i32.sub
        br_table $case061 $case160 $case061 $case061 $case259 $default58
       end
       i32.const 1520
       global.set $class-overloading/which
       br $__inlined_func$class-overloading/A#get:c@virtual57
      end
      i32.const 1616
      global.set $class-overloading/which
      br $__inlined_func$class-overloading/A#get:c@virtual57
     end
     i32.const 1648
     global.set $class-overloading/which
     br $__inlined_func$class-overloading/A#get:c@virtual57
    end
    i32.const 1488
    global.set $class-overloading/which
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $class-overloading/which
   local.tee $1
   i32.store
   local.get $0
   i32.const 1520
   i32.store offset=4
   local.get $1
   i32.const 1520
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 113
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $class-overloading/a
   local.tee $0
   i32.store
   block $__inlined_func$class-overloading/A#b@virtual66
    block $default67
     block $case268
      block $case169
       block $case070
        local.get $0
        i32.const 8
        i32.sub
        i32.load
        i32.const 4
        i32.sub
        br_table $case070 $case169 $case070 $case070 $case268 $default67
       end
       i32.const 1520
       global.set $class-overloading/which
       br $__inlined_func$class-overloading/A#b@virtual66
      end
      i32.const 1616
      global.set $class-overloading/which
      br $__inlined_func$class-overloading/A#b@virtual66
     end
     i32.const 1648
     global.set $class-overloading/which
     br $__inlined_func$class-overloading/A#b@virtual66
    end
    i32.const 1488
    global.set $class-overloading/which
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $class-overloading/which
   local.tee $1
   i32.store
   local.get $0
   i32.const 1520
   i32.store offset=4
   local.get $1
   i32.const 1520
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 115
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1932
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 8
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $class-overloading/E#constructor
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $class-overloading/a
   i32.const 1056
   global.set $class-overloading/which
   global.get $~lib/memory/__stack_pointer
   global.get $class-overloading/a
   local.tee $0
   i32.store
   local.get $0
   call $class-overloading/A#a<i32>@virtual
   global.get $~lib/memory/__stack_pointer
   global.get $class-overloading/which
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 1648
   i32.store offset=4
   local.get $0
   i32.const 1648
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 137
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1056
   global.set $class-overloading/which
   global.get $~lib/memory/__stack_pointer
   global.get $class-overloading/a
   local.tee $0
   i32.store
   block $__inlined_func$class-overloading/A#b@virtual75
    block $default76
     block $case277
      block $case178
       block $case079
        local.get $0
        i32.const 8
        i32.sub
        i32.load
        i32.const 4
        i32.sub
        br_table $case079 $case178 $case079 $case079 $case277 $default76
       end
       i32.const 1520
       global.set $class-overloading/which
       br $__inlined_func$class-overloading/A#b@virtual75
      end
      i32.const 1616
      global.set $class-overloading/which
      br $__inlined_func$class-overloading/A#b@virtual75
     end
     i32.const 1648
     global.set $class-overloading/which
     br $__inlined_func$class-overloading/A#b@virtual75
    end
    i32.const 1488
    global.set $class-overloading/which
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $class-overloading/which
   local.tee $1
   i32.store
   local.get $0
   i32.const 1648
   i32.store offset=4
   local.get $1
   i32.const 1648
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 140
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1056
   global.set $class-overloading/which
   global.get $~lib/memory/__stack_pointer
   global.get $class-overloading/a
   local.tee $0
   i32.store
   block $__inlined_func$class-overloading/A#get:c@virtual84
    block $default85
     block $case286
      block $case187
       block $case088
        local.get $0
        i32.const 8
        i32.sub
        i32.load
        i32.const 4
        i32.sub
        br_table $case088 $case187 $case088 $case088 $case286 $default85
       end
       i32.const 1520
       global.set $class-overloading/which
       br $__inlined_func$class-overloading/A#get:c@virtual84
      end
      i32.const 1616
      global.set $class-overloading/which
      br $__inlined_func$class-overloading/A#get:c@virtual84
     end
     i32.const 1648
     global.set $class-overloading/which
     br $__inlined_func$class-overloading/A#get:c@virtual84
    end
    i32.const 1488
    global.set $class-overloading/which
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $class-overloading/which
   local.tee $1
   i32.store
   local.get $0
   i32.const 1648
   i32.store offset=4
   local.get $1
   i32.const 1648
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 143
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1056
   global.set $class-overloading/which
   global.get $~lib/memory/__stack_pointer
   global.get $class-overloading/a
   local.tee $0
   i32.store
   block $__inlined_func$class-overloading/A#b@virtual93
    block $default94
     block $case295
      block $case196
       block $case097
        local.get $0
        i32.const 8
        i32.sub
        i32.load
        i32.const 4
        i32.sub
        br_table $case097 $case196 $case097 $case097 $case295 $default94
       end
       i32.const 1520
       global.set $class-overloading/which
       br $__inlined_func$class-overloading/A#b@virtual93
      end
      i32.const 1616
      global.set $class-overloading/which
      br $__inlined_func$class-overloading/A#b@virtual93
     end
     i32.const 1648
     global.set $class-overloading/which
     br $__inlined_func$class-overloading/A#b@virtual93
    end
    i32.const 1488
    global.set $class-overloading/which
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $class-overloading/which
   local.tee $1
   i32.store
   local.get $0
   i32.const 1648
   i32.store offset=4
   local.get $1
   i32.const 1648
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 146
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1932
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 10
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $class-overloading/ia
   i32.const 1056
   global.set $class-overloading/which
   global.get $~lib/memory/__stack_pointer
   global.get $class-overloading/ia
   local.tee $0
   i32.store
   block $__inlined_func$class-overloading/IA#foo@virtual
    block $default102
     block $case1103
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
       br_if $case1103
       br $default102
      end
      i32.const 1680
      global.set $class-overloading/which
      br $__inlined_func$class-overloading/IA#foo@virtual
     end
     i32.const 1712
     global.set $class-overloading/which
     br $__inlined_func$class-overloading/IA#foo@virtual
    end
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $class-overloading/which
   local.tee $1
   i32.store
   local.get $0
   i32.const 1680
   i32.store offset=4
   local.get $1
   i32.const 1680
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 162
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1932
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 12
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $class-overloading/ic
   i32.const 1056
   global.set $class-overloading/which
   global.get $~lib/memory/__stack_pointer
   global.get $class-overloading/ic
   local.tee $0
   i32.store
   block $__inlined_func$class-overloading/IA#foo@virtual105
    block $default106
     block $case1107
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
       br_if $case1107
       br $default106
      end
      i32.const 1680
      global.set $class-overloading/which
      br $__inlined_func$class-overloading/IA#foo@virtual105
     end
     i32.const 1712
     global.set $class-overloading/which
     br $__inlined_func$class-overloading/IA#foo@virtual105
    end
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $class-overloading/which
   local.tee $1
   i32.store
   local.get $0
   i32.const 1712
   i32.store offset=4
   local.get $1
   i32.const 1712
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 177
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1932
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 14
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1932
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $0
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 13
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $class-overloading/b2
   global.get $~lib/memory/__stack_pointer
   global.get $class-overloading/b2
   local.tee $0
   i32.store
   block $__inlined_func$class-overloading/A2#foo@virtual
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    i32.const 14
    i32.eq
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 1932
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $0
     i32.const 0
     i32.store
     local.get $0
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 1932
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $0
     i32.const 0
     i32.store
     local.get $0
     i32.const 15
     call $~lib/rt/itcms/__new
     local.tee $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 1932
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.store
     local.get $0
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      i32.const 16
      call $~lib/rt/itcms/__new
      local.tee $0
      i32.store
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     i32.const 15
     i32.ne
     if
      i32.const 1744
      i32.const 1552
      i32.const 186
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     br $__inlined_func$class-overloading/A2#foo@virtual
    end
    i32.const 1744
    i32.const 1552
    i32.const 198
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 18336
  i32.const 18384
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $class-overloading/B#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 1932
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $0
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $1
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1932
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $0
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 3
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 18336
  i32.const 18384
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $class-overloading/D#constructor (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1932
  i32.lt_s
  if
   i32.const 18336
   i32.const 18384
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 6
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $class-overloading/B#constructor
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $class-overloading/E#constructor (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1932
  i32.lt_s
  if
   i32.const 18336
   i32.const 18384
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 7
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $class-overloading/D#constructor
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
)
