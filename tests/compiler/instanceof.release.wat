(module
 (type $i32_=>_none (func_subtype (param i32) func))
 (type $i32_=>_i32 (func_subtype (param i32) (result i32) func))
 (type $none_=>_none (func_subtype func))
 (type $i32_i32_=>_none (func_subtype (param i32 i32) func))
 (type $none_=>_i32 (func_subtype (result i32) func))
 (type $i32_i32_i32_i32_=>_none (func_subtype (param i32 i32 i32 i32) func))
 (type $i32_i32_i32_=>_none (func_subtype (param i32 i32 i32) func))
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
 (global $instanceof/a (mut i32) (i32.const 0))
 (global $instanceof/b (mut i32) (i32.const 0))
 (global $instanceof/an (mut i32) (i32.const 0))
 (global $instanceof/child (mut i32) (i32.const 0))
 (global $instanceof/childAsParent (mut i32) (i32.const 0))
 (global $instanceof/animal (mut i32) (i32.const 0))
 (global $instanceof/cat (mut i32) (i32.const 0))
 (global $instanceof/blackcat (mut i32) (i32.const 0))
 (global $instanceof/nullableAnimal (mut i32) (i32.const 0))
 (global $instanceof/nullableCat (mut i32) (i32.const 0))
 (global $instanceof/nullableBlackcat (mut i32) (i32.const 0))
 (global $instanceof/w (mut i32) (i32.const 0))
 (global $instanceof/x (mut i32) (i32.const 0))
 (global $instanceof/y (mut i32) (i32.const 0))
 (global $instanceof/z (mut i32) (i32.const 0))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 34352))
 (memory $0 1)
 (data (i32.const 1036) "<")
 (data (i32.const 1048) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1100) "<")
 (data (i32.const 1112) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data (i32.const 1228) "<")
 (data (i32.const 1240) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 1292) ",")
 (data (i32.const 1304) "\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data (i32.const 1372) "<")
 (data (i32.const 1384) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1436) ",")
 (data (i32.const 1448) "\02\00\00\00\1a\00\00\00i\00n\00s\00t\00a\00n\00c\00e\00o\00f\00.\00t\00s")
 (data (i32.const 1488) "\17\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 ")
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/itcms/visitRoots (type $none_=>_none)
  (local $0 i32)
  (local $1 i32)
  global.get $instanceof/a
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $instanceof/b
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $instanceof/an
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $instanceof/child
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $instanceof/childAsParent
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $instanceof/animal
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $instanceof/cat
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $instanceof/blackcat
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $instanceof/nullableAnimal
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $instanceof/nullableCat
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $instanceof/nullableBlackcat
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $instanceof/w
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $instanceof/x
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $instanceof/y
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $instanceof/z
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  i32.const 1248
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
 (func $~lib/rt/itcms/Object#makeGray (type $i32_=>_none) (param $0 i32)
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
    i32.const 34352
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
   i32.const 1488
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
   i32.const 1492
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
 (func $~lib/rt/tlsf/removeBlock (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
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
 (func $~lib/rt/tlsf/insertBlock (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
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
 (func $~lib/rt/tlsf/addMemory (type $i32_i32_i32_=>_none) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/rt/tlsf/initialize (type $none_=>_none)
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
  i32.const 34352
  i32.const 0
  i32.store $0
  i32.const 35920
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
    i32.const 34352
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
      i32.const 34352
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
  i32.const 34352
  i32.const 35924
  memory.size $0
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 34352
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/itcms/step (type $none_=>_i32) (result i32)
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
      i32.const 34352
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
    i32.const 34352
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
     i32.const 34352
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
 (func $~lib/rt/tlsf/searchBlock (type $i32_=>_i32) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load $0 offset=4
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
   i32.load $0 offset=96
  else
   local.get $0
   i32.load $0
   i32.const -2
   i32.and
   local.tee $1
   if (result i32)
    local.get $0
    local.get $1
    i32.ctz
    local.tee $2
    i32.const 2
    i32.shl
    i32.add
    i32.load $0 offset=4
    local.tee $1
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
    i32.const 0
   end
  end
 )
 (func $~lib/rt/itcms/__new (type $i32_=>_i32) (param $0 i32) (result i32)
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
    loop $do-loop|0
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
     br_if $do-loop|0
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
  local.tee $2
  call $~lib/rt/tlsf/searchBlock
  local.tee $1
  i32.eqz
  if
   memory.size $0
   local.tee $1
   i32.const 4
   local.get $2
   i32.load $0 offset=1568
   local.get $1
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
   local.tee $3
   local.get $1
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
   local.get $2
   local.get $1
   i32.const 16
   i32.shl
   memory.size $0
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   local.get $2
   call $~lib/rt/tlsf/searchBlock
   local.tee $1
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
  local.get $1
  i32.load $0
  i32.const -4
  i32.and
  i32.const 28
  i32.lt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 498
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  call $~lib/rt/tlsf/removeBlock
  local.get $1
  i32.load $0
  local.tee $3
  i32.const -4
  i32.and
  i32.const 28
  i32.sub
  local.tee $4
  i32.const 16
  i32.ge_u
  if
   local.get $1
   local.get $3
   i32.const 2
   i32.and
   i32.const 28
   i32.or
   i32.store $0
   local.get $1
   i32.const 32
   i32.add
   local.tee $3
   local.get $4
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store $0
   local.get $2
   local.get $3
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $3
   i32.const -2
   i32.and
   i32.store $0
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load $0
   i32.const -4
   i32.and
   i32.add
   local.tee $2
   local.get $2
   i32.load $0
   i32.const -3
   i32.and
   i32.store $0
  end
  local.get $1
  local.get $0
  i32.store $0 offset=12
  local.get $1
  i32.const 0
  i32.store $0 offset=16
  global.get $~lib/rt/itcms/fromSpace
  local.tee $0
  i32.load $0 offset=8
  local.set $2
  local.get $1
  local.get $0
  global.get $~lib/rt/itcms/white
  i32.or
  i32.store $0 offset=4
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
  local.get $0
  local.get $1
  i32.store $0 offset=8
  global.get $~lib/rt/itcms/total
  local.get $1
  i32.load $0
  i32.const -4
  i32.and
  i32.const 4
  i32.add
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $1
  i32.const 20
  i32.add
  local.tee $0
  i32.const 0
  i32.const 0
  memory.fill $0
  local.get $0
 )
 (func $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/X> (type $i32_=>_none) (param $0 i32)
  local.get $0
  if (result i32)
   block $__inlined_func$~instanceof|instanceof/X (result i32)
    block $is_instance
     block $tablify|0
      local.get $0
      i32.const 8
      i32.sub
      i32.load $0
      i32.const 15
      i32.sub
      br_table $is_instance $tablify|0 $tablify|0 $is_instance $tablify|0 $tablify|0 $is_instance $tablify|0
     end
     i32.const 0
     br $__inlined_func$~instanceof|instanceof/X
    end
    i32.const 1
   end
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1456
   i32.const 12
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Y> (type $i32_=>_none) (param $0 i32)
  local.get $0
  if (result i32)
   block $__inlined_func$~instanceof|instanceof/Y (result i32)
    block $is_instance
     local.get $0
     i32.const 8
     i32.sub
     i32.load $0
     local.tee $0
     i32.const 18
     i32.eq
     br_if $is_instance
     local.get $0
     i32.const 21
     i32.eq
     br_if $is_instance
     i32.const 0
     br $__inlined_func$~instanceof|instanceof/Y
    end
    i32.const 1
   end
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1456
   i32.const 12
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Z> (type $i32_=>_none) (param $0 i32)
  local.get $0
  if (result i32)
   local.get $0
   i32.const 8
   i32.sub
   i32.load $0
   i32.const 21
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1456
   i32.const 12
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $instanceof/assertDynamicFalse<instanceof/X,instanceof/Y> (type $i32_=>_none) (param $0 i32)
  local.get $0
  if (result i32)
   block $__inlined_func$~instanceof|instanceof/Y (result i32)
    block $is_instance
     local.get $0
     i32.const 8
     i32.sub
     i32.load $0
     local.tee $0
     i32.const 18
     i32.eq
     br_if $is_instance
     local.get $0
     i32.const 21
     i32.eq
     br_if $is_instance
     i32.const 0
     br $__inlined_func$~instanceof|instanceof/Y
    end
    i32.const 1
   end
  else
   i32.const 0
  end
  if
   i32.const 0
   i32.const 1456
   i32.const 19
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $instanceof/assertDynamicFalse<instanceof/X,instanceof/Z> (type $i32_=>_none) (param $0 i32)
  local.get $0
  if (result i32)
   local.get $0
   i32.const 8
   i32.sub
   i32.load $0
   i32.const 21
   i32.eq
  else
   i32.const 0
  end
  if
   i32.const 0
   i32.const 1456
   i32.const 19
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/rt/__visit_members (type $i32_=>_none) (param $0 i32)
  block $invalid
   block $instanceof/IE
    block $instanceof/Z
     block $instanceof/IC
      block $instanceof/ID
       block $instanceof/Y
        block $instanceof/IA
         block $instanceof/IB
          block $instanceof/X
           block $instanceof/W
            block $instanceof/BlackCat
             block $instanceof/Cat
              block $instanceof/Animal
               block $instanceof/SomethingElse<i32>
                block $instanceof/Parent<f32>
                 block $instanceof/Child<f32>
                  block $instanceof/Parent<i32>
                   block $instanceof/Child<i32>
                    block $instanceof/B
                     block $instanceof/A
                      block $~lib/arraybuffer/ArrayBufferView
                       block $~lib/string/String
                        block $~lib/arraybuffer/ArrayBuffer
                         block $~lib/object/Object
                          local.get $0
                          i32.const 8
                          i32.sub
                          i32.load $0
                          br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $instanceof/A $instanceof/B $instanceof/Child<i32> $instanceof/Parent<i32> $instanceof/Child<f32> $instanceof/Parent<f32> $instanceof/SomethingElse<i32> $instanceof/Animal $instanceof/Cat $instanceof/BlackCat $instanceof/W $instanceof/X $instanceof/IB $instanceof/IA $instanceof/Y $instanceof/ID $instanceof/IC $instanceof/Z $instanceof/IE $invalid
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
 (func $~start (type $none_=>_none)
  call $start:instanceof
 )
 (func $start:instanceof (type $none_=>_none)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 88
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 1584
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 88
   memory.fill $0
   memory.size $0
   i32.const 16
   i32.shl
   i32.const 34352
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
   i32.const 0
   call $instanceof/A#constructor
   global.set $instanceof/a
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1584
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store $0
   local.get $0
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $instanceof/A#constructor
   local.tee $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $instanceof/b
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/a
   local.tee $0
   i32.store $0
   local.get $0
   if (result i32)
    local.get $0
    i32.const 8
    i32.sub
    i32.load $0
    i32.const 5
    i32.eq
   else
    i32.const 0
   end
   if
    i32.const 0
    i32.const 1456
    i32.const 41
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $instanceof/an
   if
    i32.const 0
    i32.const 1456
    i32.const 91
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1
   global.set $instanceof/an
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1584
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store $0
   local.get $0
   i32.const 6
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1584
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store $0
   local.get $0
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 7
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store $0
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $~lib/object/Object#constructor
   local.tee $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   local.get $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $instanceof/child
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1584
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store $0
   local.get $0
   i32.const 8
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1584
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store $0
   local.get $0
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 9
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store $0
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $~lib/object/Object#constructor
   local.tee $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   local.get $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $instanceof/childAsParent
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/childAsParent
   local.tee $0
   i32.store $0 offset=4
   local.get $0
   if (result i32)
    local.get $0
    i32.const 8
    i32.sub
    i32.load $0
    i32.const 8
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1456
    i32.const 117
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/childAsParent
   local.tee $0
   i32.store $0 offset=8
   local.get $0
   if (result i32)
    block $__inlined_func$~anyinstanceof|instanceof/Child (result i32)
     block $is_instance2
      local.get $0
      i32.const 8
      i32.sub
      i32.load $0
      local.tee $0
      i32.const 6
      i32.eq
      br_if $is_instance2
      local.get $0
      i32.const 8
      i32.eq
      br_if $is_instance2
      i32.const 0
      br $__inlined_func$~anyinstanceof|instanceof/Child
     end
     i32.const 1
    end
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1456
    i32.const 119
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   call $instanceof/Animal#constructor
   global.set $instanceof/animal
   i32.const 0
   call $instanceof/Cat#constructor
   global.set $instanceof/cat
   call $instanceof/BlackCat#constructor
   global.set $instanceof/blackcat
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/animal
   local.tee $0
   i32.store $0 offset=12
   local.get $0
   if (result i32)
    block $__inlined_func$~instanceof|instanceof/Cat (result i32)
     block $is_instance3
      local.get $0
      i32.const 8
      i32.sub
      i32.load $0
      local.tee $0
      i32.const 12
      i32.eq
      br_if $is_instance3
      local.get $0
      i32.const 13
      i32.eq
      br_if $is_instance3
      i32.const 0
      br $__inlined_func$~instanceof|instanceof/Cat
     end
     i32.const 1
    end
   else
    i32.const 0
   end
   if
    i32.const 0
    i32.const 1456
    i32.const 134
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/animal
   local.tee $0
   i32.store $0 offset=16
   local.get $0
   if (result i32)
    local.get $0
    i32.const 8
    i32.sub
    i32.load $0
    i32.const 13
    i32.eq
   else
    i32.const 0
   end
   if
    i32.const 0
    i32.const 1456
    i32.const 135
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/cat
   local.tee $0
   i32.store $0 offset=20
   local.get $0
   if (result i32)
    block $__inlined_func$~instanceof|instanceof/Cat5 (result i32)
     block $is_instance6
      local.get $0
      i32.const 8
      i32.sub
      i32.load $0
      local.tee $0
      i32.const 12
      i32.eq
      br_if $is_instance6
      local.get $0
      i32.const 13
      i32.eq
      br_if $is_instance6
      i32.const 0
      br $__inlined_func$~instanceof|instanceof/Cat5
     end
     i32.const 1
    end
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1456
    i32.const 138
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/cat
   local.tee $0
   i32.store $0 offset=24
   local.get $0
   if (result i32)
    local.get $0
    i32.const 8
    i32.sub
    i32.load $0
    i32.const 13
    i32.eq
   else
    i32.const 0
   end
   if
    i32.const 0
    i32.const 1456
    i32.const 139
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/blackcat
   local.tee $0
   i32.store $0 offset=28
   local.get $0
   if (result i32)
    block $__inlined_func$~instanceof|instanceof/Cat9 (result i32)
     block $is_instance10
      local.get $0
      i32.const 8
      i32.sub
      i32.load $0
      local.tee $0
      i32.const 12
      i32.eq
      br_if $is_instance10
      local.get $0
      i32.const 13
      i32.eq
      br_if $is_instance10
      i32.const 0
      br $__inlined_func$~instanceof|instanceof/Cat9
     end
     i32.const 1
    end
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1456
    i32.const 142
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/blackcat
   local.tee $0
   i32.store $0 offset=32
   local.get $0
   if (result i32)
    local.get $0
    i32.const 8
    i32.sub
    i32.load $0
    i32.const 13
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1456
    i32.const 143
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   call $instanceof/Animal#constructor
   global.set $instanceof/nullableAnimal
   i32.const 0
   call $instanceof/Cat#constructor
   global.set $instanceof/nullableCat
   call $instanceof/BlackCat#constructor
   global.set $instanceof/nullableBlackcat
   global.get $instanceof/nullableAnimal
   i32.eqz
   if
    i32.const 0
    i32.const 1456
    i32.const 149
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/nullableAnimal
   local.tee $0
   i32.store $0 offset=36
   local.get $0
   if (result i32)
    block $__inlined_func$~instanceof|instanceof/Cat13 (result i32)
     block $is_instance14
      local.get $0
      i32.const 8
      i32.sub
      i32.load $0
      local.tee $0
      i32.const 12
      i32.eq
      br_if $is_instance14
      local.get $0
      i32.const 13
      i32.eq
      br_if $is_instance14
      i32.const 0
      br $__inlined_func$~instanceof|instanceof/Cat13
     end
     i32.const 1
    end
   else
    i32.const 0
   end
   if
    i32.const 0
    i32.const 1456
    i32.const 150
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/nullableAnimal
   local.tee $0
   i32.store $0 offset=40
   local.get $0
   if (result i32)
    local.get $0
    i32.const 8
    i32.sub
    i32.load $0
    i32.const 13
    i32.eq
   else
    i32.const 0
   end
   if
    i32.const 0
    i32.const 1456
    i32.const 151
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $instanceof/nullableCat
   i32.eqz
   if
    i32.const 0
    i32.const 1456
    i32.const 153
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/nullableCat
   local.tee $0
   i32.store $0 offset=44
   local.get $0
   if (result i32)
    block $__inlined_func$~instanceof|instanceof/Cat17 (result i32)
     block $is_instance18
      local.get $0
      i32.const 8
      i32.sub
      i32.load $0
      local.tee $0
      i32.const 12
      i32.eq
      br_if $is_instance18
      local.get $0
      i32.const 13
      i32.eq
      br_if $is_instance18
      i32.const 0
      br $__inlined_func$~instanceof|instanceof/Cat17
     end
     i32.const 1
    end
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1456
    i32.const 154
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/nullableCat
   local.tee $0
   i32.store $0 offset=48
   local.get $0
   if (result i32)
    local.get $0
    i32.const 8
    i32.sub
    i32.load $0
    i32.const 13
    i32.eq
   else
    i32.const 0
   end
   if
    i32.const 0
    i32.const 1456
    i32.const 155
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $instanceof/nullableBlackcat
   i32.eqz
   if
    i32.const 0
    i32.const 1456
    i32.const 157
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/nullableBlackcat
   local.tee $0
   i32.store $0 offset=52
   local.get $0
   if (result i32)
    block $__inlined_func$~instanceof|instanceof/Cat21 (result i32)
     block $is_instance22
      local.get $0
      i32.const 8
      i32.sub
      i32.load $0
      local.tee $0
      i32.const 12
      i32.eq
      br_if $is_instance22
      local.get $0
      i32.const 13
      i32.eq
      br_if $is_instance22
      i32.const 0
      br $__inlined_func$~instanceof|instanceof/Cat21
     end
     i32.const 1
    end
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1456
    i32.const 158
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/nullableBlackcat
   local.tee $0
   i32.store $0 offset=56
   local.get $0
   if (result i32)
    local.get $0
    i32.const 8
    i32.sub
    i32.load $0
    i32.const 13
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1456
    i32.const 159
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store $0 offset=60
   local.get $0
   i32.const 0
   i32.store $0 offset=64
   local.get $0
   i32.const 0
   i32.store $0 offset=68
   local.get $0
   i32.const 0
   i32.store $0 offset=72
   local.get $0
   i32.const 0
   i32.store $0 offset=76
   local.get $0
   i32.const 0
   i32.store $0 offset=80
   local.get $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1584
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store $0
   local.get $0
   i32.const 14
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $~lib/object/Object#constructor
   local.tee $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $instanceof/w
   i32.const 0
   call $instanceof/X#constructor
   global.set $instanceof/x
   i32.const 0
   call $instanceof/Y#constructor
   global.set $instanceof/y
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1584
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store $0
   local.get $0
   i32.const 21
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $instanceof/Y#constructor
   local.tee $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $instanceof/z
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/w
   local.tee $2
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/x
   local.tee $3
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   local.tee $0
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   local.tee $1
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=84
   local.get $2
   if (result i32)
    local.get $2
    i32.const 8
    i32.sub
    i32.load $0
    i32.const 14
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1456
    i32.const 12
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/x
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/X>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/X>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/X>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Y>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Y>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Z>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/x
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/X>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/x
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/X>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/X>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/X>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Y>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Y>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/X>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/X>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Y>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Y>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/w
   local.tee $0
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/x
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/x
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/x
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicFalse<instanceof/X,instanceof/Y>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/x
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicFalse<instanceof/X,instanceof/Z>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Y>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicFalse<instanceof/X,instanceof/Z>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Y>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Z>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicFalse<instanceof/X,instanceof/Z>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Z>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/x
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicFalse<instanceof/X,instanceof/Y>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/x
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicFalse<instanceof/X,instanceof/Y>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/x
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicFalse<instanceof/X,instanceof/Y>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/x
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicFalse<instanceof/X,instanceof/Y>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/x
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/x
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Y>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Y>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Y>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Y>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Y>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Y>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Y>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Y>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/x
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/x
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/x
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicFalse<instanceof/X,instanceof/Y>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/x
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicFalse<instanceof/X,instanceof/Y>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/x
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Y>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Y>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Y>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Y>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/x
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/x
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/x
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/X>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/x
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/X>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/X>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/X>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/X>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/X>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Y>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Y>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Y>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/y
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Y>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Y>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Y>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Y>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Y>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Z>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Z>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Z>
   global.get $~lib/memory/__stack_pointer
   global.get $instanceof/z
   local.tee $0
   i32.store $0 offset=84
   local.get $0
   call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Z>
   global.get $~lib/memory/__stack_pointer
   i32.const 88
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 34384
  i32.const 34432
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/object/Object#constructor (type $i32_=>_i32) (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1584
  i32.lt_s
  if
   i32.const 34384
   i32.const 34432
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $instanceof/A#constructor (type $i32_=>_i32) (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1584
  i32.lt_s
  if
   i32.const 34384
   i32.const 34432
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/object/Object#constructor
  local.tee $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $instanceof/Animal#constructor (type $i32_=>_i32) (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1584
  i32.lt_s
  if
   i32.const 34384
   i32.const 34432
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 11
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/object/Object#constructor
  local.tee $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $instanceof/Cat#constructor (type $i32_=>_i32) (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1584
  i32.lt_s
  if
   i32.const 34384
   i32.const 34432
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $instanceof/Animal#constructor
  local.tee $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $instanceof/BlackCat#constructor (type $none_=>_i32) (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1584
  i32.lt_s
  if
   i32.const 34384
   i32.const 34432
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  i32.const 13
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $instanceof/Cat#constructor
  local.tee $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $instanceof/X#constructor (type $i32_=>_i32) (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1584
  i32.lt_s
  if
   i32.const 34384
   i32.const 34432
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 15
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/object/Object#constructor
  local.tee $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $instanceof/Y#constructor (type $i32_=>_i32) (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1584
  i32.lt_s
  if
   i32.const 34384
   i32.const 34432
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 18
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $instanceof/X#constructor
  local.tee $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $byn-split-outlined-A$~lib/rt/itcms/__visit (type $i32_=>_none) (param $0 i32)
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
)
