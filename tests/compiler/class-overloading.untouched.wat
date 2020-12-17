(module
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 12) "\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 32) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 60) "4\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00c\00m\00s\00.\00t\00s\00\00\00")
 (data (i32.const 112) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 140) "4\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00\00\00")
 (data (i32.const 204) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00")
 (data (i32.const 268) "\18\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00A\00\00\00")
 (data (i32.const 300) "\18\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00B\00\00\00")
 (data (i32.const 332) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00(\00\00\00c\00l\00a\00s\00s\00-\00o\00v\00e\00r\00l\00o\00a\00d\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 396) "\18\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00C\00\00\00")
 (data (i32.const 428) "\18\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00F\00\00\00")
 (data (i32.const 460) "\18\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00I\00B\00")
 (data (i32.const 492) "\18\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00I\00C\00")
 (data (i32.const 524) "4\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00n\00o\00t\00 \00i\00m\00p\00l\00e\00m\00e\00n\00t\00e\00d\00\00\00")
 (table $0 1 funcref)
 (global $class-overloading/which (mut i32) (i32.const 32))
 (global $~lib/rt/tcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/fromSpace (mut i32) (i32.const 32))
 (global $~lib/rt/tcms/toSpace (mut i32) (i32.const 112))
 (global $~lib/rt/tcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/ASC_LOW_MEMORY_LIMIT i32 (i32.const 0))
 (global $~lib/rt/tcms/white (mut i32) (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/rt/tcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/totalMem (mut i32) (i32.const 0))
 (global $class-overloading/a (mut i32) (i32.const 0))
 (global $class-overloading/c (mut i32) (i32.const 0))
 (global $class-overloading/ia (mut i32) (i32.const 0))
 (global $class-overloading/ic (mut i32) (i32.const 0))
 (global $class-overloading/b2 (mut i32) (i32.const 0))
 (global $~started (mut i32) (i32.const 0))
 (global $~lib/memory/__heap_base i32 (i32.const 576))
 (export "_start" (func $~start))
 (export "memory" (memory $0))
 (func $~lib/rt/tcms/Object#set:nextWithColor (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/rt/tcms/Object#set:prev (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/rt/tcms/init
  (local $0 i32)
  (local $1 i32)
  i32.const 4
  i32.const 4
  i32.eq
  drop
  global.get $~lib/rt/tcms/fromSpace
  local.set $0
  local.get $0
  local.get $0
  call $~lib/rt/tcms/Object#set:nextWithColor
  local.get $0
  local.get $0
  local.tee $1
  i32.eqz
  if (result i32)
   i32.const 0
   i32.const 80
   i32.const 153
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  else
   local.get $1
  end
  call $~lib/rt/tcms/Object#set:prev
  global.get $~lib/rt/tcms/toSpace
  local.set $1
  local.get $1
  local.get $1
  call $~lib/rt/tcms/Object#set:nextWithColor
  local.get $1
  local.get $1
  local.tee $0
  i32.eqz
  if (result i32)
   i32.const 0
   i32.const 80
   i32.const 153
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  else
   local.get $0
  end
  call $~lib/rt/tcms/Object#set:prev
  global.get $~lib/rt/tcms/toSpace
  global.set $~lib/rt/tcms/iter
  i32.const 1
  global.set $~lib/rt/tcms/state
 )
 (func $~lib/rt/tlsf/Root#set:flMap (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/rt/tlsf/Block#set:prev (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/Block#set:next (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
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
  local.get $1
  i32.load
  local.set $2
  i32.const 1
  drop
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 272
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $3
  i32.const 1
  drop
  local.get $3
  i32.const 12
  i32.ge_u
  if (result i32)
   local.get $3
   i32.const 1073741820
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 274
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $4
   local.get $3
   i32.const 4
   i32.shr_u
   local.set $5
  else
   i32.const 31
   local.get $3
   i32.clz
   i32.sub
   local.set $4
   local.get $3
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $5
   local.get $4
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $4
  end
  i32.const 1
  drop
  local.get $4
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $5
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 287
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=4
  local.set $6
  local.get $1
  i32.load offset=8
  local.set $7
  local.get $6
  if
   local.get $6
   local.get $7
   call $~lib/rt/tlsf/Block#set:next
  end
  local.get $7
  if
   local.get $7
   local.get $6
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $1
  local.get $0
  local.set $10
  local.get $4
  local.set $9
  local.get $5
  local.set $8
  local.get $10
  local.get $9
  i32.const 4
  i32.shl
  local.get $8
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  i32.eq
  if
   local.get $0
   local.set $11
   local.get $4
   local.set $10
   local.get $5
   local.set $9
   local.get $7
   local.set $8
   local.get $11
   local.get $10
   i32.const 4
   i32.shl
   local.get $9
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $8
   i32.store offset=96
   local.get $7
   i32.eqz
   if
    local.get $0
    local.set $9
    local.get $4
    local.set $8
    local.get $9
    local.get $8
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.set $9
    local.get $0
    local.set $8
    local.get $4
    local.set $11
    local.get $9
    i32.const 1
    local.get $5
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $9
    local.set $10
    local.get $8
    local.get $11
    i32.const 2
    i32.shl
    i32.add
    local.get $10
    i32.store offset=4
    local.get $9
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $4
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     call $~lib/rt/tlsf/Root#set:flMap
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
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  i32.const 1
  drop
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 200
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.set $2
  i32.const 1
  drop
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 202
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.set $3
  local.get $3
  i32.const 4
  i32.add
  local.get $3
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  local.set $4
  local.get $4
  i32.load
  local.set $5
  local.get $5
  i32.const 1
  i32.and
  if
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 4
   i32.add
   local.get $5
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $3
   local.get $3
   i32.const 1073741820
   i32.lt_u
   if
    local.get $0
    local.get $4
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $2
    i32.const 3
    i32.and
    local.get $3
    i32.or
    local.tee $2
    call $~lib/rt/common/BLOCK#set:mmInfo
    local.get $1
    local.set $6
    local.get $6
    i32.const 4
    i32.add
    local.get $6
    i32.load
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    local.set $4
    local.get $4
    i32.load
    local.set $5
   end
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $1
   local.set $6
   local.get $6
   i32.const 4
   i32.sub
   i32.load
   local.set $6
   local.get $6
   i32.load
   local.set $3
   i32.const 1
   drop
   local.get $3
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 160
    i32.const 223
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 4
   i32.add
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $7
   local.get $7
   i32.const 1073741820
   i32.lt_u
   if
    local.get $0
    local.get $6
    call $~lib/rt/tlsf/removeBlock
    local.get $6
    local.get $3
    i32.const 3
    i32.and
    local.get $7
    i32.or
    local.tee $2
    call $~lib/rt/common/BLOCK#set:mmInfo
    local.get $6
    local.set $1
   end
  end
  local.get $4
  local.get $5
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $8
  i32.const 1
  drop
  local.get $8
  i32.const 12
  i32.ge_u
  if (result i32)
   local.get $8
   i32.const 1073741820
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 238
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  drop
  local.get $1
  i32.const 4
  i32.add
  local.get $8
  i32.add
  local.get $4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 239
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $8
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $9
   local.get $8
   i32.const 4
   i32.shr_u
   local.set $10
  else
   i32.const 31
   local.get $8
   i32.clz
   i32.sub
   local.set $9
   local.get $8
   local.get $9
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $10
   local.get $9
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $9
  end
  i32.const 1
  drop
  local.get $9
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $10
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 255
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $7
  local.get $9
  local.set $3
  local.get $10
  local.set $6
  local.get $7
  local.get $3
  i32.const 4
  i32.shl
  local.get $6
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $11
  local.get $1
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $1
  local.get $11
  call $~lib/rt/tlsf/Block#set:next
  local.get $11
  if
   local.get $11
   local.get $1
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $0
  local.set $12
  local.get $9
  local.set $7
  local.get $10
  local.set $3
  local.get $1
  local.set $6
  local.get $12
  local.get $7
  i32.const 4
  i32.shl
  local.get $3
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $6
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $9
  i32.shl
  i32.or
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $0
  local.set $13
  local.get $9
  local.set $12
  local.get $0
  local.set $3
  local.get $9
  local.set $6
  local.get $3
  local.get $6
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 1
  local.get $10
  i32.shl
  i32.or
  local.set $7
  local.get $13
  local.get $12
  i32.const 2
  i32.shl
  i32.add
  local.get $7
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  i32.const 1
  drop
  local.get $1
  local.get $2
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 380
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $2
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $2
  local.get $0
  local.set $3
  local.get $3
  i32.load offset=1568
  local.set $4
  i32.const 0
  local.set $5
  local.get $4
  if
   i32.const 1
   drop
   local.get $1
   local.get $4
   i32.const 4
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 160
    i32.const 387
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
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
    local.get $4
    i32.load
    local.set $5
   else
    nop
   end
  else
   i32.const 1
   drop
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 160
    i32.const 400
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.sub
  local.set $6
  local.get $6
  i32.const 4
  i32.const 12
  i32.add
  i32.const 4
  i32.add
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $6
  i32.const 2
  i32.const 4
  i32.mul
  i32.sub
  local.set $7
  local.get $1
  local.set $8
  local.get $8
  local.get $7
  i32.const 1
  i32.or
  local.get $5
  i32.const 2
  i32.and
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $8
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $8
  i32.const 0
  call $~lib/rt/tlsf/Block#set:next
  local.get $1
  i32.const 4
  i32.add
  local.get $7
  i32.add
  local.set $4
  local.get $4
  i32.const 0
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  local.set $9
  local.get $4
  local.set $3
  local.get $9
  local.get $3
  i32.store offset=1568
  local.get $0
  local.get $8
  call $~lib/rt/tlsf/insertBlock
  i32.const 1
 )
 (func $~lib/rt/tlsf/initialize
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
  (local $12 i32)
  i32.const 0
  drop
  global.get $~lib/memory/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $0
  memory.size
  local.set $1
  local.get $0
  i32.const 1572
  i32.add
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $2
  local.get $2
  local.get $1
  i32.gt_s
  if (result i32)
   local.get $2
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
  local.get $0
  local.set $3
  local.get $3
  i32.const 0
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $3
  local.set $5
  i32.const 0
  local.set $4
  local.get $5
  local.get $4
  i32.store offset=1568
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   i32.const 23
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $3
    local.set $8
    local.get $5
    local.set $7
    i32.const 0
    local.set $6
    local.get $8
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    local.get $6
    i32.store offset=4
    i32.const 0
    local.set $8
    loop $for-loop|1
     local.get $8
     i32.const 16
     i32.lt_u
     local.set $7
     local.get $7
     if
      local.get $3
      local.set $11
      local.get $5
      local.set $10
      local.get $8
      local.set $9
      i32.const 0
      local.set $6
      local.get $11
      local.get $10
      i32.const 4
      i32.shl
      local.get $9
      i32.add
      i32.const 2
      i32.shl
      i32.add
      local.get $6
      i32.store offset=96
      local.get $8
      i32.const 1
      i32.add
      local.set $8
      br $for-loop|1
     end
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $0
  i32.const 1572
  i32.add
  local.set $12
  i32.const 0
  drop
  local.get $3
  local.get $12
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
  local.get $3
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/computeSize (param $0 i32) (result i32)
  local.get $0
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $0
   i32.const 4
   i32.add
   i32.const 15
   i32.add
   i32.const 15
   i32.const -1
   i32.xor
   i32.and
   i32.const 4
   i32.sub
  end
 )
 (func $~lib/rt/tlsf/prepareSize (param $0 i32) (result i32)
  local.get $0
  i32.const 1073741820
  i32.ge_u
  if
   i32.const 224
   i32.const 160
   i32.const 461
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/tlsf/computeSize
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $2
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $3
  else
   local.get $1
   i32.const 536870910
   i32.lt_u
   if (result i32)
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
   else
    local.get $1
   end
   local.set $4
   i32.const 31
   local.get $4
   i32.clz
   i32.sub
   local.set $2
   local.get $4
   local.get $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $3
   local.get $2
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $2
  end
  i32.const 1
  drop
  local.get $2
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 333
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $5
  local.get $2
  local.set $4
  local.get $5
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 0
  i32.const -1
  i32.xor
  local.get $3
  i32.shl
  i32.and
  local.set $6
  i32.const 0
  local.set $7
  local.get $6
  i32.eqz
  if
   local.get $0
   i32.load
   i32.const 0
   i32.const -1
   i32.xor
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.set $5
   local.get $5
   i32.eqz
   if
    i32.const 0
    local.set $7
   else
    local.get $5
    i32.ctz
    local.set $2
    local.get $0
    local.set $8
    local.get $2
    local.set $4
    local.get $8
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.set $6
    i32.const 1
    drop
    local.get $6
    i32.eqz
    if
     i32.const 0
     i32.const 160
     i32.const 346
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.set $9
    local.get $2
    local.set $8
    local.get $6
    i32.ctz
    local.set $4
    local.get $9
    local.get $8
    i32.const 4
    i32.shl
    local.get $4
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
    local.set $7
   end
  else
   local.get $0
   local.set $9
   local.get $2
   local.set $8
   local.get $6
   i32.ctz
   local.set $4
   local.get $9
   local.get $8
   i32.const 4
   i32.shl
   local.get $4
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
   local.set $7
  end
  local.get $7
 )
 (func $~lib/rt/tlsf/growMemory (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 0
  drop
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
   i32.const 1
   i32.sub
   i32.add
   local.set $1
  end
  memory.size
  local.set $2
  local.get $1
  i32.const 4
  local.get $2
  i32.const 16
  i32.shl
  i32.const 4
  i32.sub
  local.get $0
  local.set $3
  local.get $3
  i32.load offset=1568
  i32.ne
  i32.shl
  i32.add
  local.set $1
  local.get $1
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $4
  local.get $2
  local.tee $3
  local.get $4
  local.tee $5
  local.get $3
  local.get $5
  i32.gt_s
  select
  local.set $6
  local.get $6
  memory.grow
  i32.const 0
  i32.lt_s
  if
   local.get $4
   memory.grow
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  memory.size
  local.set $7
  local.get $0
  local.get $2
  i32.const 16
  i32.shl
  local.get $7
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
 )
 (func $~lib/rt/tlsf/prepareBlock (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.set $3
  i32.const 1
  drop
  local.get $2
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 360
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $2
  i32.sub
  local.set $4
  local.get $4
  i32.const 4
  i32.const 12
  i32.add
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $1
   i32.const 4
   i32.add
   local.get $2
   i32.add
   local.set $5
   local.get $5
   local.get $4
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $0
   local.get $5
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $3
   i32.const 1
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $1
   local.set $5
   local.get $5
   i32.const 4
   i32.add
   local.get $5
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.get $1
   local.set $5
   local.get $5
   i32.const 4
   i32.add
   local.get $5
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   i32.load
   i32.const 2
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.set $2
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/searchBlock
  local.set $3
  local.get $3
  i32.eqz
  if
   local.get $0
   local.get $2
   call $~lib/rt/tlsf/growMemory
   local.get $0
   local.get $2
   call $~lib/rt/tlsf/searchBlock
   local.set $3
   i32.const 1
   drop
   local.get $3
   i32.eqz
   if
    i32.const 0
    i32.const 160
    i32.const 499
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  local.get $3
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $2
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $3
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $3
  local.get $2
  call $~lib/rt/tlsf/prepareBlock
  i32.const 0
  drop
  local.get $3
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
 (func $~lib/rt/tcms/Object#set:next (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  call $~lib/rt/tcms/Object#set:nextWithColor
 )
 (func $~lib/rt/tcms/ObjectList#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  global.get $~lib/rt/tcms/toSpace
  i32.ne
  if (result i32)
   local.get $1
   global.get $~lib/rt/tcms/fromSpace
   i32.ne
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 142
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=8
  local.set $2
  local.get $1
  local.get $0
  local.tee $3
  i32.eqz
  if (result i32)
   i32.const 0
   i32.const 80
   i32.const 144
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  else
   local.get $3
  end
  call $~lib/rt/tcms/Object#set:next
  local.get $1
  local.get $2
  local.tee $3
  i32.eqz
  if (result i32)
   i32.const 0
   i32.const 80
   i32.const 145
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  else
   local.get $3
  end
  call $~lib/rt/tcms/Object#set:prev
  local.get $2
  local.get $1
  local.tee $3
  i32.eqz
  if (result i32)
   i32.const 0
   i32.const 80
   i32.const 146
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  else
   local.get $3
  end
  call $~lib/rt/tcms/Object#set:next
  local.get $0
  local.get $1
  local.tee $3
  i32.eqz
  if (result i32)
   i32.const 0
   i32.const 80
   i32.const 147
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  else
   local.get $3
  end
  call $~lib/rt/tcms/Object#set:prev
 )
 (func $~lib/rt/tcms/Object#set:color (param $0 i32) (param $1 i32)
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $1
  i32.or
  call $~lib/rt/tcms/Object#set:nextWithColor
 )
 (func $~lib/rt/tcms/Object#set:rtId (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/rt/tcms/Object#set:rtSize (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   i32.const 0
   i32.const 1
   i32.gt_s
   drop
   local.get $3
   i32.eqz
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.set $6
   local.get $5
   local.get $4
   i32.store8
   local.get $6
   local.get $4
   i32.store8 offset=3
   local.get $3
   i32.const 2
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $4
   i32.store8 offset=1
   local.get $5
   local.get $4
   i32.store8 offset=2
   local.get $6
   local.get $4
   i32.store8 offset=2
   local.get $6
   local.get $4
   i32.store8 offset=1
   local.get $3
   i32.const 6
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $4
   i32.store8 offset=3
   local.get $6
   local.get $4
   i32.store8
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   i32.const 0
   local.get $5
   i32.sub
   i32.const 3
   i32.and
   local.set $7
   local.get $5
   local.get $7
   i32.add
   local.set $5
   local.get $3
   local.get $7
   i32.sub
   local.set $3
   local.get $3
   i32.const -4
   i32.and
   local.set $3
   i32.const -1
   i32.const 255
   i32.div_u
   local.get $4
   i32.const 255
   i32.and
   i32.mul
   local.set $8
   local.get $5
   local.get $3
   i32.add
   i32.const 28
   i32.sub
   local.set $6
   local.get $5
   local.get $8
   i32.store
   local.get $6
   local.get $8
   i32.store offset=24
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $8
   i32.store offset=4
   local.get $5
   local.get $8
   i32.store offset=8
   local.get $6
   local.get $8
   i32.store offset=16
   local.get $6
   local.get $8
   i32.store offset=20
   local.get $3
   i32.const 24
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $8
   i32.store offset=12
   local.get $5
   local.get $8
   i32.store offset=16
   local.get $5
   local.get $8
   i32.store offset=20
   local.get $5
   local.get $8
   i32.store offset=24
   local.get $6
   local.get $8
   i32.store
   local.get $6
   local.get $8
   i32.store offset=4
   local.get $6
   local.get $8
   i32.store offset=8
   local.get $6
   local.get $8
   i32.store offset=12
   i32.const 24
   local.get $5
   i32.const 4
   i32.and
   i32.add
   local.set $7
   local.get $5
   local.get $7
   i32.add
   local.set $5
   local.get $3
   local.get $7
   i32.sub
   local.set $3
   local.get $8
   i64.extend_i32_u
   local.get $8
   i64.extend_i32_u
   i64.const 32
   i64.shl
   i64.or
   local.set $9
   loop $while-continue|0
    local.get $3
    i32.const 32
    i32.ge_u
    local.set $10
    local.get $10
    if
     local.get $5
     local.get $9
     i64.store
     local.get $5
     local.get $9
     i64.store offset=8
     local.get $5
     local.get $9
     i64.store offset=16
     local.get $5
     local.get $9
     i64.store offset=24
     local.get $3
     i32.const 32
     i32.sub
     local.set $3
     local.get $5
     i32.const 32
     i32.add
     local.set $5
     br $while-continue|0
    end
   end
  end
 )
 (func $~lib/rt/tcms/Object#get:size (param $0 i32) (result i32)
  i32.const 4
  local.get $0
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
 )
 (func $~lib/rt/tcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/rt/tcms/state
  i32.const 0
  i32.eq
  if
   call $~lib/rt/tcms/init
  end
  i32.const 16
  local.get $0
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
  call $~lib/rt/tcms/Object#set:rtId
  local.get $2
  local.get $0
  call $~lib/rt/tcms/Object#set:rtSize
  local.get $2
  local.set $3
  local.get $3
  i32.const 20
  i32.add
  local.set $4
  local.get $4
  i32.const 0
  local.get $0
  call $~lib/memory/memory.fill
  global.get $~lib/rt/tcms/total
  i32.const 1
  i32.add
  global.set $~lib/rt/tcms/total
  global.get $~lib/rt/tcms/totalMem
  local.get $2
  call $~lib/rt/tcms/Object#get:size
  i32.add
  global.set $~lib/rt/tcms/totalMem
  local.get $4
 )
 (func $class-overloading/A#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 3
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
 )
 (func $class-overloading/B#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 4
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  call $class-overloading/A#constructor
  local.set $0
  local.get $0
 )
 (func $class-overloading/A#a<i32> (param $0 i32) (param $1 i32)
  i32.const 288
  global.set $class-overloading/which
 )
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/string/compareImpl (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $5
  local.get $2
  local.get $3
  i32.const 1
  i32.shl
  i32.add
  local.set $6
  i32.const 0
  i32.const 2
  i32.lt_s
  drop
  local.get $4
  i32.const 4
  i32.ge_u
  if (result i32)
   local.get $5
   i32.const 7
   i32.and
   local.get $6
   i32.const 7
   i32.and
   i32.or
   i32.eqz
  else
   i32.const 0
  end
  if
   block $do-break|0
    loop $do-continue|0
     local.get $5
     i64.load
     local.get $6
     i64.load
     i64.ne
     if
      br $do-break|0
     end
     local.get $5
     i32.const 8
     i32.add
     local.set $5
     local.get $6
     i32.const 8
     i32.add
     local.set $6
     local.get $4
     i32.const 4
     i32.sub
     local.set $4
     local.get $4
     i32.const 4
     i32.ge_u
     local.set $7
     local.get $7
     br_if $do-continue|0
    end
   end
  end
  loop $while-continue|1
   local.get $4
   local.tee $7
   i32.const 1
   i32.sub
   local.set $4
   local.get $7
   local.set $7
   local.get $7
   if
    local.get $5
    i32.load16_u
    local.set $8
    local.get $6
    i32.load16_u
    local.set $9
    local.get $8
    local.get $9
    i32.ne
    if
     local.get $8
     local.get $9
     i32.sub
     return
    end
    local.get $5
    i32.const 2
    i32.add
    local.set $5
    local.get $6
    i32.const 2
    i32.add
    local.set $6
    br $while-continue|1
   end
  end
  i32.const 0
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  local.get $0
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $2
  local.get $2
  local.get $1
  call $~lib/string/String#get:length
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  i32.const 0
  local.get $2
  call $~lib/util/string/compareImpl
  i32.eqz
 )
 (func $class-overloading/A#b (param $0 i32) (param $1 i32)
  i32.const 288
  global.set $class-overloading/which
 )
 (func $class-overloading/A#get:c (param $0 i32) (result i32)
  i32.const 288
  global.set $class-overloading/which
  i32.const 0
 )
 (func $class-overloading/A#set:c (param $0 i32) (param $1 i32)
  i32.const 288
  global.set $class-overloading/which
 )
 (func $class-overloading/C#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 5
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  call $class-overloading/B#constructor
  local.set $0
  local.get $0
 )
 (func $class-overloading/B#a<i32> (param $0 i32) (param $1 i32)
  i32.const 320
  global.set $class-overloading/which
 )
 (func $class-overloading/C#a<i32> (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $class-overloading/B#a<i32>
  global.get $class-overloading/which
  i32.const 320
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 352
   i32.const 52
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 416
  global.set $class-overloading/which
 )
 (func $class-overloading/C#b (param $0 i32) (param $1 i32)
  i32.const 416
  global.set $class-overloading/which
 )
 (func $class-overloading/C#get:c (param $0 i32) (result i32)
  i32.const 416
  global.set $class-overloading/which
  i32.const 0
 )
 (func $class-overloading/C#set:c (param $0 i32) (param $1 i32)
  i32.const 416
  global.set $class-overloading/which
 )
 (func $class-overloading/D#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 6
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  call $class-overloading/B#constructor
  local.set $0
  local.get $0
 )
 (func $class-overloading/E#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 7
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  call $class-overloading/D#constructor
  local.set $0
  local.get $0
 )
 (func $class-overloading/F#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 8
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  call $class-overloading/E#constructor
  local.set $0
  local.get $0
 )
 (func $class-overloading/CA#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 10
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
 )
 (func $class-overloading/IA#foo (param $0 i32)
  unreachable
 )
 (func $class-overloading/CC#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 12
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
 )
 (func $class-overloading/A2#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 13
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
 )
 (func $class-overloading/B2#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 14
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  call $class-overloading/A2#constructor
  local.set $0
  local.get $0
 )
 (func $class-overloading/A2#foo (param $0 i32) (result i32)
  i32.const 544
  i32.const 352
  i32.const 198
  i32.const 5
  call $~lib/builtins/abort
  unreachable
 )
 (func $start:class-overloading
  i32.const 0
  call $class-overloading/B#constructor
  global.set $class-overloading/a
  global.get $class-overloading/a
  i32.const 1
  call $class-overloading/A#a<i32>@virtual
  global.get $class-overloading/which
  i32.const 320
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 352
   i32.const 38
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  global.set $class-overloading/which
  global.get $class-overloading/a
  i32.const 1
  call $class-overloading/A#b@virtual
  global.get $class-overloading/which
  i32.const 320
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 352
   i32.const 41
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  global.set $class-overloading/which
  global.get $class-overloading/a
  call $class-overloading/A#get:c@virtual
  drop
  global.get $class-overloading/which
  i32.const 320
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 352
   i32.const 44
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  global.set $class-overloading/which
  global.get $class-overloading/a
  i32.const 1
  call $class-overloading/A#set:c@virtual
  global.get $class-overloading/which
  i32.const 320
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 352
   i32.const 47
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $class-overloading/C#constructor
  global.set $class-overloading/c
  i32.const 32
  global.set $class-overloading/which
  global.get $class-overloading/c
  i32.const 1
  call $class-overloading/C#a<i32>
  global.get $class-overloading/which
  i32.const 416
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 352
   i32.const 71
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  global.set $class-overloading/which
  global.get $class-overloading/c
  i32.const 1
  call $class-overloading/C#b
  global.get $class-overloading/which
  i32.const 416
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 352
   i32.const 74
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  global.set $class-overloading/which
  global.get $class-overloading/c
  call $class-overloading/C#get:c
  drop
  global.get $class-overloading/which
  i32.const 416
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 352
   i32.const 77
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $class-overloading/c
  i32.const 1
  call $class-overloading/C#set:c
  global.get $class-overloading/which
  i32.const 416
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 352
   i32.const 79
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $class-overloading/D#constructor
  global.set $class-overloading/a
  i32.const 32
  global.set $class-overloading/which
  global.get $class-overloading/a
  i32.const 1
  call $class-overloading/A#a<i32>@virtual
  global.get $class-overloading/which
  i32.const 320
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 352
   i32.const 89
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  global.set $class-overloading/which
  global.get $class-overloading/a
  i32.const 1
  call $class-overloading/A#b@virtual
  global.get $class-overloading/which
  i32.const 320
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 352
   i32.const 92
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  global.set $class-overloading/which
  global.get $class-overloading/a
  call $class-overloading/A#get:c@virtual
  drop
  global.get $class-overloading/which
  i32.const 320
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 352
   i32.const 95
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $class-overloading/a
  i32.const 1
  call $class-overloading/A#set:c@virtual
  global.get $class-overloading/which
  i32.const 320
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 352
   i32.const 97
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $class-overloading/E#constructor
  global.set $class-overloading/a
  i32.const 32
  global.set $class-overloading/which
  global.get $class-overloading/a
  i32.const 1
  call $class-overloading/A#a<i32>@virtual
  global.get $class-overloading/which
  i32.const 320
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 352
   i32.const 107
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  global.set $class-overloading/which
  global.get $class-overloading/a
  i32.const 1
  call $class-overloading/A#b@virtual
  global.get $class-overloading/which
  i32.const 320
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 352
   i32.const 110
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  global.set $class-overloading/which
  global.get $class-overloading/a
  call $class-overloading/A#get:c@virtual
  drop
  global.get $class-overloading/which
  i32.const 320
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 352
   i32.const 113
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $class-overloading/a
  i32.const 1
  call $class-overloading/A#set:c@virtual
  global.get $class-overloading/which
  i32.const 320
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 352
   i32.const 115
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $class-overloading/F#constructor
  global.set $class-overloading/a
  i32.const 32
  global.set $class-overloading/which
  global.get $class-overloading/a
  i32.const 1
  call $class-overloading/A#a<i32>@virtual
  global.get $class-overloading/which
  i32.const 448
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 352
   i32.const 137
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  global.set $class-overloading/which
  global.get $class-overloading/a
  i32.const 1
  call $class-overloading/A#b@virtual
  global.get $class-overloading/which
  i32.const 448
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 352
   i32.const 140
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  global.set $class-overloading/which
  global.get $class-overloading/a
  call $class-overloading/A#get:c@virtual
  drop
  global.get $class-overloading/which
  i32.const 448
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 352
   i32.const 143
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  global.set $class-overloading/which
  global.get $class-overloading/a
  i32.const 1
  call $class-overloading/A#set:c@virtual
  global.get $class-overloading/which
  i32.const 448
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 352
   i32.const 146
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $class-overloading/CA#constructor
  global.set $class-overloading/ia
  i32.const 32
  global.set $class-overloading/which
  global.get $class-overloading/ia
  call $class-overloading/IA#foo@virtual
  global.get $class-overloading/which
  i32.const 480
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 352
   i32.const 162
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $class-overloading/CC#constructor
  global.set $class-overloading/ic
  i32.const 32
  global.set $class-overloading/which
  global.get $class-overloading/ic
  call $class-overloading/IA#foo@virtual
  global.get $class-overloading/which
  i32.const 512
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 352
   i32.const 177
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $class-overloading/B2#constructor
  global.set $class-overloading/b2
  global.get $class-overloading/b2
  call $class-overloading/A2#foo@virtual
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 352
   i32.const 209
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
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
 (func $class-overloading/F#a<i32> (param $0 i32) (param $1 i32)
  i32.const 448
  global.set $class-overloading/which
 )
 (func $class-overloading/A#a<i32>@virtual (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $default
   block $case2
    block $case1
     block $case0
      local.get $0
      i32.const 8
      i32.sub
      i32.load
      local.set $2
      local.get $2
      i32.const 4
      i32.eq
      br_if $case0
      local.get $2
      i32.const 6
      i32.eq
      br_if $case0
      local.get $2
      i32.const 7
      i32.eq
      br_if $case0
      local.get $2
      i32.const 5
      i32.eq
      br_if $case1
      local.get $2
      i32.const 8
      i32.eq
      br_if $case2
      br $default
     end
     local.get $0
     local.get $1
     call $class-overloading/B#a<i32>
     return
    end
    local.get $0
    local.get $1
    call $class-overloading/C#a<i32>
    return
   end
   local.get $0
   local.get $1
   call $class-overloading/F#a<i32>
   return
  end
  local.get $0
  local.get $1
  call $class-overloading/A#a<i32>
 )
 (func $class-overloading/B#b (param $0 i32) (param $1 i32)
  i32.const 320
  global.set $class-overloading/which
 )
 (func $class-overloading/F#b (param $0 i32) (param $1 i32)
  i32.const 448
  global.set $class-overloading/which
 )
 (func $class-overloading/A#b@virtual (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $default
   block $case2
    block $case1
     block $case0
      local.get $0
      i32.const 8
      i32.sub
      i32.load
      local.set $2
      local.get $2
      i32.const 4
      i32.eq
      br_if $case0
      local.get $2
      i32.const 6
      i32.eq
      br_if $case0
      local.get $2
      i32.const 7
      i32.eq
      br_if $case0
      local.get $2
      i32.const 5
      i32.eq
      br_if $case1
      local.get $2
      i32.const 8
      i32.eq
      br_if $case2
      br $default
     end
     local.get $0
     local.get $1
     call $class-overloading/B#b
     return
    end
    local.get $0
    local.get $1
    call $class-overloading/C#b
    return
   end
   local.get $0
   local.get $1
   call $class-overloading/F#b
   return
  end
  local.get $0
  local.get $1
  call $class-overloading/A#b
 )
 (func $class-overloading/B#get:c (param $0 i32) (result i32)
  i32.const 320
  global.set $class-overloading/which
  i32.const 0
 )
 (func $class-overloading/F#get:c (param $0 i32) (result i32)
  i32.const 448
  global.set $class-overloading/which
  i32.const 0
 )
 (func $class-overloading/A#get:c@virtual (param $0 i32) (result i32)
  (local $1 i32)
  block $default
   block $case2
    block $case1
     block $case0
      local.get $0
      i32.const 8
      i32.sub
      i32.load
      local.set $1
      local.get $1
      i32.const 4
      i32.eq
      br_if $case0
      local.get $1
      i32.const 6
      i32.eq
      br_if $case0
      local.get $1
      i32.const 7
      i32.eq
      br_if $case0
      local.get $1
      i32.const 5
      i32.eq
      br_if $case1
      local.get $1
      i32.const 8
      i32.eq
      br_if $case2
      br $default
     end
     local.get $0
     call $class-overloading/B#get:c
     return
    end
    local.get $0
    call $class-overloading/C#get:c
    return
   end
   local.get $0
   call $class-overloading/F#get:c
   return
  end
  local.get $0
  call $class-overloading/A#get:c
 )
 (func $class-overloading/B#set:c (param $0 i32) (param $1 i32)
  i32.const 320
  global.set $class-overloading/which
 )
 (func $class-overloading/F#set:c (param $0 i32) (param $1 i32)
  i32.const 448
  global.set $class-overloading/which
 )
 (func $class-overloading/A#set:c@virtual (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $default
   block $case2
    block $case1
     block $case0
      local.get $0
      i32.const 8
      i32.sub
      i32.load
      local.set $2
      local.get $2
      i32.const 4
      i32.eq
      br_if $case0
      local.get $2
      i32.const 6
      i32.eq
      br_if $case0
      local.get $2
      i32.const 7
      i32.eq
      br_if $case0
      local.get $2
      i32.const 5
      i32.eq
      br_if $case1
      local.get $2
      i32.const 8
      i32.eq
      br_if $case2
      br $default
     end
     local.get $0
     local.get $1
     call $class-overloading/B#set:c
     return
    end
    local.get $0
    local.get $1
    call $class-overloading/C#set:c
    return
   end
   local.get $0
   local.get $1
   call $class-overloading/F#set:c
   return
  end
  local.get $0
  local.get $1
  call $class-overloading/A#set:c
 )
 (func $class-overloading/CA#foo (param $0 i32)
  i32.const 480
  global.set $class-overloading/which
 )
 (func $class-overloading/CC#foo (param $0 i32)
  i32.const 512
  global.set $class-overloading/which
 )
 (func $class-overloading/IA#foo@virtual (param $0 i32)
  (local $1 i32)
  block $default
   block $case1
    block $case0
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     local.set $1
     local.get $1
     i32.const 10
     i32.eq
     br_if $case0
     local.get $1
     i32.const 12
     i32.eq
     br_if $case1
     br $default
    end
    local.get $0
    call $class-overloading/CA#foo
    return
   end
   local.get $0
   call $class-overloading/CC#foo
   return
  end
  unreachable
 )
 (func $class-overloading/A1#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 16
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
 )
 (func $class-overloading/B1#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 15
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  call $class-overloading/A1#constructor
  local.set $0
  local.get $0
 )
 (func $class-overloading/A1#baz (param $0 i32) (result i32)
  i32.const 544
  i32.const 352
  i32.const 186
  i32.const 5
  call $~lib/builtins/abort
  unreachable
 )
 (func $class-overloading/A1#bar (param $0 i32) (result i32)
  local.get $0
  call $class-overloading/A1#baz@virtual
 )
 (func $class-overloading/B2#foo (param $0 i32) (result i32)
  i32.const 0
  call $class-overloading/B1#constructor
  call $class-overloading/A1#bar
 )
 (func $class-overloading/A2#foo@virtual (param $0 i32) (result i32)
  (local $1 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    local.set $1
    local.get $1
    i32.const 14
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   call $class-overloading/B2#foo
   return
  end
  local.get $0
  call $class-overloading/A2#foo
 )
 (func $class-overloading/B1#baz (param $0 i32) (result i32)
  i32.const 3
 )
 (func $class-overloading/A1#baz@virtual (param $0 i32) (result i32)
  (local $1 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    local.set $1
    local.get $1
    i32.const 15
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   call $class-overloading/B1#baz
   return
  end
  local.get $0
  call $class-overloading/A1#baz
 )
)
