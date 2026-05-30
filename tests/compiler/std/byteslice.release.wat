(module
 (type $0 (func))
 (type $1 (func (param i32 i32) (result i32)))
 (type $2 (func (param i32 i32 i32 i32)))
 (type $3 (func (param i32)))
 (type $4 (func (param i32 i32)))
 (type $5 (func (result i32)))
 (type $6 (func (param i32) (result i32)))
 (type $7 (func (param i32 i32 i64)))
 (type $8 (func (param i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/__abort_impl (param i32 i32 i32 i32)))
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
 (global $std/byteslice/s (mut i32) (i32.const 0))
 (global $std/byteslice/w (mut i32) (i32.const 0))
 (global $std/byteslice/sub (mut i32) (i32.const 0))
 (global $std/byteslice/f (mut i32) (i32.const 0))
 (global $std/byteslice/a (mut i32) (i32.const 0))
 (global $std/byteslice/b (mut i32) (i32.const 0))
 (global $std/byteslice/c (mut i32) (i32.const 0))
 (global $std/byteslice/d (mut i32) (i32.const 0))
 (global $std/byteslice/src (mut i32) (i32.const 0))
 (global $std/byteslice/dst (mut i32) (i32.const 0))
 (global $std/byteslice/p (mut i32) (i32.const 0))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 34408))
 (memory $0 1)
 (data $0 (i32.const 1036) ",")
 (data $0.1 (i32.const 1048) "\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data $1 (i32.const 1084) "<")
 (data $1.1 (i32.const 1096) "\02\00\00\00\"\00\00\00~\00l\00i\00b\00/\00b\00y\00t\00e\00s\00l\00i\00c\00e\00.\00t\00s")
 (data $2 (i32.const 1148) "<")
 (data $2.1 (i32.const 1160) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $3 (i32.const 1212) "<")
 (data $3.1 (i32.const 1224) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data $6 (i32.const 1340) "<")
 (data $6.1 (i32.const 1352) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $7 (i32.const 1404) ",")
 (data $7.1 (i32.const 1416) "\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data $9 (i32.const 1484) "<")
 (data $9.1 (i32.const 1496) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data $10 (i32.const 1548) "<")
 (data $10.1 (i32.const 1560) "\02\00\00\00 \00\00\00s\00t\00d\00/\00b\00y\00t\00e\00s\00l\00i\00c\00e\00.\00t\00s")
 (data $11 (i32.const 1616) "\05\00\00\00 \00\00\00 \00\00\00 ")
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/builtins/abort (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1640
  i32.lt_s
  if
   i32.const 34432
   i32.const 34480
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $~lib/builtins/__abort_impl
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
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
  local.tee $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $1
   global.get $~lib/rt/itcms/iter
   i32.eq
   if
    local.get $1
    i32.load offset=8
    local.tee $0
    i32.eqz
    if
     i32.const 0
     i32.const 1232
     i32.const 148
     i32.const 30
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    global.set $~lib/rt/itcms/iter
   end
   block $__inlined_func$~lib/rt/itcms/Object#unlink$210
    local.get $1
    i32.load offset=4
    i32.const -4
    i32.and
    local.tee $0
    i32.eqz
    if
     local.get $1
     i32.load offset=8
     i32.eqz
     local.get $1
     i32.const 34408
     i32.lt_u
     i32.and
     i32.eqz
     if
      i32.const 0
      i32.const 1232
      i32.const 128
      i32.const 18
      call $~lib/builtins/abort
      unreachable
     end
     br $__inlined_func$~lib/rt/itcms/Object#unlink$210
    end
    local.get $1
    i32.load offset=8
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1232
     i32.const 132
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.store offset=8
    local.get $2
    local.get $0
    local.get $2
    i32.load offset=4
    i32.const 3
    i32.and
    i32.or
    i32.store offset=4
   end
   global.get $~lib/rt/itcms/toSpace
   local.set $2
   local.get $1
   i32.load offset=12
   local.tee $0
   i32.const 2
   i32.le_u
   if (result i32)
    i32.const 1
   else
    local.get $0
    i32.const 1616
    i32.load
    i32.gt_u
    if
     i32.const 1360
     i32.const 1424
     i32.const 22
     i32.const 28
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 2
    i32.shl
    i32.const 1620
    i32.add
    i32.load
    i32.const 32
    i32.and
   end
   local.set $3
   local.get $2
   i32.load offset=8
   local.set $0
   local.get $1
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.const 2
   local.get $3
   select
   local.get $2
   i32.or
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
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/byteslice/ByteSlice#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1640
  i32.lt_s
  if
   i32.const 34432
   i32.const 34480
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.lt_s
  if
   i32.const 1056
   i32.const 1104
   i32.const 15
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1504
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.tee $3
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1504
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $3
   local.get $3
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $3
   i32.clz
   i32.sub
   local.tee $4
   i32.const 7
   i32.sub
   local.set $2
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
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1504
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.set $5
  local.get $1
  i32.load offset=4
  local.tee $4
  if
   local.get $4
   local.get $5
   i32.store offset=8
  end
  local.get $5
  if
   local.get $5
   local.get $4
   i32.store offset=4
  end
  local.get $1
  local.get $0
  local.get $2
  i32.const 4
  i32.shl
  local.get $3
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.tee $1
  i32.load offset=96
  i32.eq
  if
   local.get $1
   local.get $5
   i32.store offset=96
   local.get $5
   i32.eqz
   if
    local.get $0
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    local.tee $1
    i32.load offset=4
    i32.const -2
    local.get $3
    i32.rotl
    i32.and
    local.set $3
    local.get $1
    local.get $3
    i32.store offset=4
    local.get $3
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const -2
     local.get $2
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
   i32.const 1504
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
   i32.const 1504
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
    i32.const 1504
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
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1504
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
   i32.const 1504
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
   i32.const 1504
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
  i32.load offset=96
  local.set $3
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $3
  i32.store offset=8
  local.get $3
  if
   local.get $3
   local.get $1
   i32.store offset=4
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
  local.get $2
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  block $invalid
   block $~lib/byteslice/ByteSlice
    block $~lib/arraybuffer/ArrayBufferView
     block $~lib/string/String
      block $~lib/arraybuffer/ArrayBuffer
       block $~lib/object/Object
        local.get $0
        i32.const 8
        i32.sub
        i32.load
        br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $~lib/byteslice/ByteSlice $invalid
       end
       return
      end
      return
     end
     return
    end
    local.get $0
    i32.load
    call $~lib/rt/itcms/__visit
    return
   end
   return
  end
  unreachable
 )
 (func $~lib/byteslice/ByteSlice#equals (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1640
  i32.lt_s
  if
   i32.const 34432
   i32.const 34480
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.load offset=4
  i32.ne
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 0
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.load
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  local.set $1
  i32.const 0
  local.set $0
  block $~lib/util/memory/memcmp|inlined.0
   local.get $2
   local.get $3
   i32.eq
   br_if $~lib/util/memory/memcmp|inlined.0
   local.get $2
   i32.const 7
   i32.and
   local.get $3
   i32.const 7
   i32.and
   i32.eq
   if
    loop $while-continue|0
     local.get $2
     i32.const 7
     i32.and
     if
      i32.const 0
      local.set $0
      local.get $1
      i32.eqz
      br_if $~lib/util/memory/memcmp|inlined.0
      local.get $2
      i32.load8_u
      local.tee $4
      local.get $3
      i32.load8_u
      local.tee $5
      i32.sub
      local.set $0
      local.get $4
      local.get $5
      i32.ne
      br_if $~lib/util/memory/memcmp|inlined.0
      local.get $1
      i32.const 1
      i32.sub
      local.set $1
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $while-continue|0
     end
    end
    loop $while-continue|1
     local.get $1
     i32.const 8
     i32.ge_u
     if
      local.get $2
      i64.load
      local.get $3
      i64.load
      i64.eq
      if
       local.get $2
       i32.const 8
       i32.add
       local.set $2
       local.get $3
       i32.const 8
       i32.add
       local.set $3
       local.get $1
       i32.const 8
       i32.sub
       local.set $1
       br $while-continue|1
      end
     end
    end
   end
   loop $while-continue|2
    local.get $1
    local.tee $0
    i32.const 1
    i32.sub
    local.set $1
    local.get $0
    if
     local.get $2
     i32.load8_u
     local.tee $4
     local.get $3
     i32.load8_u
     local.tee $5
     i32.sub
     local.set $0
     local.get $4
     local.get $5
     i32.ne
     br_if $~lib/util/memory/memcmp|inlined.0
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $while-continue|2
    end
   end
   i32.const 0
   local.set $0
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
  i32.eqz
 )
 (func $~lib/byteslice/ByteSlice#__get (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1640
  i32.lt_s
  if
   i32.const 34432
   i32.const 34480
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=4
  i32.ge_u
  if
   i32.const 1360
   i32.const 1104
   i32.const 117
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load
  i32.add
  i32.load8_u
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
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
    local.tee $2
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.tee $1
    i32.eqz
    if
     i32.const 0
     i32.const 1504
     i32.const 347
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
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  memory.size
  local.tee $1
  i32.const 0
  i32.le_s
  if (result i32)
   i32.const 1
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
  i32.const 34416
  i32.const 0
  i32.store
  i32.const 35984
  i32.const 0
  i32.store
  loop $for-loop|0
   local.get $0
   i32.const 23
   i32.lt_u
   if
    local.get $0
    i32.const 2
    i32.shl
    i32.const 34416
    i32.add
    i32.const 0
    i32.store offset=4
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
      i32.const 34416
      i32.add
      i32.const 0
      i32.store offset=96
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
  i32.const 34416
  i32.const 35988
  memory.size
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 34416
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $2
  local.get $1
  i64.extend_i32_u
  i64.lt_u
  if
   i32.const 0
   i32.const 1504
   i32.const 382
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
  i32.load offset=1568
  local.tee $3
  if
   local.get $3
   i32.const 4
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1504
    i32.const 389
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   local.get $1
   i32.const 16
   i32.sub
   local.tee $5
   i32.eq
   if
    local.get $3
    i32.load
    local.set $4
    local.get $5
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
    i32.const 1504
    i32.const 402
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  i32.wrap_i64
  i32.const -16
  i32.and
  local.get $1
  i32.sub
  local.tee $3
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $4
  i32.const 2
  i32.and
  local.get $3
  i32.const 8
  i32.sub
  local.tee $3
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
  local.get $1
  i32.const 4
  i32.add
  local.get $3
  i32.add
  local.tee $3
  i32.const 2
  i32.store
  local.get $0
  local.get $3
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  global.get $std/byteslice/s
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/byteslice/w
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/byteslice/sub
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/byteslice/f
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/byteslice/a
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/byteslice/b
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/byteslice/c
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/byteslice/d
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/byteslice/src
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/byteslice/dst
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 1360
  call $~lib/rt/itcms/__visit
  i32.const 1056
  call $~lib/rt/itcms/__visit
  i32.const 1168
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
     i32.const 1232
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
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/byteslice/ByteSlice#fill (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1640
  i32.lt_s
  if
   i32.const 34432
   i32.const 34480
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  local.tee $3
  i32.const 0
  local.get $3
  i32.const 0
  i32.le_s
  select
  local.tee $4
  local.get $2
  i32.const 0
  i32.lt_s
  if
   local.get $2
   local.get $3
   i32.add
   local.tee $2
   i32.const 0
   local.get $2
   i32.const 0
   i32.gt_s
   select
   local.set $2
  end
  local.get $2
  local.get $3
  local.get $2
  local.get $3
  i32.lt_s
  select
  local.tee $2
  i32.lt_s
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $4
   local.get $0
   i32.load
   i32.add
   local.get $1
   local.get $2
   local.get $4
   i32.sub
   memory.fill
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~start
  call $start:std/byteslice
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
    i32.load offset=4
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
      i32.load offset=4
      local.tee $2
      i32.const 3
      i32.and
      i32.ne
      if
       local.get $0
       local.get $2
       i32.const -4
       i32.and
       local.get $1
       i32.or
       i32.store offset=4
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
      i32.const 34408
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
      local.get $0
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      if
       local.get $1
       local.get $0
       i32.load offset=4
       local.tee $2
       i32.const 3
       i32.and
       i32.ne
       if
        local.get $0
        local.get $2
        i32.const -4
        i32.and
        local.get $1
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
    global.get $~lib/rt/itcms/visitCount
    return
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
     i32.const 1232
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 34408
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
     i32.const 34408
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
       i32.load
       i32.const 1
       i32.and
      end
      if
       i32.const 0
       i32.const 1504
       i32.const 562
       i32.const 3
       call $~lib/builtins/abort
       unreachable
      end
      local.get $2
      local.get $2
      i32.load
      i32.const 1
      i32.or
      i32.store
      local.get $2
      call $~lib/rt/tlsf/insertBlock
     end
    end
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   i32.store offset=4
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   i32.store offset=8
   i32.const 0
   global.set $~lib/rt/itcms/state
  end
  i32.const 0
 )
 (func $~lib/rt/itcms/__new (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   block $__inlined_func$~lib/rt/itcms/interrupt$69
    i32.const 2048
    local.set $0
    loop $do-loop|0
     local.get $0
     call $~lib/rt/itcms/step
     i32.sub
     local.set $0
     global.get $~lib/rt/itcms/state
     i32.eqz
     if
      global.get $~lib/rt/itcms/total
      i32.const 1
      i32.shl
      i32.const 1024
      i32.add
      global.set $~lib/rt/itcms/threshold
      br $__inlined_func$~lib/rt/itcms/interrupt$69
     end
     local.get $0
     i32.const 0
     i32.gt_s
     br_if $do-loop|0
    end
    global.get $~lib/rt/itcms/total
    global.get $~lib/rt/itcms/total
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
  local.tee $1
  call $~lib/rt/tlsf/searchBlock
  local.tee $0
  i32.eqz
  if
   i32.const 4
   local.get $1
   i32.load offset=1568
   memory.size
   local.tee $0
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
   local.set $2
   local.get $0
   local.get $2
   local.get $0
   local.get $2
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $2
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $1
   local.get $0
   i32.const 16
   i32.shl
   memory.size
   i64.extend_i32_s
   i64.const 16
   i64.shl
   call $~lib/rt/tlsf/addMemory
   local.get $1
   call $~lib/rt/tlsf/searchBlock
   local.tee $0
   i32.eqz
   if
    i32.const 0
    i32.const 1504
    i32.const 499
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  i32.const -4
  i32.and
  i32.const 28
  i32.lt_u
  if
   i32.const 0
   i32.const 1504
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  call $~lib/rt/tlsf/removeBlock
  local.get $0
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
   local.get $0
   local.get $2
   i32.const 2
   i32.and
   i32.const 28
   i32.or
   i32.store
   local.get $0
   i32.const 32
   i32.add
   local.tee $2
   local.get $3
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $1
   local.get $2
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $0
   local.get $2
   i32.const -2
   i32.and
   i32.store
   local.get $0
   i32.const 4
   i32.add
   local.get $0
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $1
   local.get $1
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 8
  i32.store offset=16
  global.get $~lib/rt/itcms/fromSpace
  local.tee $1
  i32.load offset=8
  local.set $2
  local.get $0
  local.get $1
  global.get $~lib/rt/itcms/white
  i32.or
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $2
  local.get $0
  local.get $2
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
  local.get $1
  local.get $0
  i32.store offset=8
  global.get $~lib/rt/itcms/total
  local.get $0
  i32.load
  i32.const -4
  i32.and
  i32.const 4
  i32.add
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $0
  i32.const 20
  i32.add
  local.tee $0
  i64.const 0
  i64.store align=1
  local.get $0
 )
 (func $start:std/byteslice
  (local $0 i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 104
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner5
   block $folding-inner4
    block $folding-inner3
     block $folding-inner2
      block $folding-inner1
       block $folding-inner0
        global.get $~lib/memory/__stack_pointer
        i32.const 1640
        i32.lt_s
        br_if $folding-inner0
        global.get $~lib/memory/__stack_pointer
        i32.const 0
        i32.const 104
        memory.fill
        i32.const 8192
        i32.const 1
        i32.store8
        i32.const 8193
        i32.const 2
        i32.store8
        i32.const 8194
        i32.const 3
        i32.store8
        i32.const 8195
        i32.const 4
        i32.store8
        i32.const 8196
        i32.const 5
        i32.store8
        i32.const 8197
        i32.const 6
        i32.store8
        i32.const 8198
        i32.const 7
        i32.store8
        i32.const 8199
        i32.const 8
        i32.store8
        memory.size
        i32.const 16
        i32.shl
        i32.const 34408
        i32.sub
        i32.const 1
        i32.shr_u
        global.set $~lib/rt/itcms/threshold
        i32.const 1284
        i32.const 1280
        i32.store
        i32.const 1288
        i32.const 1280
        i32.store
        i32.const 1280
        global.set $~lib/rt/itcms/pinSpace
        i32.const 1316
        i32.const 1312
        i32.store
        i32.const 1320
        i32.const 1312
        i32.store
        i32.const 1312
        global.set $~lib/rt/itcms/toSpace
        i32.const 1460
        i32.const 1456
        i32.store
        i32.const 1464
        i32.const 1456
        i32.store
        i32.const 1456
        global.set $~lib/rt/itcms/fromSpace
        i32.const 8192
        i32.const 16
        call $~lib/byteslice/ByteSlice#constructor
        global.set $std/byteslice/s
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/s
        local.tee $0
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load offset=4
        i32.eqz
        br_if $folding-inner1
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load
        i32.load8_u
        i32.const 1
        i32.ne
        if
         i32.const 0
         i32.const 1568
         i32.const 21
         i32.const 1
         call $~lib/builtins/abort
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/s
        local.tee $0
        i32.store offset=8
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load offset=4
        i32.const 1
        i32.le_u
        br_if $folding-inner1
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load
        i32.load8_u offset=1
        i32.const 2
        i32.ne
        if
         i32.const 0
         i32.const 1568
         i32.const 22
         i32.const 1
         call $~lib/builtins/abort
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/s
        local.tee $0
        i32.store offset=4
        local.get $0
        i32.const 0
        call $~lib/byteslice/ByteSlice#__get
        i32.const 1
        i32.ne
        if
         i32.const 0
         i32.const 1568
         i32.const 25
         i32.const 1
         call $~lib/builtins/abort
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/s
        local.tee $0
        i32.store offset=4
        local.get $0
        i32.const 1
        call $~lib/byteslice/ByteSlice#__get
        i32.const 2
        i32.ne
        if
         i32.const 0
         i32.const 1568
         i32.const 26
         i32.const 1
         call $~lib/builtins/abort
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/s
        local.tee $0
        i32.store offset=12
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load offset=4
        i32.const 2
        i32.lt_s
        br_if $folding-inner2
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load
        i32.load16_u
        local.tee $0
        i32.const 8
        i32.shl
        local.get $0
        i32.const 8
        i32.shr_u
        i32.or
        i32.const 65535
        i32.and
        i32.const 258
        i32.ne
        if
         i32.const 0
         i32.const 1568
         i32.const 29
         i32.const 1
         call $~lib/builtins/abort
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/s
        local.tee $0
        i32.store offset=16
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load offset=4
        i32.const 2
        i32.lt_s
        br_if $folding-inner2
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load
        i32.load16_u
        i32.const 513
        i32.ne
        if
         i32.const 0
         i32.const 1568
         i32.const 31
         i32.const 1
         call $~lib/builtins/abort
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/s
        local.tee $0
        i32.store offset=20
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load offset=4
        i32.const 4
        i32.lt_s
        br_if $folding-inner3
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load
        i32.load
        local.tee $0
        i32.const -16711936
        i32.and
        i32.const 8
        i32.rotl
        local.get $0
        i32.const 16711935
        i32.and
        i32.const 8
        i32.rotr
        i32.or
        i32.const 16909060
        i32.ne
        if
         i32.const 0
         i32.const 1568
         i32.const 34
         i32.const 1
         call $~lib/builtins/abort
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/s
        local.tee $0
        i32.store offset=24
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load offset=4
        i32.const 4
        i32.lt_s
        br_if $folding-inner3
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load
        i32.load
        i32.const 67305985
        i32.ne
        if
         i32.const 0
         i32.const 1568
         i32.const 36
         i32.const 1
         call $~lib/builtins/abort
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/s
        local.tee $0
        i32.store offset=28
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load offset=4
        i32.const 8
        i32.lt_s
        br_if $folding-inner4
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load
        i64.load
        local.tee $1
        i64.const 8
        i64.shr_u
        i64.const 71777214294589695
        i64.and
        local.get $1
        i64.const 71777214294589695
        i64.and
        i64.const 8
        i64.shl
        i64.or
        local.tee $1
        i64.const 16
        i64.shr_u
        i64.const 281470681808895
        i64.and
        local.get $1
        i64.const 281470681808895
        i64.and
        i64.const 16
        i64.shl
        i64.or
        i64.const 32
        i64.rotr
        i64.const 72623859790382856
        i64.ne
        if
         i32.const 0
         i32.const 1568
         i32.const 39
         i32.const 1
         call $~lib/builtins/abort
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/s
        local.tee $0
        i32.store offset=32
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load offset=4
        i32.const 8
        i32.lt_s
        br_if $folding-inner4
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load
        i64.load
        i64.const 578437695752307201
        i64.ne
        if
         i32.const 0
         i32.const 1568
         i32.const 41
         i32.const 1
         call $~lib/builtins/abort
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/s
        local.tee $0
        i32.store offset=36
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load offset=4
        i32.eqz
        if
         i32.const 1360
         i32.const 1104
         i32.const 48
         i32.const 42
         call $~lib/builtins/abort
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load
        i32.load8_u
        i32.const 1
        i32.ne
        if
         i32.const 0
         i32.const 1568
         i32.const 44
         i32.const 1
         call $~lib/builtins/abort
         unreachable
        end
        i32.const 8448
        i32.const 32
        call $~lib/byteslice/ByteSlice#constructor
        global.set $std/byteslice/w
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/w
        local.tee $0
        i32.store offset=40
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load offset=4
        i32.eqz
        if
         i32.const 1360
         i32.const 1104
         i32.const 73
         i32.const 42
         call $~lib/builtins/abort
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load
        i32.const 170
        i32.store8
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/w
        local.tee $0
        i32.store offset=44
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load offset=4
        i32.eqz
        br_if $folding-inner1
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load
        i32.load8_u
        i32.const 170
        i32.ne
        if
         i32.const 0
         i32.const 1568
         i32.const 51
         i32.const 1
         call $~lib/builtins/abort
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/w
        local.tee $0
        i32.store offset=48
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load offset=4
        i32.const 4
        i32.lt_s
        if
         i32.const 1360
         i32.const 1104
         i32.const 78
         i32.const 58
         call $~lib/builtins/abort
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load
        i32.const 513
        i32.store16 offset=2
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/w
        local.tee $0
        i32.store offset=52
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load offset=4
        i32.const 4
        i32.lt_s
        br_if $folding-inner2
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load
        i32.load16_u offset=2
        local.tee $0
        i32.const 8
        i32.shl
        local.get $0
        i32.const 8
        i32.shr_u
        i32.or
        i32.const 65535
        i32.and
        i32.const 258
        i32.ne
        if
         i32.const 0
         i32.const 1568
         i32.const 54
         i32.const 1
         call $~lib/builtins/abort
         unreachable
        end
        i32.const 8450
        i32.load16_u
        i32.const 513
        i32.ne
        if
         i32.const 0
         i32.const 1568
         i32.const 55
         i32.const 1
         call $~lib/builtins/abort
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/w
        local.tee $0
        i32.store offset=56
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load offset=4
        i32.const 8
        i32.lt_s
        br_if $folding-inner5
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load
        i32.const 67305985
        i32.store offset=4
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/w
        local.tee $0
        i32.store offset=60
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load offset=4
        i32.const 8
        i32.lt_s
        br_if $folding-inner3
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load
        i32.load offset=4
        local.tee $0
        i32.const -16711936
        i32.and
        i32.const 8
        i32.rotl
        local.get $0
        i32.const 16711935
        i32.and
        i32.const 8
        i32.rotr
        i32.or
        i32.const 16909060
        i32.ne
        if
         i32.const 0
         i32.const 1568
         i32.const 58
         i32.const 1
         call $~lib/builtins/abort
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/w
        local.tee $0
        i32.store offset=64
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load offset=4
        i32.const 16
        i32.lt_s
        if
         i32.const 1360
         i32.const 1104
         i32.const 88
         i32.const 58
         call $~lib/builtins/abort
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load
        i64.const 578437695752307201
        i64.store offset=8
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/w
        local.tee $0
        i32.store offset=68
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load offset=4
        i32.const 16
        i32.lt_s
        br_if $folding-inner4
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load
        i64.load offset=8
        local.tee $1
        i64.const 8
        i64.shr_u
        i64.const 71777214294589695
        i64.and
        local.get $1
        i64.const 71777214294589695
        i64.and
        i64.const 8
        i64.shl
        i64.or
        local.tee $1
        i64.const 16
        i64.shr_u
        i64.const 281470681808895
        i64.and
        local.get $1
        i64.const 281470681808895
        i64.and
        i64.const 16
        i64.shl
        i64.or
        i64.const 32
        i64.rotr
        i64.const 72623859790382856
        i64.ne
        if
         i32.const 0
         i32.const 1568
         i32.const 61
         i32.const 1
         call $~lib/builtins/abort
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/w
        local.tee $0
        i32.store offset=72
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load offset=4
        i32.const 20
        i32.lt_s
        br_if $folding-inner5
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load
        i32.const -1430532899
        i32.store offset=16
        i32.const 8464
        i32.load
        i32.const -1430532899
        i32.ne
        if
         i32.const 0
         i32.const 1568
         i32.const 65
         i32.const 1
         call $~lib/builtins/abort
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/w
        local.tee $0
        i32.store offset=4
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.sub
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        i32.const 1640
        i32.lt_s
        br_if $folding-inner0
        global.get $~lib/memory/__stack_pointer
        i32.const 0
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store
        local.get $0
        i32.load offset=4
        i32.eqz
        if
         i32.const 1360
         i32.const 1104
         i32.const 122
         i32.const 41
         call $~lib/builtins/abort
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store
        local.get $0
        i32.load
        i32.const 187
        i32.store8
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/w
        local.tee $0
        i32.store offset=4
        local.get $0
        i32.const 0
        call $~lib/byteslice/ByteSlice#__get
        i32.const 187
        i32.ne
        if
         i32.const 0
         i32.const 1568
         i32.const 69
         i32.const 1
         call $~lib/builtins/abort
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/s
        local.tee $0
        i32.store offset=4
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.sub
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        i32.const 1640
        i32.lt_s
        br_if $folding-inner0
        global.get $~lib/memory/__stack_pointer
        i32.const 0
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store
        local.get $0
        i32.load offset=4
        local.set $2
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store
        i32.const 6
        local.get $2
        local.get $2
        i32.const 6
        i32.gt_s
        select
        i32.const 2
        local.get $2
        local.get $2
        i32.const 2
        i32.gt_s
        select
        local.tee $2
        i32.sub
        local.set $3
        local.get $2
        local.get $0
        i32.load
        i32.add
        local.get $3
        i32.const 0
        local.get $3
        i32.const 0
        i32.gt_s
        select
        call $~lib/byteslice/ByteSlice#constructor
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
        global.set $std/byteslice/sub
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/sub
        local.tee $0
        i32.store offset=4
        local.get $0
        i32.load offset=4
        i32.const 4
        i32.ne
        if
         i32.const 0
         i32.const 1568
         i32.const 73
         i32.const 1
         call $~lib/builtins/abort
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/sub
        local.tee $0
        i32.store offset=76
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load offset=4
        i32.eqz
        br_if $folding-inner1
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load
        i32.load8_u
        i32.const 3
        i32.ne
        if
         i32.const 0
         i32.const 1568
         i32.const 74
         i32.const 1
         call $~lib/builtins/abort
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/sub
        local.tee $0
        i32.store offset=80
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load offset=4
        i32.const 3
        i32.le_u
        br_if $folding-inner1
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load
        i32.load8_u offset=3
        i32.const 6
        i32.ne
        if
         i32.const 0
         i32.const 1568
         i32.const 75
         i32.const 1
         call $~lib/builtins/abort
         unreachable
        end
        i32.const 8704
        i32.const 16
        call $~lib/byteslice/ByteSlice#constructor
        global.set $std/byteslice/f
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/f
        local.tee $0
        i32.store offset=4
        local.get $0
        i32.const 255
        i32.const 8
        call $~lib/byteslice/ByteSlice#fill
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/f
        local.tee $0
        i32.store offset=84
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load offset=4
        i32.eqz
        br_if $folding-inner1
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load
        i32.load8_u
        i32.const 255
        i32.ne
        if
         i32.const 0
         i32.const 1568
         i32.const 81
         i32.const 1
         call $~lib/builtins/abort
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/f
        local.tee $0
        i32.store offset=88
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load offset=4
        i32.const 7
        i32.le_u
        br_if $folding-inner1
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load
        i32.load8_u offset=7
        i32.const 255
        i32.ne
        if
         i32.const 0
         i32.const 1568
         i32.const 82
         i32.const 1
         call $~lib/builtins/abort
         unreachable
        end
        i32.const 8192
        i32.const 4
        call $~lib/byteslice/ByteSlice#constructor
        global.set $std/byteslice/a
        i32.const 8192
        i32.const 4
        call $~lib/byteslice/ByteSlice#constructor
        global.set $std/byteslice/b
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/a
        local.tee $0
        i32.store offset=4
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/b
        local.tee $2
        i32.store offset=92
        local.get $0
        local.get $2
        call $~lib/byteslice/ByteSlice#equals
        i32.const 1
        i32.ne
        if
         i32.const 0
         i32.const 1568
         i32.const 87
         i32.const 1
         call $~lib/builtins/abort
         unreachable
        end
        i32.const 8960
        i32.const 8192
        i32.load align=1
        i32.store align=1
        i32.const 8960
        i32.const 4
        call $~lib/byteslice/ByteSlice#constructor
        global.set $std/byteslice/c
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/a
        local.tee $0
        i32.store offset=4
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/c
        local.tee $2
        i32.store offset=92
        local.get $0
        local.get $2
        call $~lib/byteslice/ByteSlice#equals
        i32.const 1
        i32.ne
        if
         i32.const 0
         i32.const 1568
         i32.const 93
         i32.const 1
         call $~lib/builtins/abort
         unreachable
        end
        i32.const 8960
        i32.const 255
        i32.store8
        i32.const 8960
        i32.const 4
        call $~lib/byteslice/ByteSlice#constructor
        global.set $std/byteslice/d
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/a
        local.tee $0
        i32.store offset=4
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/d
        local.tee $2
        i32.store offset=92
        local.get $0
        local.get $2
        call $~lib/byteslice/ByteSlice#equals
        if
         i32.const 0
         i32.const 1568
         i32.const 98
         i32.const 1
         call $~lib/builtins/abort
         unreachable
        end
        i32.const 8192
        i32.const 8
        call $~lib/byteslice/ByteSlice#constructor
        global.set $std/byteslice/src
        i32.const 9216
        i32.const 16
        call $~lib/byteslice/ByteSlice#constructor
        global.set $std/byteslice/dst
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/dst
        local.tee $0
        i32.store offset=4
        local.get $0
        i32.const 0
        i32.const 16
        call $~lib/byteslice/ByteSlice#fill
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/src
        local.tee $2
        i32.store offset=4
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/dst
        local.tee $3
        i32.store offset=92
        global.get $~lib/memory/__stack_pointer
        i32.const 8
        i32.sub
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        i32.const 1640
        i32.lt_s
        br_if $folding-inner0
        global.get $~lib/memory/__stack_pointer
        i64.const 0
        i64.store
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i32.store
        local.get $2
        i32.load offset=4
        local.set $0
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $3
        i32.store offset=4
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.sub
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        i32.const 1640
        i32.lt_s
        br_if $folding-inner0
        global.get $~lib/memory/__stack_pointer
        i32.const 0
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i32.store
        local.get $0
        i32.const 31
        i32.shr_u
        local.get $2
        i32.load offset=4
        local.get $0
        i32.lt_s
        i32.or
        global.get $~lib/memory/__stack_pointer
        local.get $3
        i32.store
        local.get $3
        i32.load offset=4
        local.get $0
        i32.lt_s
        i32.or
        if
         i32.const 1360
         i32.const 1104
         i32.const 143
         i32.const 7
         call $~lib/builtins/abort
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        local.get $3
        i32.store
        local.get $3
        i32.load
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i32.store
        local.get $2
        i32.load
        local.get $0
        memory.copy
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        i32.const 8
        i32.add
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/dst
        local.tee $0
        i32.store offset=96
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load offset=4
        i32.eqz
        br_if $folding-inner1
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load
        i32.load8_u
        i32.const 1
        i32.ne
        if
         i32.const 0
         i32.const 1568
         i32.const 106
         i32.const 1
         call $~lib/builtins/abort
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/dst
        local.tee $0
        i32.store offset=100
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load offset=4
        i32.const 7
        i32.le_u
        br_if $folding-inner1
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        i32.load
        i32.load8_u offset=7
        i32.const 8
        i32.ne
        if
         i32.const 0
         i32.const 1568
         i32.const 107
         i32.const 1
         call $~lib/builtins/abort
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        global.get $std/byteslice/s
        local.tee $0
        i32.store offset=4
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.sub
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        i32.const 1640
        i32.lt_s
        br_if $folding-inner0
        global.get $~lib/memory/__stack_pointer
        i32.const 0
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store
        local.get $0
        i32.load
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
        global.set $std/byteslice/p
        global.get $std/byteslice/p
        i32.const 8192
        i32.ne
        if
         i32.const 0
         i32.const 1568
         i32.const 111
         i32.const 1
         call $~lib/builtins/abort
         unreachable
        end
        global.get $std/byteslice/p
        i32.load8_u
        i32.const 1
        i32.ne
        if
         i32.const 0
         i32.const 1568
         i32.const 112
         i32.const 1
         call $~lib/builtins/abort
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 104
        i32.add
        global.set $~lib/memory/__stack_pointer
        return
       end
       i32.const 34432
       i32.const 34480
       i32.const 1
       i32.const 1
       call $~lib/builtins/abort
       unreachable
      end
      i32.const 1360
      i32.const 1104
      i32.const 23
      i32.const 42
      call $~lib/builtins/abort
      unreachable
     end
     i32.const 1360
     i32.const 1104
     i32.const 28
     i32.const 58
     call $~lib/builtins/abort
     unreachable
    end
    i32.const 1360
    i32.const 1104
    i32.const 34
    i32.const 58
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1360
   i32.const 1104
   i32.const 40
   i32.const 58
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1360
  i32.const 1104
  i32.const 83
  i32.const 58
  call $~lib/builtins/abort
  unreachable
 )
)
