(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1036) "\1c")
 (data (i32.const 1048) "\01\00\00\00\06\00\00\001\002\003")
 (data (i32.const 1068) "\1c")
 (data (i32.const 1080) "\01\00\00\00\06\00\00\002\003\004")
 (data (i32.const 1100) ",")
 (data (i32.const 1112) "\01\00\00\00\12\00\00\00d\00o\00T\00h\00r\00o\00w\00I\00f")
 (data (i32.const 1148) ",")
 (data (i32.const 1160) "\01\00\00\00\10\00\00\00t\00h\00r\00o\00w\00.\00t\00s")
 (data (i32.const 1196) "\1c")
 (data (i32.const 1208) "\01\00\00\00\06\00\00\003\004\005")
 (data (i32.const 1228) ",")
 (data (i32.const 1240) "\01\00\00\00\1a\00\00\00d\00o\00T\00h\00r\00o\00w\00I\00f\00L\00o\00o\00p")
 (data (i32.const 1276) "\1c")
 (data (i32.const 1288) "\01\00\00\00\06\00\00\004\005\006")
 (data (i32.const 1308) "\1c")
 (data (i32.const 1320) "\01\00\00\00\06\00\00\005\006\007")
 (data (i32.const 1372) "<")
 (data (i32.const 1384) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00c\00m\00s\00.\00t\00s")
 (data (i32.const 1500) "<")
 (data (i32.const 1512) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1564) ",")
 (data (i32.const 1576) "\01\00\00\00\0e\00\00\00d\00o\00T\00h\00r\00o\00w")
 (global $~lib/rt/tcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "doThrow" (func $throw/doThrow))
 (start $~start)
 (func $~lib/rt/tcms/initLazy (param $0 i32) (result i32)
  local.get $0
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $0
  i32.store offset=8
  local.get $0
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
   i32.const 1520
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
   i32.const 1520
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
   i32.const 1520
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
   i32.const 1520
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
   i32.const 1520
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
    i32.const 1520
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
   i32.const 1520
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
   i32.const 1520
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
   i32.const 1520
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
 (func $~lib/rt/tlsf/addMemory (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 3188
  i32.lt_u
  if
   i32.const 0
   i32.const 1520
   i32.const 380
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const -16
  i32.and
  i32.const 3184
  i32.load
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 4
   i32.add
   i32.const 3196
   i32.gt_u
   if
    i32.const 0
    i32.const 1520
    i32.const 387
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 3180
   i32.eq
   if (result i32)
    local.get $0
    i32.load
    local.set $2
    i32.const 3180
   else
    i32.const 3196
   end
  else
   i32.const 3196
  end
  local.tee $1
  i32.sub
  local.tee $0
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $2
  i32.const 2
  i32.and
  local.get $0
  i32.const 8
  i32.sub
  local.tee $0
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
  local.get $0
  local.get $1
  i32.const 4
  i32.add
  i32.add
  local.tee $0
  i32.const 2
  i32.store
  i32.const 3184
  local.get $0
  i32.store
  i32.const 1616
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/__free (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1612
  i32.lt_u
  if
   return
  end
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
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   i32.const 1616
   global.set $~lib/rt/tlsf/ROOT
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $0
  select
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
   i32.const 1520
   i32.const 564
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $1
  i32.load
  i32.const 1
  i32.or
  i32.store
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tcms/__collect
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/rt/tcms/white
  i32.eqz
  local.set $3
  global.get $~lib/rt/tcms/toSpace
  local.tee $4
  i32.load offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $4
   i32.ne
   if
    local.get $3
    local.get $0
    i32.load offset=4
    i32.const 3
    i32.and
    i32.ne
    if
     i32.const 0
     i32.const 1392
     i32.const 209
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
  global.get $~lib/rt/tcms/pinSpace
  local.tee $1
  i32.load offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|1
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
     i32.const 1392
     i32.const 218
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
    br $while-continue|1
   end
  end
  global.get $~lib/rt/tcms/fromSpace
  local.tee $2
  i32.load offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|2
   local.get $0
   local.get $2
   i32.ne
   if
    global.get $~lib/rt/tcms/white
    local.get $0
    i32.load offset=4
    i32.const 3
    i32.and
    i32.ne
    if
     i32.const 0
     i32.const 1392
     i32.const 227
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.load offset=4
    i32.const -4
    i32.and
    local.get $0
    i32.const 1612
    i32.gt_u
    if
     local.get $0
     i32.const 4
     i32.add
     call $~lib/rt/tlsf/__free
    end
    local.set $0
    br $while-continue|2
   end
  end
  local.get $2
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $2
  i32.store offset=8
  local.get $4
  global.set $~lib/rt/tcms/fromSpace
  local.get $2
  global.set $~lib/rt/tcms/toSpace
  local.get $3
  global.set $~lib/rt/tcms/white
 )
 (func $throw/doThrow
  i32.const 1584
  i32.const 1168
  i32.const 3
  i32.const 3
  call $~lib/builtins/abort
  unreachable
 )
 (func $~start
  (local $0 i32)
  loop $while-continue|0
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   i32.const 10
   i32.lt_s
   if
    local.get $0
    i32.const 10
    i32.gt_s
    if
     i32.const 1248
     i32.const 1168
     i32.const 23
     i32.const 7
     call $~lib/builtins/abort
     unreachable
    end
    br $while-continue|0
   end
  end
  i32.const 1344
  call $~lib/rt/tcms/initLazy
  global.set $~lib/rt/tcms/toSpace
  i32.const 1440
  call $~lib/rt/tcms/initLazy
  global.set $~lib/rt/tcms/pinSpace
  i32.const 1472
  call $~lib/rt/tcms/initLazy
  global.set $~lib/rt/tcms/fromSpace
  call $~lib/rt/tcms/__collect
 )
 (func $~lib/rt/tcms/Object#set:next (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $folding-inner0
   block $invalid
    block $~lib/arraybuffer/ArrayBufferView
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     br_table $folding-inner0 $folding-inner0 $~lib/arraybuffer/ArrayBufferView $invalid
    end
    local.get $0
    i32.load
    local.tee $0
    if
     local.get $0
     if
      global.get $~lib/rt/tcms/white
      local.get $0
      i32.const 20
      i32.sub
      local.tee $0
      i32.load offset=4
      i32.const 3
      i32.and
      i32.eq
      if
       local.get $0
       i32.load offset=4
       i32.const -4
       i32.and
       local.tee $1
       if
        local.get $1
        local.get $0
        i32.load offset=8
        local.tee $2
        i32.store offset=8
        local.get $2
        local.get $1
        call $~lib/rt/tcms/Object#set:next
       end
       global.get $~lib/rt/tcms/toSpace
       local.tee $1
       i32.load offset=8
       local.set $2
       local.get $0
       local.get $1
       global.get $~lib/rt/tcms/white
       i32.eqz
       i32.or
       i32.store offset=4
       local.get $0
       local.get $2
       i32.store offset=8
       local.get $2
       local.get $0
       call $~lib/rt/tcms/Object#set:next
       local.get $1
       local.get $0
       i32.store offset=8
      end
     end
    end
    return
   end
   unreachable
  end
 )
)
