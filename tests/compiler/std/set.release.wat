(module
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i64_=>_none (func (param i32 i64)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (type $i32_i64_=>_i32 (func (param i32 i64) (result i32)))
 (type $i32_i32_=>_i64 (func (param i32 i32) (result i64)))
 (type $i32_f32_=>_none (func (param i32 f32)))
 (type $i32_f64_=>_none (func (param i32 f64)))
 (type $i32_i32_i64_=>_none (func (param i32 i32 i64)))
 (type $i32_f32_i32_=>_i32 (func (param i32 f32 i32) (result i32)))
 (type $i32_f32_=>_i32 (func (param i32 f32) (result i32)))
 (type $i32_i32_=>_f32 (func (param i32 i32) (result f32)))
 (type $i32_f64_i32_=>_i32 (func (param i32 f64 i32) (result i32)))
 (type $i32_f64_=>_i32 (func (param i32 f64) (result i32)))
 (type $i32_i32_=>_f64 (func (param i32 i32) (result f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
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
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 34516))
 (memory $0 1)
 (data $0 (i32.const 1036) "<")
 (data $0.1 (i32.const 1048) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $1 (i32.const 1100) "<")
 (data $1.1 (i32.const 1112) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data $4 (i32.const 1228) "<")
 (data $4.1 (i32.const 1240) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $5 (i32.const 1292) ",")
 (data $5.1 (i32.const 1304) "\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data $7 (i32.const 1372) "<")
 (data $7.1 (i32.const 1384) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data $8 (i32.const 1436) ",")
 (data $8.1 (i32.const 1448) "\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data $9 (i32.const 1484) "<")
 (data $9.1 (i32.const 1496) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data $10 (i32.const 1548) ",")
 (data $10.1 (i32.const 1560) "\02\00\00\00\14\00\00\00s\00t\00d\00/\00s\00e\00t\00.\00t\00s")
 (data $11 (i32.const 1596) ",")
 (data $11.1 (i32.const 1608) "\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $12 (i32.const 1648) "\18\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00H\08\00\00B\08\00\00H\00\00\00B\00\00\00\88\08\00\00\82\08\00\00\88\00\00\00\82\00\00\00\08\t\00\00\02\t\00\00\08\01\00\00\02\01\00\00\08\n\00\00\02\n\00\00\08\02\00\00\02\02\00\00\08\19\00\00\02\19\00\00\08\1a\00\00\02\1a")
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  i32.const 1248
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1456
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1056
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  global.get $~lib/rt/itcms/pinSpace
  local.tee $1
  i32.load $0 offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.ne
   if
    local.get $0
    i32.load $0 offset=4
    i32.const 3
    i32.and
    i32.const 3
    i32.ne
    if
     i32.const 0
     i32.const 1120
     i32.const 160
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 20
    i32.add
    call $~lib/rt/__visit_members
    local.get $0
    i32.load $0 offset=4
    i32.const -4
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $0
   i32.load $0 offset=8
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1120
    i32.const 148
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   global.set $~lib/rt/itcms/iter
  end
  block $__inlined_func$~lib/rt/itcms/Object#unlink
   local.get $0
   i32.load $0 offset=4
   i32.const -4
   i32.and
   local.tee $1
   i32.eqz
   if
    local.get $0
    i32.load $0 offset=8
    i32.eqz
    local.get $0
    i32.const 34516
    i32.lt_u
    i32.and
    i32.eqz
    if
     i32.const 0
     i32.const 1120
     i32.const 128
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    br $__inlined_func$~lib/rt/itcms/Object#unlink
   end
   local.get $0
   i32.load $0 offset=8
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 1120
    i32.const 132
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   local.get $2
   i32.store $0 offset=8
   local.get $2
   local.get $1
   local.get $2
   i32.load $0 offset=4
   i32.const 3
   i32.and
   i32.or
   i32.store $0 offset=4
  end
  global.get $~lib/rt/itcms/toSpace
  local.set $2
  local.get $0
  i32.load $0 offset=12
  local.tee $1
  i32.const 2
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 1648
   i32.load $0
   i32.gt_u
   if
    i32.const 1248
    i32.const 1312
    i32.const 21
    i32.const 28
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 2
   i32.shl
   i32.const 1652
   i32.add
   i32.load $0
   i32.const 32
   i32.and
  end
  local.set $3
  local.get $2
  i32.load $0 offset=8
  local.set $1
  local.get $0
  global.get $~lib/rt/itcms/white
  i32.eqz
  i32.const 2
  local.get $3
  select
  local.get $2
  i32.or
  i32.store $0 offset=4
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $1
  local.get $0
  local.get $1
  i32.load $0 offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store $0 offset=4
  local.get $2
  local.get $0
  i32.store $0 offset=8
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load $0
  local.tee $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
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
   i32.const 1392
   i32.const 270
   i32.const 14
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
  else
   i32.const 31
   i32.const 1073741820
   local.get $2
   local.get $2
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.tee $4
   i32.const 7
   i32.sub
   local.set $3
   local.get $2
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  i32.const 16
  i32.lt_u
  local.get $3
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load $0 offset=8
  local.set $5
  local.get $1
  i32.load $0 offset=4
  local.tee $4
  if
   local.get $4
   local.get $5
   i32.store $0 offset=8
  end
  local.get $5
  if
   local.get $5
   local.get $4
   i32.store $0 offset=4
  end
  local.get $1
  local.get $0
  local.get $3
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load $0 offset=96
  i32.eq
  if
   local.get $0
   local.get $3
   i32.const 4
   i32.shl
   local.get $2
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $5
   i32.store $0 offset=96
   local.get $5
   i32.eqz
   if
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    local.tee $1
    i32.load $0 offset=4
    i32.const -2
    local.get $2
    i32.rotl
    i32.and
    local.set $2
    local.get $1
    local.get $2
    i32.store $0 offset=4
    local.get $2
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load $0
     i32.const -2
     local.get $3
     i32.rotl
     i32.and
     i32.store $0
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
   i32.const 1392
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load $0
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load $0
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load $0
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
   i32.store $0
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load $0
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   i32.load $0
   local.set $2
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load $0
   local.tee $1
   i32.load $0
   local.tee $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1392
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
   i32.store $0
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.or
  i32.store $0
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $1
  i32.const 4
  i32.add
  local.get $2
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 1392
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store $0
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $2
   local.get $2
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $5
   local.get $2
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  i32.const 16
  i32.lt_u
  local.get $5
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load $0 offset=96
  local.set $3
  local.get $1
  i32.const 0
  i32.store $0 offset=4
  local.get $1
  local.get $3
  i32.store $0 offset=8
  local.get $3
  if
   local.get $3
   local.get $1
   i32.store $0 offset=4
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store $0 offset=96
  local.get $0
  local.get $0
  i32.load $0
  i32.const 1
  local.get $5
  i32.shl
  i32.or
  i32.store $0
  local.get $0
  local.get $5
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  local.get $0
  i32.load $0 offset=4
  i32.const 1
  local.get $2
  i32.shl
  i32.or
  i32.store $0 offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $2
  i32.gt_u
  if
   i32.const 0
   i32.const 1392
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
  local.get $0
  i32.load $0 offset=1568
  local.tee $4
  if
   local.get $4
   i32.const 4
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1392
    i32.const 384
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
    local.get $4
    i32.load $0
    local.set $3
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
   end
  else
   local.get $0
   i32.const 1572
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1392
    i32.const 397
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  i32.const -16
  i32.and
  local.get $1
  i32.sub
  local.tee $2
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $3
  i32.const 2
  i32.and
  local.get $2
  i32.const 8
  i32.sub
  local.tee $2
  i32.const 1
  i32.or
  i32.or
  i32.store $0
  local.get $1
  i32.const 0
  i32.store $0 offset=4
  local.get $1
  i32.const 0
  i32.store $0 offset=8
  local.get $1
  i32.const 4
  i32.add
  local.get $2
  i32.add
  local.tee $2
  i32.const 2
  i32.store $0
  local.get $0
  local.get $2
  i32.store $0 offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  memory.size $0
  local.tee $1
  i32.const 0
  i32.le_s
  if (result i32)
   i32.const 1
   local.get $1
   i32.sub
   memory.grow $0
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  i32.const 34528
  i32.const 0
  i32.store $0
  i32.const 36096
  i32.const 0
  i32.store $0
  loop $for-loop|0
   local.get $0
   i32.const 23
   i32.lt_u
   if
    local.get $0
    i32.const 2
    i32.shl
    i32.const 34528
    i32.add
    i32.const 0
    i32.store $0 offset=4
    i32.const 0
    local.set $1
    loop $for-loop|1
     local.get $1
     i32.const 16
     i32.lt_u
     if
      local.get $0
      i32.const 4
      i32.shl
      local.get $1
      i32.add
      i32.const 2
      i32.shl
      i32.const 34528
      i32.add
      i32.const 0
      i32.store $0 offset=96
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  i32.const 34528
  i32.const 36100
  memory.size $0
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 34528
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
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
     global.get $~lib/rt/itcms/visitCount
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $1
    global.get $~lib/rt/itcms/iter
    i32.load $0 offset=4
    i32.const -4
    i32.and
    local.set $0
    loop $while-continue|1
     local.get $0
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     if
      local.get $0
      global.set $~lib/rt/itcms/iter
      local.get $1
      local.get $0
      i32.load $0 offset=4
      i32.const 3
      i32.and
      i32.ne
      if
       local.get $0
       local.get $0
       i32.load $0 offset=4
       i32.const -4
       i32.and
       local.get $1
       i32.or
       i32.store $0 offset=4
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $0
       i32.const 20
       i32.add
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       return
      end
      local.get $0
      i32.load $0 offset=4
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
    i32.load $0 offset=4
    i32.const -4
    i32.and
    i32.eq
    if
     global.get $~lib/memory/__stack_pointer
     local.set $0
     loop $while-continue|0
      local.get $0
      i32.const 34516
      i32.lt_u
      if
       local.get $0
       i32.load $0
       local.tee $2
       if
        local.get $2
        call $byn-split-outlined-A$~lib/rt/itcms/__visit
       end
       local.get $0
       i32.const 4
       i32.add
       local.set $0
       br $while-continue|0
      end
     end
     global.get $~lib/rt/itcms/iter
     i32.load $0 offset=4
     i32.const -4
     i32.and
     local.set $0
     loop $while-continue|2
      local.get $0
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      if
       local.get $1
       local.get $0
       i32.load $0 offset=4
       i32.const 3
       i32.and
       i32.ne
       if
        local.get $0
        local.get $0
        i32.load $0 offset=4
        i32.const -4
        i32.and
        local.get $1
        i32.or
        i32.store $0 offset=4
        local.get $0
        i32.const 20
        i32.add
        call $~lib/rt/__visit_members
       end
       local.get $0
       i32.load $0 offset=4
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
     i32.load $0 offset=4
     i32.const -4
     i32.and
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    return
   end
   global.get $~lib/rt/itcms/iter
   local.tee $0
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $0
    i32.load $0 offset=4
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
     i32.const 1120
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 34516
    i32.lt_u
    if
     local.get $0
     i32.const 0
     i32.store $0 offset=4
     local.get $0
     i32.const 0
     i32.store $0 offset=8
    else
     global.get $~lib/rt/itcms/total
     local.get $0
     i32.load $0
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
     i32.const 34516
     i32.ge_u
     if
      global.get $~lib/rt/tlsf/ROOT
      i32.eqz
      if
       call $~lib/rt/tlsf/initialize
      end
      global.get $~lib/rt/tlsf/ROOT
      local.set $1
      local.get $0
      i32.const 4
      i32.sub
      local.set $2
      local.get $0
      i32.const 15
      i32.and
      i32.const 1
      local.get $0
      select
      if (result i32)
       i32.const 1
      else
       local.get $2
       i32.load $0
       i32.const 1
       i32.and
      end
      if
       i32.const 0
       i32.const 1392
       i32.const 559
       i32.const 3
       call $~lib/builtins/abort
       unreachable
      end
      local.get $2
      local.get $2
      i32.load $0
      i32.const 1
      i32.or
      i32.store $0
      local.get $1
      local.get $2
      call $~lib/rt/tlsf/insertBlock
     end
    end
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   local.tee $0
   local.get $0
   i32.store $0 offset=4
   local.get $0
   local.get $0
   i32.store $0 offset=8
   i32.const 0
   global.set $~lib/rt/itcms/state
  end
  i32.const 0
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 4
   i32.shr_u
  else
   i32.const 31
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
   local.get $1
   local.get $1
   i32.const 536870910
   i32.lt_u
   select
   local.tee $1
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $2
   local.get $1
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $1
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
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
  i32.load $0 offset=4
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
   i32.load $0 offset=96
  else
   local.get $0
   i32.load $0
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
    i32.load $0 offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1392
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
    i32.load $0 offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 261
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   block $__inlined_func$~lib/rt/itcms/interrupt
    i32.const 2048
    local.set $2
    loop $do-loop|0
     local.get $2
     call $~lib/rt/itcms/step
     i32.sub
     local.set $2
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
     local.get $2
     i32.const 0
     i32.gt_s
     br_if $do-loop|0
    end
    global.get $~lib/rt/itcms/total
    local.tee $2
    local.get $2
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
  local.set $4
  local.get $0
  i32.const 16
  i32.add
  local.tee $2
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1056
   i32.const 1392
   i32.const 458
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 12
  local.get $2
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.get $2
  i32.const 12
  i32.le_u
  select
  local.tee $5
  call $~lib/rt/tlsf/searchBlock
  local.tee $2
  i32.eqz
  if
   memory.size $0
   local.tee $2
   i32.const 4
   local.get $4
   i32.load $0 offset=1568
   local.get $2
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   i32.ne
   i32.shl
   local.get $5
   i32.const 1
   i32.const 27
   local.get $5
   i32.clz
   i32.sub
   i32.shl
   i32.const 1
   i32.sub
   i32.add
   local.get $5
   local.get $5
   i32.const 536870910
   i32.lt_u
   select
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $3
   local.get $2
   local.get $3
   i32.gt_s
   select
   memory.grow $0
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow $0
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $4
   local.get $2
   i32.const 16
   i32.shl
   memory.size $0
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   local.get $4
   local.get $5
   call $~lib/rt/tlsf/searchBlock
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 1392
    i32.const 496
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $5
  local.get $2
  i32.load $0
  i32.const -4
  i32.and
  i32.gt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 498
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $2
  call $~lib/rt/tlsf/removeBlock
  local.get $2
  i32.load $0
  local.set $3
  local.get $5
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1392
   i32.const 357
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.get $5
  i32.sub
  local.tee $6
  i32.const 16
  i32.ge_u
  if
   local.get $2
   local.get $5
   local.get $3
   i32.const 2
   i32.and
   i32.or
   i32.store $0
   local.get $2
   i32.const 4
   i32.add
   local.get $5
   i32.add
   local.tee $3
   local.get $6
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store $0
   local.get $4
   local.get $3
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $2
   local.get $3
   i32.const -2
   i32.and
   i32.store $0
   local.get $2
   i32.const 4
   i32.add
   local.get $2
   i32.load $0
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   local.get $3
   i32.load $0
   i32.const -3
   i32.and
   i32.store $0
  end
  local.get $2
  local.get $1
  i32.store $0 offset=12
  local.get $2
  local.get $0
  i32.store $0 offset=16
  global.get $~lib/rt/itcms/fromSpace
  local.tee $1
  i32.load $0 offset=8
  local.set $3
  local.get $2
  local.get $1
  global.get $~lib/rt/itcms/white
  i32.or
  i32.store $0 offset=4
  local.get $2
  local.get $3
  i32.store $0 offset=8
  local.get $3
  local.get $2
  local.get $3
  i32.load $0 offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store $0 offset=4
  local.get $1
  local.get $2
  i32.store $0 offset=8
  global.get $~lib/rt/itcms/total
  local.get $2
  i32.load $0
  i32.const -4
  i32.and
  i32.const 4
  i32.add
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $2
  i32.const 20
  i32.add
  local.tee $1
  i32.const 0
  local.get $0
  memory.fill $0
  local.get $1
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  block $folding-inner2
   block $folding-inner1
    block $folding-inner0
     block $invalid
      block $~lib/arraybuffer/ArrayBufferView
       block $~lib/string/String
        block $~lib/arraybuffer/ArrayBuffer
         block $~lib/object/Object
          local.get $0
          i32.const 8
          i32.sub
          i32.load $0
          br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $folding-inner0 $folding-inner1 $folding-inner0 $folding-inner1 $folding-inner0 $folding-inner1 $folding-inner0 $folding-inner1 $folding-inner0 $folding-inner1 $folding-inner0 $folding-inner1 $folding-inner0 $folding-inner1 $folding-inner0 $folding-inner1 $folding-inner0 $folding-inner1 $folding-inner0 $folding-inner1 $invalid
         end
         return
        end
        return
       end
       return
      end
      local.get $0
      i32.load $0
      local.tee $0
      if
       local.get $0
       call $byn-split-outlined-A$~lib/rt/itcms/__visit
      end
      return
     end
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 1748
    i32.lt_s
    br_if $folding-inner2
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    i32.const 0
    i32.store $0
    local.get $1
    local.get $0
    i32.store $0
    local.get $0
    i32.load $0
    local.tee $1
    if
     local.get $1
     call $byn-split-outlined-A$~lib/rt/itcms/__visit
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0
    local.get $0
    i32.load $0 offset=8
    local.tee $0
    if
     local.get $0
     call $byn-split-outlined-A$~lib/rt/itcms/__visit
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    return
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1748
   i32.lt_s
   br_if $folding-inner2
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store $0
   local.get $1
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0
   local.tee $0
   if
    local.get $0
    call $byn-split-outlined-A$~lib/rt/itcms/__visit
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 34544
  i32.const 34592
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~start
  memory.size $0
  i32.const 16
  i32.shl
  i32.const 34516
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 1172
  i32.const 1168
  i32.store $0
  i32.const 1176
  i32.const 1168
  i32.store $0
  i32.const 1168
  global.set $~lib/rt/itcms/pinSpace
  i32.const 1204
  i32.const 1200
  i32.store $0
  i32.const 1208
  i32.const 1200
  i32.store $0
  i32.const 1200
  global.set $~lib/rt/itcms/toSpace
  i32.const 1348
  i32.const 1344
  i32.store $0
  i32.const 1352
  i32.const 1344
  i32.store $0
  i32.const 1344
  global.set $~lib/rt/itcms/fromSpace
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
  global.get $~lib/rt/itcms/state
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    global.get $~lib/rt/itcms/state
    if
     call $~lib/rt/itcms/step
     drop
     br $while-continue|0
    end
   end
  end
  call $~lib/rt/itcms/step
  drop
  loop $while-continue|1
   global.get $~lib/rt/itcms/state
   if
    call $~lib/rt/itcms/step
    drop
    br $while-continue|1
   end
  end
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
 )
 (func $~lib/set/Set<i8>#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store $0
  local.get $0
  i32.const 0
  i32.store $0 offset=8
  local.get $0
  i32.const 24
  i32.const 4
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=4
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.store $0
  local.get $1
  if
   local.get $0
   local.get $1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 3
  i32.store $0 offset=4
  local.get $1
  local.get $0
  i32.store $0 offset=4
  i32.const 32
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $1
  if
   local.get $0
   local.get $1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 4
  i32.store $0 offset=12
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 0
  i32.store $0 offset=16
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 0
  i32.store $0 offset=20
  local.get $1
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/set/Set<i8>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store $0
  local.get $3
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0
  local.set $4
  local.get $3
  local.get $0
  i32.store $0
  local.get $4
  local.get $2
  local.get $0
  i32.load $0 offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load $0
  local.set $0
  loop $while-continue|0
   local.get $0
   if
    local.get $0
    i32.load $0 offset=4
    local.tee $2
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $0
     i32.load8_u $0
     local.get $1
     i32.const 255
     i32.and
     i32.eq
    end
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $0
     return
    end
    local.get $2
    i32.const -2
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $~lib/set/Set<i8>#has (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  local.get $1
  i32.extend8_s
  i32.const -1028477379
  i32.mul
  i32.const 374761394
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.tee $0
  local.get $0
  i32.const 15
  i32.shr_u
  i32.xor
  i32.const -2048144777
  i32.mul
  local.tee $0
  local.get $0
  i32.const 13
  i32.shr_u
  i32.xor
  i32.const -1028477379
  i32.mul
  local.tee $0
  local.get $0
  i32.const 16
  i32.shr_u
  i32.xor
  call $~lib/set/Set<i8>#find
  i32.const 0
  i32.ne
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/set/Set<i8>#rehash (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  i64.const 0
  i64.store $0 offset=8
  local.get $2
  local.get $1
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $7
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $5
  i32.const 3
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $3
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=8
  local.get $0
  i32.load $0 offset=8
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=8
  local.get $4
  local.get $0
  i32.load $0 offset=16
  i32.const 3
  i32.shl
  i32.add
  local.set $6
  local.get $3
  local.set $2
  loop $while-continue|0
   local.get $4
   local.get $6
   i32.ne
   if
    local.get $4
    i32.load $0 offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $2
     local.get $4
     i32.load8_s $0
     local.tee $8
     i32.store8 $0
     local.get $2
     local.get $7
     local.get $1
     local.get $8
     i32.extend8_s
     i32.const -1028477379
     i32.mul
     i32.const 374761394
     i32.add
     i32.const 17
     i32.rotl
     i32.const 668265263
     i32.mul
     local.tee $8
     i32.const 15
     i32.shr_u
     local.get $8
     i32.xor
     i32.const -2048144777
     i32.mul
     local.tee $8
     i32.const 13
     i32.shr_u
     local.get $8
     i32.xor
     i32.const -1028477379
     i32.mul
     local.tee $8
     i32.const 16
     i32.shr_u
     local.get $8
     i32.xor
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $8
     i32.load $0
     i32.store $0 offset=4
     local.get $8
     local.get $2
     i32.store $0
     local.get $2
     i32.const 8
     i32.add
     local.set $2
    end
    local.get $4
    i32.const 8
    i32.add
    local.set $4
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0 offset=8
  local.get $2
  local.get $7
  i32.store $0 offset=12
  local.get $0
  local.get $7
  i32.store $0
  local.get $7
  if
   local.get $0
   local.get $7
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.store $0 offset=4
  local.get $2
  local.get $0
  i32.store $0 offset=8
  local.get $2
  local.get $3
  i32.store $0 offset=12
  local.get $0
  local.get $3
  i32.store $0 offset=8
  local.get $3
  if
   local.get $0
   local.get $3
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=8
  local.get $0
  local.get $5
  i32.store $0 offset=12
  local.get $1
  local.get $0
  i32.store $0 offset=8
  local.get $1
  local.get $0
  i32.store $0 offset=12
  local.get $0
  local.get $0
  i32.load $0 offset=20
  i32.store $0 offset=16
  local.get $1
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/set/Set<i8>#add (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  local.get $1
  i32.extend8_s
  i32.const -1028477379
  i32.mul
  i32.const 374761394
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.tee $2
  i32.const 15
  i32.shr_u
  local.get $2
  i32.xor
  i32.const -2048144777
  i32.mul
  local.tee $2
  i32.const 13
  i32.shr_u
  local.get $2
  i32.xor
  i32.const -1028477379
  i32.mul
  local.tee $2
  i32.const 16
  i32.shr_u
  local.get $2
  i32.xor
  local.tee $3
  call $~lib/set/Set<i8>#find
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=16
   local.set $4
   local.get $2
   local.get $0
   i32.store $0
   local.get $4
   local.get $0
   i32.load $0 offset=12
   i32.eq
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store $0
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0 offset=20
    local.set $4
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    local.get $4
    local.get $0
    i32.load $0 offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=4
     local.get $0
     i32.load $0 offset=4
    else
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=4
     local.get $0
     i32.load $0 offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<i8>#rehash
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=8
   local.set $2
   local.get $4
   local.get $0
   i32.store $0
   local.get $4
   local.get $0
   i32.store $0 offset=4
   local.get $0
   local.get $0
   i32.load $0 offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store $0 offset=16
   local.get $2
   local.get $5
   i32.const 3
   i32.shl
   i32.add
   local.tee $2
   local.get $1
   i32.store8 $0
   local.get $4
   local.get $0
   i32.store $0
   local.get $4
   local.get $0
   i32.store $0 offset=4
   local.get $0
   local.get $0
   i32.load $0 offset=20
   i32.const 1
   i32.add
   i32.store $0 offset=20
   local.get $4
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0
   local.set $1
   local.get $4
   local.get $0
   i32.store $0
   local.get $2
   local.get $1
   local.get $3
   local.get $0
   i32.load $0 offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load $0
   i32.store $0 offset=4
   local.get $0
   local.get $2
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/set/Set<i8>#get:size (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store $0
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=20
  local.set $0
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $4
  i32.const 0
  i32.store $0
  local.get $4
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.load $0 offset=8
  local.tee $5
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 1073741820
   local.get $2
   i32.shr_u
   i32.gt_u
   if
    i32.const 1456
    i32.const 1616
    i32.const 19
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0
   local.set $4
   i32.const 8
   local.get $1
   local.get $1
   i32.const 8
   i32.le_u
   select
   local.get $2
   i32.shl
   local.set $1
   local.get $3
   if
    i32.const 1073741820
    local.get $5
    i32.const 1
    i32.shl
    local.tee $2
    local.get $2
    i32.const 1073741820
    i32.ge_u
    select
    local.tee $2
    local.get $1
    local.get $1
    local.get $2
    i32.lt_u
    select
    local.set $1
   end
   block $__inlined_func$~lib/rt/itcms/__renew
    local.get $4
    i32.const 20
    i32.sub
    local.tee $3
    i32.load $0
    i32.const -4
    i32.and
    i32.const 16
    i32.sub
    local.get $1
    i32.ge_u
    if
     local.get $3
     local.get $1
     i32.store $0 offset=16
     local.get $4
     local.set $2
     br $__inlined_func$~lib/rt/itcms/__renew
    end
    local.get $1
    local.get $3
    i32.load $0 offset=12
    call $~lib/rt/itcms/__new
    local.tee $2
    local.get $4
    local.get $1
    local.get $3
    i32.load $0 offset=16
    local.tee $3
    local.get $1
    local.get $3
    i32.lt_u
    select
    memory.copy $0 $0
   end
   local.get $2
   local.get $4
   i32.ne
   if
    local.get $0
    local.get $2
    i32.store $0
    local.get $0
    local.get $2
    i32.store $0 offset=4
    local.get $2
    if
     local.get $0
     local.get $2
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
   end
   local.get $0
   local.get $1
   i32.store $0 offset=8
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i8>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store $0
  local.get $3
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.load $0 offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 1248
    i32.const 1616
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   i32.const 0
   i32.const 1
   call $~lib/array/ensureCapacity
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   local.get $3
   i32.store $0 offset=12
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.load $0 offset=4
  i32.add
  local.get $2
  i32.store8 $0
  local.get $3
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i8>#set:length (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $0
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/array/ensureCapacity
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  i32.store $0 offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i8>#get:length (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store $0
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=12
  local.set $0
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<i8>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.load $0 offset=12
  i32.ge_u
  if
   i32.const 1248
   i32.const 1616
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.load $0 offset=4
  i32.add
  i32.load8_s $0
  local.set $0
  local.get $2
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/set/Set<i8>#delete (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  local.get $1
  i32.extend8_s
  i32.const -1028477379
  i32.mul
  i32.const 374761394
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.tee $1
  i32.const 15
  i32.shr_u
  local.get $1
  i32.xor
  i32.const -2048144777
  i32.mul
  local.tee $1
  i32.const 13
  i32.shr_u
  local.get $1
  i32.xor
  i32.const -1028477379
  i32.mul
  local.tee $1
  i32.const 16
  i32.shr_u
  local.get $1
  i32.xor
  call $~lib/set/Set<i8>#find
  local.tee $1
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  local.get $1
  local.get $1
  i32.load $0 offset=4
  i32.const 1
  i32.or
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  local.get $0
  i32.load $0 offset=20
  i32.const 1
  i32.sub
  i32.store $0 offset=20
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  i32.const 1
  i32.shr_u
  local.set $2
  local.get $1
  local.get $0
  i32.store $0
  local.get $2
  i32.const 1
  i32.add
  i32.const 4
  local.get $0
  i32.load $0 offset=20
  local.tee $1
  local.get $1
  i32.const 4
  i32.lt_u
  select
  i32.ge_u
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=20
   local.set $3
   local.get $1
   local.get $0
   i32.store $0
   local.get $3
   local.get $0
   i32.load $0 offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   local.get $2
   call $~lib/set/Set<i8>#rehash
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/set/Set<i8>#clear (param $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store $0
  local.get $1
  local.get $0
  i32.store $0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $0
  local.get $1
  i32.store $0
  local.get $1
  if
   local.get $0
   local.get $1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0
  local.get $0
  i32.const 3
  i32.store $0 offset=4
  local.get $1
  local.get $0
  i32.store $0
  i32.const 32
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $1
  if
   local.get $0
   local.get $1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0
  local.get $0
  i32.const 4
  i32.store $0 offset=12
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  i32.const 0
  i32.store $0 offset=16
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  i32.const 0
  i32.store $0 offset=20
  local.get $1
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $std/set/testNumeric<i8>
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
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 1748
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i32.const 0
   i32.const 20
   memory.fill $0
   local.get $4
   call $~lib/set/Set<i8>#constructor
   local.tee $9
   i32.store $0
   loop $for-loop|0
    local.get $1
    i32.const 100
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i8>#has
     if
      i32.const 0
      i32.const 1568
      i32.const 6
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i8>#add
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 8
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#get:size
   i32.const 100
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 10
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 50
   local.set $1
   loop $for-loop|1
    local.get $1
    i32.const 100
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 14
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i8>#add
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 16
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|1
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#get:size
   i32.const 100
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 18
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.tee $4
   local.get $9
   i32.store $0 offset=4
   local.get $1
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1748
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   i64.const 0
   i64.store $0
   local.get $5
   local.get $9
   i32.store $0
   local.get $9
   i32.load $0 offset=8
   local.set $1
   local.get $5
   local.get $9
   i32.store $0
   local.get $9
   i32.load $0 offset=16
   local.set $10
   local.get $5
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1748
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $6
   i64.const 0
   i64.store $0
   local.get $6
   i64.const 0
   i64.store $0 offset=8
   local.get $6
   i32.const 16
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $6
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0 offset=4
   local.get $6
   i32.const 0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.tee $7
   local.get $6
   i32.store $0 offset=4
   local.get $6
   i32.const 0
   i32.store $0 offset=4
   local.get $7
   local.get $6
   i32.store $0 offset=4
   local.get $6
   i32.const 0
   i32.store $0 offset=8
   local.get $7
   local.get $6
   i32.store $0 offset=4
   local.get $6
   i32.const 0
   i32.store $0 offset=12
   local.get $10
   i32.const 1073741820
   i32.gt_u
   if
    i32.const 1456
    i32.const 1616
    i32.const 70
    i32.const 60
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   local.get $10
   local.get $10
   i32.const 8
   i32.le_u
   select
   local.tee $7
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $11
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store $0 offset=12
   local.get $6
   local.get $11
   i32.store $0
   local.get $11
   if
    local.get $6
    local.get $11
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $8
   local.get $6
   i32.store $0 offset=4
   local.get $6
   local.get $11
   i32.store $0 offset=4
   local.get $8
   local.get $6
   i32.store $0 offset=4
   local.get $6
   local.get $7
   i32.store $0 offset=8
   local.get $8
   local.get $6
   i32.store $0 offset=4
   local.get $6
   local.get $10
   i32.store $0 offset=12
   local.get $8
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
   local.get $6
   i32.store $0 offset=4
   loop $for-loop|00
    local.get $2
    local.get $10
    i32.lt_s
    if
     local.get $1
     local.get $2
     i32.const 3
     i32.shl
     i32.add
     local.tee $5
     i32.load $0 offset=4
     i32.const 1
     i32.and
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store $0
      local.get $6
      local.get $0
      local.get $5
      i32.load8_s $0
      call $~lib/array/Array<i8>#__set
      local.get $0
      i32.const 1
      i32.add
      local.set $0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|00
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0
   local.get $6
   local.get $0
   call $~lib/array/Array<i8>#set:length
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   local.get $6
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   call $~lib/set/Set<i8>#constructor
   local.tee $0
   i32.store $0 offset=12
   loop $for-loop|2
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store $0 offset=4
    local.get $6
    call $~lib/array/Array<i8>#get:length
    local.get $3
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     local.get $9
     i32.store $0 offset=4
     local.get $1
     local.get $6
     i32.store $0 offset=16
     local.get $9
     local.get $6
     local.get $3
     call $~lib/array/Array<i8>#__get
     call $~lib/set/Set<i8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 24
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     local.get $0
     i32.store $0 offset=4
     local.get $1
     local.get $6
     i32.store $0 offset=16
     local.get $0
     local.get $6
     local.get $3
     call $~lib/array/Array<i8>#__get
     call $~lib/set/Set<i8>#add
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|2
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   local.get $0
   call $~lib/set/Set<i8>#get:size
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#get:size
   local.get $0
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 27
    i32.const 3
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
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 31
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i8>#delete
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i8>#has
     if
      i32.const 0
      i32.const 1568
      i32.const 33
      i32.const 5
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
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#get:size
   i32.const 50
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 35
    i32.const 3
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
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i8>#has
     if
      i32.const 0
      i32.const 1568
      i32.const 39
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i8>#add
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 41
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i8>#delete
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i8>#has
     if
      i32.const 0
      i32.const 1568
      i32.const 43
      i32.const 5
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
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#get:size
   i32.const 50
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 45
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#clear
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#get:size
   if
    i32.const 0
    i32.const 1568
    i32.const 49
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 34544
  i32.const 34592
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/set/Set<u8>#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store $0
  local.get $0
  i32.const 0
  i32.store $0 offset=8
  local.get $0
  i32.const 24
  i32.const 6
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=4
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.store $0
  local.get $1
  if
   local.get $0
   local.get $1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 3
  i32.store $0 offset=4
  local.get $1
  local.get $0
  i32.store $0 offset=4
  i32.const 32
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $1
  if
   local.get $0
   local.get $1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 4
  i32.store $0 offset=12
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 0
  i32.store $0 offset=16
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 0
  i32.store $0 offset=20
  local.get $1
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/set/Set<u8>#has (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  local.get $1
  i32.const 255
  i32.and
  i32.const -1028477379
  i32.mul
  i32.const 374761394
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.tee $0
  local.get $0
  i32.const 15
  i32.shr_u
  i32.xor
  i32.const -2048144777
  i32.mul
  local.tee $0
  local.get $0
  i32.const 13
  i32.shr_u
  i32.xor
  i32.const -1028477379
  i32.mul
  local.tee $0
  local.get $0
  i32.const 16
  i32.shr_u
  i32.xor
  call $~lib/set/Set<i8>#find
  i32.const 0
  i32.ne
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/set/Set<u8>#rehash (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  i64.const 0
  i64.store $0 offset=8
  local.get $2
  local.get $1
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $7
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $5
  i32.const 3
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $3
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=8
  local.get $0
  i32.load $0 offset=8
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=8
  local.get $4
  local.get $0
  i32.load $0 offset=16
  i32.const 3
  i32.shl
  i32.add
  local.set $6
  local.get $3
  local.set $2
  loop $while-continue|0
   local.get $4
   local.get $6
   i32.ne
   if
    local.get $4
    i32.load $0 offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $2
     local.get $4
     i32.load8_u $0
     local.tee $8
     i32.store8 $0
     local.get $2
     local.get $7
     local.get $1
     local.get $8
     i32.const -1028477379
     i32.mul
     i32.const 374761394
     i32.add
     i32.const 17
     i32.rotl
     i32.const 668265263
     i32.mul
     local.tee $8
     i32.const 15
     i32.shr_u
     local.get $8
     i32.xor
     i32.const -2048144777
     i32.mul
     local.tee $8
     i32.const 13
     i32.shr_u
     local.get $8
     i32.xor
     i32.const -1028477379
     i32.mul
     local.tee $8
     i32.const 16
     i32.shr_u
     local.get $8
     i32.xor
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $8
     i32.load $0
     i32.store $0 offset=4
     local.get $8
     local.get $2
     i32.store $0
     local.get $2
     i32.const 8
     i32.add
     local.set $2
    end
    local.get $4
    i32.const 8
    i32.add
    local.set $4
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0 offset=8
  local.get $2
  local.get $7
  i32.store $0 offset=12
  local.get $0
  local.get $7
  i32.store $0
  local.get $7
  if
   local.get $0
   local.get $7
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.store $0 offset=4
  local.get $2
  local.get $0
  i32.store $0 offset=8
  local.get $2
  local.get $3
  i32.store $0 offset=12
  local.get $0
  local.get $3
  i32.store $0 offset=8
  local.get $3
  if
   local.get $0
   local.get $3
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=8
  local.get $0
  local.get $5
  i32.store $0 offset=12
  local.get $1
  local.get $0
  i32.store $0 offset=8
  local.get $1
  local.get $0
  i32.store $0 offset=12
  local.get $0
  local.get $0
  i32.load $0 offset=20
  i32.store $0 offset=16
  local.get $1
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/set/Set<u8>#add (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  local.get $1
  i32.const 255
  i32.and
  i32.const -1028477379
  i32.mul
  i32.const 374761394
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.tee $2
  i32.const 15
  i32.shr_u
  local.get $2
  i32.xor
  i32.const -2048144777
  i32.mul
  local.tee $2
  i32.const 13
  i32.shr_u
  local.get $2
  i32.xor
  i32.const -1028477379
  i32.mul
  local.tee $2
  i32.const 16
  i32.shr_u
  local.get $2
  i32.xor
  local.tee $3
  call $~lib/set/Set<i8>#find
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=16
   local.set $4
   local.get $2
   local.get $0
   i32.store $0
   local.get $4
   local.get $0
   i32.load $0 offset=12
   i32.eq
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store $0
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0 offset=20
    local.set $4
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    local.get $4
    local.get $0
    i32.load $0 offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=4
     local.get $0
     i32.load $0 offset=4
    else
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=4
     local.get $0
     i32.load $0 offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<u8>#rehash
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=8
   local.set $2
   local.get $4
   local.get $0
   i32.store $0
   local.get $4
   local.get $0
   i32.store $0 offset=4
   local.get $0
   local.get $0
   i32.load $0 offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store $0 offset=16
   local.get $2
   local.get $5
   i32.const 3
   i32.shl
   i32.add
   local.tee $2
   local.get $1
   i32.store8 $0
   local.get $4
   local.get $0
   i32.store $0
   local.get $4
   local.get $0
   i32.store $0 offset=4
   local.get $0
   local.get $0
   i32.load $0 offset=20
   i32.const 1
   i32.add
   i32.store $0 offset=20
   local.get $4
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0
   local.set $1
   local.get $4
   local.get $0
   i32.store $0
   local.get $2
   local.get $1
   local.get $3
   local.get $0
   i32.load $0 offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load $0
   i32.store $0 offset=4
   local.get $0
   local.get $2
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<u8>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.load $0 offset=12
  i32.ge_u
  if
   i32.const 1248
   i32.const 1616
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.load $0 offset=4
  i32.add
  i32.load8_u $0
  local.set $0
  local.get $2
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/set/Set<u8>#delete (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  local.get $1
  i32.const 255
  i32.and
  i32.const -1028477379
  i32.mul
  i32.const 374761394
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.tee $1
  i32.const 15
  i32.shr_u
  local.get $1
  i32.xor
  i32.const -2048144777
  i32.mul
  local.tee $1
  i32.const 13
  i32.shr_u
  local.get $1
  i32.xor
  i32.const -1028477379
  i32.mul
  local.tee $1
  i32.const 16
  i32.shr_u
  local.get $1
  i32.xor
  call $~lib/set/Set<i8>#find
  local.tee $1
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  local.get $1
  local.get $1
  i32.load $0 offset=4
  i32.const 1
  i32.or
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  local.get $0
  i32.load $0 offset=20
  i32.const 1
  i32.sub
  i32.store $0 offset=20
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  i32.const 1
  i32.shr_u
  local.set $2
  local.get $1
  local.get $0
  i32.store $0
  local.get $2
  i32.const 1
  i32.add
  i32.const 4
  local.get $0
  i32.load $0 offset=20
  local.tee $1
  local.get $1
  i32.const 4
  i32.lt_u
  select
  i32.ge_u
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=20
   local.set $3
   local.get $1
   local.get $0
   i32.store $0
   local.get $3
   local.get $0
   i32.load $0 offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   local.get $2
   call $~lib/set/Set<u8>#rehash
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $std/set/testNumeric<u8>
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
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 1748
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i32.const 0
   i32.const 20
   memory.fill $0
   local.get $4
   call $~lib/set/Set<u8>#constructor
   local.tee $9
   i32.store $0
   loop $for-loop|0
    local.get $1
    i32.const 100
    i32.lt_u
    if
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u8>#has
     if
      i32.const 0
      i32.const 1568
      i32.const 6
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u8>#add
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 8
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#get:size
   i32.const 100
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 10
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 50
   local.set $1
   loop $for-loop|1
    local.get $1
    i32.const 100
    i32.lt_u
    if
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 14
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u8>#add
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 16
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|1
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#get:size
   i32.const 100
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 18
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.tee $4
   local.get $9
   i32.store $0 offset=4
   local.get $1
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1748
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   i64.const 0
   i64.store $0
   local.get $5
   local.get $9
   i32.store $0
   local.get $9
   i32.load $0 offset=8
   local.set $1
   local.get $5
   local.get $9
   i32.store $0
   local.get $9
   i32.load $0 offset=16
   local.set $10
   local.get $5
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1748
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $6
   i64.const 0
   i64.store $0
   local.get $6
   i64.const 0
   i64.store $0 offset=8
   local.get $6
   i32.const 16
   i32.const 7
   call $~lib/rt/itcms/__new
   local.tee $6
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0 offset=4
   local.get $6
   i32.const 0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.tee $7
   local.get $6
   i32.store $0 offset=4
   local.get $6
   i32.const 0
   i32.store $0 offset=4
   local.get $7
   local.get $6
   i32.store $0 offset=4
   local.get $6
   i32.const 0
   i32.store $0 offset=8
   local.get $7
   local.get $6
   i32.store $0 offset=4
   local.get $6
   i32.const 0
   i32.store $0 offset=12
   local.get $10
   i32.const 1073741820
   i32.gt_u
   if
    i32.const 1456
    i32.const 1616
    i32.const 70
    i32.const 60
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   local.get $10
   local.get $10
   i32.const 8
   i32.le_u
   select
   local.tee $7
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $11
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store $0 offset=12
   local.get $6
   local.get $11
   i32.store $0
   local.get $11
   if
    local.get $6
    local.get $11
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $8
   local.get $6
   i32.store $0 offset=4
   local.get $6
   local.get $11
   i32.store $0 offset=4
   local.get $8
   local.get $6
   i32.store $0 offset=4
   local.get $6
   local.get $7
   i32.store $0 offset=8
   local.get $8
   local.get $6
   i32.store $0 offset=4
   local.get $6
   local.get $10
   i32.store $0 offset=12
   local.get $8
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
   local.get $6
   i32.store $0 offset=4
   loop $for-loop|00
    local.get $2
    local.get $10
    i32.lt_s
    if
     local.get $1
     local.get $2
     i32.const 3
     i32.shl
     i32.add
     local.tee $5
     i32.load $0 offset=4
     i32.const 1
     i32.and
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store $0
      local.get $6
      local.get $0
      local.get $5
      i32.load8_u $0
      call $~lib/array/Array<i8>#__set
      local.get $0
      i32.const 1
      i32.add
      local.set $0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|00
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0
   local.get $6
   local.get $0
   call $~lib/array/Array<i8>#set:length
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   local.get $6
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   call $~lib/set/Set<u8>#constructor
   local.tee $0
   i32.store $0 offset=12
   loop $for-loop|2
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store $0 offset=4
    local.get $6
    call $~lib/array/Array<i8>#get:length
    local.get $3
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     local.get $9
     i32.store $0 offset=4
     local.get $1
     local.get $6
     i32.store $0 offset=16
     local.get $9
     local.get $6
     local.get $3
     call $~lib/array/Array<u8>#__get
     call $~lib/set/Set<u8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 24
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     local.get $0
     i32.store $0 offset=4
     local.get $1
     local.get $6
     i32.store $0 offset=16
     local.get $0
     local.get $6
     local.get $3
     call $~lib/array/Array<u8>#__get
     call $~lib/set/Set<u8>#add
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|2
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   local.get $0
   call $~lib/set/Set<i8>#get:size
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#get:size
   local.get $0
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 27
    i32.const 3
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
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 31
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u8>#delete
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u8>#has
     if
      i32.const 0
      i32.const 1568
      i32.const 33
      i32.const 5
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
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#get:size
   i32.const 50
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 35
    i32.const 3
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
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u8>#has
     if
      i32.const 0
      i32.const 1568
      i32.const 39
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u8>#add
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u8>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 41
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u8>#delete
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u8>#has
     if
      i32.const 0
      i32.const 1568
      i32.const 43
      i32.const 5
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
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#get:size
   i32.const 50
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 45
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#clear
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#get:size
   if
    i32.const 0
    i32.const 1568
    i32.const 49
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 34544
  i32.const 34592
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/set/Set<i16>#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store $0
  local.get $0
  i32.const 0
  i32.store $0 offset=8
  local.get $0
  i32.const 24
  i32.const 8
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=4
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.store $0
  local.get $1
  if
   local.get $0
   local.get $1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 3
  i32.store $0 offset=4
  local.get $1
  local.get $0
  i32.store $0 offset=4
  i32.const 32
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $1
  if
   local.get $0
   local.get $1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 4
  i32.store $0 offset=12
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 0
  i32.store $0 offset=16
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 0
  i32.store $0 offset=20
  local.get $1
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/set/Set<i16>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store $0
  local.get $3
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0
  local.set $4
  local.get $3
  local.get $0
  i32.store $0
  local.get $4
  local.get $2
  local.get $0
  i32.load $0 offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load $0
  local.set $0
  loop $while-continue|0
   local.get $0
   if
    local.get $0
    i32.load $0 offset=4
    local.tee $2
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $0
     i32.load16_u $0
     local.get $1
     i32.const 65535
     i32.and
     i32.eq
    end
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $0
     return
    end
    local.get $2
    i32.const -2
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $~lib/set/Set<i16>#has (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  local.get $1
  i32.extend16_s
  i32.const -1028477379
  i32.mul
  i32.const 374761395
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.tee $0
  local.get $0
  i32.const 15
  i32.shr_u
  i32.xor
  i32.const -2048144777
  i32.mul
  local.tee $0
  local.get $0
  i32.const 13
  i32.shr_u
  i32.xor
  i32.const -1028477379
  i32.mul
  local.tee $0
  local.get $0
  i32.const 16
  i32.shr_u
  i32.xor
  call $~lib/set/Set<i16>#find
  i32.const 0
  i32.ne
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/set/Set<i16>#rehash (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  i64.const 0
  i64.store $0 offset=8
  local.get $2
  local.get $1
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $7
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $5
  i32.const 3
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $3
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=8
  local.get $0
  i32.load $0 offset=8
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=8
  local.get $4
  local.get $0
  i32.load $0 offset=16
  i32.const 3
  i32.shl
  i32.add
  local.set $6
  local.get $3
  local.set $2
  loop $while-continue|0
   local.get $4
   local.get $6
   i32.ne
   if
    local.get $4
    i32.load $0 offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $2
     local.get $4
     i32.load16_s $0
     local.tee $8
     i32.store16 $0
     local.get $2
     local.get $7
     local.get $1
     local.get $8
     i32.extend16_s
     i32.const -1028477379
     i32.mul
     i32.const 374761395
     i32.add
     i32.const 17
     i32.rotl
     i32.const 668265263
     i32.mul
     local.tee $8
     i32.const 15
     i32.shr_u
     local.get $8
     i32.xor
     i32.const -2048144777
     i32.mul
     local.tee $8
     i32.const 13
     i32.shr_u
     local.get $8
     i32.xor
     i32.const -1028477379
     i32.mul
     local.tee $8
     i32.const 16
     i32.shr_u
     local.get $8
     i32.xor
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $8
     i32.load $0
     i32.store $0 offset=4
     local.get $8
     local.get $2
     i32.store $0
     local.get $2
     i32.const 8
     i32.add
     local.set $2
    end
    local.get $4
    i32.const 8
    i32.add
    local.set $4
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0 offset=8
  local.get $2
  local.get $7
  i32.store $0 offset=12
  local.get $0
  local.get $7
  i32.store $0
  local.get $7
  if
   local.get $0
   local.get $7
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.store $0 offset=4
  local.get $2
  local.get $0
  i32.store $0 offset=8
  local.get $2
  local.get $3
  i32.store $0 offset=12
  local.get $0
  local.get $3
  i32.store $0 offset=8
  local.get $3
  if
   local.get $0
   local.get $3
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=8
  local.get $0
  local.get $5
  i32.store $0 offset=12
  local.get $1
  local.get $0
  i32.store $0 offset=8
  local.get $1
  local.get $0
  i32.store $0 offset=12
  local.get $0
  local.get $0
  i32.load $0 offset=20
  i32.store $0 offset=16
  local.get $1
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/set/Set<i16>#add (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  local.get $1
  i32.extend16_s
  i32.const -1028477379
  i32.mul
  i32.const 374761395
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.tee $2
  i32.const 15
  i32.shr_u
  local.get $2
  i32.xor
  i32.const -2048144777
  i32.mul
  local.tee $2
  i32.const 13
  i32.shr_u
  local.get $2
  i32.xor
  i32.const -1028477379
  i32.mul
  local.tee $2
  i32.const 16
  i32.shr_u
  local.get $2
  i32.xor
  local.tee $3
  call $~lib/set/Set<i16>#find
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=16
   local.set $4
   local.get $2
   local.get $0
   i32.store $0
   local.get $4
   local.get $0
   i32.load $0 offset=12
   i32.eq
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store $0
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0 offset=20
    local.set $4
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    local.get $4
    local.get $0
    i32.load $0 offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=4
     local.get $0
     i32.load $0 offset=4
    else
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=4
     local.get $0
     i32.load $0 offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<i16>#rehash
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=8
   local.set $2
   local.get $4
   local.get $0
   i32.store $0
   local.get $4
   local.get $0
   i32.store $0 offset=4
   local.get $0
   local.get $0
   i32.load $0 offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store $0 offset=16
   local.get $2
   local.get $5
   i32.const 3
   i32.shl
   i32.add
   local.tee $2
   local.get $1
   i32.store16 $0
   local.get $4
   local.get $0
   i32.store $0
   local.get $4
   local.get $0
   i32.store $0 offset=4
   local.get $0
   local.get $0
   i32.load $0 offset=20
   i32.const 1
   i32.add
   i32.store $0 offset=20
   local.get $4
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0
   local.set $1
   local.get $4
   local.get $0
   i32.store $0
   local.get $2
   local.get $1
   local.get $3
   local.get $0
   i32.load $0 offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load $0
   i32.store $0 offset=4
   local.get $0
   local.get $2
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i16>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store $0
  local.get $3
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.load $0 offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 1248
    i32.const 1616
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.const 1
   call $~lib/array/ensureCapacity
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   local.get $3
   i32.store $0 offset=12
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.get $2
  i32.store16 $0
  local.get $3
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i16>#set:length (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $0
  local.get $1
  i32.const 1
  i32.const 0
  call $~lib/array/ensureCapacity
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  i32.store $0 offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i16>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.load $0 offset=12
  i32.ge_u
  if
   i32.const 1248
   i32.const 1616
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_s $0
  local.set $0
  local.get $2
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/set/Set<i16>#delete (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  local.get $1
  i32.extend16_s
  i32.const -1028477379
  i32.mul
  i32.const 374761395
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.tee $1
  i32.const 15
  i32.shr_u
  local.get $1
  i32.xor
  i32.const -2048144777
  i32.mul
  local.tee $1
  i32.const 13
  i32.shr_u
  local.get $1
  i32.xor
  i32.const -1028477379
  i32.mul
  local.tee $1
  i32.const 16
  i32.shr_u
  local.get $1
  i32.xor
  call $~lib/set/Set<i16>#find
  local.tee $1
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  local.get $1
  local.get $1
  i32.load $0 offset=4
  i32.const 1
  i32.or
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  local.get $0
  i32.load $0 offset=20
  i32.const 1
  i32.sub
  i32.store $0 offset=20
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  i32.const 1
  i32.shr_u
  local.set $2
  local.get $1
  local.get $0
  i32.store $0
  local.get $2
  i32.const 1
  i32.add
  i32.const 4
  local.get $0
  i32.load $0 offset=20
  local.tee $1
  local.get $1
  i32.const 4
  i32.lt_u
  select
  i32.ge_u
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=20
   local.set $3
   local.get $1
   local.get $0
   i32.store $0
   local.get $3
   local.get $0
   i32.load $0 offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   local.get $2
   call $~lib/set/Set<i16>#rehash
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $std/set/testNumeric<i16>
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
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 1748
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i32.const 0
   i32.const 20
   memory.fill $0
   local.get $4
   call $~lib/set/Set<i16>#constructor
   local.tee $9
   i32.store $0
   loop $for-loop|0
    local.get $1
    i32.const 100
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i16>#has
     if
      i32.const 0
      i32.const 1568
      i32.const 6
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i16>#add
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 8
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#get:size
   i32.const 100
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 10
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 50
   local.set $1
   loop $for-loop|1
    local.get $1
    i32.const 100
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 14
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i16>#add
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 16
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|1
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#get:size
   i32.const 100
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 18
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.tee $4
   local.get $9
   i32.store $0 offset=4
   local.get $1
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1748
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   i64.const 0
   i64.store $0
   local.get $5
   local.get $9
   i32.store $0
   local.get $9
   i32.load $0 offset=8
   local.set $1
   local.get $5
   local.get $9
   i32.store $0
   local.get $9
   i32.load $0 offset=16
   local.set $10
   local.get $5
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1748
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $6
   i64.const 0
   i64.store $0
   local.get $6
   i64.const 0
   i64.store $0 offset=8
   local.get $6
   i32.const 16
   i32.const 9
   call $~lib/rt/itcms/__new
   local.tee $6
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0 offset=4
   local.get $6
   i32.const 0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.tee $7
   local.get $6
   i32.store $0 offset=4
   local.get $6
   i32.const 0
   i32.store $0 offset=4
   local.get $7
   local.get $6
   i32.store $0 offset=4
   local.get $6
   i32.const 0
   i32.store $0 offset=8
   local.get $7
   local.get $6
   i32.store $0 offset=4
   local.get $6
   i32.const 0
   i32.store $0 offset=12
   local.get $10
   i32.const 536870910
   i32.gt_u
   if
    i32.const 1456
    i32.const 1616
    i32.const 70
    i32.const 60
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   local.get $10
   local.get $10
   i32.const 8
   i32.le_u
   select
   i32.const 1
   i32.shl
   local.tee $7
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $11
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store $0 offset=12
   local.get $6
   local.get $11
   i32.store $0
   local.get $11
   if
    local.get $6
    local.get $11
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $8
   local.get $6
   i32.store $0 offset=4
   local.get $6
   local.get $11
   i32.store $0 offset=4
   local.get $8
   local.get $6
   i32.store $0 offset=4
   local.get $6
   local.get $7
   i32.store $0 offset=8
   local.get $8
   local.get $6
   i32.store $0 offset=4
   local.get $6
   local.get $10
   i32.store $0 offset=12
   local.get $8
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
   local.get $6
   i32.store $0 offset=4
   loop $for-loop|00
    local.get $2
    local.get $10
    i32.lt_s
    if
     local.get $1
     local.get $2
     i32.const 3
     i32.shl
     i32.add
     local.tee $5
     i32.load $0 offset=4
     i32.const 1
     i32.and
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store $0
      local.get $6
      local.get $0
      local.get $5
      i32.load16_s $0
      call $~lib/array/Array<i16>#__set
      local.get $0
      i32.const 1
      i32.add
      local.set $0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|00
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0
   local.get $6
   local.get $0
   call $~lib/array/Array<i16>#set:length
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   local.get $6
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   call $~lib/set/Set<i16>#constructor
   local.tee $0
   i32.store $0 offset=12
   loop $for-loop|2
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store $0 offset=4
    local.get $6
    call $~lib/array/Array<i8>#get:length
    local.get $3
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     local.get $9
     i32.store $0 offset=4
     local.get $1
     local.get $6
     i32.store $0 offset=16
     local.get $9
     local.get $6
     local.get $3
     call $~lib/array/Array<i16>#__get
     call $~lib/set/Set<i16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 24
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     local.get $0
     i32.store $0 offset=4
     local.get $1
     local.get $6
     i32.store $0 offset=16
     local.get $0
     local.get $6
     local.get $3
     call $~lib/array/Array<i16>#__get
     call $~lib/set/Set<i16>#add
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|2
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   local.get $0
   call $~lib/set/Set<i8>#get:size
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#get:size
   local.get $0
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 27
    i32.const 3
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
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 31
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i16>#delete
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i16>#has
     if
      i32.const 0
      i32.const 1568
      i32.const 33
      i32.const 5
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
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#get:size
   i32.const 50
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 35
    i32.const 3
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
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i16>#has
     if
      i32.const 0
      i32.const 1568
      i32.const 39
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i16>#add
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 41
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i16>#delete
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i16>#has
     if
      i32.const 0
      i32.const 1568
      i32.const 43
      i32.const 5
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
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#get:size
   i32.const 50
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 45
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#clear
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#get:size
   if
    i32.const 0
    i32.const 1568
    i32.const 49
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 34544
  i32.const 34592
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/set/Set<u16>#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store $0
  local.get $0
  i32.const 0
  i32.store $0 offset=8
  local.get $0
  i32.const 24
  i32.const 10
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=4
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.store $0
  local.get $1
  if
   local.get $0
   local.get $1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 3
  i32.store $0 offset=4
  local.get $1
  local.get $0
  i32.store $0 offset=4
  i32.const 32
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $1
  if
   local.get $0
   local.get $1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 4
  i32.store $0 offset=12
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 0
  i32.store $0 offset=16
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 0
  i32.store $0 offset=20
  local.get $1
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/set/Set<u16>#has (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  local.get $1
  i32.const 65535
  i32.and
  i32.const -1028477379
  i32.mul
  i32.const 374761395
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.tee $0
  local.get $0
  i32.const 15
  i32.shr_u
  i32.xor
  i32.const -2048144777
  i32.mul
  local.tee $0
  local.get $0
  i32.const 13
  i32.shr_u
  i32.xor
  i32.const -1028477379
  i32.mul
  local.tee $0
  local.get $0
  i32.const 16
  i32.shr_u
  i32.xor
  call $~lib/set/Set<i16>#find
  i32.const 0
  i32.ne
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/set/Set<u16>#rehash (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  i64.const 0
  i64.store $0 offset=8
  local.get $2
  local.get $1
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $7
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $5
  i32.const 3
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $3
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=8
  local.get $0
  i32.load $0 offset=8
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=8
  local.get $4
  local.get $0
  i32.load $0 offset=16
  i32.const 3
  i32.shl
  i32.add
  local.set $6
  local.get $3
  local.set $2
  loop $while-continue|0
   local.get $4
   local.get $6
   i32.ne
   if
    local.get $4
    i32.load $0 offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $2
     local.get $4
     i32.load16_u $0
     local.tee $8
     i32.store16 $0
     local.get $2
     local.get $7
     local.get $1
     local.get $8
     i32.const -1028477379
     i32.mul
     i32.const 374761395
     i32.add
     i32.const 17
     i32.rotl
     i32.const 668265263
     i32.mul
     local.tee $8
     i32.const 15
     i32.shr_u
     local.get $8
     i32.xor
     i32.const -2048144777
     i32.mul
     local.tee $8
     i32.const 13
     i32.shr_u
     local.get $8
     i32.xor
     i32.const -1028477379
     i32.mul
     local.tee $8
     i32.const 16
     i32.shr_u
     local.get $8
     i32.xor
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $8
     i32.load $0
     i32.store $0 offset=4
     local.get $8
     local.get $2
     i32.store $0
     local.get $2
     i32.const 8
     i32.add
     local.set $2
    end
    local.get $4
    i32.const 8
    i32.add
    local.set $4
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0 offset=8
  local.get $2
  local.get $7
  i32.store $0 offset=12
  local.get $0
  local.get $7
  i32.store $0
  local.get $7
  if
   local.get $0
   local.get $7
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.store $0 offset=4
  local.get $2
  local.get $0
  i32.store $0 offset=8
  local.get $2
  local.get $3
  i32.store $0 offset=12
  local.get $0
  local.get $3
  i32.store $0 offset=8
  local.get $3
  if
   local.get $0
   local.get $3
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=8
  local.get $0
  local.get $5
  i32.store $0 offset=12
  local.get $1
  local.get $0
  i32.store $0 offset=8
  local.get $1
  local.get $0
  i32.store $0 offset=12
  local.get $0
  local.get $0
  i32.load $0 offset=20
  i32.store $0 offset=16
  local.get $1
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/set/Set<u16>#add (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  local.get $1
  i32.const 65535
  i32.and
  i32.const -1028477379
  i32.mul
  i32.const 374761395
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.tee $2
  i32.const 15
  i32.shr_u
  local.get $2
  i32.xor
  i32.const -2048144777
  i32.mul
  local.tee $2
  i32.const 13
  i32.shr_u
  local.get $2
  i32.xor
  i32.const -1028477379
  i32.mul
  local.tee $2
  i32.const 16
  i32.shr_u
  local.get $2
  i32.xor
  local.tee $3
  call $~lib/set/Set<i16>#find
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=16
   local.set $4
   local.get $2
   local.get $0
   i32.store $0
   local.get $4
   local.get $0
   i32.load $0 offset=12
   i32.eq
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store $0
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0 offset=20
    local.set $4
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    local.get $4
    local.get $0
    i32.load $0 offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=4
     local.get $0
     i32.load $0 offset=4
    else
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=4
     local.get $0
     i32.load $0 offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<u16>#rehash
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=8
   local.set $2
   local.get $4
   local.get $0
   i32.store $0
   local.get $4
   local.get $0
   i32.store $0 offset=4
   local.get $0
   local.get $0
   i32.load $0 offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store $0 offset=16
   local.get $2
   local.get $5
   i32.const 3
   i32.shl
   i32.add
   local.tee $2
   local.get $1
   i32.store16 $0
   local.get $4
   local.get $0
   i32.store $0
   local.get $4
   local.get $0
   i32.store $0 offset=4
   local.get $0
   local.get $0
   i32.load $0 offset=20
   i32.const 1
   i32.add
   i32.store $0 offset=20
   local.get $4
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0
   local.set $1
   local.get $4
   local.get $0
   i32.store $0
   local.get $2
   local.get $1
   local.get $3
   local.get $0
   i32.load $0 offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load $0
   i32.store $0 offset=4
   local.get $0
   local.get $2
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<u16>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.load $0 offset=12
  i32.ge_u
  if
   i32.const 1248
   i32.const 1616
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u $0
  local.set $0
  local.get $2
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/set/Set<u16>#delete (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  local.get $1
  i32.const 65535
  i32.and
  i32.const -1028477379
  i32.mul
  i32.const 374761395
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.tee $1
  i32.const 15
  i32.shr_u
  local.get $1
  i32.xor
  i32.const -2048144777
  i32.mul
  local.tee $1
  i32.const 13
  i32.shr_u
  local.get $1
  i32.xor
  i32.const -1028477379
  i32.mul
  local.tee $1
  i32.const 16
  i32.shr_u
  local.get $1
  i32.xor
  call $~lib/set/Set<i16>#find
  local.tee $1
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  local.get $1
  local.get $1
  i32.load $0 offset=4
  i32.const 1
  i32.or
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  local.get $0
  i32.load $0 offset=20
  i32.const 1
  i32.sub
  i32.store $0 offset=20
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  i32.const 1
  i32.shr_u
  local.set $2
  local.get $1
  local.get $0
  i32.store $0
  local.get $2
  i32.const 1
  i32.add
  i32.const 4
  local.get $0
  i32.load $0 offset=20
  local.tee $1
  local.get $1
  i32.const 4
  i32.lt_u
  select
  i32.ge_u
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=20
   local.set $3
   local.get $1
   local.get $0
   i32.store $0
   local.get $3
   local.get $0
   i32.load $0 offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   local.get $2
   call $~lib/set/Set<u16>#rehash
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $std/set/testNumeric<u16>
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
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 1748
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i32.const 0
   i32.const 20
   memory.fill $0
   local.get $4
   call $~lib/set/Set<u16>#constructor
   local.tee $9
   i32.store $0
   loop $for-loop|0
    local.get $1
    i32.const 100
    i32.lt_u
    if
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u16>#has
     if
      i32.const 0
      i32.const 1568
      i32.const 6
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u16>#add
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 8
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#get:size
   i32.const 100
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 10
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 50
   local.set $1
   loop $for-loop|1
    local.get $1
    i32.const 100
    i32.lt_u
    if
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 14
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u16>#add
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 16
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|1
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#get:size
   i32.const 100
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 18
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.tee $4
   local.get $9
   i32.store $0 offset=4
   local.get $1
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1748
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   i64.const 0
   i64.store $0
   local.get $5
   local.get $9
   i32.store $0
   local.get $9
   i32.load $0 offset=8
   local.set $1
   local.get $5
   local.get $9
   i32.store $0
   local.get $9
   i32.load $0 offset=16
   local.set $10
   local.get $5
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1748
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $6
   i64.const 0
   i64.store $0
   local.get $6
   i64.const 0
   i64.store $0 offset=8
   local.get $6
   i32.const 16
   i32.const 11
   call $~lib/rt/itcms/__new
   local.tee $6
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0 offset=4
   local.get $6
   i32.const 0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.tee $7
   local.get $6
   i32.store $0 offset=4
   local.get $6
   i32.const 0
   i32.store $0 offset=4
   local.get $7
   local.get $6
   i32.store $0 offset=4
   local.get $6
   i32.const 0
   i32.store $0 offset=8
   local.get $7
   local.get $6
   i32.store $0 offset=4
   local.get $6
   i32.const 0
   i32.store $0 offset=12
   local.get $10
   i32.const 536870910
   i32.gt_u
   if
    i32.const 1456
    i32.const 1616
    i32.const 70
    i32.const 60
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   local.get $10
   local.get $10
   i32.const 8
   i32.le_u
   select
   i32.const 1
   i32.shl
   local.tee $7
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $11
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store $0 offset=12
   local.get $6
   local.get $11
   i32.store $0
   local.get $11
   if
    local.get $6
    local.get $11
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $8
   local.get $6
   i32.store $0 offset=4
   local.get $6
   local.get $11
   i32.store $0 offset=4
   local.get $8
   local.get $6
   i32.store $0 offset=4
   local.get $6
   local.get $7
   i32.store $0 offset=8
   local.get $8
   local.get $6
   i32.store $0 offset=4
   local.get $6
   local.get $10
   i32.store $0 offset=12
   local.get $8
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
   local.get $6
   i32.store $0 offset=4
   loop $for-loop|00
    local.get $2
    local.get $10
    i32.lt_s
    if
     local.get $1
     local.get $2
     i32.const 3
     i32.shl
     i32.add
     local.tee $5
     i32.load $0 offset=4
     i32.const 1
     i32.and
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store $0
      local.get $6
      local.get $0
      local.get $5
      i32.load16_u $0
      call $~lib/array/Array<i16>#__set
      local.get $0
      i32.const 1
      i32.add
      local.set $0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|00
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0
   local.get $6
   local.get $0
   call $~lib/array/Array<i16>#set:length
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   local.get $6
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   call $~lib/set/Set<u16>#constructor
   local.tee $0
   i32.store $0 offset=12
   loop $for-loop|2
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store $0 offset=4
    local.get $6
    call $~lib/array/Array<i8>#get:length
    local.get $3
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     local.get $9
     i32.store $0 offset=4
     local.get $1
     local.get $6
     i32.store $0 offset=16
     local.get $9
     local.get $6
     local.get $3
     call $~lib/array/Array<u16>#__get
     call $~lib/set/Set<u16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 24
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     local.get $0
     i32.store $0 offset=4
     local.get $1
     local.get $6
     i32.store $0 offset=16
     local.get $0
     local.get $6
     local.get $3
     call $~lib/array/Array<u16>#__get
     call $~lib/set/Set<u16>#add
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|2
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   local.get $0
   call $~lib/set/Set<i8>#get:size
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#get:size
   local.get $0
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 27
    i32.const 3
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
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 31
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u16>#delete
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u16>#has
     if
      i32.const 0
      i32.const 1568
      i32.const 33
      i32.const 5
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
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#get:size
   i32.const 50
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 35
    i32.const 3
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
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u16>#has
     if
      i32.const 0
      i32.const 1568
      i32.const 39
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u16>#add
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u16>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 41
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u16>#delete
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u16>#has
     if
      i32.const 0
      i32.const 1568
      i32.const 43
      i32.const 5
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
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#get:size
   i32.const 50
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 45
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#clear
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#get:size
   if
    i32.const 0
    i32.const 1568
    i32.const 49
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 34544
  i32.const 34592
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/set/Set<i32>#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store $0
  local.get $0
  i32.const 0
  i32.store $0 offset=8
  local.get $0
  i32.const 24
  i32.const 12
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=4
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.store $0
  local.get $1
  if
   local.get $0
   local.get $1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 3
  i32.store $0 offset=4
  local.get $1
  local.get $0
  i32.store $0 offset=4
  i32.const 32
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $1
  if
   local.get $0
   local.get $1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 4
  i32.store $0 offset=12
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 0
  i32.store $0 offset=16
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 0
  i32.store $0 offset=20
  local.get $1
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/set/Set<i32>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store $0
  local.get $3
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0
  local.set $4
  local.get $3
  local.get $0
  i32.store $0
  local.get $4
  local.get $2
  local.get $0
  i32.load $0 offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load $0
  local.set $0
  loop $while-continue|0
   local.get $0
   if
    local.get $0
    i32.load $0 offset=4
    local.tee $2
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $1
     local.get $0
     i32.load $0
     i32.eq
    end
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $0
     return
    end
    local.get $2
    i32.const -2
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $~lib/set/Set<i32>#has (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  local.get $1
  i32.const -1028477379
  i32.mul
  i32.const 374761397
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.tee $0
  local.get $0
  i32.const 15
  i32.shr_u
  i32.xor
  i32.const -2048144777
  i32.mul
  local.tee $0
  local.get $0
  i32.const 13
  i32.shr_u
  i32.xor
  i32.const -1028477379
  i32.mul
  local.tee $0
  local.get $0
  i32.const 16
  i32.shr_u
  i32.xor
  call $~lib/set/Set<i32>#find
  i32.const 0
  i32.ne
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/set/Set<i32>#rehash (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  i64.const 0
  i64.store $0 offset=8
  local.get $2
  local.get $1
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $7
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $5
  i32.const 3
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $3
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=8
  local.get $0
  i32.load $0 offset=8
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=8
  local.get $4
  local.get $0
  i32.load $0 offset=16
  i32.const 3
  i32.shl
  i32.add
  local.set $6
  local.get $3
  local.set $2
  loop $while-continue|0
   local.get $4
   local.get $6
   i32.ne
   if
    local.get $4
    i32.load $0 offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $2
     local.get $4
     i32.load $0
     local.tee $8
     i32.store $0
     local.get $2
     local.get $7
     local.get $1
     local.get $8
     i32.const -1028477379
     i32.mul
     i32.const 374761397
     i32.add
     i32.const 17
     i32.rotl
     i32.const 668265263
     i32.mul
     local.tee $8
     i32.const 15
     i32.shr_u
     local.get $8
     i32.xor
     i32.const -2048144777
     i32.mul
     local.tee $8
     i32.const 13
     i32.shr_u
     local.get $8
     i32.xor
     i32.const -1028477379
     i32.mul
     local.tee $8
     i32.const 16
     i32.shr_u
     local.get $8
     i32.xor
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $8
     i32.load $0
     i32.store $0 offset=4
     local.get $8
     local.get $2
     i32.store $0
     local.get $2
     i32.const 8
     i32.add
     local.set $2
    end
    local.get $4
    i32.const 8
    i32.add
    local.set $4
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0 offset=8
  local.get $2
  local.get $7
  i32.store $0 offset=12
  local.get $0
  local.get $7
  i32.store $0
  local.get $7
  if
   local.get $0
   local.get $7
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.store $0 offset=4
  local.get $2
  local.get $0
  i32.store $0 offset=8
  local.get $2
  local.get $3
  i32.store $0 offset=12
  local.get $0
  local.get $3
  i32.store $0 offset=8
  local.get $3
  if
   local.get $0
   local.get $3
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=8
  local.get $0
  local.get $5
  i32.store $0 offset=12
  local.get $1
  local.get $0
  i32.store $0 offset=8
  local.get $1
  local.get $0
  i32.store $0 offset=12
  local.get $0
  local.get $0
  i32.load $0 offset=20
  i32.store $0 offset=16
  local.get $1
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/set/Set<i32>#add (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  local.get $1
  i32.const -1028477379
  i32.mul
  i32.const 374761397
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.tee $2
  i32.const 15
  i32.shr_u
  local.get $2
  i32.xor
  i32.const -2048144777
  i32.mul
  local.tee $2
  i32.const 13
  i32.shr_u
  local.get $2
  i32.xor
  i32.const -1028477379
  i32.mul
  local.tee $2
  i32.const 16
  i32.shr_u
  local.get $2
  i32.xor
  local.tee $3
  call $~lib/set/Set<i32>#find
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=16
   local.set $4
   local.get $2
   local.get $0
   i32.store $0
   local.get $4
   local.get $0
   i32.load $0 offset=12
   i32.eq
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store $0
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0 offset=20
    local.set $4
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    local.get $4
    local.get $0
    i32.load $0 offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=4
     local.get $0
     i32.load $0 offset=4
    else
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=4
     local.get $0
     i32.load $0 offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<i32>#rehash
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=8
   local.set $2
   local.get $4
   local.get $0
   i32.store $0
   local.get $4
   local.get $0
   i32.store $0 offset=4
   local.get $0
   local.get $0
   i32.load $0 offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store $0 offset=16
   local.get $2
   local.get $5
   i32.const 3
   i32.shl
   i32.add
   local.tee $2
   local.get $1
   i32.store $0
   local.get $4
   local.get $0
   i32.store $0
   local.get $4
   local.get $0
   i32.store $0 offset=4
   local.get $0
   local.get $0
   i32.load $0 offset=20
   i32.const 1
   i32.add
   i32.store $0 offset=20
   local.get $4
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0
   local.set $1
   local.get $4
   local.get $0
   i32.store $0
   local.get $2
   local.get $1
   local.get $3
   local.get $0
   i32.load $0 offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load $0
   i32.store $0 offset=4
   local.get $0
   local.get $2
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i32>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store $0
  local.get $3
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.load $0 offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 1248
    i32.const 1616
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   i32.const 2
   i32.const 1
   call $~lib/array/ensureCapacity
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   local.get $3
   i32.store $0 offset=12
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store $0
  local.get $3
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i32>#set:length (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $0
  local.get $1
  i32.const 2
  i32.const 0
  call $~lib/array/ensureCapacity
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  i32.store $0 offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i32>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.load $0 offset=12
  i32.ge_u
  if
   i32.const 1248
   i32.const 1616
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load $0
  local.set $0
  local.get $2
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/set/Set<i32>#delete (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  local.get $1
  i32.const -1028477379
  i32.mul
  i32.const 374761397
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.tee $1
  i32.const 15
  i32.shr_u
  local.get $1
  i32.xor
  i32.const -2048144777
  i32.mul
  local.tee $1
  i32.const 13
  i32.shr_u
  local.get $1
  i32.xor
  i32.const -1028477379
  i32.mul
  local.tee $1
  i32.const 16
  i32.shr_u
  local.get $1
  i32.xor
  call $~lib/set/Set<i32>#find
  local.tee $1
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  local.get $1
  local.get $1
  i32.load $0 offset=4
  i32.const 1
  i32.or
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  local.get $0
  i32.load $0 offset=20
  i32.const 1
  i32.sub
  i32.store $0 offset=20
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  i32.const 1
  i32.shr_u
  local.set $2
  local.get $1
  local.get $0
  i32.store $0
  local.get $2
  i32.const 1
  i32.add
  i32.const 4
  local.get $0
  i32.load $0 offset=20
  local.tee $1
  local.get $1
  i32.const 4
  i32.lt_u
  select
  i32.ge_u
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=20
   local.set $3
   local.get $1
   local.get $0
   i32.store $0
   local.get $3
   local.get $0
   i32.load $0 offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   local.get $2
   call $~lib/set/Set<i32>#rehash
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $std/set/testNumeric<i32>
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
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 1748
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i32.const 0
   i32.const 20
   memory.fill $0
   local.get $4
   call $~lib/set/Set<i32>#constructor
   local.tee $9
   i32.store $0
   loop $for-loop|0
    local.get $1
    i32.const 100
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i32>#has
     if
      i32.const 0
      i32.const 1568
      i32.const 6
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i32>#add
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 8
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#get:size
   i32.const 100
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 10
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 50
   local.set $1
   loop $for-loop|1
    local.get $1
    i32.const 100
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 14
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i32>#add
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 16
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|1
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#get:size
   i32.const 100
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 18
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.tee $4
   local.get $9
   i32.store $0 offset=4
   local.get $1
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1748
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   i64.const 0
   i64.store $0
   local.get $5
   local.get $9
   i32.store $0
   local.get $9
   i32.load $0 offset=8
   local.set $1
   local.get $5
   local.get $9
   i32.store $0
   local.get $9
   i32.load $0 offset=16
   local.set $10
   local.get $5
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1748
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $6
   i64.const 0
   i64.store $0
   local.get $6
   i64.const 0
   i64.store $0 offset=8
   local.get $6
   i32.const 16
   i32.const 13
   call $~lib/rt/itcms/__new
   local.tee $6
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0 offset=4
   local.get $6
   i32.const 0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.tee $7
   local.get $6
   i32.store $0 offset=4
   local.get $6
   i32.const 0
   i32.store $0 offset=4
   local.get $7
   local.get $6
   i32.store $0 offset=4
   local.get $6
   i32.const 0
   i32.store $0 offset=8
   local.get $7
   local.get $6
   i32.store $0 offset=4
   local.get $6
   i32.const 0
   i32.store $0 offset=12
   local.get $10
   i32.const 268435455
   i32.gt_u
   if
    i32.const 1456
    i32.const 1616
    i32.const 70
    i32.const 60
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   local.get $10
   local.get $10
   i32.const 8
   i32.le_u
   select
   i32.const 2
   i32.shl
   local.tee $7
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $11
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store $0 offset=12
   local.get $6
   local.get $11
   i32.store $0
   local.get $11
   if
    local.get $6
    local.get $11
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $8
   local.get $6
   i32.store $0 offset=4
   local.get $6
   local.get $11
   i32.store $0 offset=4
   local.get $8
   local.get $6
   i32.store $0 offset=4
   local.get $6
   local.get $7
   i32.store $0 offset=8
   local.get $8
   local.get $6
   i32.store $0 offset=4
   local.get $6
   local.get $10
   i32.store $0 offset=12
   local.get $8
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
   local.get $6
   i32.store $0 offset=4
   loop $for-loop|00
    local.get $2
    local.get $10
    i32.lt_s
    if
     local.get $1
     local.get $2
     i32.const 3
     i32.shl
     i32.add
     local.tee $5
     i32.load $0 offset=4
     i32.const 1
     i32.and
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store $0
      local.get $6
      local.get $0
      local.get $5
      i32.load $0
      call $~lib/array/Array<i32>#__set
      local.get $0
      i32.const 1
      i32.add
      local.set $0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|00
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0
   local.get $6
   local.get $0
   call $~lib/array/Array<i32>#set:length
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   local.get $6
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   call $~lib/set/Set<i32>#constructor
   local.tee $0
   i32.store $0 offset=12
   loop $for-loop|2
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store $0 offset=4
    local.get $6
    call $~lib/array/Array<i8>#get:length
    local.get $3
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     local.get $9
     i32.store $0 offset=4
     local.get $1
     local.get $6
     i32.store $0 offset=16
     local.get $9
     local.get $6
     local.get $3
     call $~lib/array/Array<i32>#__get
     call $~lib/set/Set<i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 24
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     local.get $0
     i32.store $0 offset=4
     local.get $1
     local.get $6
     i32.store $0 offset=16
     local.get $0
     local.get $6
     local.get $3
     call $~lib/array/Array<i32>#__get
     call $~lib/set/Set<i32>#add
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|2
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   local.get $0
   call $~lib/set/Set<i8>#get:size
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#get:size
   local.get $0
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 27
    i32.const 3
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
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 31
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i32>#delete
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i32>#has
     if
      i32.const 0
      i32.const 1568
      i32.const 33
      i32.const 5
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
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#get:size
   i32.const 50
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 35
    i32.const 3
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
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i32>#has
     if
      i32.const 0
      i32.const 1568
      i32.const 39
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i32>#add
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 41
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i32>#delete
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<i32>#has
     if
      i32.const 0
      i32.const 1568
      i32.const 43
      i32.const 5
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
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#get:size
   i32.const 50
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 45
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#clear
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#get:size
   if
    i32.const 0
    i32.const 1568
    i32.const 49
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 34544
  i32.const 34592
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/set/Set<u32>#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store $0
  local.get $0
  i32.const 0
  i32.store $0 offset=8
  local.get $0
  i32.const 24
  i32.const 14
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=4
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.store $0
  local.get $1
  if
   local.get $0
   local.get $1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 3
  i32.store $0 offset=4
  local.get $1
  local.get $0
  i32.store $0 offset=4
  i32.const 32
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $1
  if
   local.get $0
   local.get $1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 4
  i32.store $0 offset=12
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 0
  i32.store $0 offset=16
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 0
  i32.store $0 offset=20
  local.get $1
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/set/Set<u32>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store $0
  local.get $3
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0
  local.set $4
  local.get $3
  local.get $0
  i32.store $0
  local.get $4
  local.get $2
  local.get $0
  i32.load $0 offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load $0
  local.set $0
  loop $while-continue|0
   local.get $0
   if
    local.get $0
    i32.load $0 offset=4
    local.tee $2
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $1
     local.get $0
     i32.load $0
     i32.eq
    end
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $0
     return
    end
    local.get $2
    i32.const -2
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $~lib/set/Set<u32>#has (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  local.get $1
  i32.const -1028477379
  i32.mul
  i32.const 374761397
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.tee $0
  local.get $0
  i32.const 15
  i32.shr_u
  i32.xor
  i32.const -2048144777
  i32.mul
  local.tee $0
  local.get $0
  i32.const 13
  i32.shr_u
  i32.xor
  i32.const -1028477379
  i32.mul
  local.tee $0
  local.get $0
  i32.const 16
  i32.shr_u
  i32.xor
  call $~lib/set/Set<u32>#find
  i32.const 0
  i32.ne
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/set/Set<u32>#rehash (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  i64.const 0
  i64.store $0 offset=8
  local.get $2
  local.get $1
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $7
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $5
  i32.const 3
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $3
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=8
  local.get $0
  i32.load $0 offset=8
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=8
  local.get $4
  local.get $0
  i32.load $0 offset=16
  i32.const 3
  i32.shl
  i32.add
  local.set $6
  local.get $3
  local.set $2
  loop $while-continue|0
   local.get $4
   local.get $6
   i32.ne
   if
    local.get $4
    i32.load $0 offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $2
     local.get $4
     i32.load $0
     local.tee $8
     i32.store $0
     local.get $2
     local.get $7
     local.get $1
     local.get $8
     i32.const -1028477379
     i32.mul
     i32.const 374761397
     i32.add
     i32.const 17
     i32.rotl
     i32.const 668265263
     i32.mul
     local.tee $8
     i32.const 15
     i32.shr_u
     local.get $8
     i32.xor
     i32.const -2048144777
     i32.mul
     local.tee $8
     i32.const 13
     i32.shr_u
     local.get $8
     i32.xor
     i32.const -1028477379
     i32.mul
     local.tee $8
     i32.const 16
     i32.shr_u
     local.get $8
     i32.xor
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $8
     i32.load $0
     i32.store $0 offset=4
     local.get $8
     local.get $2
     i32.store $0
     local.get $2
     i32.const 8
     i32.add
     local.set $2
    end
    local.get $4
    i32.const 8
    i32.add
    local.set $4
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0 offset=8
  local.get $2
  local.get $7
  i32.store $0 offset=12
  local.get $0
  local.get $7
  i32.store $0
  local.get $7
  if
   local.get $0
   local.get $7
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.store $0 offset=4
  local.get $2
  local.get $0
  i32.store $0 offset=8
  local.get $2
  local.get $3
  i32.store $0 offset=12
  local.get $0
  local.get $3
  i32.store $0 offset=8
  local.get $3
  if
   local.get $0
   local.get $3
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=8
  local.get $0
  local.get $5
  i32.store $0 offset=12
  local.get $1
  local.get $0
  i32.store $0 offset=8
  local.get $1
  local.get $0
  i32.store $0 offset=12
  local.get $0
  local.get $0
  i32.load $0 offset=20
  i32.store $0 offset=16
  local.get $1
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/set/Set<u32>#add (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  local.get $1
  i32.const -1028477379
  i32.mul
  i32.const 374761397
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.tee $2
  i32.const 15
  i32.shr_u
  local.get $2
  i32.xor
  i32.const -2048144777
  i32.mul
  local.tee $2
  i32.const 13
  i32.shr_u
  local.get $2
  i32.xor
  i32.const -1028477379
  i32.mul
  local.tee $2
  i32.const 16
  i32.shr_u
  local.get $2
  i32.xor
  local.tee $3
  call $~lib/set/Set<u32>#find
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=16
   local.set $4
   local.get $2
   local.get $0
   i32.store $0
   local.get $4
   local.get $0
   i32.load $0 offset=12
   i32.eq
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store $0
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0 offset=20
    local.set $4
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    local.get $4
    local.get $0
    i32.load $0 offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=4
     local.get $0
     i32.load $0 offset=4
    else
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=4
     local.get $0
     i32.load $0 offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<u32>#rehash
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=8
   local.set $2
   local.get $4
   local.get $0
   i32.store $0
   local.get $4
   local.get $0
   i32.store $0 offset=4
   local.get $0
   local.get $0
   i32.load $0 offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store $0 offset=16
   local.get $2
   local.get $5
   i32.const 3
   i32.shl
   i32.add
   local.tee $2
   local.get $1
   i32.store $0
   local.get $4
   local.get $0
   i32.store $0
   local.get $4
   local.get $0
   i32.store $0 offset=4
   local.get $0
   local.get $0
   i32.load $0 offset=20
   i32.const 1
   i32.add
   i32.store $0 offset=20
   local.get $4
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0
   local.set $1
   local.get $4
   local.get $0
   i32.store $0
   local.get $2
   local.get $1
   local.get $3
   local.get $0
   i32.load $0 offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load $0
   i32.store $0 offset=4
   local.get $0
   local.get $2
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<u32>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.load $0 offset=12
  i32.ge_u
  if
   i32.const 1248
   i32.const 1616
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load $0
  local.set $0
  local.get $2
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/set/Set<u32>#delete (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  local.get $1
  i32.const -1028477379
  i32.mul
  i32.const 374761397
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.tee $1
  i32.const 15
  i32.shr_u
  local.get $1
  i32.xor
  i32.const -2048144777
  i32.mul
  local.tee $1
  i32.const 13
  i32.shr_u
  local.get $1
  i32.xor
  i32.const -1028477379
  i32.mul
  local.tee $1
  i32.const 16
  i32.shr_u
  local.get $1
  i32.xor
  call $~lib/set/Set<u32>#find
  local.tee $1
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  local.get $1
  local.get $1
  i32.load $0 offset=4
  i32.const 1
  i32.or
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  local.get $0
  i32.load $0 offset=20
  i32.const 1
  i32.sub
  i32.store $0 offset=20
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  i32.const 1
  i32.shr_u
  local.set $2
  local.get $1
  local.get $0
  i32.store $0
  local.get $2
  i32.const 1
  i32.add
  i32.const 4
  local.get $0
  i32.load $0 offset=20
  local.tee $1
  local.get $1
  i32.const 4
  i32.lt_u
  select
  i32.ge_u
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=20
   local.set $3
   local.get $1
   local.get $0
   i32.store $0
   local.get $3
   local.get $0
   i32.load $0 offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   local.get $2
   call $~lib/set/Set<u32>#rehash
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $std/set/testNumeric<u32>
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
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 1748
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i32.const 0
   i32.const 20
   memory.fill $0
   local.get $4
   call $~lib/set/Set<u32>#constructor
   local.tee $9
   i32.store $0
   loop $for-loop|0
    local.get $1
    i32.const 100
    i32.lt_u
    if
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u32>#has
     if
      i32.const 0
      i32.const 1568
      i32.const 6
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u32>#add
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 8
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#get:size
   i32.const 100
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 10
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 50
   local.set $1
   loop $for-loop|1
    local.get $1
    i32.const 100
    i32.lt_u
    if
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 14
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u32>#add
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 16
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|1
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#get:size
   i32.const 100
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 18
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.tee $4
   local.get $9
   i32.store $0 offset=4
   local.get $1
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1748
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   i64.const 0
   i64.store $0
   local.get $5
   local.get $9
   i32.store $0
   local.get $9
   i32.load $0 offset=8
   local.set $1
   local.get $5
   local.get $9
   i32.store $0
   local.get $9
   i32.load $0 offset=16
   local.set $10
   local.get $5
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1748
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $6
   i64.const 0
   i64.store $0
   local.get $6
   i64.const 0
   i64.store $0 offset=8
   local.get $6
   i32.const 16
   i32.const 15
   call $~lib/rt/itcms/__new
   local.tee $6
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0 offset=4
   local.get $6
   i32.const 0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.tee $7
   local.get $6
   i32.store $0 offset=4
   local.get $6
   i32.const 0
   i32.store $0 offset=4
   local.get $7
   local.get $6
   i32.store $0 offset=4
   local.get $6
   i32.const 0
   i32.store $0 offset=8
   local.get $7
   local.get $6
   i32.store $0 offset=4
   local.get $6
   i32.const 0
   i32.store $0 offset=12
   local.get $10
   i32.const 268435455
   i32.gt_u
   if
    i32.const 1456
    i32.const 1616
    i32.const 70
    i32.const 60
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   local.get $10
   local.get $10
   i32.const 8
   i32.le_u
   select
   i32.const 2
   i32.shl
   local.tee $7
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $11
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store $0 offset=12
   local.get $6
   local.get $11
   i32.store $0
   local.get $11
   if
    local.get $6
    local.get $11
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $8
   local.get $6
   i32.store $0 offset=4
   local.get $6
   local.get $11
   i32.store $0 offset=4
   local.get $8
   local.get $6
   i32.store $0 offset=4
   local.get $6
   local.get $7
   i32.store $0 offset=8
   local.get $8
   local.get $6
   i32.store $0 offset=4
   local.get $6
   local.get $10
   i32.store $0 offset=12
   local.get $8
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
   local.get $6
   i32.store $0 offset=4
   loop $for-loop|00
    local.get $2
    local.get $10
    i32.lt_s
    if
     local.get $1
     local.get $2
     i32.const 3
     i32.shl
     i32.add
     local.tee $5
     i32.load $0 offset=4
     i32.const 1
     i32.and
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store $0
      local.get $6
      local.get $0
      local.get $5
      i32.load $0
      call $~lib/array/Array<i32>#__set
      local.get $0
      i32.const 1
      i32.add
      local.set $0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|00
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0
   local.get $6
   local.get $0
   call $~lib/array/Array<i32>#set:length
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   local.get $6
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   call $~lib/set/Set<u32>#constructor
   local.tee $0
   i32.store $0 offset=12
   loop $for-loop|2
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store $0 offset=4
    local.get $6
    call $~lib/array/Array<i8>#get:length
    local.get $3
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     local.get $9
     i32.store $0 offset=4
     local.get $1
     local.get $6
     i32.store $0 offset=16
     local.get $9
     local.get $6
     local.get $3
     call $~lib/array/Array<u32>#__get
     call $~lib/set/Set<u32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 24
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     local.get $0
     i32.store $0 offset=4
     local.get $1
     local.get $6
     i32.store $0 offset=16
     local.get $0
     local.get $6
     local.get $3
     call $~lib/array/Array<u32>#__get
     call $~lib/set/Set<u32>#add
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|2
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   local.get $0
   call $~lib/set/Set<i8>#get:size
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#get:size
   local.get $0
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 27
    i32.const 3
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
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 31
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u32>#delete
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u32>#has
     if
      i32.const 0
      i32.const 1568
      i32.const 33
      i32.const 5
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
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#get:size
   i32.const 50
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 35
    i32.const 3
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
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u32>#has
     if
      i32.const 0
      i32.const 1568
      i32.const 39
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u32>#add
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u32>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 41
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u32>#delete
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $9
     local.get $1
     call $~lib/set/Set<u32>#has
     if
      i32.const 0
      i32.const 1568
      i32.const 43
      i32.const 5
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
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#get:size
   i32.const 50
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 45
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#clear
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/set/Set<i8>#get:size
   if
    i32.const 0
    i32.const 1568
    i32.const 49
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 34544
  i32.const 34592
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/set/Set<i64>#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store $0
  local.get $0
  i32.const 0
  i32.store $0 offset=8
  local.get $0
  i32.const 24
  i32.const 16
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=4
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.store $0
  local.get $1
  if
   local.get $0
   local.get $1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 3
  i32.store $0 offset=4
  local.get $1
  local.get $0
  i32.store $0 offset=4
  i32.const 64
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $1
  if
   local.get $0
   local.get $1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 4
  i32.store $0 offset=12
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 0
  i32.store $0 offset=16
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 0
  i32.store $0 offset=20
  local.get $1
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/set/Set<i64>#find (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store $0
  local.get $3
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0
  local.set $4
  local.get $3
  local.get $0
  i32.store $0
  local.get $4
  local.get $2
  local.get $0
  i32.load $0 offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load $0
  local.set $0
  loop $while-continue|0
   local.get $0
   if
    local.get $0
    i32.load $0 offset=8
    local.tee $2
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $1
     local.get $0
     i64.load $0
     i64.eq
    end
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $0
     return
    end
    local.get $2
    i32.const -2
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $~lib/set/Set<i64>#has (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  local.get $1
  i32.wrap_i64
  i32.const -1028477379
  i32.mul
  i32.const 374761401
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.get $1
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  i32.const -1028477379
  i32.mul
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.tee $0
  i32.const 15
  i32.shr_u
  local.get $0
  i32.xor
  i32.const -2048144777
  i32.mul
  local.tee $0
  i32.const 13
  i32.shr_u
  local.get $0
  i32.xor
  i32.const -1028477379
  i32.mul
  local.tee $0
  i32.const 16
  i32.shr_u
  local.get $0
  i32.xor
  call $~lib/set/Set<i64>#find
  i32.const 0
  i32.ne
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/set/Set<i64>#rehash (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  i64.const 0
  i64.store $0 offset=8
  local.get $2
  local.get $1
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $8
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $6
  i32.const 4
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $3
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=8
  local.get $0
  i32.load $0 offset=8
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=8
  local.get $4
  local.get $0
  i32.load $0 offset=16
  i32.const 4
  i32.shl
  i32.add
  local.set $7
  local.get $3
  local.set $2
  loop $while-continue|0
   local.get $4
   local.get $7
   i32.ne
   if
    local.get $4
    i32.load $0 offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $2
     local.get $4
     i64.load $0
     local.tee $5
     i64.store $0
     local.get $2
     local.get $8
     local.get $1
     local.get $5
     i32.wrap_i64
     i32.const -1028477379
     i32.mul
     i32.const 374761401
     i32.add
     i32.const 17
     i32.rotl
     i32.const 668265263
     i32.mul
     local.get $5
     i64.const 32
     i64.shr_u
     i32.wrap_i64
     i32.const -1028477379
     i32.mul
     i32.add
     i32.const 17
     i32.rotl
     i32.const 668265263
     i32.mul
     local.tee $9
     local.get $9
     i32.const 15
     i32.shr_u
     i32.xor
     i32.const -2048144777
     i32.mul
     local.tee $9
     local.get $9
     i32.const 13
     i32.shr_u
     i32.xor
     i32.const -1028477379
     i32.mul
     local.tee $9
     local.get $9
     i32.const 16
     i32.shr_u
     i32.xor
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $9
     i32.load $0
     i32.store $0 offset=8
     local.get $9
     local.get $2
     i32.store $0
     local.get $2
     i32.const 16
     i32.add
     local.set $2
    end
    local.get $4
    i32.const 16
    i32.add
    local.set $4
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0 offset=8
  local.get $2
  local.get $8
  i32.store $0 offset=12
  local.get $0
  local.get $8
  i32.store $0
  local.get $8
  if
   local.get $0
   local.get $8
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.store $0 offset=4
  local.get $2
  local.get $0
  i32.store $0 offset=8
  local.get $2
  local.get $3
  i32.store $0 offset=12
  local.get $0
  local.get $3
  i32.store $0 offset=8
  local.get $3
  if
   local.get $0
   local.get $3
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=8
  local.get $0
  local.get $6
  i32.store $0 offset=12
  local.get $1
  local.get $0
  i32.store $0 offset=8
  local.get $1
  local.get $0
  i32.store $0 offset=12
  local.get $0
  local.get $0
  i32.load $0 offset=20
  i32.store $0 offset=16
  local.get $1
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/set/Set<i64>#add (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  local.get $1
  i32.wrap_i64
  i32.const -1028477379
  i32.mul
  i32.const 374761401
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.get $1
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  i32.const -1028477379
  i32.mul
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.tee $2
  i32.const 15
  i32.shr_u
  local.get $2
  i32.xor
  i32.const -2048144777
  i32.mul
  local.tee $2
  i32.const 13
  i32.shr_u
  local.get $2
  i32.xor
  i32.const -1028477379
  i32.mul
  local.tee $2
  i32.const 16
  i32.shr_u
  local.get $2
  i32.xor
  local.tee $2
  call $~lib/set/Set<i64>#find
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=16
   local.set $4
   local.get $3
   local.get $0
   i32.store $0
   local.get $4
   local.get $0
   i32.load $0 offset=12
   i32.eq
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $3
    local.get $0
    i32.store $0
    local.get $3
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0 offset=20
    local.set $4
    local.get $3
    local.get $0
    i32.store $0 offset=4
    local.get $0
    local.get $4
    local.get $0
    i32.load $0 offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=4
     local.get $0
     i32.load $0 offset=4
    else
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=4
     local.get $0
     i32.load $0 offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<i64>#rehash
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=8
   local.set $4
   local.get $3
   local.get $0
   i32.store $0
   local.get $3
   local.get $0
   i32.store $0 offset=4
   local.get $0
   local.get $0
   i32.load $0 offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store $0 offset=16
   local.get $4
   local.get $5
   i32.const 4
   i32.shl
   i32.add
   local.tee $4
   local.get $1
   i64.store $0
   local.get $3
   local.get $0
   i32.store $0
   local.get $3
   local.get $0
   i32.store $0 offset=4
   local.get $0
   local.get $0
   i32.load $0 offset=20
   i32.const 1
   i32.add
   i32.store $0 offset=20
   local.get $3
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0
   local.set $5
   local.get $3
   local.get $0
   i32.store $0
   local.get $4
   local.get $5
   local.get $2
   local.get $0
   i32.load $0 offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load $0
   i32.store $0 offset=8
   local.get $0
   local.get $4
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i64>#__set (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store $0
  local.get $3
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.load $0 offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 1248
    i32.const 1616
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   i32.const 3
   i32.const 1
   call $~lib/array/ensureCapacity
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   local.get $3
   i32.store $0 offset=12
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  local.get $2
  i64.store $0
  local.get $3
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i64>#set:length (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $0
  local.get $1
  i32.const 3
  i32.const 0
  call $~lib/array/ensureCapacity
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  i32.store $0 offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i64>#__get (param $0 i32) (param $1 i32) (result i64)
  (local $2 i64)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store $0
  local.get $3
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.load $0 offset=12
  i32.ge_u
  if
   i32.const 1248
   i32.const 1616
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load $0
  local.set $2
  local.get $3
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/set/Set<i64>#delete (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  local.get $1
  i32.wrap_i64
  i32.const -1028477379
  i32.mul
  i32.const 374761401
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.get $1
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  i32.const -1028477379
  i32.mul
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.tee $2
  i32.const 15
  i32.shr_u
  local.get $2
  i32.xor
  i32.const -2048144777
  i32.mul
  local.tee $2
  i32.const 13
  i32.shr_u
  local.get $2
  i32.xor
  i32.const -1028477379
  i32.mul
  local.tee $2
  i32.const 16
  i32.shr_u
  local.get $2
  i32.xor
  call $~lib/set/Set<i64>#find
  local.tee $2
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  local.get $2
  local.get $2
  i32.load $0 offset=8
  i32.const 1
  i32.or
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0 offset=4
  local.get $0
  local.get $0
  i32.load $0 offset=20
  i32.const 1
  i32.sub
  i32.store $0 offset=20
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  i32.const 1
  i32.shr_u
  local.set $3
  local.get $2
  local.get $0
  i32.store $0
  local.get $3
  i32.const 1
  i32.add
  i32.const 4
  local.get $0
  i32.load $0 offset=20
  local.tee $2
  local.get $2
  i32.const 4
  i32.lt_u
  select
  i32.ge_u
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=20
   local.set $4
   local.get $2
   local.get $0
   i32.store $0
   local.get $4
   local.get $0
   i32.load $0 offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   local.get $3
   call $~lib/set/Set<i64>#rehash
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/set/Set<i64>#clear (param $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store $0
  local.get $1
  local.get $0
  i32.store $0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $0
  local.get $1
  i32.store $0
  local.get $1
  if
   local.get $0
   local.get $1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0
  local.get $0
  i32.const 3
  i32.store $0 offset=4
  local.get $1
  local.get $0
  i32.store $0
  i32.const 64
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $1
  if
   local.get $0
   local.get $1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0
  local.get $0
  i32.const 4
  i32.store $0 offset=12
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  i32.const 0
  i32.store $0 offset=16
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  i32.const 0
  i32.store $0 offset=20
  local.get $1
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $std/set/testNumeric<i64>
  (local $0 i32)
  (local $1 i64)
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
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 1748
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i32.const 0
   i32.const 20
   memory.fill $0
   local.get $4
   call $~lib/set/Set<i64>#constructor
   local.tee $10
   i32.store $0
   loop $for-loop|0
    local.get $1
    i64.const 100
    i64.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=4
     local.get $10
     local.get $1
     call $~lib/set/Set<i64>#has
     if
      i32.const 0
      i32.const 1568
      i32.const 6
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=4
     local.get $10
     local.get $1
     call $~lib/set/Set<i64>#add
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=4
     local.get $10
     local.get $1
     call $~lib/set/Set<i64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 8
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     local.get $1
     i64.const 1
     i64.add
     local.set $1
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store $0 offset=4
   local.get $10
   call $~lib/set/Set<i8>#get:size
   i32.const 100
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 10
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i64.const 50
   local.set $1
   loop $for-loop|1
    local.get $1
    i64.const 100
    i64.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=4
     local.get $10
     local.get $1
     call $~lib/set/Set<i64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 14
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=4
     local.get $10
     local.get $1
     call $~lib/set/Set<i64>#add
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=4
     local.get $10
     local.get $1
     call $~lib/set/Set<i64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 16
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     local.get $1
     i64.const 1
     i64.add
     local.set $1
     br $for-loop|1
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store $0 offset=4
   local.get $10
   call $~lib/set/Set<i8>#get:size
   i32.const 100
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 18
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.tee $5
   local.get $10
   i32.store $0 offset=4
   local.get $4
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1748
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $6
   i64.const 0
   i64.store $0
   local.get $6
   local.get $10
   i32.store $0
   local.get $10
   i32.load $0 offset=8
   local.set $4
   local.get $6
   local.get $10
   i32.store $0
   local.get $10
   i32.load $0 offset=16
   local.set $11
   local.get $6
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1748
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $7
   i64.const 0
   i64.store $0
   local.get $7
   i64.const 0
   i64.store $0 offset=8
   local.get $7
   i32.const 16
   i32.const 17
   call $~lib/rt/itcms/__new
   local.tee $7
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store $0 offset=4
   local.get $7
   i32.const 0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.tee $8
   local.get $7
   i32.store $0 offset=4
   local.get $7
   i32.const 0
   i32.store $0 offset=4
   local.get $8
   local.get $7
   i32.store $0 offset=4
   local.get $7
   i32.const 0
   i32.store $0 offset=8
   local.get $8
   local.get $7
   i32.store $0 offset=4
   local.get $7
   i32.const 0
   i32.store $0 offset=12
   local.get $11
   i32.const 134217727
   i32.gt_u
   if
    i32.const 1456
    i32.const 1616
    i32.const 70
    i32.const 60
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   local.get $11
   local.get $11
   i32.const 8
   i32.le_u
   select
   i32.const 3
   i32.shl
   local.tee $8
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $12
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $12
   i32.store $0 offset=12
   local.get $7
   local.get $12
   i32.store $0
   local.get $12
   if
    local.get $7
    local.get $12
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $9
   local.get $7
   i32.store $0 offset=4
   local.get $7
   local.get $12
   i32.store $0 offset=4
   local.get $9
   local.get $7
   i32.store $0 offset=4
   local.get $7
   local.get $8
   i32.store $0 offset=8
   local.get $9
   local.get $7
   i32.store $0 offset=4
   local.get $7
   local.get $11
   i32.store $0 offset=12
   local.get $9
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   local.get $7
   i32.store $0 offset=4
   loop $for-loop|00
    local.get $2
    local.get $11
    i32.lt_s
    if
     local.get $4
     local.get $2
     i32.const 4
     i32.shl
     i32.add
     local.tee $6
     i32.load $0 offset=8
     i32.const 1
     i32.and
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store $0
      local.get $7
      local.get $0
      local.get $6
      i64.load $0
      call $~lib/array/Array<i64>#__set
      local.get $0
      i32.const 1
      i32.add
      local.set $0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|00
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store $0
   local.get $7
   local.get $0
   call $~lib/array/Array<i64>#set:length
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
   local.get $7
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   call $~lib/set/Set<i64>#constructor
   local.tee $0
   i32.store $0 offset=12
   loop $for-loop|2
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store $0 offset=4
    local.get $7
    call $~lib/array/Array<i8>#get:length
    local.get $3
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $10
     i32.store $0 offset=4
     local.get $2
     local.get $7
     i32.store $0 offset=16
     local.get $10
     local.get $7
     local.get $3
     call $~lib/array/Array<i64>#__get
     call $~lib/set/Set<i64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 24
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $0
     i32.store $0 offset=4
     local.get $2
     local.get $7
     i32.store $0 offset=16
     local.get $0
     local.get $7
     local.get $3
     call $~lib/array/Array<i64>#__get
     call $~lib/set/Set<i64>#add
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|2
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   local.get $0
   call $~lib/set/Set<i8>#get:size
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store $0 offset=4
   local.get $10
   call $~lib/set/Set<i8>#get:size
   local.get $0
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 27
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i64.const 0
   local.set $1
   loop $for-loop|3
    local.get $1
    i64.const 50
    i64.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=4
     local.get $10
     local.get $1
     call $~lib/set/Set<i64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 31
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=4
     local.get $10
     local.get $1
     call $~lib/set/Set<i64>#delete
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=4
     local.get $10
     local.get $1
     call $~lib/set/Set<i64>#has
     if
      i32.const 0
      i32.const 1568
      i32.const 33
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     local.get $1
     i64.const 1
     i64.add
     local.set $1
     br $for-loop|3
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store $0 offset=4
   local.get $10
   call $~lib/set/Set<i8>#get:size
   i32.const 50
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 35
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i64.const 0
   local.set $1
   loop $for-loop|4
    local.get $1
    i64.const 50
    i64.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=4
     local.get $10
     local.get $1
     call $~lib/set/Set<i64>#has
     if
      i32.const 0
      i32.const 1568
      i32.const 39
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=4
     local.get $10
     local.get $1
     call $~lib/set/Set<i64>#add
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=4
     local.get $10
     local.get $1
     call $~lib/set/Set<i64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 41
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=4
     local.get $10
     local.get $1
     call $~lib/set/Set<i64>#delete
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=4
     local.get $10
     local.get $1
     call $~lib/set/Set<i64>#has
     if
      i32.const 0
      i32.const 1568
      i32.const 43
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     local.get $1
     i64.const 1
     i64.add
     local.set $1
     br $for-loop|4
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store $0 offset=4
   local.get $10
   call $~lib/set/Set<i8>#get:size
   i32.const 50
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 45
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store $0 offset=4
   local.get $10
   call $~lib/set/Set<i64>#clear
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store $0 offset=4
   local.get $10
   call $~lib/set/Set<i8>#get:size
   if
    i32.const 0
    i32.const 1568
    i32.const 49
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 34544
  i32.const 34592
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/set/Set<u64>#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store $0
  local.get $0
  i32.const 0
  i32.store $0 offset=8
  local.get $0
  i32.const 24
  i32.const 18
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=4
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.store $0
  local.get $1
  if
   local.get $0
   local.get $1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 3
  i32.store $0 offset=4
  local.get $1
  local.get $0
  i32.store $0 offset=4
  i32.const 64
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $1
  if
   local.get $0
   local.get $1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 4
  i32.store $0 offset=12
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 0
  i32.store $0 offset=16
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 0
  i32.store $0 offset=20
  local.get $1
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/set/Set<u64>#find (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store $0
  local.get $3
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0
  local.set $4
  local.get $3
  local.get $0
  i32.store $0
  local.get $4
  local.get $2
  local.get $0
  i32.load $0 offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load $0
  local.set $0
  loop $while-continue|0
   local.get $0
   if
    local.get $0
    i32.load $0 offset=8
    local.tee $2
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $1
     local.get $0
     i64.load $0
     i64.eq
    end
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $0
     return
    end
    local.get $2
    i32.const -2
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $~lib/set/Set<u64>#has (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  local.get $1
  i32.wrap_i64
  i32.const -1028477379
  i32.mul
  i32.const 374761401
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.get $1
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  i32.const -1028477379
  i32.mul
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.tee $0
  i32.const 15
  i32.shr_u
  local.get $0
  i32.xor
  i32.const -2048144777
  i32.mul
  local.tee $0
  i32.const 13
  i32.shr_u
  local.get $0
  i32.xor
  i32.const -1028477379
  i32.mul
  local.tee $0
  i32.const 16
  i32.shr_u
  local.get $0
  i32.xor
  call $~lib/set/Set<u64>#find
  i32.const 0
  i32.ne
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/set/Set<u64>#rehash (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  i64.const 0
  i64.store $0 offset=8
  local.get $2
  local.get $1
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $8
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $6
  i32.const 4
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $3
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=8
  local.get $0
  i32.load $0 offset=8
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=8
  local.get $4
  local.get $0
  i32.load $0 offset=16
  i32.const 4
  i32.shl
  i32.add
  local.set $7
  local.get $3
  local.set $2
  loop $while-continue|0
   local.get $4
   local.get $7
   i32.ne
   if
    local.get $4
    i32.load $0 offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $2
     local.get $4
     i64.load $0
     local.tee $5
     i64.store $0
     local.get $2
     local.get $8
     local.get $1
     local.get $5
     i32.wrap_i64
     i32.const -1028477379
     i32.mul
     i32.const 374761401
     i32.add
     i32.const 17
     i32.rotl
     i32.const 668265263
     i32.mul
     local.get $5
     i64.const 32
     i64.shr_u
     i32.wrap_i64
     i32.const -1028477379
     i32.mul
     i32.add
     i32.const 17
     i32.rotl
     i32.const 668265263
     i32.mul
     local.tee $9
     local.get $9
     i32.const 15
     i32.shr_u
     i32.xor
     i32.const -2048144777
     i32.mul
     local.tee $9
     local.get $9
     i32.const 13
     i32.shr_u
     i32.xor
     i32.const -1028477379
     i32.mul
     local.tee $9
     local.get $9
     i32.const 16
     i32.shr_u
     i32.xor
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $9
     i32.load $0
     i32.store $0 offset=8
     local.get $9
     local.get $2
     i32.store $0
     local.get $2
     i32.const 16
     i32.add
     local.set $2
    end
    local.get $4
    i32.const 16
    i32.add
    local.set $4
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0 offset=8
  local.get $2
  local.get $8
  i32.store $0 offset=12
  local.get $0
  local.get $8
  i32.store $0
  local.get $8
  if
   local.get $0
   local.get $8
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.store $0 offset=4
  local.get $2
  local.get $0
  i32.store $0 offset=8
  local.get $2
  local.get $3
  i32.store $0 offset=12
  local.get $0
  local.get $3
  i32.store $0 offset=8
  local.get $3
  if
   local.get $0
   local.get $3
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=8
  local.get $0
  local.get $6
  i32.store $0 offset=12
  local.get $1
  local.get $0
  i32.store $0 offset=8
  local.get $1
  local.get $0
  i32.store $0 offset=12
  local.get $0
  local.get $0
  i32.load $0 offset=20
  i32.store $0 offset=16
  local.get $1
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/set/Set<u64>#add (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  local.get $1
  i32.wrap_i64
  i32.const -1028477379
  i32.mul
  i32.const 374761401
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.get $1
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  i32.const -1028477379
  i32.mul
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.tee $2
  i32.const 15
  i32.shr_u
  local.get $2
  i32.xor
  i32.const -2048144777
  i32.mul
  local.tee $2
  i32.const 13
  i32.shr_u
  local.get $2
  i32.xor
  i32.const -1028477379
  i32.mul
  local.tee $2
  i32.const 16
  i32.shr_u
  local.get $2
  i32.xor
  local.tee $2
  call $~lib/set/Set<u64>#find
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=16
   local.set $4
   local.get $3
   local.get $0
   i32.store $0
   local.get $4
   local.get $0
   i32.load $0 offset=12
   i32.eq
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $3
    local.get $0
    i32.store $0
    local.get $3
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0 offset=20
    local.set $4
    local.get $3
    local.get $0
    i32.store $0 offset=4
    local.get $0
    local.get $4
    local.get $0
    i32.load $0 offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=4
     local.get $0
     i32.load $0 offset=4
    else
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=4
     local.get $0
     i32.load $0 offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<u64>#rehash
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=8
   local.set $4
   local.get $3
   local.get $0
   i32.store $0
   local.get $3
   local.get $0
   i32.store $0 offset=4
   local.get $0
   local.get $0
   i32.load $0 offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store $0 offset=16
   local.get $4
   local.get $5
   i32.const 4
   i32.shl
   i32.add
   local.tee $4
   local.get $1
   i64.store $0
   local.get $3
   local.get $0
   i32.store $0
   local.get $3
   local.get $0
   i32.store $0 offset=4
   local.get $0
   local.get $0
   i32.load $0 offset=20
   i32.const 1
   i32.add
   i32.store $0 offset=20
   local.get $3
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0
   local.set $5
   local.get $3
   local.get $0
   i32.store $0
   local.get $4
   local.get $5
   local.get $2
   local.get $0
   i32.load $0 offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load $0
   i32.store $0 offset=8
   local.get $0
   local.get $4
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<u64>#__get (param $0 i32) (param $1 i32) (result i64)
  (local $2 i64)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store $0
  local.get $3
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.load $0 offset=12
  i32.ge_u
  if
   i32.const 1248
   i32.const 1616
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load $0
  local.set $2
  local.get $3
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/set/Set<u64>#delete (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  local.get $1
  i32.wrap_i64
  i32.const -1028477379
  i32.mul
  i32.const 374761401
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.get $1
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  i32.const -1028477379
  i32.mul
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.tee $2
  i32.const 15
  i32.shr_u
  local.get $2
  i32.xor
  i32.const -2048144777
  i32.mul
  local.tee $2
  i32.const 13
  i32.shr_u
  local.get $2
  i32.xor
  i32.const -1028477379
  i32.mul
  local.tee $2
  i32.const 16
  i32.shr_u
  local.get $2
  i32.xor
  call $~lib/set/Set<u64>#find
  local.tee $2
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  local.get $2
  local.get $2
  i32.load $0 offset=8
  i32.const 1
  i32.or
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0 offset=4
  local.get $0
  local.get $0
  i32.load $0 offset=20
  i32.const 1
  i32.sub
  i32.store $0 offset=20
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  i32.const 1
  i32.shr_u
  local.set $3
  local.get $2
  local.get $0
  i32.store $0
  local.get $3
  i32.const 1
  i32.add
  i32.const 4
  local.get $0
  i32.load $0 offset=20
  local.tee $2
  local.get $2
  i32.const 4
  i32.lt_u
  select
  i32.ge_u
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=20
   local.set $4
   local.get $2
   local.get $0
   i32.store $0
   local.get $4
   local.get $0
   i32.load $0 offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   local.get $3
   call $~lib/set/Set<u64>#rehash
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $std/set/testNumeric<u64>
  (local $0 i32)
  (local $1 i64)
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
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 1748
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i32.const 0
   i32.const 20
   memory.fill $0
   local.get $4
   call $~lib/set/Set<u64>#constructor
   local.tee $10
   i32.store $0
   loop $for-loop|0
    local.get $1
    i64.const 100
    i64.lt_u
    if
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=4
     local.get $10
     local.get $1
     call $~lib/set/Set<u64>#has
     if
      i32.const 0
      i32.const 1568
      i32.const 6
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=4
     local.get $10
     local.get $1
     call $~lib/set/Set<u64>#add
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=4
     local.get $10
     local.get $1
     call $~lib/set/Set<u64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 8
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     local.get $1
     i64.const 1
     i64.add
     local.set $1
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store $0 offset=4
   local.get $10
   call $~lib/set/Set<i8>#get:size
   i32.const 100
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 10
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i64.const 50
   local.set $1
   loop $for-loop|1
    local.get $1
    i64.const 100
    i64.lt_u
    if
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=4
     local.get $10
     local.get $1
     call $~lib/set/Set<u64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 14
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=4
     local.get $10
     local.get $1
     call $~lib/set/Set<u64>#add
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=4
     local.get $10
     local.get $1
     call $~lib/set/Set<u64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 16
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     local.get $1
     i64.const 1
     i64.add
     local.set $1
     br $for-loop|1
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store $0 offset=4
   local.get $10
   call $~lib/set/Set<i8>#get:size
   i32.const 100
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 18
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.tee $5
   local.get $10
   i32.store $0 offset=4
   local.get $4
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1748
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $6
   i64.const 0
   i64.store $0
   local.get $6
   local.get $10
   i32.store $0
   local.get $10
   i32.load $0 offset=8
   local.set $4
   local.get $6
   local.get $10
   i32.store $0
   local.get $10
   i32.load $0 offset=16
   local.set $11
   local.get $6
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1748
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $7
   i64.const 0
   i64.store $0
   local.get $7
   i64.const 0
   i64.store $0 offset=8
   local.get $7
   i32.const 16
   i32.const 19
   call $~lib/rt/itcms/__new
   local.tee $7
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store $0 offset=4
   local.get $7
   i32.const 0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.tee $8
   local.get $7
   i32.store $0 offset=4
   local.get $7
   i32.const 0
   i32.store $0 offset=4
   local.get $8
   local.get $7
   i32.store $0 offset=4
   local.get $7
   i32.const 0
   i32.store $0 offset=8
   local.get $8
   local.get $7
   i32.store $0 offset=4
   local.get $7
   i32.const 0
   i32.store $0 offset=12
   local.get $11
   i32.const 134217727
   i32.gt_u
   if
    i32.const 1456
    i32.const 1616
    i32.const 70
    i32.const 60
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   local.get $11
   local.get $11
   i32.const 8
   i32.le_u
   select
   i32.const 3
   i32.shl
   local.tee $8
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $12
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $12
   i32.store $0 offset=12
   local.get $7
   local.get $12
   i32.store $0
   local.get $12
   if
    local.get $7
    local.get $12
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $9
   local.get $7
   i32.store $0 offset=4
   local.get $7
   local.get $12
   i32.store $0 offset=4
   local.get $9
   local.get $7
   i32.store $0 offset=4
   local.get $7
   local.get $8
   i32.store $0 offset=8
   local.get $9
   local.get $7
   i32.store $0 offset=4
   local.get $7
   local.get $11
   i32.store $0 offset=12
   local.get $9
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   local.get $7
   i32.store $0 offset=4
   loop $for-loop|00
    local.get $2
    local.get $11
    i32.lt_s
    if
     local.get $4
     local.get $2
     i32.const 4
     i32.shl
     i32.add
     local.tee $6
     i32.load $0 offset=8
     i32.const 1
     i32.and
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store $0
      local.get $7
      local.get $0
      local.get $6
      i64.load $0
      call $~lib/array/Array<i64>#__set
      local.get $0
      i32.const 1
      i32.add
      local.set $0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|00
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store $0
   local.get $7
   local.get $0
   call $~lib/array/Array<i64>#set:length
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
   local.get $7
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   call $~lib/set/Set<u64>#constructor
   local.tee $0
   i32.store $0 offset=12
   loop $for-loop|2
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store $0 offset=4
    local.get $7
    call $~lib/array/Array<i8>#get:length
    local.get $3
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $10
     i32.store $0 offset=4
     local.get $2
     local.get $7
     i32.store $0 offset=16
     local.get $10
     local.get $7
     local.get $3
     call $~lib/array/Array<u64>#__get
     call $~lib/set/Set<u64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 24
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $0
     i32.store $0 offset=4
     local.get $2
     local.get $7
     i32.store $0 offset=16
     local.get $0
     local.get $7
     local.get $3
     call $~lib/array/Array<u64>#__get
     call $~lib/set/Set<u64>#add
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|2
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   local.get $0
   call $~lib/set/Set<i8>#get:size
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store $0 offset=4
   local.get $10
   call $~lib/set/Set<i8>#get:size
   local.get $0
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 27
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i64.const 0
   local.set $1
   loop $for-loop|3
    local.get $1
    i64.const 50
    i64.lt_u
    if
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=4
     local.get $10
     local.get $1
     call $~lib/set/Set<u64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 31
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=4
     local.get $10
     local.get $1
     call $~lib/set/Set<u64>#delete
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=4
     local.get $10
     local.get $1
     call $~lib/set/Set<u64>#has
     if
      i32.const 0
      i32.const 1568
      i32.const 33
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     local.get $1
     i64.const 1
     i64.add
     local.set $1
     br $for-loop|3
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store $0 offset=4
   local.get $10
   call $~lib/set/Set<i8>#get:size
   i32.const 50
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 35
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i64.const 0
   local.set $1
   loop $for-loop|4
    local.get $1
    i64.const 50
    i64.lt_u
    if
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=4
     local.get $10
     local.get $1
     call $~lib/set/Set<u64>#has
     if
      i32.const 0
      i32.const 1568
      i32.const 39
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=4
     local.get $10
     local.get $1
     call $~lib/set/Set<u64>#add
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=4
     local.get $10
     local.get $1
     call $~lib/set/Set<u64>#has
     i32.eqz
     if
      i32.const 0
      i32.const 1568
      i32.const 41
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=4
     local.get $10
     local.get $1
     call $~lib/set/Set<u64>#delete
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=4
     local.get $10
     local.get $1
     call $~lib/set/Set<u64>#has
     if
      i32.const 0
      i32.const 1568
      i32.const 43
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     local.get $1
     i64.const 1
     i64.add
     local.set $1
     br $for-loop|4
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store $0 offset=4
   local.get $10
   call $~lib/set/Set<i8>#get:size
   i32.const 50
   i32.ne
   if
    i32.const 0
    i32.const 1568
    i32.const 45
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store $0 offset=4
   local.get $10
   call $~lib/set/Set<i64>#clear
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store $0 offset=4
   local.get $10
   call $~lib/set/Set<i8>#get:size
   if
    i32.const 0
    i32.const 1568
    i32.const 49
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 34544
  i32.const 34592
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/set/Set<f32>#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store $0
  local.get $0
  i32.const 0
  i32.store $0 offset=8
  local.get $0
  i32.const 24
  i32.const 20
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=4
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.store $0
  local.get $1
  if
   local.get $0
   local.get $1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 3
  i32.store $0 offset=4
  local.get $1
  local.get $0
  i32.store $0 offset=4
  i32.const 32
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $1
  if
   local.get $0
   local.get $1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 4
  i32.store $0 offset=12
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 0
  i32.store $0 offset=16
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 0
  i32.store $0 offset=20
  local.get $1
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/set/Set<f32>#find (param $0 i32) (param $1 f32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store $0
  local.get $3
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0
  local.set $4
  local.get $3
  local.get $0
  i32.store $0
  local.get $4
  local.get $2
  local.get $0
  i32.load $0 offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load $0
  local.set $0
  loop $while-continue|0
   local.get $0
   if
    local.get $0
    i32.load $0 offset=4
    local.tee $2
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $1
     local.get $0
     f32.load $0
     f32.eq
    end
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $0
     return
    end
    local.get $2
    i32.const -2
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $~lib/set/Set<f32>#has (param $0 i32) (param $1 f32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  local.get $1
  i32.reinterpret_f32
  i32.const -1028477379
  i32.mul
  i32.const 374761397
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.tee $0
  local.get $0
  i32.const 15
  i32.shr_u
  i32.xor
  i32.const -2048144777
  i32.mul
  local.tee $0
  local.get $0
  i32.const 13
  i32.shr_u
  i32.xor
  i32.const -1028477379
  i32.mul
  local.tee $0
  local.get $0
  i32.const 16
  i32.shr_u
  i32.xor
  call $~lib/set/Set<f32>#find
  i32.const 0
  i32.ne
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/set/Set<f32>#rehash (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  i64.const 0
  i64.store $0 offset=8
  local.get $2
  local.get $1
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $8
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $5
  i32.const 3
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $3
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=8
  local.get $0
  i32.load $0 offset=8
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=8
  local.get $4
  local.get $0
  i32.load $0 offset=16
  i32.const 3
  i32.shl
  i32.add
  local.set $6
  local.get $3
  local.set $2
  loop $while-continue|0
   local.get $4
   local.get $6
   i32.ne
   if
    local.get $4
    i32.load $0 offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $2
     local.get $4
     f32.load $0
     local.tee $7
     f32.store $0
     local.get $2
     local.get $8
     local.get $1
     local.get $7
     i32.reinterpret_f32
     i32.const -1028477379
     i32.mul
     i32.const 374761397
     i32.add
     i32.const 17
     i32.rotl
     i32.const 668265263
     i32.mul
     local.tee $9
     i32.const 15
     i32.shr_u
     local.get $9
     i32.xor
     i32.const -2048144777
     i32.mul
     local.tee $9
     i32.const 13
     i32.shr_u
     local.get $9
     i32.xor
     i32.const -1028477379
     i32.mul
     local.tee $9
     i32.const 16
     i32.shr_u
     local.get $9
     i32.xor
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $9
     i32.load $0
     i32.store $0 offset=4
     local.get $9
     local.get $2
     i32.store $0
     local.get $2
     i32.const 8
     i32.add
     local.set $2
    end
    local.get $4
    i32.const 8
    i32.add
    local.set $4
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0 offset=8
  local.get $2
  local.get $8
  i32.store $0 offset=12
  local.get $0
  local.get $8
  i32.store $0
  local.get $8
  if
   local.get $0
   local.get $8
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.store $0 offset=4
  local.get $2
  local.get $0
  i32.store $0 offset=8
  local.get $2
  local.get $3
  i32.store $0 offset=12
  local.get $0
  local.get $3
  i32.store $0 offset=8
  local.get $3
  if
   local.get $0
   local.get $3
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=8
  local.get $0
  local.get $5
  i32.store $0 offset=12
  local.get $1
  local.get $0
  i32.store $0 offset=8
  local.get $1
  local.get $0
  i32.store $0 offset=12
  local.get $0
  local.get $0
  i32.load $0 offset=20
  i32.store $0 offset=16
  local.get $1
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/set/Set<f32>#add (param $0 i32) (param $1 f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  local.get $1
  i32.reinterpret_f32
  i32.const -1028477379
  i32.mul
  i32.const 374761397
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.tee $2
  i32.const 15
  i32.shr_u
  local.get $2
  i32.xor
  i32.const -2048144777
  i32.mul
  local.tee $2
  i32.const 13
  i32.shr_u
  local.get $2
  i32.xor
  i32.const -1028477379
  i32.mul
  local.tee $2
  i32.const 16
  i32.shr_u
  local.get $2
  i32.xor
  local.tee $2
  call $~lib/set/Set<f32>#find
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=16
   local.set $4
   local.get $3
   local.get $0
   i32.store $0
   local.get $4
   local.get $0
   i32.load $0 offset=12
   i32.eq
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $3
    local.get $0
    i32.store $0
    local.get $3
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0 offset=20
    local.set $4
    local.get $3
    local.get $0
    i32.store $0 offset=4
    local.get $0
    local.get $4
    local.get $0
    i32.load $0 offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=4
     local.get $0
     i32.load $0 offset=4
    else
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=4
     local.get $0
     i32.load $0 offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<f32>#rehash
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=8
   local.set $4
   local.get $3
   local.get $0
   i32.store $0
   local.get $3
   local.get $0
   i32.store $0 offset=4
   local.get $0
   local.get $0
   i32.load $0 offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store $0 offset=16
   local.get $4
   local.get $5
   i32.const 3
   i32.shl
   i32.add
   local.tee $4
   local.get $1
   f32.store $0
   local.get $3
   local.get $0
   i32.store $0
   local.get $3
   local.get $0
   i32.store $0 offset=4
   local.get $0
   local.get $0
   i32.load $0 offset=20
   i32.const 1
   i32.add
   i32.store $0 offset=20
   local.get $3
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0
   local.set $5
   local.get $3
   local.get $0
   i32.store $0
   local.get $4
   local.get $5
   local.get $2
   local.get $0
   i32.load $0 offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load $0
   i32.store $0 offset=4
   local.get $0
   local.get $4
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/set/Set<f32>#values (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 1748
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store $0
   local.get $1
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=8
   local.set $4
   local.get $1
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=16
   local.set $6
   local.get $1
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1748
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store $0
   local.get $0
   i64.const 0
   i64.store $0 offset=8
   local.get $0
   i32.const 16
   i32.const 21
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=4
   local.get $2
   i32.const 0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $2
   i32.store $0 offset=4
   local.get $2
   i32.const 0
   i32.store $0 offset=4
   local.get $0
   local.get $2
   i32.store $0 offset=4
   local.get $2
   i32.const 0
   i32.store $0 offset=8
   local.get $0
   local.get $2
   i32.store $0 offset=4
   local.get $2
   i32.const 0
   i32.store $0 offset=12
   local.get $6
   i32.const 268435455
   i32.gt_u
   if
    i32.const 1456
    i32.const 1616
    i32.const 70
    i32.const 60
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   local.get $6
   local.get $6
   i32.const 8
   i32.le_u
   select
   i32.const 2
   i32.shl
   local.tee $0
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $7
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store $0 offset=12
   local.get $2
   local.get $7
   i32.store $0
   local.get $7
   if
    local.get $2
    local.get $7
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $8
   local.get $2
   i32.store $0 offset=4
   local.get $2
   local.get $7
   i32.store $0 offset=4
   local.get $8
   local.get $2
   i32.store $0 offset=4
   local.get $2
   local.get $0
   i32.store $0 offset=8
   local.get $8
   local.get $2
   i32.store $0 offset=4
   local.get $2
   local.get $6
   i32.store $0 offset=12
   local.get $8
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   local.get $2
   i32.store $0 offset=4
   i32.const 0
   local.set $0
   loop $for-loop|0
    local.get $5
    local.get $6
    i32.lt_s
    if
     local.get $4
     local.get $5
     i32.const 3
     i32.shl
     i32.add
     local.tee $7
     i32.load $0 offset=4
     i32.const 1
     i32.and
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      local.tee $8
      local.get $2
      i32.store $0
      local.get $0
      local.tee $1
      i32.const 1
      i32.add
      local.set $0
      local.get $7
      f32.load $0
      local.set $3
      local.get $8
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 1748
      i32.lt_s
      br_if $folding-inner0
      global.get $~lib/memory/__stack_pointer
      local.tee $7
      i32.const 0
      i32.store $0
      local.get $7
      local.get $2
      i32.store $0
      local.get $1
      local.get $2
      i32.load $0 offset=12
      i32.ge_u
      if
       local.get $1
       i32.const 0
       i32.lt_s
       if
        i32.const 1248
        i32.const 1616
        i32.const 130
        i32.const 22
        call $~lib/builtins/abort
        unreachable
       end
       local.get $2
       local.get $1
       i32.const 1
       i32.add
       local.tee $7
       i32.const 2
       i32.const 1
       call $~lib/array/ensureCapacity
       global.get $~lib/memory/__stack_pointer
       local.get $2
       i32.store $0
       local.get $2
       local.get $7
       i32.store $0 offset=12
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $7
      local.get $2
      i32.store $0
      local.get $2
      i32.load $0 offset=4
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      local.get $3
      f32.store $0
      local.get $7
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0
   local.get $2
   local.get $0
   call $~lib/array/Array<i32>#set:length
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  i32.const 34544
  i32.const 34592
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/array/Array<f32>#__get (param $0 i32) (param $1 i32) (result f32)
  (local $2 f32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store $0
  local.get $3
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.load $0 offset=12
  i32.ge_u
  if
   i32.const 1248
   i32.const 1616
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  f32.load $0
  local.set $2
  local.get $3
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/set/Set<f32>#delete (param $0 i32) (param $1 f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  local.get $1
  i32.reinterpret_f32
  i32.const -1028477379
  i32.mul
  i32.const 374761397
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.tee $2
  i32.const 15
  i32.shr_u
  local.get $2
  i32.xor
  i32.const -2048144777
  i32.mul
  local.tee $2
  i32.const 13
  i32.shr_u
  local.get $2
  i32.xor
  i32.const -1028477379
  i32.mul
  local.tee $2
  i32.const 16
  i32.shr_u
  local.get $2
  i32.xor
  call $~lib/set/Set<f32>#find
  local.tee $2
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  local.get $2
  local.get $2
  i32.load $0 offset=4
  i32.const 1
  i32.or
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0 offset=4
  local.get $0
  local.get $0
  i32.load $0 offset=20
  i32.const 1
  i32.sub
  i32.store $0 offset=20
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  i32.const 1
  i32.shr_u
  local.set $3
  local.get $2
  local.get $0
  i32.store $0
  local.get $3
  i32.const 1
  i32.add
  i32.const 4
  local.get $0
  i32.load $0 offset=20
  local.tee $2
  local.get $2
  i32.const 4
  i32.lt_u
  select
  i32.ge_u
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=20
   local.set $4
   local.get $2
   local.get $0
   i32.store $0
   local.get $4
   local.get $0
   i32.load $0 offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   local.get $3
   call $~lib/set/Set<f32>#rehash
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $std/set/testNumeric<f32>
  (local $0 i32)
  (local $1 f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.const 20
  memory.fill $0
  local.get $2
  call $~lib/set/Set<f32>#constructor
  local.tee $3
  i32.store $0
  loop $for-loop|0
   local.get $1
   f32.const 100
   f32.lt
   if
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=4
    local.get $3
    local.get $1
    call $~lib/set/Set<f32>#has
    if
     i32.const 0
     i32.const 1568
     i32.const 6
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=4
    local.get $3
    local.get $1
    call $~lib/set/Set<f32>#add
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=4
    local.get $3
    local.get $1
    call $~lib/set/Set<f32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1568
     i32.const 8
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    f32.const 1
    f32.add
    local.set $1
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  call $~lib/set/Set<i8>#get:size
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 1568
   i32.const 10
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 50
  local.set $1
  loop $for-loop|1
   local.get $1
   f32.const 100
   f32.lt
   if
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=4
    local.get $3
    local.get $1
    call $~lib/set/Set<f32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1568
     i32.const 14
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=4
    local.get $3
    local.get $1
    call $~lib/set/Set<f32>#add
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=4
    local.get $3
    local.get $1
    call $~lib/set/Set<f32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1568
     i32.const 16
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    f32.const 1
    f32.add
    local.set $1
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  call $~lib/set/Set<i8>#get:size
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 1568
   i32.const 18
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $3
  i32.store $0 offset=4
  local.get $2
  local.get $3
  call $~lib/set/Set<f32>#values
  local.tee $4
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  call $~lib/set/Set<f32>#constructor
  local.tee $2
  i32.store $0 offset=12
  loop $for-loop|2
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store $0 offset=4
   local.get $4
   call $~lib/array/Array<i8>#get:length
   local.get $0
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $5
    local.get $3
    i32.store $0 offset=4
    local.get $5
    local.get $4
    i32.store $0 offset=16
    local.get $3
    local.get $4
    local.get $0
    call $~lib/array/Array<f32>#__get
    call $~lib/set/Set<f32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1568
     i32.const 24
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $5
    local.get $2
    i32.store $0 offset=4
    local.get $5
    local.get $4
    i32.store $0 offset=16
    local.get $2
    local.get $4
    local.get $0
    call $~lib/array/Array<f32>#__get
    call $~lib/set/Set<f32>#add
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|2
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  call $~lib/set/Set<i8>#get:size
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  call $~lib/set/Set<i8>#get:size
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 1568
   i32.const 27
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  local.set $1
  loop $for-loop|3
   local.get $1
   f32.const 50
   f32.lt
   if
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=4
    local.get $3
    local.get $1
    call $~lib/set/Set<f32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1568
     i32.const 31
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=4
    local.get $3
    local.get $1
    call $~lib/set/Set<f32>#delete
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=4
    local.get $3
    local.get $1
    call $~lib/set/Set<f32>#has
    if
     i32.const 0
     i32.const 1568
     i32.const 33
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    f32.const 1
    f32.add
    local.set $1
    br $for-loop|3
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  call $~lib/set/Set<i8>#get:size
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 1568
   i32.const 35
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  local.set $1
  loop $for-loop|4
   local.get $1
   f32.const 50
   f32.lt
   if
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=4
    local.get $3
    local.get $1
    call $~lib/set/Set<f32>#has
    if
     i32.const 0
     i32.const 1568
     i32.const 39
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=4
    local.get $3
    local.get $1
    call $~lib/set/Set<f32>#add
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=4
    local.get $3
    local.get $1
    call $~lib/set/Set<f32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1568
     i32.const 41
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=4
    local.get $3
    local.get $1
    call $~lib/set/Set<f32>#delete
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=4
    local.get $3
    local.get $1
    call $~lib/set/Set<f32>#has
    if
     i32.const 0
     i32.const 1568
     i32.const 43
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    f32.const 1
    f32.add
    local.set $1
    br $for-loop|4
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  call $~lib/set/Set<i8>#get:size
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 1568
   i32.const 45
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  call $~lib/set/Set<i8>#clear
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  call $~lib/set/Set<i8>#get:size
  if
   i32.const 0
   i32.const 1568
   i32.const 49
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/set/Set<f64>#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store $0
  local.get $0
  i32.const 0
  i32.store $0 offset=8
  local.get $0
  i32.const 24
  i32.const 22
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=4
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.store $0
  local.get $1
  if
   local.get $0
   local.get $1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 3
  i32.store $0 offset=4
  local.get $1
  local.get $0
  i32.store $0 offset=4
  i32.const 64
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $1
  if
   local.get $0
   local.get $1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 4
  i32.store $0 offset=12
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 0
  i32.store $0 offset=16
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 0
  i32.store $0 offset=20
  local.get $1
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/set/Set<f64>#find (param $0 i32) (param $1 f64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store $0
  local.get $3
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0
  local.set $4
  local.get $3
  local.get $0
  i32.store $0
  local.get $4
  local.get $2
  local.get $0
  i32.load $0 offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load $0
  local.set $0
  loop $while-continue|0
   local.get $0
   if
    local.get $0
    i32.load $0 offset=8
    local.tee $2
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $1
     local.get $0
     f64.load $0
     f64.eq
    end
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $0
     return
    end
    local.get $2
    i32.const -2
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $~lib/set/Set<f64>#has (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
  (local $3 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  local.get $1
  i64.reinterpret_f64
  local.tee $3
  i32.wrap_i64
  i32.const -1028477379
  i32.mul
  i32.const 374761401
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.get $3
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  i32.const -1028477379
  i32.mul
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.tee $0
  i32.const 15
  i32.shr_u
  local.get $0
  i32.xor
  i32.const -2048144777
  i32.mul
  local.tee $0
  i32.const 13
  i32.shr_u
  local.get $0
  i32.xor
  i32.const -1028477379
  i32.mul
  local.tee $0
  i32.const 16
  i32.shr_u
  local.get $0
  i32.xor
  call $~lib/set/Set<f64>#find
  i32.const 0
  i32.ne
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/set/Set<f64>#rehash (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f64)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  i64.const 0
  i64.store $0 offset=8
  local.get $2
  local.get $1
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $9
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $5
  i32.const 4
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $3
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=8
  local.get $0
  i32.load $0 offset=8
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=8
  local.get $4
  local.get $0
  i32.load $0 offset=16
  i32.const 4
  i32.shl
  i32.add
  local.set $6
  local.get $3
  local.set $2
  loop $while-continue|0
   local.get $4
   local.get $6
   i32.ne
   if
    local.get $4
    i32.load $0 offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $2
     local.get $4
     f64.load $0
     local.tee $7
     f64.store $0
     local.get $2
     local.get $9
     local.get $1
     local.get $7
     i64.reinterpret_f64
     local.tee $8
     i32.wrap_i64
     i32.const -1028477379
     i32.mul
     i32.const 374761401
     i32.add
     i32.const 17
     i32.rotl
     i32.const 668265263
     i32.mul
     local.get $8
     i64.const 32
     i64.shr_u
     i32.wrap_i64
     i32.const -1028477379
     i32.mul
     i32.add
     i32.const 17
     i32.rotl
     i32.const 668265263
     i32.mul
     local.tee $10
     local.get $10
     i32.const 15
     i32.shr_u
     i32.xor
     i32.const -2048144777
     i32.mul
     local.tee $10
     local.get $10
     i32.const 13
     i32.shr_u
     i32.xor
     i32.const -1028477379
     i32.mul
     local.tee $10
     local.get $10
     i32.const 16
     i32.shr_u
     i32.xor
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $10
     i32.load $0
     i32.store $0 offset=8
     local.get $10
     local.get $2
     i32.store $0
     local.get $2
     i32.const 16
     i32.add
     local.set $2
    end
    local.get $4
    i32.const 16
    i32.add
    local.set $4
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0 offset=8
  local.get $2
  local.get $9
  i32.store $0 offset=12
  local.get $0
  local.get $9
  i32.store $0
  local.get $9
  if
   local.get $0
   local.get $9
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.store $0 offset=4
  local.get $2
  local.get $0
  i32.store $0 offset=8
  local.get $2
  local.get $3
  i32.store $0 offset=12
  local.get $0
  local.get $3
  i32.store $0 offset=8
  local.get $3
  if
   local.get $0
   local.get $3
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=8
  local.get $0
  local.get $5
  i32.store $0 offset=12
  local.get $1
  local.get $0
  i32.store $0 offset=8
  local.get $1
  local.get $0
  i32.store $0 offset=12
  local.get $0
  local.get $0
  i32.load $0 offset=20
  i32.store $0 offset=16
  local.get $1
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/set/Set<f64>#add (param $0 i32) (param $1 f64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i64.const 0
  i64.store $0
  local.get $3
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  local.get $1
  i64.reinterpret_f64
  local.tee $2
  i32.wrap_i64
  i32.const -1028477379
  i32.mul
  i32.const 374761401
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.get $2
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  i32.const -1028477379
  i32.mul
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.tee $3
  i32.const 15
  i32.shr_u
  local.get $3
  i32.xor
  i32.const -2048144777
  i32.mul
  local.tee $3
  i32.const 13
  i32.shr_u
  local.get $3
  i32.xor
  i32.const -1028477379
  i32.mul
  local.tee $3
  i32.const 16
  i32.shr_u
  local.get $3
  i32.xor
  local.tee $3
  call $~lib/set/Set<f64>#find
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=16
   local.set $5
   local.get $4
   local.get $0
   i32.store $0
   local.get $5
   local.get $0
   i32.load $0 offset=12
   i32.eq
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $4
    local.get $0
    i32.store $0
    local.get $4
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0 offset=20
    local.set $5
    local.get $4
    local.get $0
    i32.store $0 offset=4
    local.get $0
    local.get $5
    local.get $0
    i32.load $0 offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=4
     local.get $0
     i32.load $0 offset=4
    else
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=4
     local.get $0
     i32.load $0 offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<f64>#rehash
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=8
   local.set $5
   local.get $4
   local.get $0
   i32.store $0
   local.get $4
   local.get $0
   i32.store $0 offset=4
   local.get $0
   local.get $0
   i32.load $0 offset=16
   local.tee $6
   i32.const 1
   i32.add
   i32.store $0 offset=16
   local.get $5
   local.get $6
   i32.const 4
   i32.shl
   i32.add
   local.tee $5
   local.get $1
   f64.store $0
   local.get $4
   local.get $0
   i32.store $0
   local.get $4
   local.get $0
   i32.store $0 offset=4
   local.get $0
   local.get $0
   i32.load $0 offset=20
   i32.const 1
   i32.add
   i32.store $0 offset=20
   local.get $4
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0
   local.set $6
   local.get $4
   local.get $0
   i32.store $0
   local.get $5
   local.get $6
   local.get $3
   local.get $0
   i32.load $0 offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load $0
   i32.store $0 offset=8
   local.get $0
   local.get $5
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/set/Set<f64>#values (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 1748
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store $0
   local.get $1
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=8
   local.set $4
   local.get $1
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=16
   local.set $6
   local.get $1
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1748
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store $0
   local.get $0
   i64.const 0
   i64.store $0 offset=8
   local.get $0
   i32.const 16
   i32.const 23
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=4
   local.get $2
   i32.const 0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $2
   i32.store $0 offset=4
   local.get $2
   i32.const 0
   i32.store $0 offset=4
   local.get $0
   local.get $2
   i32.store $0 offset=4
   local.get $2
   i32.const 0
   i32.store $0 offset=8
   local.get $0
   local.get $2
   i32.store $0 offset=4
   local.get $2
   i32.const 0
   i32.store $0 offset=12
   local.get $6
   i32.const 134217727
   i32.gt_u
   if
    i32.const 1456
    i32.const 1616
    i32.const 70
    i32.const 60
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   local.get $6
   local.get $6
   i32.const 8
   i32.le_u
   select
   i32.const 3
   i32.shl
   local.tee $0
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $7
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store $0 offset=12
   local.get $2
   local.get $7
   i32.store $0
   local.get $7
   if
    local.get $2
    local.get $7
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $8
   local.get $2
   i32.store $0 offset=4
   local.get $2
   local.get $7
   i32.store $0 offset=4
   local.get $8
   local.get $2
   i32.store $0 offset=4
   local.get $2
   local.get $0
   i32.store $0 offset=8
   local.get $8
   local.get $2
   i32.store $0 offset=4
   local.get $2
   local.get $6
   i32.store $0 offset=12
   local.get $8
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   local.get $2
   i32.store $0 offset=4
   i32.const 0
   local.set $0
   loop $for-loop|0
    local.get $5
    local.get $6
    i32.lt_s
    if
     local.get $4
     local.get $5
     i32.const 4
     i32.shl
     i32.add
     local.tee $7
     i32.load $0 offset=8
     i32.const 1
     i32.and
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      local.tee $8
      local.get $2
      i32.store $0
      local.get $0
      local.tee $1
      i32.const 1
      i32.add
      local.set $0
      local.get $7
      f64.load $0
      local.set $3
      local.get $8
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 1748
      i32.lt_s
      br_if $folding-inner0
      global.get $~lib/memory/__stack_pointer
      local.tee $7
      i32.const 0
      i32.store $0
      local.get $7
      local.get $2
      i32.store $0
      local.get $1
      local.get $2
      i32.load $0 offset=12
      i32.ge_u
      if
       local.get $1
       i32.const 0
       i32.lt_s
       if
        i32.const 1248
        i32.const 1616
        i32.const 130
        i32.const 22
        call $~lib/builtins/abort
        unreachable
       end
       local.get $2
       local.get $1
       i32.const 1
       i32.add
       local.tee $7
       i32.const 3
       i32.const 1
       call $~lib/array/ensureCapacity
       global.get $~lib/memory/__stack_pointer
       local.get $2
       i32.store $0
       local.get $2
       local.get $7
       i32.store $0 offset=12
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $7
      local.get $2
      i32.store $0
      local.get $2
      i32.load $0 offset=4
      local.get $1
      i32.const 3
      i32.shl
      i32.add
      local.get $3
      f64.store $0
      local.get $7
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0
   local.get $2
   local.get $0
   call $~lib/array/Array<i64>#set:length
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  i32.const 34544
  i32.const 34592
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/array/Array<f64>#__get (param $0 i32) (param $1 i32) (result f64)
  (local $2 f64)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store $0
  local.get $3
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.load $0 offset=12
  i32.ge_u
  if
   i32.const 1248
   i32.const 1616
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  f64.load $0
  local.set $2
  local.get $3
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/set/Set<f64>#delete (param $0 i32) (param $1 f64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i64.const 0
  i64.store $0
  local.get $3
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  local.get $1
  i64.reinterpret_f64
  local.tee $2
  i32.wrap_i64
  i32.const -1028477379
  i32.mul
  i32.const 374761401
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.get $2
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  i32.const -1028477379
  i32.mul
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.tee $3
  i32.const 15
  i32.shr_u
  local.get $3
  i32.xor
  i32.const -2048144777
  i32.mul
  local.tee $3
  i32.const 13
  i32.shr_u
  local.get $3
  i32.xor
  i32.const -1028477379
  i32.mul
  local.tee $3
  i32.const 16
  i32.shr_u
  local.get $3
  i32.xor
  call $~lib/set/Set<f64>#find
  local.tee $3
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  local.get $3
  local.get $3
  i32.load $0 offset=8
  i32.const 1
  i32.or
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  local.get $0
  i32.store $0
  local.get $3
  local.get $0
  i32.store $0 offset=4
  local.get $0
  local.get $0
  i32.load $0 offset=20
  i32.const 1
  i32.sub
  i32.store $0 offset=20
  local.get $3
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  i32.const 1
  i32.shr_u
  local.set $4
  local.get $3
  local.get $0
  i32.store $0
  local.get $4
  i32.const 1
  i32.add
  i32.const 4
  local.get $0
  i32.load $0 offset=20
  local.tee $3
  local.get $3
  i32.const 4
  i32.lt_u
  select
  i32.ge_u
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=20
   local.set $5
   local.get $3
   local.get $0
   i32.store $0
   local.get $5
   local.get $0
   i32.load $0 offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   local.get $4
   call $~lib/set/Set<f64>#rehash
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $std/set/testNumeric<f64>
  (local $0 i32)
  (local $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.const 20
  memory.fill $0
  local.get $2
  call $~lib/set/Set<f64>#constructor
  local.tee $3
  i32.store $0
  loop $for-loop|0
   local.get $1
   f64.const 100
   f64.lt
   if
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=4
    local.get $3
    local.get $1
    call $~lib/set/Set<f64>#has
    if
     i32.const 0
     i32.const 1568
     i32.const 6
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=4
    local.get $3
    local.get $1
    call $~lib/set/Set<f64>#add
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=4
    local.get $3
    local.get $1
    call $~lib/set/Set<f64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1568
     i32.const 8
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    f64.const 1
    f64.add
    local.set $1
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  call $~lib/set/Set<i8>#get:size
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 1568
   i32.const 10
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 50
  local.set $1
  loop $for-loop|1
   local.get $1
   f64.const 100
   f64.lt
   if
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=4
    local.get $3
    local.get $1
    call $~lib/set/Set<f64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1568
     i32.const 14
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=4
    local.get $3
    local.get $1
    call $~lib/set/Set<f64>#add
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=4
    local.get $3
    local.get $1
    call $~lib/set/Set<f64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1568
     i32.const 16
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    f64.const 1
    f64.add
    local.set $1
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  call $~lib/set/Set<i8>#get:size
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 1568
   i32.const 18
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $3
  i32.store $0 offset=4
  local.get $2
  local.get $3
  call $~lib/set/Set<f64>#values
  local.tee $4
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  call $~lib/set/Set<f64>#constructor
  local.tee $2
  i32.store $0 offset=12
  loop $for-loop|2
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store $0 offset=4
   local.get $4
   call $~lib/array/Array<i8>#get:length
   local.get $0
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $5
    local.get $3
    i32.store $0 offset=4
    local.get $5
    local.get $4
    i32.store $0 offset=16
    local.get $3
    local.get $4
    local.get $0
    call $~lib/array/Array<f64>#__get
    call $~lib/set/Set<f64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1568
     i32.const 24
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $5
    local.get $2
    i32.store $0 offset=4
    local.get $5
    local.get $4
    i32.store $0 offset=16
    local.get $2
    local.get $4
    local.get $0
    call $~lib/array/Array<f64>#__get
    call $~lib/set/Set<f64>#add
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|2
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  call $~lib/set/Set<i8>#get:size
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  call $~lib/set/Set<i8>#get:size
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 1568
   i32.const 27
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  local.set $1
  loop $for-loop|3
   local.get $1
   f64.const 50
   f64.lt
   if
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=4
    local.get $3
    local.get $1
    call $~lib/set/Set<f64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1568
     i32.const 31
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=4
    local.get $3
    local.get $1
    call $~lib/set/Set<f64>#delete
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=4
    local.get $3
    local.get $1
    call $~lib/set/Set<f64>#has
    if
     i32.const 0
     i32.const 1568
     i32.const 33
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    f64.const 1
    f64.add
    local.set $1
    br $for-loop|3
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  call $~lib/set/Set<i8>#get:size
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 1568
   i32.const 35
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  local.set $1
  loop $for-loop|4
   local.get $1
   f64.const 50
   f64.lt
   if
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=4
    local.get $3
    local.get $1
    call $~lib/set/Set<f64>#has
    if
     i32.const 0
     i32.const 1568
     i32.const 39
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=4
    local.get $3
    local.get $1
    call $~lib/set/Set<f64>#add
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=4
    local.get $3
    local.get $1
    call $~lib/set/Set<f64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 1568
     i32.const 41
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=4
    local.get $3
    local.get $1
    call $~lib/set/Set<f64>#delete
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=4
    local.get $3
    local.get $1
    call $~lib/set/Set<f64>#has
    if
     i32.const 0
     i32.const 1568
     i32.const 43
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    f64.const 1
    f64.add
    local.set $1
    br $for-loop|4
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  call $~lib/set/Set<i8>#get:size
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 1568
   i32.const 45
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  call $~lib/set/Set<i64>#clear
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  call $~lib/set/Set<i8>#get:size
  if
   i32.const 0
   i32.const 1568
   i32.const 49
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1748
  i32.lt_s
  if
   i32.const 34544
   i32.const 34592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1456
   i32.const 1504
   i32.const 52
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $byn-split-outlined-A$~lib/rt/itcms/__visit (param $0 i32)
  global.get $~lib/rt/itcms/white
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  i32.load $0 offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $byn-split-outlined-A$~lib/rt/itcms/__link (param $0 i32) (param $1 i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 295
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/white
  local.get $1
  i32.const 20
  i32.sub
  local.tee $1
  i32.load $0 offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   i32.const 20
   i32.sub
   i32.load $0 offset=4
   i32.const 3
   i32.and
   local.tee $0
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $1
    call $~lib/rt/itcms/Object#makeGray
   else
    global.get $~lib/rt/itcms/state
    i32.const 1
    i32.eq
    local.get $0
    i32.const 3
    i32.eq
    i32.and
    if
     local.get $1
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
)
