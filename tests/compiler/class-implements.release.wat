(module
 (type $none_=>_none (func_subtype func))
 (type $i32_=>_i32 (func_subtype (param i32) (result i32) func))
 (type $i32_i32_=>_none (func_subtype (param i32 i32) func))
 (type $none_=>_i32 (func_subtype (result i32) func))
 (type $i32_i32_=>_i32 (func_subtype (param i32 i32) (result i32) func))
 (type $i32_=>_none (func_subtype (param i32) func))
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
 (global $class-implements/a (mut i32) (i32.const 0))
 (global $class-implements/c (mut i32) (i32.const 0))
 (global $class-implements/d (mut i32) (i32.const 0))
 (global $class-implements/e (mut i32) (i32.const 0))
 (global $class-implements/f (mut i32) (i32.const 0))
 (global $class-implements/g (mut i32) (i32.const 0))
 (global $class-implements/h (mut i32) (i32.const 0))
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
 (data (i32.const 1436) "<")
 (data (i32.const 1448) "\02\00\00\00&\00\00\00c\00l\00a\00s\00s\00-\00i\00m\00p\00l\00e\00m\00e\00n\00t\00s\00.\00t\00s")
 (data (i32.const 1504) "\13\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 ")
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/itcms/visitRoots (type $none_=>_none)
  (local $0 i32)
  (local $1 i32)
  global.get $class-implements/a
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $class-implements/c
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $class-implements/d
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $class-implements/e
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $class-implements/f
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $class-implements/g
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $class-implements/h
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
 (func $~lib/rt/tlsf/searchBlock (type $i32_i32_=>_i32) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/rt/itcms/__new (type $i32_i32_=>_i32) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/rt/__visit_members (type $i32_=>_none) (param $0 i32)
  block $invalid
   block $class-implements/B4
    block $class-implements/B3
     block $class-implements/B2
      block $class-implements/A4
       block $class-implements/A3
        block $class-implements/I2
         block $class-implements/A2
          block $class-implements/F
           block $class-implements/E
            block $class-implements/J
             block $class-implements/D
              block $class-implements/B
               block $class-implements/C
                block $class-implements/I
                 block $class-implements/A
                  block $~lib/arraybuffer/ArrayBufferView
                   block $~lib/string/String
                    block $~lib/arraybuffer/ArrayBuffer
                     block $~lib/object/Object
                      local.get $0
                      i32.const 8
                      i32.sub
                      i32.load $0
                      br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $class-implements/A $class-implements/I $class-implements/C $class-implements/B $class-implements/D $class-implements/J $class-implements/E $class-implements/F $class-implements/A2 $class-implements/I2 $class-implements/A3 $class-implements/A4 $class-implements/B2 $class-implements/B3 $class-implements/B4 $invalid
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
  unreachable
 )
 (func $~start (type $none_=>_none)
  call $start:class-implements
 )
 (func $start:class-implements (type $none_=>_none)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 1584
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.const 28
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
   i32.const 0
   i32.const 4
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
   global.set $class-implements/a
   global.get $~lib/memory/__stack_pointer
   global.get $class-implements/a
   i32.store $0
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
   i32.const 0
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
    i32.const 0
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
   global.set $class-implements/c
   global.get $~lib/memory/__stack_pointer
   global.get $class-implements/c
   i32.store $0
   i32.const 0
   call $class-implements/D#constructor
   global.set $class-implements/d
   block $__inlined_func$class-implements/D#foo@override (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $class-implements/d
    local.tee $0
    i32.store $0
    i32.const 4
    local.get $0
    i32.const 8
    i32.sub
    i32.load $0
    i32.const 11
    i32.eq
    br_if $__inlined_func$class-implements/D#foo@override
    drop
    i32.const 3
   end
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 1456
    i32.const 31
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
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
   i32.const 0
   i32.const 10
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $class-implements/D#constructor
   local.tee $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $class-implements/e
   block $__inlined_func$class-implements/D#foo@override10 (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $class-implements/e
    local.tee $0
    i32.store $0
    i32.const 4
    local.get $0
    i32.const 8
    i32.sub
    i32.load $0
    i32.const 11
    i32.eq
    br_if $__inlined_func$class-implements/D#foo@override10
    drop
    i32.const 3
   end
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 1456
    i32.const 37
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   call $class-implements/F#constructor
   global.set $class-implements/f
   global.get $~lib/memory/__stack_pointer
   global.get $class-implements/f
   i32.store $0
   call $class-implements/F#constructor
   global.set $class-implements/g
   block $__inlined_func$class-implements/D#foo@override16 (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $class-implements/g
    local.tee $0
    i32.store $0
    i32.const 4
    local.get $0
    i32.const 8
    i32.sub
    i32.load $0
    i32.const 11
    i32.eq
    br_if $__inlined_func$class-implements/D#foo@override16
    drop
    i32.const 3
   end
   i32.const 4
   i32.ne
   if
    i32.const 0
    i32.const 1456
    i32.const 47
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   call $class-implements/F#constructor
   global.set $class-implements/h
   global.get $~lib/memory/__stack_pointer
   global.get $class-implements/h
   local.tee $0
   i32.store $0
   block $__inlined_func$class-implements/I#foo@override
    block $default21
     block $case3
      block $case2
       block $case1
        block $case022
         local.get $0
         i32.const 8
         i32.sub
         i32.load $0
         i32.const 4
         i32.sub
         br_table $case1 $default21 $case2 $default21 $case3 $default21 $case3 $case022 $default21
        end
        i32.const 4
        local.set $0
        br $__inlined_func$class-implements/I#foo@override
       end
       i32.const 1
       local.set $0
       br $__inlined_func$class-implements/I#foo@override
      end
      i32.const 2
      local.set $0
      br $__inlined_func$class-implements/I#foo@override
     end
     i32.const 3
     local.set $0
     br $__inlined_func$class-implements/I#foo@override
    end
    unreachable
   end
   local.get $0
   i32.const 4
   i32.ne
   if
    i32.const 0
    i32.const 1456
    i32.const 50
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $class-implements/A2#constructor
   local.tee $0
   i32.store $0 offset=4
   local.get $0
   i32.load $0
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 1456
    i32.const 85
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   block $__inlined_func$class-implements/I2#get:foo@override (result i32)
    block $default
     block $case5
      block $case4
       block $case30
        block $case21
         block $case12
          block $case0
           local.get $0
           i32.const 8
           i32.sub
           i32.load $0
           i32.const 12
           i32.sub
           br_table $case4 $default $case0 $case12 $case5 $case21 $case30 $default
          end
          local.get $0
          i32.load $0
          br $__inlined_func$class-implements/I2#get:foo@override
         end
         local.get $0
         i32.load $0
         br $__inlined_func$class-implements/I2#get:foo@override
        end
        local.get $0
        i32.load $0 offset=4
        br $__inlined_func$class-implements/I2#get:foo@override
       end
       local.get $0
       i32.load $0 offset=4
       br $__inlined_func$class-implements/I2#get:foo@override
      end
      local.get $0
      i32.load $0
      br $__inlined_func$class-implements/I2#get:foo@override
     end
     local.get $0
     i32.load $0
     br $__inlined_func$class-implements/I2#get:foo@override
    end
    unreachable
   end
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 1456
    i32.const 86
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   block $__inlined_func$class-implements/I2#set:foo@override
    block $default3
     block $case54
      block $case45
       block $case36
        block $case27
         block $case18
          block $case09
           local.get $0
           i32.const 8
           i32.sub
           i32.load $0
           i32.const 12
           i32.sub
           br_table $case45 $default3 $case09 $case18 $case54 $case27 $case36 $default3
          end
          local.get $0
          i32.const 2
          i32.store $0
          br $__inlined_func$class-implements/I2#set:foo@override
         end
         local.get $0
         i32.const 2
         i32.store $0
         br $__inlined_func$class-implements/I2#set:foo@override
        end
        local.get $0
        i32.const 2
        i32.store $0 offset=4
        br $__inlined_func$class-implements/I2#set:foo@override
       end
       local.get $0
       i32.const 2
       i32.store $0 offset=4
       br $__inlined_func$class-implements/I2#set:foo@override
      end
      local.get $0
      i32.const 2
      i32.store $0
      br $__inlined_func$class-implements/I2#set:foo@override
     end
     local.get $0
     i32.const 2
     i32.store $0
     br $__inlined_func$class-implements/I2#set:foo@override
    end
    unreachable
   end
   local.get $0
   i32.load $0
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 1456
    i32.const 88
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   block $__inlined_func$class-implements/I2#get:foo@override10 (result i32)
    block $default11
     block $case512
      block $case413
       block $case314
        block $case215
         block $case116
          block $case017
           local.get $0
           i32.const 8
           i32.sub
           i32.load $0
           i32.const 12
           i32.sub
           br_table $case413 $default11 $case017 $case116 $case512 $case215 $case314 $default11
          end
          local.get $0
          i32.load $0
          br $__inlined_func$class-implements/I2#get:foo@override10
         end
         local.get $0
         i32.load $0
         br $__inlined_func$class-implements/I2#get:foo@override10
        end
        local.get $0
        i32.load $0 offset=4
        br $__inlined_func$class-implements/I2#get:foo@override10
       end
       local.get $0
       i32.load $0 offset=4
       br $__inlined_func$class-implements/I2#get:foo@override10
      end
      local.get $0
      i32.load $0
      br $__inlined_func$class-implements/I2#get:foo@override10
     end
     local.get $0
     i32.load $0
     br $__inlined_func$class-implements/I2#get:foo@override10
    end
    unreachable
   end
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 1456
    i32.const 89
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1584
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store $0
   local.get $1
   i32.const 4
   i32.const 14
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $class-implements/A2#constructor
   local.tee $1
   i32.store $0
   local.get $1
   i32.const 5
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   local.get $1
   i32.store $0 offset=8
   local.get $1
   i32.load $0
   i32.const 5
   i32.ne
   if
    i32.const 0
    i32.const 1456
    i32.const 93
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   block $__inlined_func$class-implements/I2#get:foo@override18 (result i32)
    block $default19
     block $case520
      block $case421
       block $case322
        block $case223
         block $case124
          block $case025
           local.get $1
           i32.const 8
           i32.sub
           i32.load $0
           i32.const 12
           i32.sub
           br_table $case421 $default19 $case025 $case124 $case520 $case223 $case322 $default19
          end
          local.get $1
          i32.load $0
          br $__inlined_func$class-implements/I2#get:foo@override18
         end
         local.get $1
         i32.load $0
         br $__inlined_func$class-implements/I2#get:foo@override18
        end
        local.get $1
        i32.load $0 offset=4
        br $__inlined_func$class-implements/I2#get:foo@override18
       end
       local.get $1
       i32.load $0 offset=4
       br $__inlined_func$class-implements/I2#get:foo@override18
      end
      local.get $1
      i32.load $0
      br $__inlined_func$class-implements/I2#get:foo@override18
     end
     local.get $1
     i32.load $0
     br $__inlined_func$class-implements/I2#get:foo@override18
    end
    unreachable
   end
   i32.const 5
   i32.ne
   if
    i32.const 0
    i32.const 1456
    i32.const 94
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   block $__inlined_func$class-implements/I2#set:foo@override26
    block $default27
     block $case528
      block $case429
       block $case330
        block $case231
         block $case132
          block $case033
           local.get $1
           i32.const 8
           i32.sub
           i32.load $0
           i32.const 12
           i32.sub
           br_table $case429 $default27 $case033 $case132 $case528 $case231 $case330 $default27
          end
          local.get $1
          i32.const 6
          i32.store $0
          br $__inlined_func$class-implements/I2#set:foo@override26
         end
         local.get $1
         i32.const 6
         i32.store $0
         br $__inlined_func$class-implements/I2#set:foo@override26
        end
        local.get $1
        i32.const 6
        i32.store $0 offset=4
        br $__inlined_func$class-implements/I2#set:foo@override26
       end
       local.get $1
       i32.const 6
       i32.store $0 offset=4
       br $__inlined_func$class-implements/I2#set:foo@override26
      end
      local.get $1
      i32.const 6
      i32.store $0
      br $__inlined_func$class-implements/I2#set:foo@override26
     end
     local.get $1
     i32.const 6
     i32.store $0
     br $__inlined_func$class-implements/I2#set:foo@override26
    end
    unreachable
   end
   local.get $1
   i32.load $0
   i32.const 6
   i32.ne
   if
    i32.const 0
    i32.const 1456
    i32.const 96
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   block $__inlined_func$class-implements/I2#get:foo@override34 (result i32)
    block $default35
     block $case536
      block $case437
       block $case338
        block $case239
         block $case140
          block $case041
           local.get $1
           i32.const 8
           i32.sub
           i32.load $0
           i32.const 12
           i32.sub
           br_table $case437 $default35 $case041 $case140 $case536 $case239 $case338 $default35
          end
          local.get $1
          i32.load $0
          br $__inlined_func$class-implements/I2#get:foo@override34
         end
         local.get $1
         i32.load $0
         br $__inlined_func$class-implements/I2#get:foo@override34
        end
        local.get $1
        i32.load $0 offset=4
        br $__inlined_func$class-implements/I2#get:foo@override34
       end
       local.get $1
       i32.load $0 offset=4
       br $__inlined_func$class-implements/I2#get:foo@override34
      end
      local.get $1
      i32.load $0
      br $__inlined_func$class-implements/I2#get:foo@override34
     end
     local.get $1
     i32.load $0
     br $__inlined_func$class-implements/I2#get:foo@override34
    end
    unreachable
   end
   i32.const 6
   i32.ne
   if
    i32.const 0
    i32.const 1456
    i32.const 97
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1584
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store $0
   local.get $1
   i32.const 4
   i32.const 15
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $class-implements/A2#constructor
   local.tee $1
   i32.store $0
   local.get $1
   i32.const 7
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   local.get $1
   i32.store $0 offset=12
   local.get $1
   i32.load $0
   i32.const 7
   i32.ne
   if
    i32.const 0
    i32.const 1456
    i32.const 101
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   block $__inlined_func$class-implements/I2#get:foo@override42 (result i32)
    block $default43
     block $case544
      block $case445
       block $case346
        block $case247
         block $case148
          block $case049
           local.get $1
           i32.const 8
           i32.sub
           i32.load $0
           i32.const 12
           i32.sub
           br_table $case445 $default43 $case049 $case148 $case544 $case247 $case346 $default43
          end
          local.get $1
          i32.load $0
          br $__inlined_func$class-implements/I2#get:foo@override42
         end
         local.get $1
         i32.load $0
         br $__inlined_func$class-implements/I2#get:foo@override42
        end
        local.get $1
        i32.load $0 offset=4
        br $__inlined_func$class-implements/I2#get:foo@override42
       end
       local.get $1
       i32.load $0 offset=4
       br $__inlined_func$class-implements/I2#get:foo@override42
      end
      local.get $1
      i32.load $0
      br $__inlined_func$class-implements/I2#get:foo@override42
     end
     local.get $1
     i32.load $0
     br $__inlined_func$class-implements/I2#get:foo@override42
    end
    unreachable
   end
   i32.const 7
   i32.ne
   if
    i32.const 0
    i32.const 1456
    i32.const 102
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   block $__inlined_func$class-implements/I2#set:foo@override50
    block $default51
     block $case552
      block $case453
       block $case354
        block $case255
         block $case156
          block $case057
           local.get $1
           i32.const 8
           i32.sub
           i32.load $0
           i32.const 12
           i32.sub
           br_table $case453 $default51 $case057 $case156 $case552 $case255 $case354 $default51
          end
          local.get $1
          i32.const 8
          i32.store $0
          br $__inlined_func$class-implements/I2#set:foo@override50
         end
         local.get $1
         i32.const 8
         i32.store $0
         br $__inlined_func$class-implements/I2#set:foo@override50
        end
        local.get $1
        i32.const 8
        i32.store $0 offset=4
        br $__inlined_func$class-implements/I2#set:foo@override50
       end
       local.get $1
       i32.const 8
       i32.store $0 offset=4
       br $__inlined_func$class-implements/I2#set:foo@override50
      end
      local.get $1
      i32.const 8
      i32.store $0
      br $__inlined_func$class-implements/I2#set:foo@override50
     end
     local.get $1
     i32.const 8
     i32.store $0
     br $__inlined_func$class-implements/I2#set:foo@override50
    end
    unreachable
   end
   local.get $1
   i32.load $0
   i32.const 8
   i32.ne
   if
    i32.const 0
    i32.const 1456
    i32.const 104
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   block $__inlined_func$class-implements/I2#get:foo@override58 (result i32)
    block $default59
     block $case560
      block $case461
       block $case362
        block $case263
         block $case164
          block $case065
           local.get $1
           i32.const 8
           i32.sub
           i32.load $0
           i32.const 12
           i32.sub
           br_table $case461 $default59 $case065 $case164 $case560 $case263 $case362 $default59
          end
          local.get $1
          i32.load $0
          br $__inlined_func$class-implements/I2#get:foo@override58
         end
         local.get $1
         i32.load $0
         br $__inlined_func$class-implements/I2#get:foo@override58
        end
        local.get $1
        i32.load $0 offset=4
        br $__inlined_func$class-implements/I2#get:foo@override58
       end
       local.get $1
       i32.load $0 offset=4
       br $__inlined_func$class-implements/I2#get:foo@override58
      end
      local.get $1
      i32.load $0
      br $__inlined_func$class-implements/I2#get:foo@override58
     end
     local.get $1
     i32.load $0
     br $__inlined_func$class-implements/I2#get:foo@override58
    end
    unreachable
   end
   i32.const 8
   i32.ne
   if
    i32.const 0
    i32.const 1456
    i32.const 105
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $class-implements/B2#constructor
   local.tee $0
   i32.store $0 offset=16
   block $__inlined_func$class-implements/B2#get:foo@override (result i32)
    block $default0
     block $case11
      local.get $0
      i32.const 8
      i32.sub
      i32.load $0
      local.tee $1
      i32.const 17
      i32.ne
      if
       local.get $1
       i32.const 18
       i32.eq
       br_if $case11
       br $default0
      end
      local.get $0
      i32.load $0 offset=4
      br $__inlined_func$class-implements/B2#get:foo@override
     end
     local.get $0
     i32.load $0 offset=4
     br $__inlined_func$class-implements/B2#get:foo@override
    end
    local.get $0
    i32.load $0
   end
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 1456
    i32.const 109
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   block $__inlined_func$class-implements/I2#get:foo@override66 (result i32)
    block $default67
     block $case568
      block $case469
       block $case370
        block $case271
         block $case172
          block $case073
           local.get $0
           i32.const 8
           i32.sub
           i32.load $0
           i32.const 12
           i32.sub
           br_table $case469 $default67 $case073 $case172 $case568 $case271 $case370 $default67
          end
          local.get $0
          i32.load $0
          br $__inlined_func$class-implements/I2#get:foo@override66
         end
         local.get $0
         i32.load $0
         br $__inlined_func$class-implements/I2#get:foo@override66
        end
        local.get $0
        i32.load $0 offset=4
        br $__inlined_func$class-implements/I2#get:foo@override66
       end
       local.get $0
       i32.load $0 offset=4
       br $__inlined_func$class-implements/I2#get:foo@override66
      end
      local.get $0
      i32.load $0
      br $__inlined_func$class-implements/I2#get:foo@override66
     end
     local.get $0
     i32.load $0
     br $__inlined_func$class-implements/I2#get:foo@override66
    end
    unreachable
   end
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 1456
    i32.const 110
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   block $__inlined_func$class-implements/I2#set:foo@override74
    block $default75
     block $case576
      block $case477
       block $case378
        block $case279
         block $case180
          block $case081
           local.get $0
           i32.const 8
           i32.sub
           i32.load $0
           i32.const 12
           i32.sub
           br_table $case477 $default75 $case081 $case180 $case576 $case279 $case378 $default75
          end
          local.get $0
          i32.const 4
          i32.store $0
          br $__inlined_func$class-implements/I2#set:foo@override74
         end
         local.get $0
         i32.const 4
         i32.store $0
         br $__inlined_func$class-implements/I2#set:foo@override74
        end
        local.get $0
        i32.const 4
        i32.store $0 offset=4
        br $__inlined_func$class-implements/I2#set:foo@override74
       end
       local.get $0
       i32.const 4
       i32.store $0 offset=4
       br $__inlined_func$class-implements/I2#set:foo@override74
      end
      local.get $0
      i32.const 4
      i32.store $0
      br $__inlined_func$class-implements/I2#set:foo@override74
     end
     local.get $0
     i32.const 4
     i32.store $0
     br $__inlined_func$class-implements/I2#set:foo@override74
    end
    unreachable
   end
   block $__inlined_func$class-implements/B2#get:foo@override6 (result i32)
    block $default7
     block $case1882
      local.get $0
      i32.const 8
      i32.sub
      i32.load $0
      local.tee $1
      i32.const 17
      i32.ne
      if
       local.get $1
       i32.const 18
       i32.eq
       br_if $case1882
       br $default7
      end
      local.get $0
      i32.load $0 offset=4
      br $__inlined_func$class-implements/B2#get:foo@override6
     end
     local.get $0
     i32.load $0 offset=4
     br $__inlined_func$class-implements/B2#get:foo@override6
    end
    local.get $0
    i32.load $0
   end
   i32.const 4
   i32.ne
   if
    i32.const 0
    i32.const 1456
    i32.const 112
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   block $__inlined_func$class-implements/I2#get:foo@override83 (result i32)
    block $default84
     block $case585
      block $case486
       block $case387
        block $case288
         block $case189
          block $case090
           local.get $0
           i32.const 8
           i32.sub
           i32.load $0
           i32.const 12
           i32.sub
           br_table $case486 $default84 $case090 $case189 $case585 $case288 $case387 $default84
          end
          local.get $0
          i32.load $0
          br $__inlined_func$class-implements/I2#get:foo@override83
         end
         local.get $0
         i32.load $0
         br $__inlined_func$class-implements/I2#get:foo@override83
        end
        local.get $0
        i32.load $0 offset=4
        br $__inlined_func$class-implements/I2#get:foo@override83
       end
       local.get $0
       i32.load $0 offset=4
       br $__inlined_func$class-implements/I2#get:foo@override83
      end
      local.get $0
      i32.load $0
      br $__inlined_func$class-implements/I2#get:foo@override83
     end
     local.get $0
     i32.load $0
     br $__inlined_func$class-implements/I2#get:foo@override83
    end
    unreachable
   end
   i32.const 4
   i32.ne
   if
    i32.const 0
    i32.const 1456
    i32.const 113
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1584
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store $0
   local.get $1
   i32.const 8
   i32.const 17
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $class-implements/B2#constructor
   local.tee $1
   i32.store $0
   local.get $1
   i32.const 9
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   local.get $1
   i32.store $0 offset=20
   local.get $1
   i32.load $0 offset=4
   i32.const 9
   i32.ne
   if
    i32.const 0
    i32.const 1456
    i32.const 117
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   block $__inlined_func$class-implements/I2#get:foo@override91 (result i32)
    block $default92
     block $case593
      block $case494
       block $case395
        block $case296
         block $case197
          block $case098
           local.get $1
           i32.const 8
           i32.sub
           i32.load $0
           i32.const 12
           i32.sub
           br_table $case494 $default92 $case098 $case197 $case593 $case296 $case395 $default92
          end
          local.get $1
          i32.load $0
          br $__inlined_func$class-implements/I2#get:foo@override91
         end
         local.get $1
         i32.load $0
         br $__inlined_func$class-implements/I2#get:foo@override91
        end
        local.get $1
        i32.load $0 offset=4
        br $__inlined_func$class-implements/I2#get:foo@override91
       end
       local.get $1
       i32.load $0 offset=4
       br $__inlined_func$class-implements/I2#get:foo@override91
      end
      local.get $1
      i32.load $0
      br $__inlined_func$class-implements/I2#get:foo@override91
     end
     local.get $1
     i32.load $0
     br $__inlined_func$class-implements/I2#get:foo@override91
    end
    unreachable
   end
   i32.const 9
   i32.ne
   if
    i32.const 0
    i32.const 1456
    i32.const 118
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   block $__inlined_func$class-implements/I2#set:foo@override99
    block $default100
     block $case5101
      block $case4102
       block $case3103
        block $case2104
         block $case1105
          block $case0106
           local.get $1
           i32.const 8
           i32.sub
           i32.load $0
           i32.const 12
           i32.sub
           br_table $case4102 $default100 $case0106 $case1105 $case5101 $case2104 $case3103 $default100
          end
          local.get $1
          i32.const 10
          i32.store $0
          br $__inlined_func$class-implements/I2#set:foo@override99
         end
         local.get $1
         i32.const 10
         i32.store $0
         br $__inlined_func$class-implements/I2#set:foo@override99
        end
        local.get $1
        i32.const 10
        i32.store $0 offset=4
        br $__inlined_func$class-implements/I2#set:foo@override99
       end
       local.get $1
       i32.const 10
       i32.store $0 offset=4
       br $__inlined_func$class-implements/I2#set:foo@override99
      end
      local.get $1
      i32.const 10
      i32.store $0
      br $__inlined_func$class-implements/I2#set:foo@override99
     end
     local.get $1
     i32.const 10
     i32.store $0
     br $__inlined_func$class-implements/I2#set:foo@override99
    end
    unreachable
   end
   local.get $1
   i32.load $0 offset=4
   i32.const 10
   i32.ne
   if
    i32.const 0
    i32.const 1456
    i32.const 120
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   block $__inlined_func$class-implements/I2#get:foo@override107 (result i32)
    block $default108
     block $case5109
      block $case4110
       block $case3111
        block $case2112
         block $case1113
          block $case0114
           local.get $1
           i32.const 8
           i32.sub
           i32.load $0
           i32.const 12
           i32.sub
           br_table $case4110 $default108 $case0114 $case1113 $case5109 $case2112 $case3111 $default108
          end
          local.get $1
          i32.load $0
          br $__inlined_func$class-implements/I2#get:foo@override107
         end
         local.get $1
         i32.load $0
         br $__inlined_func$class-implements/I2#get:foo@override107
        end
        local.get $1
        i32.load $0 offset=4
        br $__inlined_func$class-implements/I2#get:foo@override107
       end
       local.get $1
       i32.load $0 offset=4
       br $__inlined_func$class-implements/I2#get:foo@override107
      end
      local.get $1
      i32.load $0
      br $__inlined_func$class-implements/I2#get:foo@override107
     end
     local.get $1
     i32.load $0
     br $__inlined_func$class-implements/I2#get:foo@override107
    end
    unreachable
   end
   i32.const 10
   i32.ne
   if
    i32.const 0
    i32.const 1456
    i32.const 121
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1584
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store $0
   local.get $1
   i32.const 8
   i32.const 18
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $class-implements/B2#constructor
   local.tee $1
   i32.store $0
   local.get $1
   i32.const 11
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   local.get $1
   i32.store $0 offset=24
   local.get $1
   i32.load $0 offset=4
   i32.const 11
   i32.ne
   if
    i32.const 0
    i32.const 1456
    i32.const 125
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   block $__inlined_func$class-implements/I2#get:foo@override115 (result i32)
    block $default116
     block $case5117
      block $case4118
       block $case3119
        block $case2120
         block $case1121
          block $case0122
           local.get $1
           i32.const 8
           i32.sub
           i32.load $0
           i32.const 12
           i32.sub
           br_table $case4118 $default116 $case0122 $case1121 $case5117 $case2120 $case3119 $default116
          end
          local.get $1
          i32.load $0
          br $__inlined_func$class-implements/I2#get:foo@override115
         end
         local.get $1
         i32.load $0
         br $__inlined_func$class-implements/I2#get:foo@override115
        end
        local.get $1
        i32.load $0 offset=4
        br $__inlined_func$class-implements/I2#get:foo@override115
       end
       local.get $1
       i32.load $0 offset=4
       br $__inlined_func$class-implements/I2#get:foo@override115
      end
      local.get $1
      i32.load $0
      br $__inlined_func$class-implements/I2#get:foo@override115
     end
     local.get $1
     i32.load $0
     br $__inlined_func$class-implements/I2#get:foo@override115
    end
    unreachable
   end
   i32.const 11
   i32.ne
   if
    i32.const 0
    i32.const 1456
    i32.const 126
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   block $__inlined_func$class-implements/I2#set:foo@override123
    block $default124
     block $case5125
      block $case4126
       block $case3127
        block $case2128
         block $case1129
          block $case0130
           local.get $1
           i32.const 8
           i32.sub
           i32.load $0
           i32.const 12
           i32.sub
           br_table $case4126 $default124 $case0130 $case1129 $case5125 $case2128 $case3127 $default124
          end
          local.get $1
          i32.const 12
          i32.store $0
          br $__inlined_func$class-implements/I2#set:foo@override123
         end
         local.get $1
         i32.const 12
         i32.store $0
         br $__inlined_func$class-implements/I2#set:foo@override123
        end
        local.get $1
        i32.const 12
        i32.store $0 offset=4
        br $__inlined_func$class-implements/I2#set:foo@override123
       end
       local.get $1
       i32.const 12
       i32.store $0 offset=4
       br $__inlined_func$class-implements/I2#set:foo@override123
      end
      local.get $1
      i32.const 12
      i32.store $0
      br $__inlined_func$class-implements/I2#set:foo@override123
     end
     local.get $1
     i32.const 12
     i32.store $0
     br $__inlined_func$class-implements/I2#set:foo@override123
    end
    unreachable
   end
   local.get $1
   i32.load $0 offset=4
   i32.const 12
   i32.ne
   if
    i32.const 0
    i32.const 1456
    i32.const 128
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   block $__inlined_func$class-implements/I2#get:foo@override131 (result i32)
    block $default132
     block $case5133
      block $case4134
       block $case3135
        block $case2136
         block $case1137
          block $case0138
           local.get $1
           i32.const 8
           i32.sub
           i32.load $0
           i32.const 12
           i32.sub
           br_table $case4134 $default132 $case0138 $case1137 $case5133 $case2136 $case3135 $default132
          end
          local.get $1
          i32.load $0
          br $__inlined_func$class-implements/I2#get:foo@override131
         end
         local.get $1
         i32.load $0
         br $__inlined_func$class-implements/I2#get:foo@override131
        end
        local.get $1
        i32.load $0 offset=4
        br $__inlined_func$class-implements/I2#get:foo@override131
       end
       local.get $1
       i32.load $0 offset=4
       br $__inlined_func$class-implements/I2#get:foo@override131
      end
      local.get $1
      i32.load $0
      br $__inlined_func$class-implements/I2#get:foo@override131
     end
     local.get $1
     i32.load $0
     br $__inlined_func$class-implements/I2#get:foo@override131
    end
    unreachable
   end
   i32.const 12
   i32.ne
   if
    i32.const 0
    i32.const 1456
    i32.const 129
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 28
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
 (func $class-implements/D#constructor (type $i32_=>_i32) (param $0 i32) (result i32)
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
   i32.const 8
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
 (func $class-implements/F#constructor (type $none_=>_i32) (result i32)
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
  i32.const 0
  i32.const 11
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $class-implements/D#constructor
  local.tee $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $class-implements/A2#constructor (type $i32_=>_i32) (param $0 i32) (result i32)
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
   i32.const 12
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/object/Object#constructor
  local.tee $0
  i32.store $0
  local.get $0
  i32.const 1
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $class-implements/B2#constructor (type $i32_=>_i32) (param $0 i32) (result i32)
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
   i32.const 16
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/object/Object#constructor
  local.tee $0
  i32.store $0
  local.get $0
  i32.const 3
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $byn-split-outlined-A$~lib/rt/itcms/__visit (type $i32_=>_none) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/itcms/white
  local.get $0
  i32.const 20
  i32.sub
  local.tee $1
  i32.load $0 offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $1
   global.get $~lib/rt/itcms/iter
   i32.eq
   if
    local.get $1
    i32.load $0 offset=8
    local.tee $0
    i32.eqz
    if
     i32.const 0
     i32.const 1120
     i32.const 148
     i32.const 30
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    global.set $~lib/rt/itcms/iter
   end
   block $__inlined_func$~lib/rt/itcms/Object#unlink
    local.get $1
    i32.load $0 offset=4
    i32.const -4
    i32.and
    local.tee $0
    i32.eqz
    if
     local.get $1
     i32.load $0 offset=8
     i32.eqz
     local.get $1
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
    local.get $1
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
    local.get $0
    local.get $2
    i32.store $0 offset=8
    local.get $2
    local.get $0
    local.get $2
    i32.load $0 offset=4
    i32.const 3
    i32.and
    i32.or
    i32.store $0 offset=4
   end
   global.get $~lib/rt/itcms/toSpace
   local.set $2
   local.get $1
   i32.load $0 offset=12
   local.tee $0
   i32.const 2
   i32.le_u
   if (result i32)
    i32.const 1
   else
    local.get $0
    i32.const 1504
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
    local.get $0
    i32.const 2
    i32.shl
    i32.const 1508
    i32.add
    i32.load $0
    i32.const 32
    i32.and
   end
   local.set $3
   local.get $2
   i32.load $0 offset=8
   local.set $0
   local.get $1
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.const 2
   local.get $3
   select
   local.get $2
   i32.or
   i32.store $0 offset=4
   local.get $1
   local.get $0
   i32.store $0 offset=8
   local.get $0
   local.get $1
   local.get $0
   i32.load $0 offset=4
   i32.const 3
   i32.and
   i32.or
   i32.store $0 offset=4
   local.get $2
   local.get $1
   i32.store $0 offset=8
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
)
