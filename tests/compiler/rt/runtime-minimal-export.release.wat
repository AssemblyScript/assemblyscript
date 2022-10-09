(module
 (type $i32_=>_none (func (param i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/rt/lm/freelist (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 1440))
 (memory $0 1)
 (data (i32.const 1036) "<")
 (data (i32.const 1048) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1100) "<")
 (data (i32.const 1112) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00c\00m\00s\00.\00t\00s")
 (data (i32.const 1164) ",")
 (data (i32.const 1176) "\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00l\00m\00.\00t\00s")
 (data (i32.const 1244) "<")
 (data (i32.const 1256) "\01\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d")
 (data (i32.const 1340) "<")
 (data (i32.const 1352) "\01\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d")
 (data (i32.const 1440) "\03\00\00\00 \00\00\00\00\00\00\00 ")
 (export "__new" (func $~lib/rt/tcms/__new))
 (export "__pin" (func $~lib/rt/tcms/__pin))
 (export "__unpin" (func $~lib/rt/tcms/__unpin))
 (export "__collect" (func $~lib/rt/tcms/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/lm/__alloc (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 3
  i32.add
  i32.const -4
  i32.and
  local.tee $2
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1056
   i32.const 1184
   i32.const 122
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/lm/freelist
  i32.eqz
  if
   i32.const 1024
   global.set $~lib/rt/lm/freelist
   i32.const 1028
   i32.const 1024
   i32.store $0
   i32.const 1024
   i32.const 1024
   i32.store $0
   memory.size $0
   local.tee $0
   i32.const 0
   i32.le_s
   if (result i32)
    i32.const 1
    local.get $0
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
   global.get $~lib/rt/lm/freelist
   local.tee $0
   i32.const 1476
   i32.store $0
   i32.const 1480
   local.get $0
   i32.store $0
   i32.const 1476
   local.get $0
   i32.store $0
   local.get $0
   i32.const 1476
   i32.store $0 offset=4
   i32.const 1484
   memory.size $0
   i32.const 16
   i32.shl
   i32.const 1488
   i32.sub
   i32.store $0
  end
  i32.const 0
  local.set $0
  global.get $~lib/rt/lm/freelist
  i32.load $0 offset=4
  local.set $1
  loop $for-loop|0
   local.get $1
   i32.const 1024
   i32.ne
   if (result i32)
    local.get $1
    i32.load $0 offset=4
   else
    i32.const 0
   end
   if
    local.get $1
    local.get $0
    local.get $1
    i32.load $0 offset=8
    local.get $2
    i32.gt_u
    select
    local.set $0
    local.get $1
    i32.load $0 offset=4
    local.set $1
    br $for-loop|0
   end
  end
  local.get $0
  i32.eqz
  if
   local.get $2
   i32.const 16
   memory.size $0
   local.tee $1
   i32.const 16
   i32.shl
   local.tee $3
   i32.const 12
   i32.add
   local.tee $4
   i32.const 15
   i32.and
   i32.sub
   local.tee $0
   local.get $4
   i32.add
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.get $1
   i32.sub
   memory.grow $0
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
   local.get $0
   local.get $3
   i32.add
   local.tee $3
   memory.size $0
   local.get $1
   i32.sub
   i32.const 16
   i32.shl
   i32.const 12
   i32.sub
   local.get $0
   i32.sub
   i32.store $0 offset=8
   global.get $~lib/rt/lm/freelist
   local.tee $1
   i32.load $0
   local.set $0
   local.get $1
   local.get $3
   i32.store $0
   local.get $3
   local.get $1
   i32.store $0 offset=4
   local.get $3
   local.get $0
   i32.store $0
   local.get $0
   local.get $3
   i32.store $0 offset=4
   i32.const 0
   local.set $0
   local.get $1
   i32.load $0 offset=4
   local.set $1
   loop $for-loop|1
    local.get $1
    i32.const 1024
    i32.ne
    if (result i32)
     local.get $1
     i32.load $0 offset=4
    else
     i32.const 0
    end
    if
     local.get $1
     local.get $0
     local.get $1
     i32.load $0 offset=8
     local.get $2
     i32.gt_u
     select
     local.set $0
     local.get $1
     i32.load $0 offset=4
     local.set $1
     br $for-loop|1
    end
   end
   local.get $0
   i32.eqz
   if
    unreachable
   end
  end
  local.get $0
  i32.load $0 offset=8
  local.get $2
  i32.sub
  i32.const 12
  i32.gt_u
  if
   i32.const 16
   local.get $0
   local.get $2
   i32.add
   i32.const 12
   i32.add
   local.tee $1
   i32.const 12
   i32.add
   i32.const 15
   i32.and
   i32.sub
   local.tee $3
   local.get $2
   i32.add
   local.set $2
   local.get $1
   local.get $3
   i32.add
   local.tee $1
   i32.const 12
   i32.add
   local.get $0
   local.get $0
   i32.load $0 offset=8
   i32.add
   i32.le_u
   if
    local.get $1
    local.get $0
    i32.load $0 offset=8
    local.get $2
    i32.sub
    i32.const 12
    i32.sub
    i32.store $0 offset=8
    local.get $0
    local.get $2
    i32.store $0 offset=8
    local.get $0
    i32.load $0 offset=4
    local.tee $2
    local.get $1
    i32.store $0
    local.get $1
    local.get $2
    i32.store $0 offset=4
    local.get $1
    local.get $0
    i32.store $0
    local.get $0
    local.get $1
    i32.store $0 offset=4
   end
  end
  local.get $0
  i32.load $0 offset=4
  local.tee $1
  i32.const 0
  local.get $0
  i32.load $0
  local.tee $2
  select
  if
   local.get $2
   local.get $1
   i32.store $0 offset=4
   local.get $1
   local.get $2
   i32.store $0
   local.get $0
   i32.const 0
   i32.store $0
   local.get $0
   i32.const 0
   i32.store $0 offset=4
  else
   unreachable
  end
  local.get $0
  i32.const 12
  i32.add
 )
 (func $~lib/rt/tcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741804
  i32.gt_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 125
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.add
  call $~lib/rt/lm/__alloc
  i32.const 4
  i32.sub
  local.tee $2
  local.get $1
  i32.store $0 offset=12
  local.get $2
  local.get $0
  i32.store $0 offset=16
  global.get $~lib/rt/tcms/fromSpace
  local.tee $0
  i32.load $0 offset=8
  local.set $1
  local.get $2
  local.get $0
  global.get $~lib/rt/tcms/white
  i32.or
  i32.store $0 offset=4
  local.get $2
  local.get $1
  i32.store $0 offset=8
  local.get $1
  local.get $2
  local.get $1
  i32.load $0 offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store $0 offset=4
  local.get $0
  local.get $2
  i32.store $0 offset=8
  global.get $~lib/rt/tcms/total
  local.get $2
  i32.load $0
  i32.const -4
  i32.and
  i32.const 4
  i32.add
  i32.add
  global.set $~lib/rt/tcms/total
  local.get $2
  i32.const 20
  i32.add
 )
 (func $~lib/rt/tcms/Object#unlink (param $0 i32)
  (local $1 i32)
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
   i32.const 1468
   i32.lt_u
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1120
    i32.const 101
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $0
  i32.load $0 offset=8
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 105
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
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
 )
 (func $~lib/rt/tcms/__pin (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $1
   i32.load $0 offset=4
   i32.const 3
   i32.and
   i32.const 3
   i32.eq
   if
    i32.const 1264
    i32.const 1120
    i32.const 181
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   call $~lib/rt/tcms/Object#unlink
   global.get $~lib/rt/tcms/pinSpace
   local.tee $3
   i32.load $0 offset=8
   local.set $2
   local.get $1
   local.get $3
   i32.const 3
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
   local.get $3
   local.get $1
   i32.store $0 offset=8
  end
  local.get $0
 )
 (func $~lib/rt/tcms/__unpin (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  local.tee $1
  i32.load $0 offset=4
  i32.const 3
  i32.and
  i32.const 3
  i32.ne
  if
   i32.const 1360
   i32.const 1120
   i32.const 195
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/tcms/Object#unlink
  global.get $~lib/rt/tcms/fromSpace
  local.tee $0
  i32.load $0 offset=8
  local.set $2
  local.get $1
  local.get $0
  global.get $~lib/rt/tcms/white
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
 )
 (func $~lib/rt/tcms/__collect
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 1056
  call $byn-split-outlined-A$~lib/rt/tcms/__visit
  i32.const 1264
  call $byn-split-outlined-A$~lib/rt/tcms/__visit
  i32.const 1360
  call $byn-split-outlined-A$~lib/rt/tcms/__visit
  global.get $~lib/rt/tcms/pinSpace
  local.tee $0
  i32.load $0 offset=4
  i32.const -4
  i32.and
  local.set $1
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.ne
   if
    local.get $1
    i32.load $0 offset=4
    i32.const 3
    i32.and
    i32.const 3
    i32.ne
    if
     i32.const 0
     i32.const 1120
     i32.const 213
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i32.const 20
    i32.add
    call $~lib/rt/__visit_members
    local.get $1
    i32.load $0 offset=4
    i32.const -4
    i32.and
    local.set $1
    br $while-continue|0
   end
  end
  global.get $~lib/rt/tcms/white
  i32.eqz
  local.set $5
  global.get $~lib/rt/tcms/toSpace
  local.tee $4
  i32.load $0 offset=4
  i32.const -4
  i32.and
  local.set $1
  loop $while-continue|1
   local.get $1
   local.get $4
   i32.ne
   if
    local.get $5
    local.get $1
    i32.load $0 offset=4
    i32.const 3
    i32.and
    i32.ne
    if
     i32.const 0
     i32.const 1120
     i32.const 223
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i32.const 20
    i32.add
    call $~lib/rt/__visit_members
    local.get $1
    i32.load $0 offset=4
    i32.const -4
    i32.and
    local.set $1
    br $while-continue|1
   end
  end
  global.get $~lib/rt/tcms/fromSpace
  local.tee $6
  i32.load $0 offset=4
  i32.const -4
  i32.and
  local.set $1
  loop $while-continue|2
   local.get $1
   local.get $6
   i32.ne
   if
    global.get $~lib/rt/tcms/white
    local.get $1
    i32.load $0 offset=4
    i32.const 3
    i32.and
    i32.ne
    if
     i32.const 0
     i32.const 1120
     i32.const 232
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i32.load $0 offset=4
    i32.const -4
    i32.and
    local.set $0
    local.get $1
    i32.const 1468
    i32.lt_u
    if
     local.get $1
     i32.const 0
     i32.store $0 offset=4
     local.get $1
     i32.const 0
     i32.store $0 offset=8
    else
     global.get $~lib/rt/tcms/total
     local.get $1
     i32.load $0
     i32.const -4
     i32.and
     i32.const 4
     i32.add
     i32.sub
     global.set $~lib/rt/tcms/total
     local.get $1
     i32.const 4
     i32.add
     local.tee $1
     i32.eqz
     if
      unreachable
     end
     local.get $1
     i32.const 12
     i32.sub
     local.set $3
     i32.const 0
     local.set $7
     global.get $~lib/rt/lm/freelist
     i32.load $0 offset=4
     local.set $1
     loop $for-loop|0
      local.get $1
      i32.const 1024
      i32.ne
      if (result i32)
       local.get $1
       i32.load $0 offset=4
      else
       i32.const 0
      end
      if
       block $for-break0
        local.get $1
        local.get $3
        i32.gt_u
        if
         local.get $1
         i32.load $0
         local.set $2
         local.get $1
         local.get $3
         i32.store $0
         local.get $3
         local.get $1
         i32.store $0 offset=4
         local.get $3
         local.get $2
         i32.store $0
         local.get $2
         local.get $3
         i32.store $0 offset=4
         i32.const 1
         local.set $7
         br $for-break0
        end
        local.get $1
        i32.load $0 offset=4
        local.set $1
        br $for-loop|0
       end
      end
     end
     local.get $7
     i32.eqz
     if
      global.get $~lib/rt/lm/freelist
      local.tee $2
      i32.load $0
      local.set $1
      local.get $2
      local.get $3
      i32.store $0
      local.get $3
      local.get $2
      i32.store $0 offset=4
      local.get $3
      local.get $1
      i32.store $0
      local.get $1
      local.get $3
      i32.store $0 offset=4
     end
     i32.const 1024
     local.set $1
     global.get $~lib/rt/lm/freelist
     i32.load $0 offset=4
     local.set $7
     loop $for-loop|1
      local.get $7
      i32.const 1024
      i32.ne
      if (result i32)
       local.get $7
       i32.load $0 offset=4
      else
       i32.const 0
      end
      if
       local.get $1
       local.get $7
       block $__inlined_func$~lib/rt/lm/mergeBlock (result i32)
        local.get $7
        i32.const 0
        local.get $7
        i32.load $0
        local.tee $2
        i32.const 0
        local.get $7
        i32.const 1024
        i32.ne
        local.get $2
        i32.const 1024
        i32.ne
        i32.and
        select
        select
        if
         local.get $7
         local.get $2
         local.get $2
         i32.load $0 offset=8
         i32.add
         i32.const 12
         i32.add
         local.tee $1
         i32.sub
         i32.const 12
         i32.lt_u
         if
          local.get $2
          local.get $2
          i32.load $0 offset=8
          local.get $7
          local.get $7
          i32.load $0 offset=8
          i32.add
          i32.const 12
          i32.add
          local.get $1
          i32.sub
          i32.add
          i32.store $0 offset=8
          local.get $7
          i32.load $0 offset=4
          local.tee $2
          i32.const 0
          local.get $7
          i32.load $0
          local.tee $1
          select
          if
           local.get $1
           local.get $2
           i32.store $0 offset=4
           local.get $2
           local.get $1
           i32.store $0
           local.get $7
           i32.const 0
           i32.store $0
           local.get $7
           i32.const 0
           i32.store $0 offset=4
          else
           unreachable
          end
          i32.const 1
          br $__inlined_func$~lib/rt/lm/mergeBlock
         end
        end
        i32.const 0
       end
       select
       local.set $1
       local.get $7
       i32.load $0 offset=4
       local.set $7
       br $for-loop|1
      end
     end
     local.get $1
     i32.load $0 offset=4
     local.tee $3
     i32.const 0
     local.get $1
     i32.const 0
     local.get $3
     i32.const 1024
     i32.ne
     local.get $1
     i32.const 1024
     i32.ne
     i32.and
     select
     select
     if
      local.get $3
      local.get $1
      local.get $1
      i32.load $0 offset=8
      i32.add
      i32.const 12
      i32.add
      local.tee $2
      i32.sub
      i32.const 12
      i32.lt_u
      if
       local.get $1
       local.get $1
       i32.load $0 offset=8
       local.get $3
       local.get $3
       i32.load $0 offset=8
       i32.add
       i32.const 12
       i32.add
       local.get $2
       i32.sub
       i32.add
       i32.store $0 offset=8
       local.get $3
       i32.load $0 offset=4
       local.tee $2
       i32.const 0
       local.get $3
       i32.load $0
       local.tee $1
       select
       if
        local.get $1
        local.get $2
        i32.store $0 offset=4
        local.get $2
        local.get $1
        i32.store $0
        local.get $3
        i32.const 0
        i32.store $0
        local.get $3
        i32.const 0
        i32.store $0 offset=4
       else
        unreachable
       end
      end
     end
    end
    local.get $0
    local.set $1
    br $while-continue|2
   end
  end
  local.get $6
  local.get $6
  i32.store $0 offset=4
  local.get $6
  local.get $6
  i32.store $0 offset=8
  local.get $4
  global.set $~lib/rt/tcms/fromSpace
  local.get $6
  global.set $~lib/rt/tcms/toSpace
  local.get $5
  global.set $~lib/rt/tcms/white
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  block $invalid
   block $~lib/arraybuffer/ArrayBufferView
    block $~lib/string/String
     block $~lib/arraybuffer/ArrayBuffer
      local.get $0
      i32.const 8
      i32.sub
      i32.load $0
      br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $invalid
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
    call $byn-split-outlined-A$~lib/rt/tcms/__visit
   end
   return
  end
  unreachable
 )
 (func $~start
  i32.const 1220
  i32.const 1216
  i32.store $0
  i32.const 1224
  i32.const 1216
  i32.store $0
  i32.const 1216
  global.set $~lib/rt/tcms/fromSpace
  i32.const 1316
  i32.const 1312
  i32.store $0
  i32.const 1320
  i32.const 1312
  i32.store $0
  i32.const 1312
  global.set $~lib/rt/tcms/pinSpace
  i32.const 1412
  i32.const 1408
  i32.store $0
  i32.const 1416
  i32.const 1408
  i32.store $0
  i32.const 1408
  global.set $~lib/rt/tcms/toSpace
 )
 (func $byn-split-outlined-A$~lib/rt/tcms/__visit (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/tcms/white
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
   call $~lib/rt/tcms/Object#unlink
   global.get $~lib/rt/tcms/toSpace
   local.tee $0
   i32.load $0 offset=8
   local.set $2
   local.get $1
   local.get $0
   global.get $~lib/rt/tcms/white
   i32.eqz
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
  end
 )
)
