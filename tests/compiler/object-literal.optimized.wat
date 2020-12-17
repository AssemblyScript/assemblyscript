(module
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $none_=>_none (func))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "mark" (func $~lib/rt/tcms/__visit_externals (param i32)))
 (memory $0 1)
 (data (i32.const 1036) ",")
 (data (i32.const 1048) "\01\00\00\00\16\00\00\00h\00e\00l\00l\00o\00 \00w\00o\00r\00l\00d")
 (data (i32.const 1116) "4")
 (data (i32.const 1128) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00c\00m\00s\00.\00t\00s")
 (data (i32.const 1196) "4")
 (data (i32.const 1208) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1260) "<")
 (data (i32.const 1272) "\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1324) "8")
 (data (i32.const 1336) "\01\00\00\00\"\00\00\00o\00b\00j\00e\00c\00t\00-\00l\00i\00t\00e\00r\00a\00l\00.\00t\00s")
 (data (i32.const 1388) "\14")
 (data (i32.const 1400) "\01")
 (data (i32.const 1420) " ")
 (data (i32.const 1432) "\01\00\00\00\n\00\00\00h\00e\00l\00l\00o")
 (data (i32.const 1452) "\1c")
 (data (i32.const 1464) "\01\00\00\00\08\00\00\00t\00e\00s\00t")
 (data (i32.const 1484) "\1c")
 (data (i32.const 1496) "\01\00\00\00\06\00\00\00b\00a\00r")
 (data (i32.const 1516) "\1c")
 (data (i32.const 1528) "\01\00\00\00\06\00\00\00b\00a\00z")
 (global $~lib/rt/tcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/fromSpace (mut i32) (i32.const 1088))
 (global $~lib/rt/tcms/toSpace (mut i32) (i32.const 1168))
 (global $~lib/rt/tcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/totalMem (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/threshold (mut i32) (i32.const 100))
 (global $~lib/rt/tcms/debt (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/tcms/init
  (local $0 i32)
  global.get $~lib/rt/tcms/fromSpace
  local.tee $0
  local.get $0
  i32.store offset=4
  block $folding-inner0
   local.get $0
   i32.eqz
   br_if $folding-inner0
   local.get $0
   local.get $0
   i32.store offset=8
   global.get $~lib/rt/tcms/toSpace
   local.tee $0
   local.get $0
   i32.store offset=4
   local.get $0
   i32.eqz
   br_if $folding-inner0
   local.get $0
   local.get $0
   i32.store offset=8
   global.get $~lib/rt/tcms/toSpace
   global.set $~lib/rt/tcms/iter
   i32.const 1
   global.set $~lib/rt/tcms/state
   return
  end
  i32.const 0
  i32.const 1136
  i32.const 153
  i32.const 17
  call $~lib/builtins/abort
  unreachable
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
 (func $~lib/rt/tcms/ObjectList#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  global.get $~lib/rt/tcms/fromSpace
  i32.ne
  i32.const 0
  local.get $1
  global.get $~lib/rt/tcms/toSpace
  i32.ne
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1136
   i32.const 142
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=8
  local.set $2
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 1136
   i32.const 144
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  call $~lib/rt/tcms/Object#set:next
  local.get $2
  i32.eqz
  if
   i32.const 0
   i32.const 1136
   i32.const 145
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1136
   i32.const 146
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  call $~lib/rt/tcms/Object#set:next
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1136
   i32.const 147
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/rt/tcms/Object#set:color (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=4
  i32.const -4
  i32.and
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  global.get $~lib/rt/tcms/iter
  i32.eq
  if
   local.get $0
   i32.load offset=8
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1136
    i32.const 130
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   global.set $~lib/rt/tcms/iter
  end
  local.get $0
  i32.load offset=8
  local.set $1
  block $__inlined_func$~lib/rt/tcms/Object#unlink
   local.get $0
   i32.load offset=4
   i32.const -4
   i32.and
   local.tee $2
   i32.eqz
   if
    local.get $1
    if
     i32.const 0
     i32.const 1136
     i32.const 120
     i32.const 7
     call $~lib/builtins/abort
     unreachable
    end
    br $__inlined_func$~lib/rt/tcms/Object#unlink
   end
   local.get $1
   i32.eqz
   if
    i32.const 0
    i32.const 1136
    i32.const 123
    i32.const 17
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   i32.store offset=8
   local.get $1
   local.get $2
   call $~lib/rt/tcms/Object#set:next
  end
  global.get $~lib/rt/tcms/toSpace
  local.get $0
  call $~lib/rt/tcms/ObjectList#push
  local.get $0
  i32.const 2
  call $~lib/rt/tcms/Object#set:color
 )
 (func $~lib/rt/tcms/__link (param $0 i32) (param $1 i32)
  local.get $1
  i32.eqz
  if
   return
  end
  global.get $~lib/rt/tcms/state
  i32.eqz
  if
   call $~lib/rt/tcms/init
  end
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 1136
   i32.const 299
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/tcms/white
  i32.eqz
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   global.get $~lib/rt/tcms/white
   local.get $1
   i32.const 20
   i32.sub
   local.tee $0
   i32.load offset=4
   i32.const 3
   i32.and
   i32.eq
   if
    local.get $0
    call $~lib/rt/tcms/Object#makeGray
   end
  end
 )
 (func $object-literal/Managed#set:baz (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $~lib/rt/tcms/__link
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
  i32.const 1552
  i32.const 0
  i32.store
  i32.const 3120
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
    i32.const 1552
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
      i32.const 1552
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
  i32.const 1552
  i32.const 3124
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 1552
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
   local.set $2
   local.get $1
   local.get $2
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
   i32.const 1216
   i32.const 333
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
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 1073741820
  i32.ge_u
  if
   i32.const 1280
   i32.const 1216
   i32.const 461
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 12
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.get $1
  i32.const 12
  i32.le_u
  select
  local.tee $2
  call $~lib/rt/tlsf/searchBlock
  local.tee $1
  i32.eqz
  if
   i32.const 4
   memory.size
   local.tee $1
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   local.get $0
   i32.load offset=1568
   i32.ne
   i32.shl
   local.get $2
   i32.const 1
   i32.const 27
   local.get $2
   i32.clz
   i32.sub
   i32.shl
   i32.const 1
   i32.sub
   i32.add
   local.get $2
   local.get $2
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
   local.get $0
   local.get $1
   i32.const 16
   i32.shl
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   local.get $0
   local.get $2
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
  local.get $2
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.gt_u
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
  local.set $3
  local.get $2
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1216
   i32.const 360
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.get $2
  i32.sub
  local.tee $4
  i32.const 16
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $2
   local.get $1
   i32.const 4
   i32.add
   i32.add
   local.tee $2
   local.get $4
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
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.eqz
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   i32.const 4
   i32.sub
   local.tee $2
   i32.const 0
   i32.store8 offset=3
   local.get $1
   i32.const 2
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 offset=1
   local.get $0
   i32.const 0
   i32.store8 offset=2
   local.get $2
   i32.const 0
   i32.store8 offset=2
   local.get $2
   i32.const 0
   i32.store8 offset=1
   local.get $1
   i32.const 6
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 offset=3
   local.get $2
   i32.const 0
   i32.store8
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.tee $2
   i32.add
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   local.get $1
   local.get $2
   i32.sub
   i32.const -4
   i32.and
   local.tee $2
   i32.add
   i32.const 28
   i32.sub
   local.tee $1
   i32.const 0
   i32.store offset=24
   local.get $2
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.store offset=16
   local.get $1
   i32.const 0
   i32.store offset=20
   local.get $2
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
   i32.const 0
   i32.store offset=24
   local.get $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.store offset=12
   local.get $0
   local.get $0
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $1
   i32.add
   local.set $0
   local.get $2
   local.get $1
   i32.sub
   local.set $1
   loop $while-continue|0
    local.get $1
    i32.const 32
    i32.ge_u
    if
     local.get $0
     i64.const 0
     i64.store
     local.get $0
     i64.const 0
     i64.store offset=8
     local.get $0
     i64.const 0
     i64.store offset=16
     local.get $0
     i64.const 0
     i64.store offset=24
     local.get $1
     i32.const 32
     i32.sub
     local.set $1
     local.get $0
     i32.const 32
     i32.add
     local.set $0
     br $while-continue|0
    end
   end
  end
 )
 (func $~lib/rt/tcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/rt/tcms/state
  i32.eqz
  if
   call $~lib/rt/tcms/init
  end
  local.get $0
  i32.const 16
  i32.add
  call $~lib/rt/tlsf/__alloc
  i32.const 4
  i32.sub
  local.set $2
  global.get $~lib/rt/tcms/fromSpace
  local.get $2
  call $~lib/rt/tcms/ObjectList#push
  local.get $2
  global.get $~lib/rt/tcms/white
  call $~lib/rt/tcms/Object#set:color
  local.get $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  local.get $2
  i32.const 20
  i32.add
  local.tee $1
  local.get $0
  call $~lib/memory/memory.fill
  global.get $~lib/rt/tcms/total
  i32.const 1
  i32.add
  global.set $~lib/rt/tcms/total
  global.get $~lib/rt/tcms/totalMem
  local.get $2
  i32.load
  i32.const -4
  i32.and
  i32.const 4
  i32.add
  i32.add
  global.set $~lib/rt/tcms/totalMem
  local.get $1
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
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $4
   local.get $0
   local.get $1
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.set $4
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $3
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       local.get $3
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $4
       i32.const 8
       i32.sub
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $4
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $3
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $3
      i32.load8_u
      i32.store8
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
      br $while-continue|2
     end
    end
   else
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|3
      local.get $0
      local.get $4
      i32.add
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $4
       i32.const 8
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $4
     if
      local.get $4
      i32.const 1
      i32.sub
      local.tee $4
      local.get $0
      i32.add
      local.get $1
      local.get $4
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/rt/tlsf/__free (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1544
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
   i32.const 1216
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
 (func $object-literal/testOmittedTypes (param $0 i32)
  local.get $0
  i32.load
  if
   i32.const 0
   i32.const 1344
   i32.const 57
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  if
   i32.const 0
   i32.const 1344
   i32.const 58
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.load offset=8
  i64.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 59
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.load offset=16
  i64.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32.load offset=24
  f32.const 0
  f32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 61
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.load offset=32
  f64.const 0
  f64.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 62
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_s offset=40
  if
   i32.const 0
   i32.const 1344
   i32.const 63
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=41
  if
   i32.const 0
   i32.const 1344
   i32.const 64
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load16_s offset=42
  if
   i32.const 0
   i32.const 1344
   i32.const 65
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load16_u offset=44
  if
   i32.const 0
   i32.const 1344
   i32.const 66
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=48
  if
   i32.const 0
   i32.const 1344
   i32.const 67
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=52
  if
   i32.const 0
   i32.const 1344
   i32.const 68
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.load offset=56
  f64.const 0
  f64.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 69
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=64
  if
   i32.const 0
   i32.const 1344
   i32.const 70
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $object-literal/OmittedFoo#set:quux (param $0 i32)
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $object-literal/OmittedFoo#set:quuz (param $0 i32)
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $object-literal/OmittedFoo#set:corge (param $0 i32)
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $object-literal/OmittedFoo#set:grault (param $0 i32)
  local.get $0
  i32.const 0
  i32.store offset=20
  local.get $0
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $object-literal/OmittedFoo#set:garply (param $0 i32)
  local.get $0
  i32.const 0
  i32.store offset=24
  local.get $0
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $object-literal/OmittedFoo#set:waldo (param $0 i32)
  local.get $0
  i32.const 0
  i32.store offset=28
  local.get $0
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $object-literal/testOmittedFoo (param $0 i32)
  local.get $0
  i32.load
  i32.const 1504
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 107
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 1536
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 108
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=8
  i32.const 0
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 109
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=12
  i32.const 0
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 110
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=16
  i32.const 0
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 111
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=20
  i32.const 0
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 112
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=24
  i32.const 0
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 113
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=28
  i32.const 0
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 114
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=32
  if
   i32.const 0
   i32.const 1344
   i32.const 115
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=36
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 116
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/rt/tcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  block $break|0
   block $case3|0
    block $case2|0
     block $case1|0
      block $case0|0
       global.get $~lib/rt/tcms/state
       br_table $case0|0 $case1|0 $case2|0 $case3|0 $break|0
      end
      call $~lib/rt/tcms/init
     end
     i32.const 0
     call $~lib/rt/tcms/__visit_externals
     i32.const 2
     global.set $~lib/rt/tcms/state
    end
    global.get $~lib/rt/tcms/white
    i32.eqz
    local.set $0
    global.get $~lib/rt/tcms/iter
    i32.load offset=4
    i32.const -4
    i32.and
    local.tee $1
    global.get $~lib/rt/tcms/toSpace
    i32.ne
    if
     local.get $1
     global.set $~lib/rt/tcms/iter
     local.get $1
     local.get $0
     call $~lib/rt/tcms/Object#set:color
     block $__inlined_func$~lib/rt/__visit_members
      block $folding-inner1
       block $invalid
        block $object-literal/OmittedFoo
         block $~lib/arraybuffer/ArrayBufferView
          local.get $1
          i32.const 12
          i32.add
          i32.load
          br_table $__inlined_func$~lib/rt/__visit_members $__inlined_func$~lib/rt/__visit_members $~lib/arraybuffer/ArrayBufferView $folding-inner1 $__inlined_func$~lib/rt/__visit_members $folding-inner1 $object-literal/OmittedFoo $invalid
         end
         local.get $1
         i32.load offset=20
         local.tee $1
         if
          local.get $1
          call $~lib/rt/tcms/__visit
         end
         br $__inlined_func$~lib/rt/__visit_members
        end
        local.get $1
        i32.load offset=20
        local.tee $0
        if
         local.get $0
         call $~lib/rt/tcms/__visit
        end
        local.get $1
        i32.load offset=24
        local.tee $0
        if
         local.get $0
         call $~lib/rt/tcms/__visit
        end
        local.get $1
        i32.load offset=28
        local.tee $0
        if
         local.get $0
         call $~lib/rt/tcms/__visit
        end
        local.get $1
        i32.load offset=32
        local.tee $0
        if
         local.get $0
         call $~lib/rt/tcms/__visit
        end
        local.get $1
        i32.load offset=36
        local.tee $0
        if
         local.get $0
         call $~lib/rt/tcms/__visit
        end
        local.get $1
        i32.load offset=40
        local.tee $0
        if
         local.get $0
         call $~lib/rt/tcms/__visit
        end
        local.get $1
        i32.load offset=44
        local.tee $0
        if
         local.get $0
         call $~lib/rt/tcms/__visit
        end
        local.get $1
        i32.load offset=48
        local.tee $1
        if
         local.get $1
         call $~lib/rt/tcms/__visit
        end
        br $__inlined_func$~lib/rt/__visit_members
       end
       unreachable
      end
      local.get $1
      i32.load offset=24
      local.tee $1
      if
       local.get $1
       call $~lib/rt/tcms/__visit
      end
     end
    else
     i32.const 0
     call $~lib/rt/tcms/__visit_externals
     global.get $~lib/rt/tcms/toSpace
     global.get $~lib/rt/tcms/iter
     i32.load offset=4
     i32.const -4
     i32.and
     i32.eq
     if
      global.get $~lib/rt/tcms/fromSpace
      local.set $1
      global.get $~lib/rt/tcms/toSpace
      global.set $~lib/rt/tcms/fromSpace
      local.get $1
      global.set $~lib/rt/tcms/toSpace
      local.get $0
      global.set $~lib/rt/tcms/white
      local.get $1
      i32.load offset=4
      i32.const -4
      i32.and
      global.set $~lib/rt/tcms/iter
      i32.const 3
      global.set $~lib/rt/tcms/state
     end
    end
    br $break|0
   end
   global.get $~lib/rt/tcms/iter
   local.tee $1
   global.get $~lib/rt/tcms/toSpace
   i32.ne
   if
    local.get $1
    i32.load offset=4
    i32.const -4
    i32.and
    global.set $~lib/rt/tcms/iter
    global.get $~lib/rt/tcms/white
    i32.eqz
    local.get $1
    i32.load offset=4
    i32.const 3
    i32.and
    i32.ne
    if
     i32.const 0
     i32.const 1136
     i32.const 201
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i32.const 1544
    i32.ge_u
    if
     global.get $~lib/rt/tcms/total
     i32.const 1
     i32.sub
     global.set $~lib/rt/tcms/total
     global.get $~lib/rt/tcms/totalMem
     local.get $1
     i32.load
     i32.const -4
     i32.and
     i32.const 4
     i32.add
     i32.sub
     global.set $~lib/rt/tcms/totalMem
     local.get $1
     i32.const 4
     i32.add
     call $~lib/rt/tlsf/__free
    end
    i32.const 1
    return
   end
   global.get $~lib/rt/tcms/toSpace
   local.tee $1
   local.get $1
   i32.store offset=4
   local.get $1
   local.tee $0
   i32.eqz
   if
    i32.const 0
    i32.const 1136
    i32.const 153
    i32.const 17
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $0
   i32.store offset=8
   i32.const 1
   global.set $~lib/rt/tcms/state
   i32.const 0
   global.set $~lib/rt/tcms/debt
  end
  i32.const 0
 )
 (func $start:object-literal
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 8
  i32.const 3
  call $~lib/rt/tcms/__new
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  call $object-literal/Managed#set:baz
  local.get $0
  i32.const 123
  i32.store
  local.get $0
  i32.const 1056
  call $object-literal/Managed#set:baz
  local.get $0
  i32.load
  i32.const 123
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 9
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 1056
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 10
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 123
  i32.store
  block $__inlined_func$~lib/string/String#substring
   i32.const 0
   i32.const 1052
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $4
   local.get $4
   select
   local.tee $2
   i32.const 5
   local.get $4
   local.get $4
   i32.const 5
   i32.gt_u
   select
   local.tee $3
   local.get $2
   local.get $3
   i32.gt_s
   select
   i32.const 1
   i32.shl
   local.tee $0
   local.get $2
   local.get $3
   local.get $2
   local.get $3
   i32.lt_s
   select
   i32.const 1
   i32.shl
   local.tee $2
   i32.sub
   local.tee $3
   i32.eqz
   if
    i32.const 1408
    local.set $0
    br $__inlined_func$~lib/string/String#substring
   end
   i32.const 0
   local.get $0
   local.get $4
   i32.const 1
   i32.shl
   i32.eq
   local.get $2
   select
   if
    i32.const 1056
    local.set $0
    br $__inlined_func$~lib/string/String#substring
   end
   local.get $3
   i32.const 1
   call $~lib/rt/tcms/__new
   local.tee $0
   local.get $2
   i32.const 1056
   i32.add
   local.get $3
   call $~lib/memory/memory.copy
  end
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  i32.load
  i32.const 123
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 27
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=4
  i32.const 1440
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 28
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/tlsf/__free
  i32.const 65
  i32.const 4
  call $~lib/rt/tcms/__new
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i64.const 0
  i64.store offset=8
  local.get $0
  i64.const 0
  i64.store offset=16
  local.get $0
  f32.const 0
  f32.store offset=24
  local.get $0
  f64.const 0
  f64.store offset=32
  local.get $0
  i32.const 0
  i32.store8 offset=40
  local.get $0
  i32.const 0
  i32.store8 offset=41
  local.get $0
  i32.const 0
  i32.store16 offset=42
  local.get $0
  i32.const 0
  i32.store16 offset=44
  local.get $0
  i32.const 0
  i32.store offset=48
  local.get $0
  i32.const 0
  i32.store offset=52
  local.get $0
  f64.const 0
  f64.store offset=56
  local.get $0
  i32.const 0
  i32.store8 offset=64
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i64.const 0
  i64.store offset=8
  local.get $0
  i64.const 0
  i64.store offset=16
  local.get $0
  f32.const 0
  f32.store offset=24
  local.get $0
  f64.const 0
  f64.store offset=32
  local.get $0
  i32.const 0
  i32.store8 offset=40
  local.get $0
  i32.const 0
  i32.store8 offset=41
  local.get $0
  i32.const 0
  i32.store16 offset=42
  local.get $0
  i32.const 0
  i32.store16 offset=44
  local.get $0
  i32.const 0
  i32.store offset=48
  local.get $0
  i32.const 0
  i32.store offset=52
  local.get $0
  f64.const 0
  f64.store offset=56
  local.get $0
  i32.const 0
  i32.store8 offset=64
  local.get $0
  call $object-literal/testOmittedTypes
  i32.const 16
  i32.const 5
  call $~lib/rt/tcms/__new
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  call $object-literal/Managed#set:baz
  local.get $0
  f64.const 0
  f64.store offset=8
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 1472
  call $object-literal/Managed#set:baz
  local.get $0
  f64.const 0
  f64.store offset=8
  local.get $0
  i32.load
  if
   i32.const 0
   i32.const 1344
   i32.const 82
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 1472
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 83
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.load offset=8
  f64.const 0
  f64.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 84
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 40
  i32.const 6
  call $~lib/rt/tcms/__new
  local.tee $0
  i32.const 1504
  i32.store
  local.get $0
  i32.const 1504
  call $~lib/rt/tcms/__link
  local.get $0
  i32.const 1536
  call $object-literal/Managed#set:baz
  local.get $0
  call $object-literal/OmittedFoo#set:quux
  local.get $0
  call $object-literal/OmittedFoo#set:quuz
  local.get $0
  call $object-literal/OmittedFoo#set:corge
  local.get $0
  call $object-literal/OmittedFoo#set:grault
  local.get $0
  call $object-literal/OmittedFoo#set:garply
  local.get $0
  call $object-literal/OmittedFoo#set:waldo
  local.get $0
  i32.const 0
  i32.store offset=32
  local.get $0
  i32.const -1
  i32.store offset=36
  local.get $0
  call $object-literal/OmittedFoo#set:quux
  local.get $0
  call $object-literal/OmittedFoo#set:quuz
  local.get $0
  call $object-literal/OmittedFoo#set:corge
  local.get $0
  call $object-literal/OmittedFoo#set:grault
  local.get $0
  call $object-literal/OmittedFoo#set:garply
  local.get $0
  call $object-literal/OmittedFoo#set:waldo
  local.get $0
  i32.const 0
  i32.store offset=32
  local.get $0
  call $object-literal/testOmittedFoo
  global.get $~lib/rt/tcms/state
  i32.const 1
  i32.gt_s
  if
   loop $while-continue|0
    global.get $~lib/rt/tcms/state
    i32.const 1
    i32.ne
    if
     call $~lib/rt/tcms/step
     drop
     br $while-continue|0
    end
   end
  end
  call $~lib/rt/tcms/step
  drop
  loop $while-continue|1
   global.get $~lib/rt/tcms/state
   i32.const 1
   i32.ne
   if
    call $~lib/rt/tcms/step
    drop
    br $while-continue|1
   end
  end
  global.get $~lib/rt/tcms/total
  i32.const 1
  i32.shl
  global.set $~lib/rt/tcms/threshold
 )
 (func $~start
  call $start:object-literal
 )
 (func $~lib/rt/tcms/__visit (param $0 i32)
  local.get $0
  i32.eqz
  if
   return
  end
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
   call $~lib/rt/tcms/Object#makeGray
  end
 )
)
