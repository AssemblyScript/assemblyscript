(module
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_none (func))
 (type $i32_i64_=>_none (func (param i32 i64)))
 (type $i32_i64_=>_i32 (func (param i32 i64) (result i32)))
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (type $i32_i32_i64_=>_none (func (param i32 i32 i64)))
 (type $i32_i32_=>_i64 (func (param i32 i32) (result i64)))
 (type $i32_f32_=>_none (func (param i32 f32)))
 (type $i32_f64_=>_none (func (param i32 f64)))
 (type $i32_f32_=>_i32 (func (param i32 f32) (result i32)))
 (type $i32_f32_i32_=>_i32 (func (param i32 f32 i32) (result i32)))
 (type $i32_f64_=>_i32 (func (param i32 f64) (result i32)))
 (type $i32_f64_i32_=>_i32 (func (param i32 f64 i32) (result i32)))
 (type $i32_i32_f32_=>_none (func (param i32 i32 f32)))
 (type $i32_i32_f64_=>_none (func (param i32 i32 f64)))
 (type $i32_i64_i64_=>_i32 (func (param i32 i64 i64) (result i32)))
 (type $i32_i32_=>_f32 (func (param i32 i32) (result f32)))
 (type $i32_i32_=>_f64 (func (param i32 i32) (result f64)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_f64_f64_f64_f64_f64_=>_none (func (param i32 i32 f64 f64 f64 f64 f64)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_f32_f32_=>_i32 (func (param i32 f32 f32) (result i32)))
 (type $i32_f64_f64_=>_i32 (func (param i32 f64 f64) (result i32)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "mark" (func $~lib/rt/tcms/__visit_externals (param i32)))
 (import "env" "trace" (func $~lib/builtins/trace (param i32 i32 f64 f64 f64 f64 f64)))
 (memory $0 1)
 (data (i32.const 16) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 44) "\1e\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00c\00m\00s\00.\00t\00s\00")
 (data (i32.const 96) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 124) "\1e\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00")
 (data (i32.const 188) "(\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00")
 (data (i32.const 252) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 300) "&\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 364) "\14\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00s\00t\00d\00/\00m\00a\00p\00.\00t\00s\00")
 (data (i32.const 412) "$\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00")
 (data (i32.const 476) "\16\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s\00")
 (data (i32.const 524) "\1a\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 572) "$\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 636) "\18\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\18\00\00\00i\00n\00 \00f\00r\00o\00m\00S\00p\00a\00c\00e\00")
 (data (i32.const 684) "\14\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00i\00n\00 \00t\00o\00S\00p\00a\00c\00e\00")
 (table $0 1 funcref)
 (global $~lib/rt/tcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/fromSpace (mut i32) (i32.const 16))
 (global $~lib/rt/tcms/toSpace (mut i32) (i32.const 96))
 (global $~lib/rt/tcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/ASC_LOW_MEMORY_LIMIT i32 (i32.const 0))
 (global $~lib/rt/tcms/white (mut i32) (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/rt/tcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/totalMem (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/depth (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/threshold (mut i32) (i32.const 100))
 (global $~lib/rt/tcms/debt (mut i32) (i32.const 0))
 (global $~lib/memory/__heap_base i32 (i32.const 724))
 (export "memory" (memory $0))
 (start $~start)
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
   i32.const 64
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
   i32.const 64
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
   i32.const 144
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
   i32.const 144
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
   i32.const 144
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
   i32.const 144
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
   i32.const 144
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
    i32.const 144
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
   i32.const 144
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
   i32.const 144
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
   i32.const 144
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
   i32.const 144
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
    i32.const 144
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
    i32.const 144
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
   i32.const 208
   i32.const 144
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
   i32.const 144
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
     i32.const 144
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
   i32.const 144
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
    i32.const 144
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
   i32.const 144
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
   i32.const 64
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
   i32.const 64
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
   i32.const 64
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
   i32.const 64
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
   i32.const 64
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
 (func $~lib/arraybuffer/ArrayBuffer#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 272
   i32.const 320
   i32.const 49
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__new
  local.set $2
  local.get $2
  i32.const 0
  local.get $1
  call $~lib/memory/memory.fill
  local.get $2
 )
 (func $~lib/rt/tcms/Object#get:color (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
 )
 (func $~lib/rt/tcms/Object#get:next (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
 )
 (func $~lib/rt/tcms/Object#unlink (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/tcms/Object#get:next
  local.set $1
  local.get $0
  i32.load offset=8
  local.set $2
  local.get $1
  i32.const 0
  i32.eq
  if
   local.get $2
   i32.const 0
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 64
    i32.const 120
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $1
  local.get $2
  local.tee $3
  i32.eqz
  if (result i32)
   i32.const 0
   i32.const 64
   i32.const 123
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  else
   local.get $3
  end
  call $~lib/rt/tcms/Object#set:prev
  local.get $2
  local.get $1
  call $~lib/rt/tcms/Object#set:next
 )
 (func $~lib/rt/tcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  local.get $0
  global.get $~lib/rt/tcms/iter
  i32.eq
  if
   local.get $0
   i32.load offset=8
   local.tee $1
   i32.eqz
   if (result i32)
    i32.const 0
    i32.const 64
    i32.const 130
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   else
    local.get $1
   end
   global.set $~lib/rt/tcms/iter
  end
  local.get $0
  call $~lib/rt/tcms/Object#unlink
  global.get $~lib/rt/tcms/toSpace
  local.get $0
  call $~lib/rt/tcms/ObjectList#push
  local.get $0
  i32.const 2
  call $~lib/rt/tcms/Object#set:color
 )
 (func $~lib/rt/tcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.eqz
  if
   return
  end
  global.get $~lib/rt/tcms/state
  i32.const 0
  i32.eq
  if
   call $~lib/rt/tcms/init
  end
  i32.const 1
  drop
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 294
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/tcms/white
  i32.eqz
  local.set $3
  local.get $0
  local.set $4
  local.get $4
  i32.const 20
  i32.sub
  local.set $5
  local.get $5
  call $~lib/rt/tcms/Object#get:color
  local.get $3
  i32.eq
  if
   local.get $1
   local.set $4
   local.get $4
   i32.const 20
   i32.sub
   local.set $4
   local.get $4
   call $~lib/rt/tcms/Object#get:color
   global.get $~lib/rt/tcms/white
   i32.eq
   if
    local.get $2
    if
     local.get $5
     call $~lib/rt/tcms/Object#makeGray
    else
     local.get $4
     call $~lib/rt/tcms/Object#makeGray
    end
   end
  end
 )
 (func $~lib/map/Map<i8,i32>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/map/Map<i8,i32>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/Map<i8,i32>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/map/Map<i8,i32>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/Map<i8,i32>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/map/Map<i8,i32>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
 )
 (func $~lib/map/Map<i8,i32>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 3
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i8,i32>#set:buckets
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<i8,i32>#set:bucketsMask
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i8,i32>#set:entries
  local.get $0
  i32.const 4
  call $~lib/map/Map<i8,i32>#set:entriesCapacity
  local.get $0
  i32.const 0
  call $~lib/map/Map<i8,i32>#set:entriesOffset
  local.get $0
  i32.const 0
  call $~lib/map/Map<i8,i32>#set:entriesCount
  local.get $0
 )
 (func $~lib/util/hash/hash8 (param $0 i32) (result i32)
  i32.const -2128831035
  local.get $0
  i32.xor
  i32.const 16777619
  i32.mul
 )
 (func $~lib/map/Map<i8,i32>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  loop $while-continue|0
   local.get $3
   local.set $4
   local.get $4
   if
    local.get $3
    i32.load offset=8
    local.set $5
    local.get $5
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $3
     i32.load8_s
     local.get $1
     i32.const 24
     i32.shl
     i32.const 24
     i32.shr_s
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $3
     return
    end
    local.get $5
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<i8,i32>#has (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i8>|inlined.0 (result i32)
   local.get $1
   local.set $2
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 1
   i32.const 1
   i32.eq
   drop
   local.get $2
   i32.const 24
   i32.shl
   i32.const 24
   i32.shr_s
   call $~lib/util/hash/hash8
   br $~lib/util/hash/HASH<i8>|inlined.0
  end
  call $~lib/map/Map<i8,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/MapEntry<i8,i32>#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/MapEntry<i8,i32>#set:key (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8
 )
 (func $~lib/map/MapEntry<i8,i32>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/map/Map<i8,i32>#rehash (param $0 i32) (param $1 i32)
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
  (local $14 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $4
  i32.const 0
  local.get $4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  loop $while-continue|0
   local.get $6
   local.get $7
   i32.ne
   local.set $9
   local.get $9
   if
    local.get $6
    local.set $10
    local.get $10
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $11
     local.get $10
     i32.load8_s
     local.set $12
     local.get $11
     local.get $12
     call $~lib/map/MapEntry<i8,i32>#set:key
     local.get $11
     local.get $10
     i32.load offset=4
     call $~lib/map/MapEntry<i8,i32>#set:value
     block $~lib/util/hash/HASH<i8>|inlined.2 (result i32)
      local.get $12
      local.set $13
      i32.const 0
      drop
      i32.const 0
      drop
      i32.const 0
      drop
      i32.const 1
      i32.const 1
      i32.eq
      drop
      local.get $13
      call $~lib/util/hash/hash8
      br $~lib/util/hash/HASH<i8>|inlined.2
     end
     local.get $1
     i32.and
     local.set $13
     local.get $3
     local.get $13
     i32.const 4
     i32.mul
     i32.add
     local.set $14
     local.get $11
     local.get $14
     i32.load
     call $~lib/map/MapEntry<i8,i32>#set:taggedNext
     local.get $14
     local.get $8
     i32.store
     local.get $8
     i32.const 12
     i32.add
     local.set $8
    end
    local.get $6
    i32.const 12
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $0
  local.get $3
  call $~lib/map/Map<i8,i32>#set:buckets
  local.get $0
  local.get $1
  call $~lib/map/Map<i8,i32>#set:bucketsMask
  local.get $0
  local.get $5
  call $~lib/map/Map<i8,i32>#set:entries
  local.get $0
  local.get $4
  call $~lib/map/Map<i8,i32>#set:entriesCapacity
  local.get $0
  local.get $0
  i32.load offset=20
  call $~lib/map/Map<i8,i32>#set:entriesOffset
 )
 (func $~lib/map/Map<i8,i32>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/hash/HASH<i8>|inlined.1 (result i32)
   local.get $1
   local.set $3
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 1
   i32.const 1
   i32.eq
   drop
   local.get $3
   i32.const 24
   i32.shl
   i32.const 24
   i32.shr_s
   call $~lib/util/hash/hash8
   br $~lib/util/hash/HASH<i8>|inlined.1
  end
  local.set $4
  local.get $0
  local.get $1
  local.get $4
  call $~lib/map/Map<i8,i32>#find
  local.set $5
  local.get $5
  if
   local.get $5
   local.get $2
   call $~lib/map/MapEntry<i8,i32>#set:value
   i32.const 0
   drop
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<i8,i32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $3
   local.get $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $6
   i32.const 1
   i32.add
   call $~lib/map/Map<i8,i32>#set:entriesOffset
   local.get $6
   i32.const 12
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   call $~lib/map/MapEntry<i8,i32>#set:key
   i32.const 0
   drop
   local.get $5
   local.get $2
   call $~lib/map/MapEntry<i8,i32>#set:value
   i32.const 0
   drop
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<i8,i32>#set:entriesCount
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $6
   local.get $5
   local.get $6
   i32.load
   call $~lib/map/MapEntry<i8,i32>#set:taggedNext
   local.get $6
   local.get $5
   i32.store
  end
  local.get $0
 )
 (func $~lib/map/Map<i8,i32>#get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i8>|inlined.3 (result i32)
   local.get $1
   local.set $2
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 1
   i32.const 1
   i32.eq
   drop
   local.get $2
   i32.const 24
   i32.shl
   i32.const 24
   i32.shr_s
   call $~lib/util/hash/hash8
   br $~lib/util/hash/HASH<i8>|inlined.3
  end
  call $~lib/map/Map<i8,i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 432
   i32.const 496
   i32.const 105
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=4
 )
 (func $~lib/map/Map<i8,i32>#get:size (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/array/Array<i8>#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/array/Array<i8>#set:dataStart (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/array/Array<i8>#set:byteLength (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/array/Array<i8>#set:length_ (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/array/Array<i8>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 4
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  call $~lib/array/Array<i8>#set:buffer
  local.get $0
  i32.const 0
  call $~lib/array/Array<i8>#set:dataStart
  local.get $0
  i32.const 0
  call $~lib/array/Array<i8>#set:byteLength
  local.get $0
  i32.const 0
  call $~lib/array/Array<i8>#set:length_
  local.get $1
  i32.const 1073741820
  i32.const 0
  i32.shr_u
  i32.gt_u
  if
   i32.const 272
   i32.const 544
   i32.const 58
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.shl
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/rt/tcms/__new
  local.set $3
  local.get $3
  i32.const 0
  local.get $2
  call $~lib/memory/memory.fill
  local.get $0
  local.get $3
  call $~lib/array/Array<i8>#set:buffer
  local.get $0
  local.get $3
  call $~lib/array/Array<i8>#set:dataStart
  local.get $0
  local.get $2
  call $~lib/array/Array<i8>#set:byteLength
  local.get $0
  local.get $1
  call $~lib/array/Array<i8>#set:length_
  local.get $0
 )
 (func $~lib/rt/tlsf/checkUsedBlock (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.const 0
  i32.ne
  if (result i32)
   local.get $0
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
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
   i32.const 144
   i32.const 564
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
 )
 (func $~lib/util/memory/memcpy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  loop $while-continue|0
   local.get $2
   if (result i32)
    local.get $1
    i32.const 3
    i32.and
   else
    i32.const 0
   end
   local.set $5
   local.get $5
   if
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.const 3
  i32.and
  i32.const 0
  i32.eq
  if
   loop $while-continue|1
    local.get $2
    i32.const 16
    i32.ge_u
    local.set $5
    local.get $5
    if
     local.get $0
     local.get $1
     i32.load
     i32.store
     local.get $0
     i32.const 4
     i32.add
     local.get $1
     i32.const 4
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 8
     i32.add
     local.get $1
     i32.const 8
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 12
     i32.add
     local.get $1
     i32.const 12
     i32.add
     i32.load
     i32.store
     local.get $1
     i32.const 16
     i32.add
     local.set $1
     local.get $0
     i32.const 16
     i32.add
     local.set $0
     local.get $2
     i32.const 16
     i32.sub
     local.set $2
     br $while-continue|1
    end
   end
   local.get $2
   i32.const 8
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.get $1
    i32.const 4
    i32.add
    i32.load
    i32.store
    local.get $0
    i32.const 8
    i32.add
    local.set $0
    local.get $1
    i32.const 8
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    local.get $1
    i32.const 4
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 1
   i32.and
   if
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
   end
   return
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       local.get $0
       i32.const 3
       i32.and
       local.set $5
       local.get $5
       i32.const 1
       i32.eq
       br_if $case0|2
       local.get $5
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $5
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      local.get $1
      i32.load
      local.set $3
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      loop $while-continue|3
       local.get $2
       i32.const 17
       i32.ge_u
       local.set $5
       local.get $5
       if
        local.get $1
        i32.const 1
        i32.add
        i32.load
        local.set $4
        local.get $0
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $4
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 5
        i32.add
        i32.load
        local.set $3
        local.get $0
        i32.const 4
        i32.add
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 9
        i32.add
        i32.load
        local.set $4
        local.get $0
        i32.const 8
        i32.add
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $4
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 13
        i32.add
        i32.load
        local.set $3
        local.get $0
        i32.const 12
        i32.add
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 16
        i32.add
        local.set $1
        local.get $0
        i32.const 16
        i32.add
        local.set $0
        local.get $2
        i32.const 16
        i32.sub
        local.set $2
        br $while-continue|3
       end
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $3
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.load8_u
     i32.store8
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.load8_u
     i32.store8
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     loop $while-continue|4
      local.get $2
      i32.const 18
      i32.ge_u
      local.set $5
      local.get $5
      if
       local.get $1
       i32.const 2
       i32.add
       i32.load
       local.set $4
       local.get $0
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $4
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 6
       i32.add
       i32.load
       local.set $3
       local.get $0
       i32.const 4
       i32.add
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 10
       i32.add
       i32.load
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $4
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 14
       i32.add
       i32.load
       local.set $3
       local.get $0
       i32.const 12
       i32.add
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 16
       i32.add
       local.set $1
       local.get $0
       i32.const 16
       i32.add
       local.set $0
       local.get $2
       i32.const 16
       i32.sub
       local.set $2
       br $while-continue|4
      end
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $3
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    loop $while-continue|5
     local.get $2
     i32.const 19
     i32.ge_u
     local.set $5
     local.get $5
     if
      local.get $1
      i32.const 3
      i32.add
      i32.load
      local.set $4
      local.get $0
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $4
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 7
      i32.add
      i32.load
      local.set $3
      local.get $0
      i32.const 4
      i32.add
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 11
      i32.add
      i32.load
      local.set $4
      local.get $0
      i32.const 8
      i32.add
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $4
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 15
      i32.add
      i32.load
      local.set $3
      local.get $0
      i32.const 12
      i32.add
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      local.get $0
      i32.const 16
      i32.add
      local.set $0
      local.get $2
      i32.const 16
      i32.sub
      local.set $2
      br $while-continue|5
     end
    end
    br $break|2
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $5
   local.get $4
   i32.eq
   if
    br $~lib/util/memory/memmove|inlined.0
   end
   i32.const 0
   i32.const 1
   i32.lt_s
   drop
   local.get $4
   local.get $5
   i32.sub
   local.get $3
   i32.sub
   i32.const 0
   local.get $3
   i32.const 1
   i32.shl
   i32.sub
   i32.le_u
   if
    local.get $5
    local.get $4
    local.get $3
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $5
   local.get $4
   i32.lt_u
   if
    i32.const 0
    i32.const 2
    i32.lt_s
    drop
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $5
      i32.const 7
      i32.and
      local.set $6
      local.get $6
      if
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       local.get $5
       local.tee $7
       i32.const 1
       i32.add
       local.set $5
       local.get $7
       local.get $4
       local.tee $7
       i32.const 1
       i32.add
       local.set $4
       local.get $7
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $3
      i32.const 8
      i32.ge_u
      local.set $6
      local.get $6
      if
       local.get $5
       local.get $4
       i64.load
       i64.store
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       i32.const 8
       i32.add
       local.set $5
       local.get $4
       i32.const 8
       i32.add
       local.set $4
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $3
     local.set $6
     local.get $6
     if
      local.get $5
      local.tee $7
      i32.const 1
      i32.add
      local.set $5
      local.get $7
      local.get $4
      local.tee $7
      i32.const 1
      i32.add
      local.set $4
      local.get $7
      i32.load8_u
      i32.store8
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
      br $while-continue|2
     end
    end
   else
    i32.const 0
    i32.const 2
    i32.lt_s
    drop
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|3
      local.get $5
      local.get $3
      i32.add
      i32.const 7
      i32.and
      local.set $6
      local.get $6
      if
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $5
       local.get $3
       i32.const 1
       i32.sub
       local.tee $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $3
      i32.const 8
      i32.ge_u
      local.set $6
      local.get $6
      if
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       local.get $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $3
     local.set $6
     local.get $6
     if
      local.get $5
      local.get $3
      i32.const 1
      i32.sub
      local.tee $3
      i32.add
      local.get $4
      local.get $3
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/rt/tlsf/freeBlock (param $0 i32) (param $1 i32)
  i32.const 0
  drop
  local.get $1
  local.get $1
  i32.load
  i32.const 1
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/moveBlock (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/allocateBlock
  local.set $3
  local.get $3
  i32.const 4
  i32.add
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  call $~lib/memory/memory.copy
  local.get $1
  global.get $~lib/memory/__heap_base
  i32.ge_u
  if
   i32.const 0
   drop
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/freeBlock
  end
  local.get $3
 )
 (func $~lib/rt/tlsf/reallocateBlock (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $2
  call $~lib/rt/tlsf/prepareSize
  local.set $3
  local.get $1
  i32.load
  local.set $4
  local.get $4
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $5
  local.get $3
  local.get $5
  i32.le_u
  if
   local.get $0
   local.get $1
   local.get $3
   call $~lib/rt/tlsf/prepareBlock
   i32.const 0
   drop
   local.get $1
   return
  end
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
  local.set $7
  local.get $7
  i32.load
  local.set $8
  local.get $8
  i32.const 1
  i32.and
  if
   local.get $5
   i32.const 4
   i32.add
   local.get $8
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $6
   local.get $6
   local.get $3
   i32.ge_u
   if
    local.get $0
    local.get $7
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $4
    i32.const 3
    i32.and
    local.get $6
    i32.or
    call $~lib/rt/common/BLOCK#set:mmInfo
    local.get $0
    local.get $1
    local.get $3
    call $~lib/rt/tlsf/prepareBlock
    i32.const 0
    drop
    local.get $1
    return
   end
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/rt/tlsf/moveBlock
 )
 (func $~lib/rt/tlsf/__realloc (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  local.get $0
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if (result i32)
   global.get $~lib/rt/tlsf/ROOT
   local.get $0
   call $~lib/rt/tlsf/checkUsedBlock
   local.get $1
   call $~lib/rt/tlsf/moveBlock
  else
   global.get $~lib/rt/tlsf/ROOT
   local.get $0
   call $~lib/rt/tlsf/checkUsedBlock
   local.get $1
   call $~lib/rt/tlsf/reallocateBlock
  end
  i32.const 4
  i32.add
 )
 (func $~lib/rt/tcms/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/rt/tcms/state
  i32.const 0
  i32.eq
  if
   call $~lib/rt/tcms/init
  end
  local.get $1
  i32.const 1073741804
  i32.gt_u
  if
   i32.const 208
   i32.const 64
   i32.const 278
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  global.get $~lib/memory/__heap_base
  i32.gt_u
  if
   global.get $~lib/rt/tcms/totalMem
   local.get $0
   local.set $2
   local.get $2
   i32.const 20
   i32.sub
   call $~lib/rt/tcms/Object#get:size
   i32.sub
   global.set $~lib/rt/tcms/totalMem
  end
  local.get $0
  i32.const 16
  i32.sub
  i32.const 16
  local.get $1
  i32.add
  call $~lib/rt/tlsf/__realloc
  i32.const 16
  i32.add
  local.set $3
  local.get $3
  i32.const 20
  i32.sub
  local.set $4
  local.get $4
  local.get $1
  call $~lib/rt/tcms/Object#set:rtSize
  local.get $4
  call $~lib/rt/tcms/Object#get:next
  local.get $4
  local.tee $2
  i32.eqz
  if (result i32)
   i32.const 0
   i32.const 64
   i32.const 283
   i32.const 22
   call $~lib/builtins/abort
   unreachable
  else
   local.get $2
  end
  call $~lib/rt/tcms/Object#set:prev
  local.get $4
  i32.load offset=8
  local.get $4
  local.tee $2
  i32.eqz
  if (result i32)
   i32.const 0
   i32.const 64
   i32.const 284
   i32.const 22
   call $~lib/builtins/abort
   unreachable
  else
   local.get $2
  end
  call $~lib/rt/tcms/Object#set:next
  global.get $~lib/rt/tcms/totalMem
  local.get $4
  call $~lib/rt/tcms/Object#get:size
  i32.add
  global.set $~lib/rt/tcms/totalMem
  local.get $3
 )
 (func $~lib/array/ensureSize (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=8
  local.set $3
  local.get $1
  local.get $3
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
    i32.const 272
    i32.const 544
    i32.const 14
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   local.set $4
   local.get $1
   local.get $2
   i32.shl
   local.set $5
   local.get $4
   local.get $5
   call $~lib/rt/tcms/__renew
   local.set $6
   local.get $6
   local.get $3
   i32.add
   i32.const 0
   local.get $5
   local.get $3
   i32.sub
   call $~lib/memory/memory.fill
   local.get $6
   local.get $4
   i32.ne
   if
    local.get $0
    local.get $6
    i32.store
    local.get $0
    local.get $6
    i32.store offset=4
   end
   local.get $0
   local.get $5
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<i8>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 0
  i32.shl
  i32.add
  local.get $2
  i32.store8
  i32.const 0
  drop
 )
 (func $~lib/array/Array<i8>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 592
    i32.const 544
    i32.const 108
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.const 0
   call $~lib/array/ensureSize
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   call $~lib/array/Array<i8>#set:length_
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<i8>#__uset
 )
 (func $~lib/array/Array<i8>#set:length (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/array/ensureSize
  local.get $0
  local.get $1
  call $~lib/array/Array<i8>#set:length_
 )
 (func $~lib/map/Map<i8,i32>#keys (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 0
  local.get $2
  call $~lib/array/Array<i8>#constructor
  local.set $3
  i32.const 0
  local.set $4
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   local.get $2
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $1
    local.get $5
    i32.const 12
    i32.mul
    i32.add
    local.set $7
    local.get $7
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $4
     local.tee $8
     i32.const 1
     i32.add
     local.set $4
     local.get $8
     local.get $7
     i32.load8_s
     call $~lib/array/Array<i8>#__set
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $3
  local.get $4
  call $~lib/array/Array<i8>#set:length
  local.get $3
 )
 (func $~lib/array/Array<i32>#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/array/Array<i32>#set:dataStart (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/array/Array<i32>#set:byteLength (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/array/Array<i32>#set:length_ (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/array/Array<i32>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 5
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  call $~lib/array/Array<i32>#set:buffer
  local.get $0
  i32.const 0
  call $~lib/array/Array<i32>#set:dataStart
  local.get $0
  i32.const 0
  call $~lib/array/Array<i32>#set:byteLength
  local.get $0
  i32.const 0
  call $~lib/array/Array<i32>#set:length_
  local.get $1
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 272
   i32.const 544
   i32.const 58
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.shl
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/rt/tcms/__new
  local.set $3
  local.get $3
  i32.const 0
  local.get $2
  call $~lib/memory/memory.fill
  local.get $0
  local.get $3
  call $~lib/array/Array<i32>#set:buffer
  local.get $0
  local.get $3
  call $~lib/array/Array<i32>#set:dataStart
  local.get $0
  local.get $2
  call $~lib/array/Array<i32>#set:byteLength
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#set:length_
  local.get $0
 )
 (func $~lib/array/Array<i32>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
  i32.const 0
  drop
 )
 (func $~lib/array/Array<i32>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 592
    i32.const 544
    i32.const 108
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.const 2
   call $~lib/array/ensureSize
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   call $~lib/array/Array<i32>#set:length_
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<i32>#__uset
 )
 (func $~lib/array/Array<i32>#set:length (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#set:length_
 )
 (func $~lib/map/Map<i8,i32>#values (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 0
  local.get $2
  call $~lib/array/Array<i32>#constructor
  local.set $3
  i32.const 0
  local.set $4
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   local.get $2
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $1
    local.get $5
    i32.const 12
    i32.mul
    i32.add
    local.set $7
    local.get $7
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $4
     local.tee $8
     i32.const 1
     i32.add
     local.set $4
     local.get $8
     local.get $7
     i32.load offset=4
     call $~lib/array/Array<i32>#__set
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $3
  local.get $4
  call $~lib/array/Array<i32>#set:length
  local.get $3
 )
 (func $~lib/map/Map<i8,i8>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/map/Map<i8,i8>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/Map<i8,i8>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/map/Map<i8,i8>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/Map<i8,i8>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/map/Map<i8,i8>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
 )
 (func $~lib/map/Map<i8,i8>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 6
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i8,i8>#set:buckets
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<i8,i8>#set:bucketsMask
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 8
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i8,i8>#set:entries
  local.get $0
  i32.const 4
  call $~lib/map/Map<i8,i8>#set:entriesCapacity
  local.get $0
  i32.const 0
  call $~lib/map/Map<i8,i8>#set:entriesOffset
  local.get $0
  i32.const 0
  call $~lib/map/Map<i8,i8>#set:entriesCount
  local.get $0
 )
 (func $~lib/map/Map<i32,i32>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/map/Map<i32,i32>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/Map<i32,i32>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/map/Map<i32,i32>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/Map<i32,i32>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/map/Map<i32,i32>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
 )
 (func $~lib/map/Map<i32,i32>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 7
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i32,i32>#set:buckets
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<i32,i32>#set:bucketsMask
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i32,i32>#set:entries
  local.get $0
  i32.const 4
  call $~lib/map/Map<i32,i32>#set:entriesCapacity
  local.get $0
  i32.const 0
  call $~lib/map/Map<i32,i32>#set:entriesOffset
  local.get $0
  i32.const 0
  call $~lib/map/Map<i32,i32>#set:entriesCount
  local.get $0
 )
 (func $~lib/array/Array<i8>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<i8>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 0
  i32.shl
  i32.add
  i32.load8_s
 )
 (func $~lib/array/Array<i8>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 592
   i32.const 544
   i32.const 92
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i8>#__uget
  local.set $2
  i32.const 0
  drop
  local.get $2
 )
 (func $~lib/array/Array<i32>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<i32>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 592
   i32.const 544
   i32.const 92
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__uget
  local.set $2
  i32.const 0
  drop
  local.get $2
 )
 (func $~lib/map/Map<i8,i8>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  loop $while-continue|0
   local.get $3
   local.set $4
   local.get $4
   if
    local.get $3
    i32.load offset=4
    local.set $5
    local.get $5
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $3
     i32.load8_s
     local.get $1
     i32.const 24
     i32.shl
     i32.const 24
     i32.shr_s
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $3
     return
    end
    local.get $5
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/MapEntry<i8,i8>#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=1
 )
 (func $~lib/map/MapEntry<i8,i8>#set:key (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8
 )
 (func $~lib/map/MapEntry<i8,i8>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/Map<i8,i8>#rehash (param $0 i32) (param $1 i32)
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
  (local $14 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $4
  i32.const 0
  local.get $4
  i32.const 8
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  i32.const 8
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  loop $while-continue|0
   local.get $6
   local.get $7
   i32.ne
   local.set $9
   local.get $9
   if
    local.get $6
    local.set $10
    local.get $10
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $11
     local.get $10
     i32.load8_s
     local.set $12
     local.get $11
     local.get $12
     call $~lib/map/MapEntry<i8,i8>#set:key
     local.get $11
     local.get $10
     i32.load8_s offset=1
     call $~lib/map/MapEntry<i8,i8>#set:value
     block $~lib/util/hash/HASH<i8>|inlined.5 (result i32)
      local.get $12
      local.set $13
      i32.const 0
      drop
      i32.const 0
      drop
      i32.const 0
      drop
      i32.const 1
      i32.const 1
      i32.eq
      drop
      local.get $13
      call $~lib/util/hash/hash8
      br $~lib/util/hash/HASH<i8>|inlined.5
     end
     local.get $1
     i32.and
     local.set $13
     local.get $3
     local.get $13
     i32.const 4
     i32.mul
     i32.add
     local.set $14
     local.get $11
     local.get $14
     i32.load
     call $~lib/map/MapEntry<i8,i8>#set:taggedNext
     local.get $14
     local.get $8
     i32.store
     local.get $8
     i32.const 8
     i32.add
     local.set $8
    end
    local.get $6
    i32.const 8
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $0
  local.get $3
  call $~lib/map/Map<i8,i8>#set:buckets
  local.get $0
  local.get $1
  call $~lib/map/Map<i8,i8>#set:bucketsMask
  local.get $0
  local.get $5
  call $~lib/map/Map<i8,i8>#set:entries
  local.get $0
  local.get $4
  call $~lib/map/Map<i8,i8>#set:entriesCapacity
  local.get $0
  local.get $0
  i32.load offset=20
  call $~lib/map/Map<i8,i8>#set:entriesOffset
 )
 (func $~lib/map/Map<i8,i8>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/hash/HASH<i8>|inlined.4 (result i32)
   local.get $1
   local.set $3
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 1
   i32.const 1
   i32.eq
   drop
   local.get $3
   i32.const 24
   i32.shl
   i32.const 24
   i32.shr_s
   call $~lib/util/hash/hash8
   br $~lib/util/hash/HASH<i8>|inlined.4
  end
  local.set $4
  local.get $0
  local.get $1
  local.get $4
  call $~lib/map/Map<i8,i8>#find
  local.set $5
  local.get $5
  if
   local.get $5
   local.get $2
   call $~lib/map/MapEntry<i8,i8>#set:value
   i32.const 0
   drop
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<i8,i8>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $3
   local.get $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $6
   i32.const 1
   i32.add
   call $~lib/map/Map<i8,i8>#set:entriesOffset
   local.get $6
   i32.const 8
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   call $~lib/map/MapEntry<i8,i8>#set:key
   i32.const 0
   drop
   local.get $5
   local.get $2
   call $~lib/map/MapEntry<i8,i8>#set:value
   i32.const 0
   drop
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<i8,i8>#set:entriesCount
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $6
   local.get $5
   local.get $6
   i32.load
   call $~lib/map/MapEntry<i8,i8>#set:taggedNext
   local.get $6
   local.get $5
   i32.store
  end
  local.get $0
 )
 (func $~lib/util/hash/hash32 (param $0 i32) (result i32)
  (local $1 i32)
  i32.const -2128831035
  local.set $1
  local.get $1
  local.get $0
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $1
  local.get $1
  local.get $0
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $1
  local.get $1
  local.get $0
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $1
  local.get $1
  local.get $0
  i32.const 24
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $1
  local.get $1
 )
 (func $~lib/map/Map<i32,i32>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  loop $while-continue|0
   local.get $3
   local.set $4
   local.get $4
   if
    local.get $3
    i32.load offset=8
    local.set $5
    local.get $5
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $3
     i32.load
     local.get $1
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $3
     return
    end
    local.get $5
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/MapEntry<i32,i32>#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/MapEntry<i32,i32>#set:key (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/map/MapEntry<i32,i32>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/map/Map<i32,i32>#rehash (param $0 i32) (param $1 i32)
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
  (local $14 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $4
  i32.const 0
  local.get $4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  loop $while-continue|0
   local.get $6
   local.get $7
   i32.ne
   local.set $9
   local.get $9
   if
    local.get $6
    local.set $10
    local.get $10
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $11
     local.get $10
     i32.load
     local.set $12
     local.get $11
     local.get $12
     call $~lib/map/MapEntry<i32,i32>#set:key
     local.get $11
     local.get $10
     i32.load offset=4
     call $~lib/map/MapEntry<i32,i32>#set:value
     block $~lib/util/hash/HASH<i32>|inlined.1 (result i32)
      local.get $12
      local.set $13
      i32.const 0
      drop
      i32.const 0
      drop
      i32.const 0
      drop
      i32.const 4
      i32.const 1
      i32.eq
      drop
      i32.const 4
      i32.const 2
      i32.eq
      drop
      i32.const 4
      i32.const 4
      i32.eq
      drop
      local.get $13
      call $~lib/util/hash/hash32
      br $~lib/util/hash/HASH<i32>|inlined.1
     end
     local.get $1
     i32.and
     local.set $13
     local.get $3
     local.get $13
     i32.const 4
     i32.mul
     i32.add
     local.set $14
     local.get $11
     local.get $14
     i32.load
     call $~lib/map/MapEntry<i32,i32>#set:taggedNext
     local.get $14
     local.get $8
     i32.store
     local.get $8
     i32.const 12
     i32.add
     local.set $8
    end
    local.get $6
    i32.const 12
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $0
  local.get $3
  call $~lib/map/Map<i32,i32>#set:buckets
  local.get $0
  local.get $1
  call $~lib/map/Map<i32,i32>#set:bucketsMask
  local.get $0
  local.get $5
  call $~lib/map/Map<i32,i32>#set:entries
  local.get $0
  local.get $4
  call $~lib/map/Map<i32,i32>#set:entriesCapacity
  local.get $0
  local.get $0
  i32.load offset=20
  call $~lib/map/Map<i32,i32>#set:entriesOffset
 )
 (func $~lib/map/Map<i32,i32>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/hash/HASH<i32>|inlined.0 (result i32)
   local.get $1
   local.set $3
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 4
   i32.const 1
   i32.eq
   drop
   i32.const 4
   i32.const 2
   i32.eq
   drop
   i32.const 4
   i32.const 4
   i32.eq
   drop
   local.get $3
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<i32>|inlined.0
  end
  local.set $4
  local.get $0
  local.get $1
  local.get $4
  call $~lib/map/Map<i32,i32>#find
  local.set $5
  local.get $5
  if
   local.get $5
   local.get $2
   call $~lib/map/MapEntry<i32,i32>#set:value
   i32.const 0
   drop
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<i32,i32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $3
   local.get $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $6
   i32.const 1
   i32.add
   call $~lib/map/Map<i32,i32>#set:entriesOffset
   local.get $6
   i32.const 12
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   call $~lib/map/MapEntry<i32,i32>#set:key
   i32.const 0
   drop
   local.get $5
   local.get $2
   call $~lib/map/MapEntry<i32,i32>#set:value
   i32.const 0
   drop
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<i32,i32>#set:entriesCount
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $6
   local.get $5
   local.get $6
   i32.load
   call $~lib/map/MapEntry<i32,i32>#set:taggedNext
   local.get $6
   local.get $5
   i32.store
  end
  local.get $0
 )
 (func $~lib/map/Map<i8,i8>#get:size (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<i32,i32>#get:size (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<i8,i32>#delete (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i8>|inlined.6 (result i32)
   local.get $1
   local.set $2
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 1
   i32.const 1
   i32.eq
   drop
   local.get $2
   i32.const 24
   i32.shl
   i32.const 24
   i32.shr_s
   call $~lib/util/hash/hash8
   br $~lib/util/hash/HASH<i8>|inlined.6
  end
  call $~lib/map/Map<i8,i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $3
  local.get $3
  i32.load offset=8
  i32.const 1
  i32.or
  call $~lib/map/MapEntry<i8,i32>#set:taggedNext
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  call $~lib/map/Map<i8,i32>#set:entriesCount
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.set $4
  local.get $4
  i32.const 1
  i32.add
  i32.const 4
  local.tee $2
  local.get $0
  i32.load offset=20
  local.tee $5
  local.get $2
  local.get $5
  i32.gt_u
  select
  i32.ge_u
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   local.get $0
   local.get $4
   call $~lib/map/Map<i8,i32>#rehash
  end
  i32.const 1
 )
 (func $~lib/map/Map<i8,i32>#clear (param $0 i32)
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i8,i32>#set:buckets
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<i8,i32>#set:bucketsMask
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i8,i32>#set:entries
  local.get $0
  i32.const 4
  call $~lib/map/Map<i8,i32>#set:entriesCapacity
  local.get $0
  i32.const 0
  call $~lib/map/Map<i8,i32>#set:entriesOffset
  local.get $0
  i32.const 0
  call $~lib/map/Map<i8,i32>#set:entriesCount
 )
 (func $std/map/testNumeric<i8,i32>
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
  i32.const 0
  call $~lib/map/Map<i8,i32>#constructor
  local.set $0
  i32.const 0
  local.set $1
  loop $for-loop|1
   local.get $1
   i32.const 24
   i32.shl
   i32.const 24
   i32.shr_s
   i32.const 100
   i32.lt_s
   local.set $3
   local.get $3
   if
    local.get $0
    local.get $1
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 6
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    i32.const 10
    local.get $1
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.add
    call $~lib/map/Map<i8,i32>#set
    drop
    local.get $0
    local.get $1
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 8
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<i8,i32>#get
    i32.const 10
    local.get $1
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 9
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
  local.get $0
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 11
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $1
  loop $for-loop|3
   local.get $1
   i32.const 24
   i32.shl
   i32.const 24
   i32.shr_s
   i32.const 100
   i32.lt_s
   local.set $4
   local.get $4
   if
    local.get $0
    local.get $1
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 15
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<i8,i32>#get
    i32.const 10
    local.get $1
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 16
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    i32.const 20
    local.get $1
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.add
    call $~lib/map/Map<i8,i32>#set
    drop
    local.get $0
    local.get $1
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 18
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<i8,i32>#get
    i32.const 20
    local.get $1
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 19
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
  local.get $0
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 21
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<i8,i32>#keys
  local.set $1
  local.get $0
  call $~lib/map/Map<i8,i32>#values
  local.set $4
  i32.const 0
  call $~lib/map/Map<i8,i8>#constructor
  local.set $5
  i32.const 0
  call $~lib/map/Map<i32,i32>#constructor
  local.set $6
  i32.const 0
  local.set $7
  loop $for-loop|4
   local.get $7
   local.get $1
   call $~lib/array/Array<i8>#get:length
   i32.lt_s
   local.set $8
   local.get $8
   if
    local.get $1
    local.get $7
    call $~lib/array/Array<i8>#__get
    local.set $9
    local.get $4
    local.get $7
    call $~lib/array/Array<i32>#__get
    local.set $10
    local.get $0
    local.get $9
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 31
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $10
    i32.const 20
    i32.sub
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 32
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $5
    local.get $9
    local.get $9
    call $~lib/map/Map<i8,i8>#set
    drop
    local.get $6
    local.get $10
    i32.const 20
    i32.sub
    local.get $10
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    drop
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|4
   end
  end
  local.get $5
  call $~lib/map/Map<i8,i8>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 36
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 37
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $7
  loop $for-loop|6
   local.get $7
   i32.const 24
   i32.shl
   i32.const 24
   i32.shr_s
   i32.const 50
   i32.lt_s
   local.set $10
   local.get $10
   if
    local.get $0
    local.get $7
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 41
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $7
    call $~lib/map/Map<i8,i32>#get
    i32.const 20
    local.get $7
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 42
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $7
    call $~lib/map/Map<i8,i32>#delete
    drop
    local.get $0
    local.get $7
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 44
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|6
   end
  end
  local.get $0
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 46
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $7
  loop $for-loop|8
   local.get $7
   i32.const 24
   i32.shl
   i32.const 24
   i32.shr_s
   i32.const 50
   i32.lt_s
   local.set $9
   local.get $9
   if
    local.get $0
    local.get $7
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 50
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $7
    i32.const 10
    local.get $7
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.add
    call $~lib/map/Map<i8,i32>#set
    drop
    local.get $0
    local.get $7
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 52
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $7
    call $~lib/map/Map<i8,i32>#delete
    drop
    local.get $0
    local.get $7
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 54
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|8
   end
  end
  local.get $0
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 56
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<i8,i32>#clear
  local.get $0
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/map/Map<u8,i32>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/map/Map<u8,i32>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/Map<u8,i32>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/map/Map<u8,i32>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/Map<u8,i32>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/map/Map<u8,i32>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
 )
 (func $~lib/map/Map<u8,i32>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 8
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u8,i32>#set:buckets
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<u8,i32>#set:bucketsMask
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u8,i32>#set:entries
  local.get $0
  i32.const 4
  call $~lib/map/Map<u8,i32>#set:entriesCapacity
  local.get $0
  i32.const 0
  call $~lib/map/Map<u8,i32>#set:entriesOffset
  local.get $0
  i32.const 0
  call $~lib/map/Map<u8,i32>#set:entriesCount
  local.get $0
 )
 (func $~lib/map/Map<u8,i32>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  loop $while-continue|0
   local.get $3
   local.set $4
   local.get $4
   if
    local.get $3
    i32.load offset=8
    local.set $5
    local.get $5
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $3
     i32.load8_u
     local.get $1
     i32.const 255
     i32.and
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $3
     return
    end
    local.get $5
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<u8,i32>#has (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u8>|inlined.0 (result i32)
   local.get $1
   local.set $2
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 1
   i32.const 1
   i32.eq
   drop
   local.get $2
   i32.const 255
   i32.and
   call $~lib/util/hash/hash8
   br $~lib/util/hash/HASH<u8>|inlined.0
  end
  call $~lib/map/Map<u8,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/MapEntry<u8,i32>#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/MapEntry<u8,i32>#set:key (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8
 )
 (func $~lib/map/MapEntry<u8,i32>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/map/Map<u8,i32>#rehash (param $0 i32) (param $1 i32)
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
  (local $14 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $4
  i32.const 0
  local.get $4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  loop $while-continue|0
   local.get $6
   local.get $7
   i32.ne
   local.set $9
   local.get $9
   if
    local.get $6
    local.set $10
    local.get $10
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $11
     local.get $10
     i32.load8_u
     local.set $12
     local.get $11
     local.get $12
     call $~lib/map/MapEntry<u8,i32>#set:key
     local.get $11
     local.get $10
     i32.load offset=4
     call $~lib/map/MapEntry<u8,i32>#set:value
     block $~lib/util/hash/HASH<u8>|inlined.2 (result i32)
      local.get $12
      local.set $13
      i32.const 0
      drop
      i32.const 0
      drop
      i32.const 0
      drop
      i32.const 1
      i32.const 1
      i32.eq
      drop
      local.get $13
      call $~lib/util/hash/hash8
      br $~lib/util/hash/HASH<u8>|inlined.2
     end
     local.get $1
     i32.and
     local.set $13
     local.get $3
     local.get $13
     i32.const 4
     i32.mul
     i32.add
     local.set $14
     local.get $11
     local.get $14
     i32.load
     call $~lib/map/MapEntry<u8,i32>#set:taggedNext
     local.get $14
     local.get $8
     i32.store
     local.get $8
     i32.const 12
     i32.add
     local.set $8
    end
    local.get $6
    i32.const 12
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $0
  local.get $3
  call $~lib/map/Map<u8,i32>#set:buckets
  local.get $0
  local.get $1
  call $~lib/map/Map<u8,i32>#set:bucketsMask
  local.get $0
  local.get $5
  call $~lib/map/Map<u8,i32>#set:entries
  local.get $0
  local.get $4
  call $~lib/map/Map<u8,i32>#set:entriesCapacity
  local.get $0
  local.get $0
  i32.load offset=20
  call $~lib/map/Map<u8,i32>#set:entriesOffset
 )
 (func $~lib/map/Map<u8,i32>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/hash/HASH<u8>|inlined.1 (result i32)
   local.get $1
   local.set $3
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 1
   i32.const 1
   i32.eq
   drop
   local.get $3
   i32.const 255
   i32.and
   call $~lib/util/hash/hash8
   br $~lib/util/hash/HASH<u8>|inlined.1
  end
  local.set $4
  local.get $0
  local.get $1
  local.get $4
  call $~lib/map/Map<u8,i32>#find
  local.set $5
  local.get $5
  if
   local.get $5
   local.get $2
   call $~lib/map/MapEntry<u8,i32>#set:value
   i32.const 0
   drop
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<u8,i32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $3
   local.get $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $6
   i32.const 1
   i32.add
   call $~lib/map/Map<u8,i32>#set:entriesOffset
   local.get $6
   i32.const 12
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   call $~lib/map/MapEntry<u8,i32>#set:key
   i32.const 0
   drop
   local.get $5
   local.get $2
   call $~lib/map/MapEntry<u8,i32>#set:value
   i32.const 0
   drop
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<u8,i32>#set:entriesCount
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $6
   local.get $5
   local.get $6
   i32.load
   call $~lib/map/MapEntry<u8,i32>#set:taggedNext
   local.get $6
   local.get $5
   i32.store
  end
  local.get $0
 )
 (func $~lib/map/Map<u8,i32>#get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u8>|inlined.3 (result i32)
   local.get $1
   local.set $2
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 1
   i32.const 1
   i32.eq
   drop
   local.get $2
   i32.const 255
   i32.and
   call $~lib/util/hash/hash8
   br $~lib/util/hash/HASH<u8>|inlined.3
  end
  call $~lib/map/Map<u8,i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 432
   i32.const 496
   i32.const 105
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=4
 )
 (func $~lib/map/Map<u8,i32>#get:size (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/array/Array<u8>#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/array/Array<u8>#set:dataStart (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/array/Array<u8>#set:byteLength (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/array/Array<u8>#set:length_ (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/array/Array<u8>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 9
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  call $~lib/array/Array<u8>#set:buffer
  local.get $0
  i32.const 0
  call $~lib/array/Array<u8>#set:dataStart
  local.get $0
  i32.const 0
  call $~lib/array/Array<u8>#set:byteLength
  local.get $0
  i32.const 0
  call $~lib/array/Array<u8>#set:length_
  local.get $1
  i32.const 1073741820
  i32.const 0
  i32.shr_u
  i32.gt_u
  if
   i32.const 272
   i32.const 544
   i32.const 58
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.shl
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/rt/tcms/__new
  local.set $3
  local.get $3
  i32.const 0
  local.get $2
  call $~lib/memory/memory.fill
  local.get $0
  local.get $3
  call $~lib/array/Array<u8>#set:buffer
  local.get $0
  local.get $3
  call $~lib/array/Array<u8>#set:dataStart
  local.get $0
  local.get $2
  call $~lib/array/Array<u8>#set:byteLength
  local.get $0
  local.get $1
  call $~lib/array/Array<u8>#set:length_
  local.get $0
 )
 (func $~lib/array/Array<u8>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 0
  i32.shl
  i32.add
  local.get $2
  i32.store8
  i32.const 0
  drop
 )
 (func $~lib/array/Array<u8>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 592
    i32.const 544
    i32.const 108
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.const 0
   call $~lib/array/ensureSize
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   call $~lib/array/Array<u8>#set:length_
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<u8>#__uset
 )
 (func $~lib/array/Array<u8>#set:length (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/array/ensureSize
  local.get $0
  local.get $1
  call $~lib/array/Array<u8>#set:length_
 )
 (func $~lib/map/Map<u8,i32>#keys (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 0
  local.get $2
  call $~lib/array/Array<u8>#constructor
  local.set $3
  i32.const 0
  local.set $4
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   local.get $2
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $1
    local.get $5
    i32.const 12
    i32.mul
    i32.add
    local.set $7
    local.get $7
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $4
     local.tee $8
     i32.const 1
     i32.add
     local.set $4
     local.get $8
     local.get $7
     i32.load8_u
     call $~lib/array/Array<u8>#__set
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $3
  local.get $4
  call $~lib/array/Array<u8>#set:length
  local.get $3
 )
 (func $~lib/map/Map<u8,i32>#values (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 0
  local.get $2
  call $~lib/array/Array<i32>#constructor
  local.set $3
  i32.const 0
  local.set $4
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   local.get $2
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $1
    local.get $5
    i32.const 12
    i32.mul
    i32.add
    local.set $7
    local.get $7
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $4
     local.tee $8
     i32.const 1
     i32.add
     local.set $4
     local.get $8
     local.get $7
     i32.load offset=4
     call $~lib/array/Array<i32>#__set
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $3
  local.get $4
  call $~lib/array/Array<i32>#set:length
  local.get $3
 )
 (func $~lib/map/Map<u8,u8>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/map/Map<u8,u8>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/Map<u8,u8>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/map/Map<u8,u8>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/Map<u8,u8>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/map/Map<u8,u8>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
 )
 (func $~lib/map/Map<u8,u8>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 10
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u8,u8>#set:buckets
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<u8,u8>#set:bucketsMask
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 8
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u8,u8>#set:entries
  local.get $0
  i32.const 4
  call $~lib/map/Map<u8,u8>#set:entriesCapacity
  local.get $0
  i32.const 0
  call $~lib/map/Map<u8,u8>#set:entriesOffset
  local.get $0
  i32.const 0
  call $~lib/map/Map<u8,u8>#set:entriesCount
  local.get $0
 )
 (func $~lib/array/Array<u8>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<u8>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 0
  i32.shl
  i32.add
  i32.load8_u
 )
 (func $~lib/array/Array<u8>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 592
   i32.const 544
   i32.const 92
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u8>#__uget
  local.set $2
  i32.const 0
  drop
  local.get $2
 )
 (func $~lib/map/Map<u8,u8>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  loop $while-continue|0
   local.get $3
   local.set $4
   local.get $4
   if
    local.get $3
    i32.load offset=4
    local.set $5
    local.get $5
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $3
     i32.load8_u
     local.get $1
     i32.const 255
     i32.and
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $3
     return
    end
    local.get $5
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/MapEntry<u8,u8>#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=1
 )
 (func $~lib/map/MapEntry<u8,u8>#set:key (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8
 )
 (func $~lib/map/MapEntry<u8,u8>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/Map<u8,u8>#rehash (param $0 i32) (param $1 i32)
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
  (local $14 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $4
  i32.const 0
  local.get $4
  i32.const 8
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  i32.const 8
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  loop $while-continue|0
   local.get $6
   local.get $7
   i32.ne
   local.set $9
   local.get $9
   if
    local.get $6
    local.set $10
    local.get $10
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $11
     local.get $10
     i32.load8_u
     local.set $12
     local.get $11
     local.get $12
     call $~lib/map/MapEntry<u8,u8>#set:key
     local.get $11
     local.get $10
     i32.load8_u offset=1
     call $~lib/map/MapEntry<u8,u8>#set:value
     block $~lib/util/hash/HASH<u8>|inlined.5 (result i32)
      local.get $12
      local.set $13
      i32.const 0
      drop
      i32.const 0
      drop
      i32.const 0
      drop
      i32.const 1
      i32.const 1
      i32.eq
      drop
      local.get $13
      call $~lib/util/hash/hash8
      br $~lib/util/hash/HASH<u8>|inlined.5
     end
     local.get $1
     i32.and
     local.set $13
     local.get $3
     local.get $13
     i32.const 4
     i32.mul
     i32.add
     local.set $14
     local.get $11
     local.get $14
     i32.load
     call $~lib/map/MapEntry<u8,u8>#set:taggedNext
     local.get $14
     local.get $8
     i32.store
     local.get $8
     i32.const 8
     i32.add
     local.set $8
    end
    local.get $6
    i32.const 8
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $0
  local.get $3
  call $~lib/map/Map<u8,u8>#set:buckets
  local.get $0
  local.get $1
  call $~lib/map/Map<u8,u8>#set:bucketsMask
  local.get $0
  local.get $5
  call $~lib/map/Map<u8,u8>#set:entries
  local.get $0
  local.get $4
  call $~lib/map/Map<u8,u8>#set:entriesCapacity
  local.get $0
  local.get $0
  i32.load offset=20
  call $~lib/map/Map<u8,u8>#set:entriesOffset
 )
 (func $~lib/map/Map<u8,u8>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/hash/HASH<u8>|inlined.4 (result i32)
   local.get $1
   local.set $3
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 1
   i32.const 1
   i32.eq
   drop
   local.get $3
   i32.const 255
   i32.and
   call $~lib/util/hash/hash8
   br $~lib/util/hash/HASH<u8>|inlined.4
  end
  local.set $4
  local.get $0
  local.get $1
  local.get $4
  call $~lib/map/Map<u8,u8>#find
  local.set $5
  local.get $5
  if
   local.get $5
   local.get $2
   call $~lib/map/MapEntry<u8,u8>#set:value
   i32.const 0
   drop
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<u8,u8>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $3
   local.get $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $6
   i32.const 1
   i32.add
   call $~lib/map/Map<u8,u8>#set:entriesOffset
   local.get $6
   i32.const 8
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   call $~lib/map/MapEntry<u8,u8>#set:key
   i32.const 0
   drop
   local.get $5
   local.get $2
   call $~lib/map/MapEntry<u8,u8>#set:value
   i32.const 0
   drop
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<u8,u8>#set:entriesCount
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $6
   local.get $5
   local.get $6
   i32.load
   call $~lib/map/MapEntry<u8,u8>#set:taggedNext
   local.get $6
   local.get $5
   i32.store
  end
  local.get $0
 )
 (func $~lib/map/Map<u8,u8>#get:size (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<u8,i32>#delete (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u8>|inlined.6 (result i32)
   local.get $1
   local.set $2
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 1
   i32.const 1
   i32.eq
   drop
   local.get $2
   i32.const 255
   i32.and
   call $~lib/util/hash/hash8
   br $~lib/util/hash/HASH<u8>|inlined.6
  end
  call $~lib/map/Map<u8,i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $3
  local.get $3
  i32.load offset=8
  i32.const 1
  i32.or
  call $~lib/map/MapEntry<u8,i32>#set:taggedNext
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  call $~lib/map/Map<u8,i32>#set:entriesCount
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.set $4
  local.get $4
  i32.const 1
  i32.add
  i32.const 4
  local.tee $2
  local.get $0
  i32.load offset=20
  local.tee $5
  local.get $2
  local.get $5
  i32.gt_u
  select
  i32.ge_u
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   local.get $0
   local.get $4
   call $~lib/map/Map<u8,i32>#rehash
  end
  i32.const 1
 )
 (func $~lib/map/Map<u8,i32>#clear (param $0 i32)
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u8,i32>#set:buckets
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<u8,i32>#set:bucketsMask
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u8,i32>#set:entries
  local.get $0
  i32.const 4
  call $~lib/map/Map<u8,i32>#set:entriesCapacity
  local.get $0
  i32.const 0
  call $~lib/map/Map<u8,i32>#set:entriesOffset
  local.get $0
  i32.const 0
  call $~lib/map/Map<u8,i32>#set:entriesCount
 )
 (func $std/map/testNumeric<u8,i32>
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
  i32.const 0
  call $~lib/map/Map<u8,i32>#constructor
  local.set $0
  i32.const 0
  local.set $1
  loop $for-loop|1
   local.get $1
   i32.const 255
   i32.and
   i32.const 100
   i32.lt_u
   local.set $3
   local.get $3
   if
    local.get $0
    local.get $1
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 6
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    i32.const 10
    local.get $1
    i32.const 255
    i32.and
    i32.add
    call $~lib/map/Map<u8,i32>#set
    drop
    local.get $0
    local.get $1
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 8
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<u8,i32>#get
    i32.const 10
    local.get $1
    i32.const 255
    i32.and
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 9
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
  local.get $0
  call $~lib/map/Map<u8,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 11
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $1
  loop $for-loop|3
   local.get $1
   i32.const 255
   i32.and
   i32.const 100
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $0
    local.get $1
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 15
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<u8,i32>#get
    i32.const 10
    local.get $1
    i32.const 255
    i32.and
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 16
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    i32.const 20
    local.get $1
    i32.const 255
    i32.and
    i32.add
    call $~lib/map/Map<u8,i32>#set
    drop
    local.get $0
    local.get $1
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 18
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<u8,i32>#get
    i32.const 20
    local.get $1
    i32.const 255
    i32.and
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 19
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
  local.get $0
  call $~lib/map/Map<u8,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 21
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<u8,i32>#keys
  local.set $1
  local.get $0
  call $~lib/map/Map<u8,i32>#values
  local.set $4
  i32.const 0
  call $~lib/map/Map<u8,u8>#constructor
  local.set $5
  i32.const 0
  call $~lib/map/Map<i32,i32>#constructor
  local.set $6
  i32.const 0
  local.set $7
  loop $for-loop|4
   local.get $7
   local.get $1
   call $~lib/array/Array<u8>#get:length
   i32.lt_s
   local.set $8
   local.get $8
   if
    local.get $1
    local.get $7
    call $~lib/array/Array<u8>#__get
    local.set $9
    local.get $4
    local.get $7
    call $~lib/array/Array<i32>#__get
    local.set $10
    local.get $0
    local.get $9
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 31
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $10
    i32.const 20
    i32.sub
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 32
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $5
    local.get $9
    local.get $9
    call $~lib/map/Map<u8,u8>#set
    drop
    local.get $6
    local.get $10
    i32.const 20
    i32.sub
    local.get $10
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    drop
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|4
   end
  end
  local.get $5
  call $~lib/map/Map<u8,u8>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 36
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 37
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $7
  loop $for-loop|6
   local.get $7
   i32.const 255
   i32.and
   i32.const 50
   i32.lt_u
   local.set $10
   local.get $10
   if
    local.get $0
    local.get $7
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 41
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $7
    call $~lib/map/Map<u8,i32>#get
    i32.const 20
    local.get $7
    i32.const 255
    i32.and
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 42
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $7
    call $~lib/map/Map<u8,i32>#delete
    drop
    local.get $0
    local.get $7
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 44
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|6
   end
  end
  local.get $0
  call $~lib/map/Map<u8,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 46
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $7
  loop $for-loop|8
   local.get $7
   i32.const 255
   i32.and
   i32.const 50
   i32.lt_u
   local.set $9
   local.get $9
   if
    local.get $0
    local.get $7
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 50
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $7
    i32.const 10
    local.get $7
    i32.const 255
    i32.and
    i32.add
    call $~lib/map/Map<u8,i32>#set
    drop
    local.get $0
    local.get $7
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 52
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $7
    call $~lib/map/Map<u8,i32>#delete
    drop
    local.get $0
    local.get $7
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 54
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|8
   end
  end
  local.get $0
  call $~lib/map/Map<u8,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 56
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<u8,i32>#clear
  local.get $0
  call $~lib/map/Map<u8,i32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/map/Map<i16,i32>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/map/Map<i16,i32>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/Map<i16,i32>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/map/Map<i16,i32>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/Map<i16,i32>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/map/Map<i16,i32>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
 )
 (func $~lib/map/Map<i16,i32>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 11
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i16,i32>#set:buckets
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<i16,i32>#set:bucketsMask
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i16,i32>#set:entries
  local.get $0
  i32.const 4
  call $~lib/map/Map<i16,i32>#set:entriesCapacity
  local.get $0
  i32.const 0
  call $~lib/map/Map<i16,i32>#set:entriesOffset
  local.get $0
  i32.const 0
  call $~lib/map/Map<i16,i32>#set:entriesCount
  local.get $0
 )
 (func $~lib/util/hash/hash16 (param $0 i32) (result i32)
  (local $1 i32)
  i32.const -2128831035
  local.set $1
  local.get $1
  local.get $0
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $1
  local.get $1
  local.get $0
  i32.const 8
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $1
  local.get $1
 )
 (func $~lib/map/Map<i16,i32>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  loop $while-continue|0
   local.get $3
   local.set $4
   local.get $4
   if
    local.get $3
    i32.load offset=8
    local.set $5
    local.get $5
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $3
     i32.load16_s
     local.get $1
     i32.const 16
     i32.shl
     i32.const 16
     i32.shr_s
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $3
     return
    end
    local.get $5
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<i16,i32>#has (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i16>|inlined.0 (result i32)
   local.get $1
   local.set $2
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 2
   i32.const 1
   i32.eq
   drop
   i32.const 2
   i32.const 2
   i32.eq
   drop
   local.get $2
   i32.const 16
   i32.shl
   i32.const 16
   i32.shr_s
   call $~lib/util/hash/hash16
   br $~lib/util/hash/HASH<i16>|inlined.0
  end
  call $~lib/map/Map<i16,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/MapEntry<i16,i32>#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/MapEntry<i16,i32>#set:key (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store16
 )
 (func $~lib/map/MapEntry<i16,i32>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/map/Map<i16,i32>#rehash (param $0 i32) (param $1 i32)
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
  (local $14 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $4
  i32.const 0
  local.get $4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  loop $while-continue|0
   local.get $6
   local.get $7
   i32.ne
   local.set $9
   local.get $9
   if
    local.get $6
    local.set $10
    local.get $10
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $11
     local.get $10
     i32.load16_s
     local.set $12
     local.get $11
     local.get $12
     call $~lib/map/MapEntry<i16,i32>#set:key
     local.get $11
     local.get $10
     i32.load offset=4
     call $~lib/map/MapEntry<i16,i32>#set:value
     block $~lib/util/hash/HASH<i16>|inlined.2 (result i32)
      local.get $12
      local.set $13
      i32.const 0
      drop
      i32.const 0
      drop
      i32.const 0
      drop
      i32.const 2
      i32.const 1
      i32.eq
      drop
      i32.const 2
      i32.const 2
      i32.eq
      drop
      local.get $13
      call $~lib/util/hash/hash16
      br $~lib/util/hash/HASH<i16>|inlined.2
     end
     local.get $1
     i32.and
     local.set $13
     local.get $3
     local.get $13
     i32.const 4
     i32.mul
     i32.add
     local.set $14
     local.get $11
     local.get $14
     i32.load
     call $~lib/map/MapEntry<i16,i32>#set:taggedNext
     local.get $14
     local.get $8
     i32.store
     local.get $8
     i32.const 12
     i32.add
     local.set $8
    end
    local.get $6
    i32.const 12
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $0
  local.get $3
  call $~lib/map/Map<i16,i32>#set:buckets
  local.get $0
  local.get $1
  call $~lib/map/Map<i16,i32>#set:bucketsMask
  local.get $0
  local.get $5
  call $~lib/map/Map<i16,i32>#set:entries
  local.get $0
  local.get $4
  call $~lib/map/Map<i16,i32>#set:entriesCapacity
  local.get $0
  local.get $0
  i32.load offset=20
  call $~lib/map/Map<i16,i32>#set:entriesOffset
 )
 (func $~lib/map/Map<i16,i32>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/hash/HASH<i16>|inlined.1 (result i32)
   local.get $1
   local.set $3
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 2
   i32.const 1
   i32.eq
   drop
   i32.const 2
   i32.const 2
   i32.eq
   drop
   local.get $3
   i32.const 16
   i32.shl
   i32.const 16
   i32.shr_s
   call $~lib/util/hash/hash16
   br $~lib/util/hash/HASH<i16>|inlined.1
  end
  local.set $4
  local.get $0
  local.get $1
  local.get $4
  call $~lib/map/Map<i16,i32>#find
  local.set $5
  local.get $5
  if
   local.get $5
   local.get $2
   call $~lib/map/MapEntry<i16,i32>#set:value
   i32.const 0
   drop
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<i16,i32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $3
   local.get $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $6
   i32.const 1
   i32.add
   call $~lib/map/Map<i16,i32>#set:entriesOffset
   local.get $6
   i32.const 12
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   call $~lib/map/MapEntry<i16,i32>#set:key
   i32.const 0
   drop
   local.get $5
   local.get $2
   call $~lib/map/MapEntry<i16,i32>#set:value
   i32.const 0
   drop
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<i16,i32>#set:entriesCount
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $6
   local.get $5
   local.get $6
   i32.load
   call $~lib/map/MapEntry<i16,i32>#set:taggedNext
   local.get $6
   local.get $5
   i32.store
  end
  local.get $0
 )
 (func $~lib/map/Map<i16,i32>#get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i16>|inlined.3 (result i32)
   local.get $1
   local.set $2
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 2
   i32.const 1
   i32.eq
   drop
   i32.const 2
   i32.const 2
   i32.eq
   drop
   local.get $2
   i32.const 16
   i32.shl
   i32.const 16
   i32.shr_s
   call $~lib/util/hash/hash16
   br $~lib/util/hash/HASH<i16>|inlined.3
  end
  call $~lib/map/Map<i16,i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 432
   i32.const 496
   i32.const 105
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=4
 )
 (func $~lib/map/Map<i16,i32>#get:size (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/array/Array<i16>#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/array/Array<i16>#set:dataStart (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/array/Array<i16>#set:byteLength (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/array/Array<i16>#set:length_ (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/array/Array<i16>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 12
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  call $~lib/array/Array<i16>#set:buffer
  local.get $0
  i32.const 0
  call $~lib/array/Array<i16>#set:dataStart
  local.get $0
  i32.const 0
  call $~lib/array/Array<i16>#set:byteLength
  local.get $0
  i32.const 0
  call $~lib/array/Array<i16>#set:length_
  local.get $1
  i32.const 1073741820
  i32.const 1
  i32.shr_u
  i32.gt_u
  if
   i32.const 272
   i32.const 544
   i32.const 58
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.shl
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/rt/tcms/__new
  local.set $3
  local.get $3
  i32.const 0
  local.get $2
  call $~lib/memory/memory.fill
  local.get $0
  local.get $3
  call $~lib/array/Array<i16>#set:buffer
  local.get $0
  local.get $3
  call $~lib/array/Array<i16>#set:dataStart
  local.get $0
  local.get $2
  call $~lib/array/Array<i16>#set:byteLength
  local.get $0
  local.get $1
  call $~lib/array/Array<i16>#set:length_
  local.get $0
 )
 (func $~lib/array/Array<i16>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.get $2
  i32.store16
  i32.const 0
  drop
 )
 (func $~lib/array/Array<i16>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 592
    i32.const 544
    i32.const 108
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.const 1
   call $~lib/array/ensureSize
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   call $~lib/array/Array<i16>#set:length_
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<i16>#__uset
 )
 (func $~lib/array/Array<i16>#set:length (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.const 1
  call $~lib/array/ensureSize
  local.get $0
  local.get $1
  call $~lib/array/Array<i16>#set:length_
 )
 (func $~lib/map/Map<i16,i32>#keys (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 0
  local.get $2
  call $~lib/array/Array<i16>#constructor
  local.set $3
  i32.const 0
  local.set $4
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   local.get $2
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $1
    local.get $5
    i32.const 12
    i32.mul
    i32.add
    local.set $7
    local.get $7
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $4
     local.tee $8
     i32.const 1
     i32.add
     local.set $4
     local.get $8
     local.get $7
     i32.load16_s
     call $~lib/array/Array<i16>#__set
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $3
  local.get $4
  call $~lib/array/Array<i16>#set:length
  local.get $3
 )
 (func $~lib/map/Map<i16,i32>#values (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 0
  local.get $2
  call $~lib/array/Array<i32>#constructor
  local.set $3
  i32.const 0
  local.set $4
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   local.get $2
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $1
    local.get $5
    i32.const 12
    i32.mul
    i32.add
    local.set $7
    local.get $7
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $4
     local.tee $8
     i32.const 1
     i32.add
     local.set $4
     local.get $8
     local.get $7
     i32.load offset=4
     call $~lib/array/Array<i32>#__set
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $3
  local.get $4
  call $~lib/array/Array<i32>#set:length
  local.get $3
 )
 (func $~lib/map/Map<i16,i16>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/map/Map<i16,i16>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/Map<i16,i16>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/map/Map<i16,i16>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/Map<i16,i16>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/map/Map<i16,i16>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
 )
 (func $~lib/map/Map<i16,i16>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 13
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i16,i16>#set:buckets
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<i16,i16>#set:bucketsMask
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 8
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i16,i16>#set:entries
  local.get $0
  i32.const 4
  call $~lib/map/Map<i16,i16>#set:entriesCapacity
  local.get $0
  i32.const 0
  call $~lib/map/Map<i16,i16>#set:entriesOffset
  local.get $0
  i32.const 0
  call $~lib/map/Map<i16,i16>#set:entriesCount
  local.get $0
 )
 (func $~lib/array/Array<i16>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<i16>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_s
 )
 (func $~lib/array/Array<i16>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 592
   i32.const 544
   i32.const 92
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i16>#__uget
  local.set $2
  i32.const 0
  drop
  local.get $2
 )
 (func $~lib/map/Map<i16,i16>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  loop $while-continue|0
   local.get $3
   local.set $4
   local.get $4
   if
    local.get $3
    i32.load offset=4
    local.set $5
    local.get $5
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $3
     i32.load16_s
     local.get $1
     i32.const 16
     i32.shl
     i32.const 16
     i32.shr_s
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $3
     return
    end
    local.get $5
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/MapEntry<i16,i16>#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store16 offset=2
 )
 (func $~lib/map/MapEntry<i16,i16>#set:key (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store16
 )
 (func $~lib/map/MapEntry<i16,i16>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/Map<i16,i16>#rehash (param $0 i32) (param $1 i32)
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
  (local $14 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $4
  i32.const 0
  local.get $4
  i32.const 8
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  i32.const 8
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  loop $while-continue|0
   local.get $6
   local.get $7
   i32.ne
   local.set $9
   local.get $9
   if
    local.get $6
    local.set $10
    local.get $10
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $11
     local.get $10
     i32.load16_s
     local.set $12
     local.get $11
     local.get $12
     call $~lib/map/MapEntry<i16,i16>#set:key
     local.get $11
     local.get $10
     i32.load16_s offset=2
     call $~lib/map/MapEntry<i16,i16>#set:value
     block $~lib/util/hash/HASH<i16>|inlined.5 (result i32)
      local.get $12
      local.set $13
      i32.const 0
      drop
      i32.const 0
      drop
      i32.const 0
      drop
      i32.const 2
      i32.const 1
      i32.eq
      drop
      i32.const 2
      i32.const 2
      i32.eq
      drop
      local.get $13
      call $~lib/util/hash/hash16
      br $~lib/util/hash/HASH<i16>|inlined.5
     end
     local.get $1
     i32.and
     local.set $13
     local.get $3
     local.get $13
     i32.const 4
     i32.mul
     i32.add
     local.set $14
     local.get $11
     local.get $14
     i32.load
     call $~lib/map/MapEntry<i16,i16>#set:taggedNext
     local.get $14
     local.get $8
     i32.store
     local.get $8
     i32.const 8
     i32.add
     local.set $8
    end
    local.get $6
    i32.const 8
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $0
  local.get $3
  call $~lib/map/Map<i16,i16>#set:buckets
  local.get $0
  local.get $1
  call $~lib/map/Map<i16,i16>#set:bucketsMask
  local.get $0
  local.get $5
  call $~lib/map/Map<i16,i16>#set:entries
  local.get $0
  local.get $4
  call $~lib/map/Map<i16,i16>#set:entriesCapacity
  local.get $0
  local.get $0
  i32.load offset=20
  call $~lib/map/Map<i16,i16>#set:entriesOffset
 )
 (func $~lib/map/Map<i16,i16>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/hash/HASH<i16>|inlined.4 (result i32)
   local.get $1
   local.set $3
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 2
   i32.const 1
   i32.eq
   drop
   i32.const 2
   i32.const 2
   i32.eq
   drop
   local.get $3
   i32.const 16
   i32.shl
   i32.const 16
   i32.shr_s
   call $~lib/util/hash/hash16
   br $~lib/util/hash/HASH<i16>|inlined.4
  end
  local.set $4
  local.get $0
  local.get $1
  local.get $4
  call $~lib/map/Map<i16,i16>#find
  local.set $5
  local.get $5
  if
   local.get $5
   local.get $2
   call $~lib/map/MapEntry<i16,i16>#set:value
   i32.const 0
   drop
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<i16,i16>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $3
   local.get $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $6
   i32.const 1
   i32.add
   call $~lib/map/Map<i16,i16>#set:entriesOffset
   local.get $6
   i32.const 8
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   call $~lib/map/MapEntry<i16,i16>#set:key
   i32.const 0
   drop
   local.get $5
   local.get $2
   call $~lib/map/MapEntry<i16,i16>#set:value
   i32.const 0
   drop
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<i16,i16>#set:entriesCount
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $6
   local.get $5
   local.get $6
   i32.load
   call $~lib/map/MapEntry<i16,i16>#set:taggedNext
   local.get $6
   local.get $5
   i32.store
  end
  local.get $0
 )
 (func $~lib/map/Map<i16,i16>#get:size (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<i16,i32>#delete (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i16>|inlined.6 (result i32)
   local.get $1
   local.set $2
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 2
   i32.const 1
   i32.eq
   drop
   i32.const 2
   i32.const 2
   i32.eq
   drop
   local.get $2
   i32.const 16
   i32.shl
   i32.const 16
   i32.shr_s
   call $~lib/util/hash/hash16
   br $~lib/util/hash/HASH<i16>|inlined.6
  end
  call $~lib/map/Map<i16,i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $3
  local.get $3
  i32.load offset=8
  i32.const 1
  i32.or
  call $~lib/map/MapEntry<i16,i32>#set:taggedNext
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  call $~lib/map/Map<i16,i32>#set:entriesCount
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.set $4
  local.get $4
  i32.const 1
  i32.add
  i32.const 4
  local.tee $2
  local.get $0
  i32.load offset=20
  local.tee $5
  local.get $2
  local.get $5
  i32.gt_u
  select
  i32.ge_u
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   local.get $0
   local.get $4
   call $~lib/map/Map<i16,i32>#rehash
  end
  i32.const 1
 )
 (func $~lib/map/Map<i16,i32>#clear (param $0 i32)
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i16,i32>#set:buckets
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<i16,i32>#set:bucketsMask
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i16,i32>#set:entries
  local.get $0
  i32.const 4
  call $~lib/map/Map<i16,i32>#set:entriesCapacity
  local.get $0
  i32.const 0
  call $~lib/map/Map<i16,i32>#set:entriesOffset
  local.get $0
  i32.const 0
  call $~lib/map/Map<i16,i32>#set:entriesCount
 )
 (func $std/map/testNumeric<i16,i32>
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
  i32.const 0
  call $~lib/map/Map<i16,i32>#constructor
  local.set $0
  i32.const 0
  local.set $1
  loop $for-loop|1
   local.get $1
   i32.const 16
   i32.shl
   i32.const 16
   i32.shr_s
   i32.const 100
   i32.lt_s
   local.set $3
   local.get $3
   if
    local.get $0
    local.get $1
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 6
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    i32.const 10
    local.get $1
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    i32.add
    call $~lib/map/Map<i16,i32>#set
    drop
    local.get $0
    local.get $1
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 8
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<i16,i32>#get
    i32.const 10
    local.get $1
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 9
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
  local.get $0
  call $~lib/map/Map<i16,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 11
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $1
  loop $for-loop|3
   local.get $1
   i32.const 16
   i32.shl
   i32.const 16
   i32.shr_s
   i32.const 100
   i32.lt_s
   local.set $4
   local.get $4
   if
    local.get $0
    local.get $1
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 15
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<i16,i32>#get
    i32.const 10
    local.get $1
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 16
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    i32.const 20
    local.get $1
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    i32.add
    call $~lib/map/Map<i16,i32>#set
    drop
    local.get $0
    local.get $1
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 18
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<i16,i32>#get
    i32.const 20
    local.get $1
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 19
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
  local.get $0
  call $~lib/map/Map<i16,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 21
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<i16,i32>#keys
  local.set $1
  local.get $0
  call $~lib/map/Map<i16,i32>#values
  local.set $4
  i32.const 0
  call $~lib/map/Map<i16,i16>#constructor
  local.set $5
  i32.const 0
  call $~lib/map/Map<i32,i32>#constructor
  local.set $6
  i32.const 0
  local.set $7
  loop $for-loop|4
   local.get $7
   local.get $1
   call $~lib/array/Array<i16>#get:length
   i32.lt_s
   local.set $8
   local.get $8
   if
    local.get $1
    local.get $7
    call $~lib/array/Array<i16>#__get
    local.set $9
    local.get $4
    local.get $7
    call $~lib/array/Array<i32>#__get
    local.set $10
    local.get $0
    local.get $9
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 31
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $10
    i32.const 20
    i32.sub
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 32
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $5
    local.get $9
    local.get $9
    call $~lib/map/Map<i16,i16>#set
    drop
    local.get $6
    local.get $10
    i32.const 20
    i32.sub
    local.get $10
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    drop
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|4
   end
  end
  local.get $5
  call $~lib/map/Map<i16,i16>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 36
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 37
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $7
  loop $for-loop|6
   local.get $7
   i32.const 16
   i32.shl
   i32.const 16
   i32.shr_s
   i32.const 50
   i32.lt_s
   local.set $10
   local.get $10
   if
    local.get $0
    local.get $7
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 41
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $7
    call $~lib/map/Map<i16,i32>#get
    i32.const 20
    local.get $7
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 42
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $7
    call $~lib/map/Map<i16,i32>#delete
    drop
    local.get $0
    local.get $7
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 44
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|6
   end
  end
  local.get $0
  call $~lib/map/Map<i16,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 46
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $7
  loop $for-loop|8
   local.get $7
   i32.const 16
   i32.shl
   i32.const 16
   i32.shr_s
   i32.const 50
   i32.lt_s
   local.set $9
   local.get $9
   if
    local.get $0
    local.get $7
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 50
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $7
    i32.const 10
    local.get $7
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    i32.add
    call $~lib/map/Map<i16,i32>#set
    drop
    local.get $0
    local.get $7
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 52
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $7
    call $~lib/map/Map<i16,i32>#delete
    drop
    local.get $0
    local.get $7
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 54
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|8
   end
  end
  local.get $0
  call $~lib/map/Map<i16,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 56
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<i16,i32>#clear
  local.get $0
  call $~lib/map/Map<i16,i32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/map/Map<u16,i32>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/map/Map<u16,i32>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/Map<u16,i32>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/map/Map<u16,i32>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/Map<u16,i32>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/map/Map<u16,i32>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
 )
 (func $~lib/map/Map<u16,i32>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 14
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u16,i32>#set:buckets
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<u16,i32>#set:bucketsMask
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u16,i32>#set:entries
  local.get $0
  i32.const 4
  call $~lib/map/Map<u16,i32>#set:entriesCapacity
  local.get $0
  i32.const 0
  call $~lib/map/Map<u16,i32>#set:entriesOffset
  local.get $0
  i32.const 0
  call $~lib/map/Map<u16,i32>#set:entriesCount
  local.get $0
 )
 (func $~lib/map/Map<u16,i32>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  loop $while-continue|0
   local.get $3
   local.set $4
   local.get $4
   if
    local.get $3
    i32.load offset=8
    local.set $5
    local.get $5
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $3
     i32.load16_u
     local.get $1
     i32.const 65535
     i32.and
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $3
     return
    end
    local.get $5
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<u16,i32>#has (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u16>|inlined.0 (result i32)
   local.get $1
   local.set $2
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 2
   i32.const 1
   i32.eq
   drop
   i32.const 2
   i32.const 2
   i32.eq
   drop
   local.get $2
   i32.const 65535
   i32.and
   call $~lib/util/hash/hash16
   br $~lib/util/hash/HASH<u16>|inlined.0
  end
  call $~lib/map/Map<u16,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/MapEntry<u16,i32>#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/MapEntry<u16,i32>#set:key (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store16
 )
 (func $~lib/map/MapEntry<u16,i32>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/map/Map<u16,i32>#rehash (param $0 i32) (param $1 i32)
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
  (local $14 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $4
  i32.const 0
  local.get $4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  loop $while-continue|0
   local.get $6
   local.get $7
   i32.ne
   local.set $9
   local.get $9
   if
    local.get $6
    local.set $10
    local.get $10
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $11
     local.get $10
     i32.load16_u
     local.set $12
     local.get $11
     local.get $12
     call $~lib/map/MapEntry<u16,i32>#set:key
     local.get $11
     local.get $10
     i32.load offset=4
     call $~lib/map/MapEntry<u16,i32>#set:value
     block $~lib/util/hash/HASH<u16>|inlined.2 (result i32)
      local.get $12
      local.set $13
      i32.const 0
      drop
      i32.const 0
      drop
      i32.const 0
      drop
      i32.const 2
      i32.const 1
      i32.eq
      drop
      i32.const 2
      i32.const 2
      i32.eq
      drop
      local.get $13
      call $~lib/util/hash/hash16
      br $~lib/util/hash/HASH<u16>|inlined.2
     end
     local.get $1
     i32.and
     local.set $13
     local.get $3
     local.get $13
     i32.const 4
     i32.mul
     i32.add
     local.set $14
     local.get $11
     local.get $14
     i32.load
     call $~lib/map/MapEntry<u16,i32>#set:taggedNext
     local.get $14
     local.get $8
     i32.store
     local.get $8
     i32.const 12
     i32.add
     local.set $8
    end
    local.get $6
    i32.const 12
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $0
  local.get $3
  call $~lib/map/Map<u16,i32>#set:buckets
  local.get $0
  local.get $1
  call $~lib/map/Map<u16,i32>#set:bucketsMask
  local.get $0
  local.get $5
  call $~lib/map/Map<u16,i32>#set:entries
  local.get $0
  local.get $4
  call $~lib/map/Map<u16,i32>#set:entriesCapacity
  local.get $0
  local.get $0
  i32.load offset=20
  call $~lib/map/Map<u16,i32>#set:entriesOffset
 )
 (func $~lib/map/Map<u16,i32>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/hash/HASH<u16>|inlined.1 (result i32)
   local.get $1
   local.set $3
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 2
   i32.const 1
   i32.eq
   drop
   i32.const 2
   i32.const 2
   i32.eq
   drop
   local.get $3
   i32.const 65535
   i32.and
   call $~lib/util/hash/hash16
   br $~lib/util/hash/HASH<u16>|inlined.1
  end
  local.set $4
  local.get $0
  local.get $1
  local.get $4
  call $~lib/map/Map<u16,i32>#find
  local.set $5
  local.get $5
  if
   local.get $5
   local.get $2
   call $~lib/map/MapEntry<u16,i32>#set:value
   i32.const 0
   drop
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<u16,i32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $3
   local.get $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $6
   i32.const 1
   i32.add
   call $~lib/map/Map<u16,i32>#set:entriesOffset
   local.get $6
   i32.const 12
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   call $~lib/map/MapEntry<u16,i32>#set:key
   i32.const 0
   drop
   local.get $5
   local.get $2
   call $~lib/map/MapEntry<u16,i32>#set:value
   i32.const 0
   drop
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<u16,i32>#set:entriesCount
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $6
   local.get $5
   local.get $6
   i32.load
   call $~lib/map/MapEntry<u16,i32>#set:taggedNext
   local.get $6
   local.get $5
   i32.store
  end
  local.get $0
 )
 (func $~lib/map/Map<u16,i32>#get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u16>|inlined.3 (result i32)
   local.get $1
   local.set $2
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 2
   i32.const 1
   i32.eq
   drop
   i32.const 2
   i32.const 2
   i32.eq
   drop
   local.get $2
   i32.const 65535
   i32.and
   call $~lib/util/hash/hash16
   br $~lib/util/hash/HASH<u16>|inlined.3
  end
  call $~lib/map/Map<u16,i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 432
   i32.const 496
   i32.const 105
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=4
 )
 (func $~lib/map/Map<u16,i32>#get:size (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/array/Array<u16>#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/array/Array<u16>#set:dataStart (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/array/Array<u16>#set:byteLength (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/array/Array<u16>#set:length_ (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/array/Array<u16>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 15
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  call $~lib/array/Array<u16>#set:buffer
  local.get $0
  i32.const 0
  call $~lib/array/Array<u16>#set:dataStart
  local.get $0
  i32.const 0
  call $~lib/array/Array<u16>#set:byteLength
  local.get $0
  i32.const 0
  call $~lib/array/Array<u16>#set:length_
  local.get $1
  i32.const 1073741820
  i32.const 1
  i32.shr_u
  i32.gt_u
  if
   i32.const 272
   i32.const 544
   i32.const 58
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.shl
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/rt/tcms/__new
  local.set $3
  local.get $3
  i32.const 0
  local.get $2
  call $~lib/memory/memory.fill
  local.get $0
  local.get $3
  call $~lib/array/Array<u16>#set:buffer
  local.get $0
  local.get $3
  call $~lib/array/Array<u16>#set:dataStart
  local.get $0
  local.get $2
  call $~lib/array/Array<u16>#set:byteLength
  local.get $0
  local.get $1
  call $~lib/array/Array<u16>#set:length_
  local.get $0
 )
 (func $~lib/array/Array<u16>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.get $2
  i32.store16
  i32.const 0
  drop
 )
 (func $~lib/array/Array<u16>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 592
    i32.const 544
    i32.const 108
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.const 1
   call $~lib/array/ensureSize
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   call $~lib/array/Array<u16>#set:length_
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<u16>#__uset
 )
 (func $~lib/array/Array<u16>#set:length (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.const 1
  call $~lib/array/ensureSize
  local.get $0
  local.get $1
  call $~lib/array/Array<u16>#set:length_
 )
 (func $~lib/map/Map<u16,i32>#keys (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 0
  local.get $2
  call $~lib/array/Array<u16>#constructor
  local.set $3
  i32.const 0
  local.set $4
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   local.get $2
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $1
    local.get $5
    i32.const 12
    i32.mul
    i32.add
    local.set $7
    local.get $7
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $4
     local.tee $8
     i32.const 1
     i32.add
     local.set $4
     local.get $8
     local.get $7
     i32.load16_u
     call $~lib/array/Array<u16>#__set
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $3
  local.get $4
  call $~lib/array/Array<u16>#set:length
  local.get $3
 )
 (func $~lib/map/Map<u16,i32>#values (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 0
  local.get $2
  call $~lib/array/Array<i32>#constructor
  local.set $3
  i32.const 0
  local.set $4
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   local.get $2
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $1
    local.get $5
    i32.const 12
    i32.mul
    i32.add
    local.set $7
    local.get $7
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $4
     local.tee $8
     i32.const 1
     i32.add
     local.set $4
     local.get $8
     local.get $7
     i32.load offset=4
     call $~lib/array/Array<i32>#__set
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $3
  local.get $4
  call $~lib/array/Array<i32>#set:length
  local.get $3
 )
 (func $~lib/map/Map<u16,u16>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/map/Map<u16,u16>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/Map<u16,u16>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/map/Map<u16,u16>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/Map<u16,u16>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/map/Map<u16,u16>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
 )
 (func $~lib/map/Map<u16,u16>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 16
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u16,u16>#set:buckets
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<u16,u16>#set:bucketsMask
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 8
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u16,u16>#set:entries
  local.get $0
  i32.const 4
  call $~lib/map/Map<u16,u16>#set:entriesCapacity
  local.get $0
  i32.const 0
  call $~lib/map/Map<u16,u16>#set:entriesOffset
  local.get $0
  i32.const 0
  call $~lib/map/Map<u16,u16>#set:entriesCount
  local.get $0
 )
 (func $~lib/array/Array<u16>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<u16>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
 )
 (func $~lib/array/Array<u16>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 592
   i32.const 544
   i32.const 92
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u16>#__uget
  local.set $2
  i32.const 0
  drop
  local.get $2
 )
 (func $~lib/map/Map<u16,u16>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  loop $while-continue|0
   local.get $3
   local.set $4
   local.get $4
   if
    local.get $3
    i32.load offset=4
    local.set $5
    local.get $5
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $3
     i32.load16_u
     local.get $1
     i32.const 65535
     i32.and
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $3
     return
    end
    local.get $5
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/MapEntry<u16,u16>#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store16 offset=2
 )
 (func $~lib/map/MapEntry<u16,u16>#set:key (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store16
 )
 (func $~lib/map/MapEntry<u16,u16>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/Map<u16,u16>#rehash (param $0 i32) (param $1 i32)
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
  (local $14 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $4
  i32.const 0
  local.get $4
  i32.const 8
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  i32.const 8
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  loop $while-continue|0
   local.get $6
   local.get $7
   i32.ne
   local.set $9
   local.get $9
   if
    local.get $6
    local.set $10
    local.get $10
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $11
     local.get $10
     i32.load16_u
     local.set $12
     local.get $11
     local.get $12
     call $~lib/map/MapEntry<u16,u16>#set:key
     local.get $11
     local.get $10
     i32.load16_u offset=2
     call $~lib/map/MapEntry<u16,u16>#set:value
     block $~lib/util/hash/HASH<u16>|inlined.5 (result i32)
      local.get $12
      local.set $13
      i32.const 0
      drop
      i32.const 0
      drop
      i32.const 0
      drop
      i32.const 2
      i32.const 1
      i32.eq
      drop
      i32.const 2
      i32.const 2
      i32.eq
      drop
      local.get $13
      call $~lib/util/hash/hash16
      br $~lib/util/hash/HASH<u16>|inlined.5
     end
     local.get $1
     i32.and
     local.set $13
     local.get $3
     local.get $13
     i32.const 4
     i32.mul
     i32.add
     local.set $14
     local.get $11
     local.get $14
     i32.load
     call $~lib/map/MapEntry<u16,u16>#set:taggedNext
     local.get $14
     local.get $8
     i32.store
     local.get $8
     i32.const 8
     i32.add
     local.set $8
    end
    local.get $6
    i32.const 8
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $0
  local.get $3
  call $~lib/map/Map<u16,u16>#set:buckets
  local.get $0
  local.get $1
  call $~lib/map/Map<u16,u16>#set:bucketsMask
  local.get $0
  local.get $5
  call $~lib/map/Map<u16,u16>#set:entries
  local.get $0
  local.get $4
  call $~lib/map/Map<u16,u16>#set:entriesCapacity
  local.get $0
  local.get $0
  i32.load offset=20
  call $~lib/map/Map<u16,u16>#set:entriesOffset
 )
 (func $~lib/map/Map<u16,u16>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/hash/HASH<u16>|inlined.4 (result i32)
   local.get $1
   local.set $3
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 2
   i32.const 1
   i32.eq
   drop
   i32.const 2
   i32.const 2
   i32.eq
   drop
   local.get $3
   i32.const 65535
   i32.and
   call $~lib/util/hash/hash16
   br $~lib/util/hash/HASH<u16>|inlined.4
  end
  local.set $4
  local.get $0
  local.get $1
  local.get $4
  call $~lib/map/Map<u16,u16>#find
  local.set $5
  local.get $5
  if
   local.get $5
   local.get $2
   call $~lib/map/MapEntry<u16,u16>#set:value
   i32.const 0
   drop
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<u16,u16>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $3
   local.get $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $6
   i32.const 1
   i32.add
   call $~lib/map/Map<u16,u16>#set:entriesOffset
   local.get $6
   i32.const 8
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   call $~lib/map/MapEntry<u16,u16>#set:key
   i32.const 0
   drop
   local.get $5
   local.get $2
   call $~lib/map/MapEntry<u16,u16>#set:value
   i32.const 0
   drop
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<u16,u16>#set:entriesCount
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $6
   local.get $5
   local.get $6
   i32.load
   call $~lib/map/MapEntry<u16,u16>#set:taggedNext
   local.get $6
   local.get $5
   i32.store
  end
  local.get $0
 )
 (func $~lib/map/Map<u16,u16>#get:size (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<u16,i32>#delete (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u16>|inlined.6 (result i32)
   local.get $1
   local.set $2
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 2
   i32.const 1
   i32.eq
   drop
   i32.const 2
   i32.const 2
   i32.eq
   drop
   local.get $2
   i32.const 65535
   i32.and
   call $~lib/util/hash/hash16
   br $~lib/util/hash/HASH<u16>|inlined.6
  end
  call $~lib/map/Map<u16,i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $3
  local.get $3
  i32.load offset=8
  i32.const 1
  i32.or
  call $~lib/map/MapEntry<u16,i32>#set:taggedNext
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  call $~lib/map/Map<u16,i32>#set:entriesCount
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.set $4
  local.get $4
  i32.const 1
  i32.add
  i32.const 4
  local.tee $2
  local.get $0
  i32.load offset=20
  local.tee $5
  local.get $2
  local.get $5
  i32.gt_u
  select
  i32.ge_u
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   local.get $0
   local.get $4
   call $~lib/map/Map<u16,i32>#rehash
  end
  i32.const 1
 )
 (func $~lib/map/Map<u16,i32>#clear (param $0 i32)
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u16,i32>#set:buckets
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<u16,i32>#set:bucketsMask
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u16,i32>#set:entries
  local.get $0
  i32.const 4
  call $~lib/map/Map<u16,i32>#set:entriesCapacity
  local.get $0
  i32.const 0
  call $~lib/map/Map<u16,i32>#set:entriesOffset
  local.get $0
  i32.const 0
  call $~lib/map/Map<u16,i32>#set:entriesCount
 )
 (func $std/map/testNumeric<u16,i32>
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
  i32.const 0
  call $~lib/map/Map<u16,i32>#constructor
  local.set $0
  i32.const 0
  local.set $1
  loop $for-loop|1
   local.get $1
   i32.const 65535
   i32.and
   i32.const 100
   i32.lt_u
   local.set $3
   local.get $3
   if
    local.get $0
    local.get $1
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 6
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    i32.const 10
    local.get $1
    i32.const 65535
    i32.and
    i32.add
    call $~lib/map/Map<u16,i32>#set
    drop
    local.get $0
    local.get $1
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 8
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<u16,i32>#get
    i32.const 10
    local.get $1
    i32.const 65535
    i32.and
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 9
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
  local.get $0
  call $~lib/map/Map<u16,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 11
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $1
  loop $for-loop|3
   local.get $1
   i32.const 65535
   i32.and
   i32.const 100
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $0
    local.get $1
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 15
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<u16,i32>#get
    i32.const 10
    local.get $1
    i32.const 65535
    i32.and
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 16
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    i32.const 20
    local.get $1
    i32.const 65535
    i32.and
    i32.add
    call $~lib/map/Map<u16,i32>#set
    drop
    local.get $0
    local.get $1
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 18
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<u16,i32>#get
    i32.const 20
    local.get $1
    i32.const 65535
    i32.and
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 19
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
  local.get $0
  call $~lib/map/Map<u16,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 21
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<u16,i32>#keys
  local.set $1
  local.get $0
  call $~lib/map/Map<u16,i32>#values
  local.set $4
  i32.const 0
  call $~lib/map/Map<u16,u16>#constructor
  local.set $5
  i32.const 0
  call $~lib/map/Map<i32,i32>#constructor
  local.set $6
  i32.const 0
  local.set $7
  loop $for-loop|4
   local.get $7
   local.get $1
   call $~lib/array/Array<u16>#get:length
   i32.lt_s
   local.set $8
   local.get $8
   if
    local.get $1
    local.get $7
    call $~lib/array/Array<u16>#__get
    local.set $9
    local.get $4
    local.get $7
    call $~lib/array/Array<i32>#__get
    local.set $10
    local.get $0
    local.get $9
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 31
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $10
    i32.const 20
    i32.sub
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 32
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $5
    local.get $9
    local.get $9
    call $~lib/map/Map<u16,u16>#set
    drop
    local.get $6
    local.get $10
    i32.const 20
    i32.sub
    local.get $10
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    drop
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|4
   end
  end
  local.get $5
  call $~lib/map/Map<u16,u16>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 36
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 37
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $7
  loop $for-loop|6
   local.get $7
   i32.const 65535
   i32.and
   i32.const 50
   i32.lt_u
   local.set $10
   local.get $10
   if
    local.get $0
    local.get $7
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 41
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $7
    call $~lib/map/Map<u16,i32>#get
    i32.const 20
    local.get $7
    i32.const 65535
    i32.and
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 42
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $7
    call $~lib/map/Map<u16,i32>#delete
    drop
    local.get $0
    local.get $7
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 44
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|6
   end
  end
  local.get $0
  call $~lib/map/Map<u16,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 46
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $7
  loop $for-loop|8
   local.get $7
   i32.const 65535
   i32.and
   i32.const 50
   i32.lt_u
   local.set $9
   local.get $9
   if
    local.get $0
    local.get $7
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 50
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $7
    i32.const 10
    local.get $7
    i32.const 65535
    i32.and
    i32.add
    call $~lib/map/Map<u16,i32>#set
    drop
    local.get $0
    local.get $7
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 52
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $7
    call $~lib/map/Map<u16,i32>#delete
    drop
    local.get $0
    local.get $7
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 54
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|8
   end
  end
  local.get $0
  call $~lib/map/Map<u16,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 56
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<u16,i32>#clear
  local.get $0
  call $~lib/map/Map<u16,i32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/map/Map<i32,i32>#has (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i32>|inlined.2 (result i32)
   local.get $1
   local.set $2
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 4
   i32.const 1
   i32.eq
   drop
   i32.const 4
   i32.const 2
   i32.eq
   drop
   i32.const 4
   i32.const 4
   i32.eq
   drop
   local.get $2
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<i32>|inlined.2
  end
  call $~lib/map/Map<i32,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<i32,i32>#get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i32>|inlined.3 (result i32)
   local.get $1
   local.set $2
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 4
   i32.const 1
   i32.eq
   drop
   i32.const 4
   i32.const 2
   i32.eq
   drop
   i32.const 4
   i32.const 4
   i32.eq
   drop
   local.get $2
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<i32>|inlined.3
  end
  call $~lib/map/Map<i32,i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 432
   i32.const 496
   i32.const 105
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=4
 )
 (func $~lib/map/Map<i32,i32>#keys (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 0
  local.get $2
  call $~lib/array/Array<i32>#constructor
  local.set $3
  i32.const 0
  local.set $4
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   local.get $2
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $1
    local.get $5
    i32.const 12
    i32.mul
    i32.add
    local.set $7
    local.get $7
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $4
     local.tee $8
     i32.const 1
     i32.add
     local.set $4
     local.get $8
     local.get $7
     i32.load
     call $~lib/array/Array<i32>#__set
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $3
  local.get $4
  call $~lib/array/Array<i32>#set:length
  local.get $3
 )
 (func $~lib/map/Map<i32,i32>#values (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 0
  local.get $2
  call $~lib/array/Array<i32>#constructor
  local.set $3
  i32.const 0
  local.set $4
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   local.get $2
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $1
    local.get $5
    i32.const 12
    i32.mul
    i32.add
    local.set $7
    local.get $7
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $4
     local.tee $8
     i32.const 1
     i32.add
     local.set $4
     local.get $8
     local.get $7
     i32.load offset=4
     call $~lib/array/Array<i32>#__set
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $3
  local.get $4
  call $~lib/array/Array<i32>#set:length
  local.get $3
 )
 (func $~lib/array/Array<i32>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/map/Map<i32,i32>#delete (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i32>|inlined.4 (result i32)
   local.get $1
   local.set $2
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 4
   i32.const 1
   i32.eq
   drop
   i32.const 4
   i32.const 2
   i32.eq
   drop
   i32.const 4
   i32.const 4
   i32.eq
   drop
   local.get $2
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<i32>|inlined.4
  end
  call $~lib/map/Map<i32,i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $3
  local.get $3
  i32.load offset=8
  i32.const 1
  i32.or
  call $~lib/map/MapEntry<i32,i32>#set:taggedNext
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  call $~lib/map/Map<i32,i32>#set:entriesCount
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.set $4
  local.get $4
  i32.const 1
  i32.add
  i32.const 4
  local.tee $2
  local.get $0
  i32.load offset=20
  local.tee $5
  local.get $2
  local.get $5
  i32.gt_u
  select
  i32.ge_u
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   local.get $0
   local.get $4
   call $~lib/map/Map<i32,i32>#rehash
  end
  i32.const 1
 )
 (func $~lib/map/Map<i32,i32>#clear (param $0 i32)
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i32,i32>#set:buckets
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<i32,i32>#set:bucketsMask
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i32,i32>#set:entries
  local.get $0
  i32.const 4
  call $~lib/map/Map<i32,i32>#set:entriesCapacity
  local.get $0
  i32.const 0
  call $~lib/map/Map<i32,i32>#set:entriesOffset
  local.get $0
  i32.const 0
  call $~lib/map/Map<i32,i32>#set:entriesCount
 )
 (func $std/map/testNumeric<i32,i32>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 0
  call $~lib/map/Map<i32,i32>#constructor
  local.set $0
  i32.const 0
  local.set $1
  loop $for-loop|0
   local.get $1
   i32.const 100
   i32.lt_s
   local.set $2
   local.get $2
   if
    local.get $0
    local.get $1
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 6
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    i32.const 10
    local.get $1
    i32.add
    call $~lib/map/Map<i32,i32>#set
    drop
    local.get $0
    local.get $1
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 8
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<i32,i32>#get
    i32.const 10
    local.get $1
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 9
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
  local.get $0
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 11
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $1
  loop $for-loop|1
   local.get $1
   i32.const 100
   i32.lt_s
   local.set $2
   local.get $2
   if
    local.get $0
    local.get $1
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 15
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<i32,i32>#get
    i32.const 10
    local.get $1
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 16
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    i32.const 20
    local.get $1
    i32.add
    call $~lib/map/Map<i32,i32>#set
    drop
    local.get $0
    local.get $1
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 18
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<i32,i32>#get
    i32.const 20
    local.get $1
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 19
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
  local.get $0
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 21
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<i32,i32>#keys
  local.set $1
  local.get $0
  call $~lib/map/Map<i32,i32>#values
  local.set $2
  i32.const 0
  call $~lib/map/Map<i32,i32>#constructor
  local.set $3
  i32.const 0
  call $~lib/map/Map<i32,i32>#constructor
  local.set $4
  i32.const 0
  local.set $5
  loop $for-loop|2
   local.get $5
   local.get $1
   call $~lib/array/Array<i32>#get:length
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $1
    local.get $5
    call $~lib/array/Array<i32>#__get
    local.set $7
    local.get $2
    local.get $5
    call $~lib/array/Array<i32>#__get
    local.set $8
    local.get $0
    local.get $7
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 31
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $8
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 32
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $3
    local.get $7
    local.get $7
    call $~lib/map/Map<i32,i32>#set
    drop
    local.get $4
    local.get $8
    i32.const 20
    i32.sub
    local.get $8
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    drop
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|2
   end
  end
  local.get $3
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 36
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 37
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $5
  loop $for-loop|3
   local.get $5
   i32.const 50
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $0
    local.get $5
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 41
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $5
    call $~lib/map/Map<i32,i32>#get
    i32.const 20
    local.get $5
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 42
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $5
    call $~lib/map/Map<i32,i32>#delete
    drop
    local.get $0
    local.get $5
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 44
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|3
   end
  end
  local.get $0
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 46
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $5
  loop $for-loop|4
   local.get $5
   i32.const 50
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $0
    local.get $5
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 50
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $5
    i32.const 10
    local.get $5
    i32.add
    call $~lib/map/Map<i32,i32>#set
    drop
    local.get $0
    local.get $5
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 52
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $5
    call $~lib/map/Map<i32,i32>#delete
    drop
    local.get $0
    local.get $5
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 54
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|4
   end
  end
  local.get $0
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 56
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<i32,i32>#clear
  local.get $0
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/map/Map<u32,i32>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/map/Map<u32,i32>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/Map<u32,i32>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/map/Map<u32,i32>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/Map<u32,i32>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/map/Map<u32,i32>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
 )
 (func $~lib/map/Map<u32,i32>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 17
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u32,i32>#set:buckets
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<u32,i32>#set:bucketsMask
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u32,i32>#set:entries
  local.get $0
  i32.const 4
  call $~lib/map/Map<u32,i32>#set:entriesCapacity
  local.get $0
  i32.const 0
  call $~lib/map/Map<u32,i32>#set:entriesOffset
  local.get $0
  i32.const 0
  call $~lib/map/Map<u32,i32>#set:entriesCount
  local.get $0
 )
 (func $~lib/map/Map<u32,i32>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  loop $while-continue|0
   local.get $3
   local.set $4
   local.get $4
   if
    local.get $3
    i32.load offset=8
    local.set $5
    local.get $5
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $3
     i32.load
     local.get $1
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $3
     return
    end
    local.get $5
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<u32,i32>#has (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u32>|inlined.0 (result i32)
   local.get $1
   local.set $2
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 4
   i32.const 1
   i32.eq
   drop
   i32.const 4
   i32.const 2
   i32.eq
   drop
   i32.const 4
   i32.const 4
   i32.eq
   drop
   local.get $2
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<u32>|inlined.0
  end
  call $~lib/map/Map<u32,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/MapEntry<u32,i32>#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/MapEntry<u32,i32>#set:key (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/map/MapEntry<u32,i32>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/map/Map<u32,i32>#rehash (param $0 i32) (param $1 i32)
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
  (local $14 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $4
  i32.const 0
  local.get $4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  loop $while-continue|0
   local.get $6
   local.get $7
   i32.ne
   local.set $9
   local.get $9
   if
    local.get $6
    local.set $10
    local.get $10
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $11
     local.get $10
     i32.load
     local.set $12
     local.get $11
     local.get $12
     call $~lib/map/MapEntry<u32,i32>#set:key
     local.get $11
     local.get $10
     i32.load offset=4
     call $~lib/map/MapEntry<u32,i32>#set:value
     block $~lib/util/hash/HASH<u32>|inlined.2 (result i32)
      local.get $12
      local.set $13
      i32.const 0
      drop
      i32.const 0
      drop
      i32.const 0
      drop
      i32.const 4
      i32.const 1
      i32.eq
      drop
      i32.const 4
      i32.const 2
      i32.eq
      drop
      i32.const 4
      i32.const 4
      i32.eq
      drop
      local.get $13
      call $~lib/util/hash/hash32
      br $~lib/util/hash/HASH<u32>|inlined.2
     end
     local.get $1
     i32.and
     local.set $13
     local.get $3
     local.get $13
     i32.const 4
     i32.mul
     i32.add
     local.set $14
     local.get $11
     local.get $14
     i32.load
     call $~lib/map/MapEntry<u32,i32>#set:taggedNext
     local.get $14
     local.get $8
     i32.store
     local.get $8
     i32.const 12
     i32.add
     local.set $8
    end
    local.get $6
    i32.const 12
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $0
  local.get $3
  call $~lib/map/Map<u32,i32>#set:buckets
  local.get $0
  local.get $1
  call $~lib/map/Map<u32,i32>#set:bucketsMask
  local.get $0
  local.get $5
  call $~lib/map/Map<u32,i32>#set:entries
  local.get $0
  local.get $4
  call $~lib/map/Map<u32,i32>#set:entriesCapacity
  local.get $0
  local.get $0
  i32.load offset=20
  call $~lib/map/Map<u32,i32>#set:entriesOffset
 )
 (func $~lib/map/Map<u32,i32>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/hash/HASH<u32>|inlined.1 (result i32)
   local.get $1
   local.set $3
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 4
   i32.const 1
   i32.eq
   drop
   i32.const 4
   i32.const 2
   i32.eq
   drop
   i32.const 4
   i32.const 4
   i32.eq
   drop
   local.get $3
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<u32>|inlined.1
  end
  local.set $4
  local.get $0
  local.get $1
  local.get $4
  call $~lib/map/Map<u32,i32>#find
  local.set $5
  local.get $5
  if
   local.get $5
   local.get $2
   call $~lib/map/MapEntry<u32,i32>#set:value
   i32.const 0
   drop
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<u32,i32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $3
   local.get $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $6
   i32.const 1
   i32.add
   call $~lib/map/Map<u32,i32>#set:entriesOffset
   local.get $6
   i32.const 12
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   call $~lib/map/MapEntry<u32,i32>#set:key
   i32.const 0
   drop
   local.get $5
   local.get $2
   call $~lib/map/MapEntry<u32,i32>#set:value
   i32.const 0
   drop
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<u32,i32>#set:entriesCount
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $6
   local.get $5
   local.get $6
   i32.load
   call $~lib/map/MapEntry<u32,i32>#set:taggedNext
   local.get $6
   local.get $5
   i32.store
  end
  local.get $0
 )
 (func $~lib/map/Map<u32,i32>#get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u32>|inlined.3 (result i32)
   local.get $1
   local.set $2
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 4
   i32.const 1
   i32.eq
   drop
   i32.const 4
   i32.const 2
   i32.eq
   drop
   i32.const 4
   i32.const 4
   i32.eq
   drop
   local.get $2
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<u32>|inlined.3
  end
  call $~lib/map/Map<u32,i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 432
   i32.const 496
   i32.const 105
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=4
 )
 (func $~lib/map/Map<u32,i32>#get:size (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/array/Array<u32>#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/array/Array<u32>#set:dataStart (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/array/Array<u32>#set:byteLength (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/array/Array<u32>#set:length_ (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/array/Array<u32>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 18
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  call $~lib/array/Array<u32>#set:buffer
  local.get $0
  i32.const 0
  call $~lib/array/Array<u32>#set:dataStart
  local.get $0
  i32.const 0
  call $~lib/array/Array<u32>#set:byteLength
  local.get $0
  i32.const 0
  call $~lib/array/Array<u32>#set:length_
  local.get $1
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 272
   i32.const 544
   i32.const 58
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.shl
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/rt/tcms/__new
  local.set $3
  local.get $3
  i32.const 0
  local.get $2
  call $~lib/memory/memory.fill
  local.get $0
  local.get $3
  call $~lib/array/Array<u32>#set:buffer
  local.get $0
  local.get $3
  call $~lib/array/Array<u32>#set:dataStart
  local.get $0
  local.get $2
  call $~lib/array/Array<u32>#set:byteLength
  local.get $0
  local.get $1
  call $~lib/array/Array<u32>#set:length_
  local.get $0
 )
 (func $~lib/array/Array<u32>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
  i32.const 0
  drop
 )
 (func $~lib/array/Array<u32>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 592
    i32.const 544
    i32.const 108
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.const 2
   call $~lib/array/ensureSize
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   call $~lib/array/Array<u32>#set:length_
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<u32>#__uset
 )
 (func $~lib/array/Array<u32>#set:length (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  local.get $1
  call $~lib/array/Array<u32>#set:length_
 )
 (func $~lib/map/Map<u32,i32>#keys (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 0
  local.get $2
  call $~lib/array/Array<u32>#constructor
  local.set $3
  i32.const 0
  local.set $4
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   local.get $2
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $1
    local.get $5
    i32.const 12
    i32.mul
    i32.add
    local.set $7
    local.get $7
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $4
     local.tee $8
     i32.const 1
     i32.add
     local.set $4
     local.get $8
     local.get $7
     i32.load
     call $~lib/array/Array<u32>#__set
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $3
  local.get $4
  call $~lib/array/Array<u32>#set:length
  local.get $3
 )
 (func $~lib/map/Map<u32,i32>#values (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 0
  local.get $2
  call $~lib/array/Array<i32>#constructor
  local.set $3
  i32.const 0
  local.set $4
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   local.get $2
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $1
    local.get $5
    i32.const 12
    i32.mul
    i32.add
    local.set $7
    local.get $7
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $4
     local.tee $8
     i32.const 1
     i32.add
     local.set $4
     local.get $8
     local.get $7
     i32.load offset=4
     call $~lib/array/Array<i32>#__set
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $3
  local.get $4
  call $~lib/array/Array<i32>#set:length
  local.get $3
 )
 (func $~lib/map/Map<u32,u32>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/map/Map<u32,u32>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/Map<u32,u32>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/map/Map<u32,u32>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/Map<u32,u32>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/map/Map<u32,u32>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
 )
 (func $~lib/map/Map<u32,u32>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 19
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u32,u32>#set:buckets
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<u32,u32>#set:bucketsMask
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u32,u32>#set:entries
  local.get $0
  i32.const 4
  call $~lib/map/Map<u32,u32>#set:entriesCapacity
  local.get $0
  i32.const 0
  call $~lib/map/Map<u32,u32>#set:entriesOffset
  local.get $0
  i32.const 0
  call $~lib/map/Map<u32,u32>#set:entriesCount
  local.get $0
 )
 (func $~lib/array/Array<u32>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<u32>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<u32>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 592
   i32.const 544
   i32.const 92
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u32>#__uget
  local.set $2
  i32.const 0
  drop
  local.get $2
 )
 (func $~lib/map/Map<u32,u32>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  loop $while-continue|0
   local.get $3
   local.set $4
   local.get $4
   if
    local.get $3
    i32.load offset=8
    local.set $5
    local.get $5
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $3
     i32.load
     local.get $1
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $3
     return
    end
    local.get $5
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/MapEntry<u32,u32>#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/MapEntry<u32,u32>#set:key (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/map/MapEntry<u32,u32>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/map/Map<u32,u32>#rehash (param $0 i32) (param $1 i32)
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
  (local $14 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $4
  i32.const 0
  local.get $4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  loop $while-continue|0
   local.get $6
   local.get $7
   i32.ne
   local.set $9
   local.get $9
   if
    local.get $6
    local.set $10
    local.get $10
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $11
     local.get $10
     i32.load
     local.set $12
     local.get $11
     local.get $12
     call $~lib/map/MapEntry<u32,u32>#set:key
     local.get $11
     local.get $10
     i32.load offset=4
     call $~lib/map/MapEntry<u32,u32>#set:value
     block $~lib/util/hash/HASH<u32>|inlined.5 (result i32)
      local.get $12
      local.set $13
      i32.const 0
      drop
      i32.const 0
      drop
      i32.const 0
      drop
      i32.const 4
      i32.const 1
      i32.eq
      drop
      i32.const 4
      i32.const 2
      i32.eq
      drop
      i32.const 4
      i32.const 4
      i32.eq
      drop
      local.get $13
      call $~lib/util/hash/hash32
      br $~lib/util/hash/HASH<u32>|inlined.5
     end
     local.get $1
     i32.and
     local.set $13
     local.get $3
     local.get $13
     i32.const 4
     i32.mul
     i32.add
     local.set $14
     local.get $11
     local.get $14
     i32.load
     call $~lib/map/MapEntry<u32,u32>#set:taggedNext
     local.get $14
     local.get $8
     i32.store
     local.get $8
     i32.const 12
     i32.add
     local.set $8
    end
    local.get $6
    i32.const 12
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $0
  local.get $3
  call $~lib/map/Map<u32,u32>#set:buckets
  local.get $0
  local.get $1
  call $~lib/map/Map<u32,u32>#set:bucketsMask
  local.get $0
  local.get $5
  call $~lib/map/Map<u32,u32>#set:entries
  local.get $0
  local.get $4
  call $~lib/map/Map<u32,u32>#set:entriesCapacity
  local.get $0
  local.get $0
  i32.load offset=20
  call $~lib/map/Map<u32,u32>#set:entriesOffset
 )
 (func $~lib/map/Map<u32,u32>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/hash/HASH<u32>|inlined.4 (result i32)
   local.get $1
   local.set $3
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 4
   i32.const 1
   i32.eq
   drop
   i32.const 4
   i32.const 2
   i32.eq
   drop
   i32.const 4
   i32.const 4
   i32.eq
   drop
   local.get $3
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<u32>|inlined.4
  end
  local.set $4
  local.get $0
  local.get $1
  local.get $4
  call $~lib/map/Map<u32,u32>#find
  local.set $5
  local.get $5
  if
   local.get $5
   local.get $2
   call $~lib/map/MapEntry<u32,u32>#set:value
   i32.const 0
   drop
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<u32,u32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $3
   local.get $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $6
   i32.const 1
   i32.add
   call $~lib/map/Map<u32,u32>#set:entriesOffset
   local.get $6
   i32.const 12
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   call $~lib/map/MapEntry<u32,u32>#set:key
   i32.const 0
   drop
   local.get $5
   local.get $2
   call $~lib/map/MapEntry<u32,u32>#set:value
   i32.const 0
   drop
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<u32,u32>#set:entriesCount
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $6
   local.get $5
   local.get $6
   i32.load
   call $~lib/map/MapEntry<u32,u32>#set:taggedNext
   local.get $6
   local.get $5
   i32.store
  end
  local.get $0
 )
 (func $~lib/map/Map<u32,u32>#get:size (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<u32,i32>#delete (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u32>|inlined.6 (result i32)
   local.get $1
   local.set $2
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 4
   i32.const 1
   i32.eq
   drop
   i32.const 4
   i32.const 2
   i32.eq
   drop
   i32.const 4
   i32.const 4
   i32.eq
   drop
   local.get $2
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<u32>|inlined.6
  end
  call $~lib/map/Map<u32,i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $3
  local.get $3
  i32.load offset=8
  i32.const 1
  i32.or
  call $~lib/map/MapEntry<u32,i32>#set:taggedNext
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  call $~lib/map/Map<u32,i32>#set:entriesCount
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.set $4
  local.get $4
  i32.const 1
  i32.add
  i32.const 4
  local.tee $2
  local.get $0
  i32.load offset=20
  local.tee $5
  local.get $2
  local.get $5
  i32.gt_u
  select
  i32.ge_u
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   local.get $0
   local.get $4
   call $~lib/map/Map<u32,i32>#rehash
  end
  i32.const 1
 )
 (func $~lib/map/Map<u32,i32>#clear (param $0 i32)
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u32,i32>#set:buckets
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<u32,i32>#set:bucketsMask
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u32,i32>#set:entries
  local.get $0
  i32.const 4
  call $~lib/map/Map<u32,i32>#set:entriesCapacity
  local.get $0
  i32.const 0
  call $~lib/map/Map<u32,i32>#set:entriesOffset
  local.get $0
  i32.const 0
  call $~lib/map/Map<u32,i32>#set:entriesCount
 )
 (func $std/map/testNumeric<u32,i32>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 0
  call $~lib/map/Map<u32,i32>#constructor
  local.set $0
  i32.const 0
  local.set $1
  loop $for-loop|0
   local.get $1
   i32.const 100
   i32.lt_u
   local.set $2
   local.get $2
   if
    local.get $0
    local.get $1
    call $~lib/map/Map<u32,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 6
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    i32.const 10
    local.get $1
    i32.add
    call $~lib/map/Map<u32,i32>#set
    drop
    local.get $0
    local.get $1
    call $~lib/map/Map<u32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 8
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<u32,i32>#get
    i32.const 10
    local.get $1
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 9
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
  local.get $0
  call $~lib/map/Map<u32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 11
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $1
  loop $for-loop|1
   local.get $1
   i32.const 100
   i32.lt_u
   local.set $2
   local.get $2
   if
    local.get $0
    local.get $1
    call $~lib/map/Map<u32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 15
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<u32,i32>#get
    i32.const 10
    local.get $1
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 16
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    i32.const 20
    local.get $1
    i32.add
    call $~lib/map/Map<u32,i32>#set
    drop
    local.get $0
    local.get $1
    call $~lib/map/Map<u32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 18
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<u32,i32>#get
    i32.const 20
    local.get $1
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 19
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
  local.get $0
  call $~lib/map/Map<u32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 21
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<u32,i32>#keys
  local.set $1
  local.get $0
  call $~lib/map/Map<u32,i32>#values
  local.set $2
  i32.const 0
  call $~lib/map/Map<u32,u32>#constructor
  local.set $3
  i32.const 0
  call $~lib/map/Map<i32,i32>#constructor
  local.set $4
  i32.const 0
  local.set $5
  loop $for-loop|2
   local.get $5
   local.get $1
   call $~lib/array/Array<u32>#get:length
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $1
    local.get $5
    call $~lib/array/Array<u32>#__get
    local.set $7
    local.get $2
    local.get $5
    call $~lib/array/Array<i32>#__get
    local.set $8
    local.get $0
    local.get $7
    call $~lib/map/Map<u32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 31
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $8
    i32.const 20
    i32.sub
    call $~lib/map/Map<u32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 32
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $3
    local.get $7
    local.get $7
    call $~lib/map/Map<u32,u32>#set
    drop
    local.get $4
    local.get $8
    i32.const 20
    i32.sub
    local.get $8
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    drop
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|2
   end
  end
  local.get $3
  call $~lib/map/Map<u32,u32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 36
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 37
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $5
  loop $for-loop|3
   local.get $5
   i32.const 50
   i32.lt_u
   local.set $6
   local.get $6
   if
    local.get $0
    local.get $5
    call $~lib/map/Map<u32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 41
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $5
    call $~lib/map/Map<u32,i32>#get
    i32.const 20
    local.get $5
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 42
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $5
    call $~lib/map/Map<u32,i32>#delete
    drop
    local.get $0
    local.get $5
    call $~lib/map/Map<u32,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 44
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|3
   end
  end
  local.get $0
  call $~lib/map/Map<u32,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 46
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $5
  loop $for-loop|4
   local.get $5
   i32.const 50
   i32.lt_u
   local.set $6
   local.get $6
   if
    local.get $0
    local.get $5
    call $~lib/map/Map<u32,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 50
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $5
    i32.const 10
    local.get $5
    i32.add
    call $~lib/map/Map<u32,i32>#set
    drop
    local.get $0
    local.get $5
    call $~lib/map/Map<u32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 52
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $5
    call $~lib/map/Map<u32,i32>#delete
    drop
    local.get $0
    local.get $5
    call $~lib/map/Map<u32,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 54
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|4
   end
  end
  local.get $0
  call $~lib/map/Map<u32,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 56
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<u32,i32>#clear
  local.get $0
  call $~lib/map/Map<u32,i32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/map/Map<i64,i32>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/map/Map<i64,i32>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/Map<i64,i32>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/map/Map<i64,i32>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/Map<i64,i32>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/map/Map<i64,i32>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
 )
 (func $~lib/map/Map<i64,i32>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 20
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i64,i32>#set:buckets
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<i64,i32>#set:bucketsMask
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 16
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i64,i32>#set:entries
  local.get $0
  i32.const 4
  call $~lib/map/Map<i64,i32>#set:entriesCapacity
  local.get $0
  i32.const 0
  call $~lib/map/Map<i64,i32>#set:entriesOffset
  local.get $0
  i32.const 0
  call $~lib/map/Map<i64,i32>#set:entriesCount
  local.get $0
 )
 (func $~lib/util/hash/hash64 (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.wrap_i64
  local.set $1
  local.get $0
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $2
  i32.const -2128831035
  local.set $3
  local.get $3
  local.get $1
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $3
  local.get $3
  local.get $1
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $3
  local.get $3
  local.get $1
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $3
  local.get $3
  local.get $1
  i32.const 24
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $3
  local.get $3
  local.get $2
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $3
  local.get $3
  local.get $2
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $3
  local.get $3
  local.get $2
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $3
  local.get $3
  local.get $2
  i32.const 24
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $3
  local.get $3
 )
 (func $~lib/map/Map<i64,i32>#find (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  loop $while-continue|0
   local.get $3
   local.set $4
   local.get $4
   if
    local.get $3
    i32.load offset=12
    local.set $5
    local.get $5
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $3
     i64.load
     local.get $1
     i64.eq
    else
     i32.const 0
    end
    if
     local.get $3
     return
    end
    local.get $5
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<i64,i32>#has (param $0 i32) (param $1 i64) (result i32)
  (local $2 i64)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i64>|inlined.0 (result i32)
   local.get $1
   local.set $2
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 8
   i32.const 1
   i32.eq
   drop
   i32.const 8
   i32.const 2
   i32.eq
   drop
   i32.const 8
   i32.const 4
   i32.eq
   drop
   i32.const 8
   i32.const 8
   i32.eq
   drop
   local.get $2
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<i64>|inlined.0
  end
  call $~lib/map/Map<i64,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/MapEntry<i64,i32>#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/map/MapEntry<i64,i32>#set:key (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store
 )
 (func $~lib/map/MapEntry<i64,i32>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/Map<i64,i32>#rehash (param $0 i32) (param $1 i32)
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
  (local $12 i64)
  (local $13 i64)
  (local $14 i32)
  (local $15 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $4
  i32.const 0
  local.get $4
  i32.const 16
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  i32.const 16
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  loop $while-continue|0
   local.get $6
   local.get $7
   i32.ne
   local.set $9
   local.get $9
   if
    local.get $6
    local.set $10
    local.get $10
    i32.load offset=12
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $11
     local.get $10
     i64.load
     local.set $12
     local.get $11
     local.get $12
     call $~lib/map/MapEntry<i64,i32>#set:key
     local.get $11
     local.get $10
     i32.load offset=8
     call $~lib/map/MapEntry<i64,i32>#set:value
     block $~lib/util/hash/HASH<i64>|inlined.2 (result i32)
      local.get $12
      local.set $13
      i32.const 0
      drop
      i32.const 0
      drop
      i32.const 0
      drop
      i32.const 8
      i32.const 1
      i32.eq
      drop
      i32.const 8
      i32.const 2
      i32.eq
      drop
      i32.const 8
      i32.const 4
      i32.eq
      drop
      i32.const 8
      i32.const 8
      i32.eq
      drop
      local.get $13
      call $~lib/util/hash/hash64
      br $~lib/util/hash/HASH<i64>|inlined.2
     end
     local.get $1
     i32.and
     local.set $14
     local.get $3
     local.get $14
     i32.const 4
     i32.mul
     i32.add
     local.set $15
     local.get $11
     local.get $15
     i32.load
     call $~lib/map/MapEntry<i64,i32>#set:taggedNext
     local.get $15
     local.get $8
     i32.store
     local.get $8
     i32.const 16
     i32.add
     local.set $8
    end
    local.get $6
    i32.const 16
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $0
  local.get $3
  call $~lib/map/Map<i64,i32>#set:buckets
  local.get $0
  local.get $1
  call $~lib/map/Map<i64,i32>#set:bucketsMask
  local.get $0
  local.get $5
  call $~lib/map/Map<i64,i32>#set:entries
  local.get $0
  local.get $4
  call $~lib/map/Map<i64,i32>#set:entriesCapacity
  local.get $0
  local.get $0
  i32.load offset=20
  call $~lib/map/Map<i64,i32>#set:entriesOffset
 )
 (func $~lib/map/Map<i64,i32>#set (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/util/hash/HASH<i64>|inlined.1 (result i32)
   local.get $1
   local.set $3
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 8
   i32.const 1
   i32.eq
   drop
   i32.const 8
   i32.const 2
   i32.eq
   drop
   i32.const 8
   i32.const 4
   i32.eq
   drop
   i32.const 8
   i32.const 8
   i32.eq
   drop
   local.get $3
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<i64>|inlined.1
  end
  local.set $4
  local.get $0
  local.get $1
  local.get $4
  call $~lib/map/Map<i64,i32>#find
  local.set $5
  local.get $5
  if
   local.get $5
   local.get $2
   call $~lib/map/MapEntry<i64,i32>#set:value
   i32.const 0
   drop
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<i64,i32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $6
   local.get $6
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $7
   i32.const 1
   i32.add
   call $~lib/map/Map<i64,i32>#set:entriesOffset
   local.get $7
   i32.const 16
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   call $~lib/map/MapEntry<i64,i32>#set:key
   i32.const 0
   drop
   local.get $5
   local.get $2
   call $~lib/map/MapEntry<i64,i32>#set:value
   i32.const 0
   drop
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<i64,i32>#set:entriesCount
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $7
   local.get $5
   local.get $7
   i32.load
   call $~lib/map/MapEntry<i64,i32>#set:taggedNext
   local.get $7
   local.get $5
   i32.store
  end
  local.get $0
 )
 (func $~lib/map/Map<i64,i32>#get (param $0 i32) (param $1 i64) (result i32)
  (local $2 i64)
  (local $3 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i64>|inlined.3 (result i32)
   local.get $1
   local.set $2
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 8
   i32.const 1
   i32.eq
   drop
   i32.const 8
   i32.const 2
   i32.eq
   drop
   i32.const 8
   i32.const 4
   i32.eq
   drop
   i32.const 8
   i32.const 8
   i32.eq
   drop
   local.get $2
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<i64>|inlined.3
  end
  call $~lib/map/Map<i64,i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 432
   i32.const 496
   i32.const 105
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=8
 )
 (func $~lib/map/Map<i64,i32>#get:size (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/array/Array<i64>#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/array/Array<i64>#set:dataStart (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/array/Array<i64>#set:byteLength (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/array/Array<i64>#set:length_ (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/array/Array<i64>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 21
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  call $~lib/array/Array<i64>#set:buffer
  local.get $0
  i32.const 0
  call $~lib/array/Array<i64>#set:dataStart
  local.get $0
  i32.const 0
  call $~lib/array/Array<i64>#set:byteLength
  local.get $0
  i32.const 0
  call $~lib/array/Array<i64>#set:length_
  local.get $1
  i32.const 1073741820
  i32.const 3
  i32.shr_u
  i32.gt_u
  if
   i32.const 272
   i32.const 544
   i32.const 58
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 3
  i32.shl
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/rt/tcms/__new
  local.set $3
  local.get $3
  i32.const 0
  local.get $2
  call $~lib/memory/memory.fill
  local.get $0
  local.get $3
  call $~lib/array/Array<i64>#set:buffer
  local.get $0
  local.get $3
  call $~lib/array/Array<i64>#set:dataStart
  local.get $0
  local.get $2
  call $~lib/array/Array<i64>#set:byteLength
  local.get $0
  local.get $1
  call $~lib/array/Array<i64>#set:length_
  local.get $0
 )
 (func $~lib/array/Array<i64>#__uset (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  local.get $2
  i64.store
  i32.const 0
  drop
 )
 (func $~lib/array/Array<i64>#__set (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 592
    i32.const 544
    i32.const 108
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.const 3
   call $~lib/array/ensureSize
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   call $~lib/array/Array<i64>#set:length_
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<i64>#__uset
 )
 (func $~lib/array/Array<i64>#set:length (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.const 3
  call $~lib/array/ensureSize
  local.get $0
  local.get $1
  call $~lib/array/Array<i64>#set:length_
 )
 (func $~lib/map/Map<i64,i32>#keys (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 0
  local.get $2
  call $~lib/array/Array<i64>#constructor
  local.set $3
  i32.const 0
  local.set $4
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   local.get $2
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $1
    local.get $5
    i32.const 16
    i32.mul
    i32.add
    local.set $7
    local.get $7
    i32.load offset=12
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $4
     local.tee $8
     i32.const 1
     i32.add
     local.set $4
     local.get $8
     local.get $7
     i64.load
     call $~lib/array/Array<i64>#__set
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $3
  local.get $4
  call $~lib/array/Array<i64>#set:length
  local.get $3
 )
 (func $~lib/map/Map<i64,i32>#values (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 0
  local.get $2
  call $~lib/array/Array<i32>#constructor
  local.set $3
  i32.const 0
  local.set $4
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   local.get $2
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $1
    local.get $5
    i32.const 16
    i32.mul
    i32.add
    local.set $7
    local.get $7
    i32.load offset=12
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $4
     local.tee $8
     i32.const 1
     i32.add
     local.set $4
     local.get $8
     local.get $7
     i32.load offset=8
     call $~lib/array/Array<i32>#__set
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $3
  local.get $4
  call $~lib/array/Array<i32>#set:length
  local.get $3
 )
 (func $~lib/map/Map<i64,i64>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/map/Map<i64,i64>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/Map<i64,i64>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/map/Map<i64,i64>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/Map<i64,i64>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/map/Map<i64,i64>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
 )
 (func $~lib/map/Map<i64,i64>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 22
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i64,i64>#set:buckets
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<i64,i64>#set:bucketsMask
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 24
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i64,i64>#set:entries
  local.get $0
  i32.const 4
  call $~lib/map/Map<i64,i64>#set:entriesCapacity
  local.get $0
  i32.const 0
  call $~lib/map/Map<i64,i64>#set:entriesOffset
  local.get $0
  i32.const 0
  call $~lib/map/Map<i64,i64>#set:entriesCount
  local.get $0
 )
 (func $~lib/array/Array<i64>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<i64>#__uget (param $0 i32) (param $1 i32) (result i64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $~lib/array/Array<i64>#__get (param $0 i32) (param $1 i32) (result i64)
  (local $2 i64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 592
   i32.const 544
   i32.const 92
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i64>#__uget
  local.set $2
  i32.const 0
  drop
  local.get $2
 )
 (func $~lib/map/Map<i64,i64>#find (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  loop $while-continue|0
   local.get $3
   local.set $4
   local.get $4
   if
    local.get $3
    i32.load offset=16
    local.set $5
    local.get $5
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $3
     i64.load
     local.get $1
     i64.eq
    else
     i32.const 0
    end
    if
     local.get $3
     return
    end
    local.get $5
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/MapEntry<i64,i64>#set:value (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=8
 )
 (func $~lib/map/MapEntry<i64,i64>#set:key (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store
 )
 (func $~lib/map/MapEntry<i64,i64>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/map/Map<i64,i64>#rehash (param $0 i32) (param $1 i32)
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
  (local $12 i64)
  (local $13 i64)
  (local $14 i32)
  (local $15 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $4
  i32.const 0
  local.get $4
  i32.const 24
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  i32.const 24
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  loop $while-continue|0
   local.get $6
   local.get $7
   i32.ne
   local.set $9
   local.get $9
   if
    local.get $6
    local.set $10
    local.get $10
    i32.load offset=16
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $11
     local.get $10
     i64.load
     local.set $12
     local.get $11
     local.get $12
     call $~lib/map/MapEntry<i64,i64>#set:key
     local.get $11
     local.get $10
     i64.load offset=8
     call $~lib/map/MapEntry<i64,i64>#set:value
     block $~lib/util/hash/HASH<i64>|inlined.5 (result i32)
      local.get $12
      local.set $13
      i32.const 0
      drop
      i32.const 0
      drop
      i32.const 0
      drop
      i32.const 8
      i32.const 1
      i32.eq
      drop
      i32.const 8
      i32.const 2
      i32.eq
      drop
      i32.const 8
      i32.const 4
      i32.eq
      drop
      i32.const 8
      i32.const 8
      i32.eq
      drop
      local.get $13
      call $~lib/util/hash/hash64
      br $~lib/util/hash/HASH<i64>|inlined.5
     end
     local.get $1
     i32.and
     local.set $14
     local.get $3
     local.get $14
     i32.const 4
     i32.mul
     i32.add
     local.set $15
     local.get $11
     local.get $15
     i32.load
     call $~lib/map/MapEntry<i64,i64>#set:taggedNext
     local.get $15
     local.get $8
     i32.store
     local.get $8
     i32.const 24
     i32.add
     local.set $8
    end
    local.get $6
    i32.const 24
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $0
  local.get $3
  call $~lib/map/Map<i64,i64>#set:buckets
  local.get $0
  local.get $1
  call $~lib/map/Map<i64,i64>#set:bucketsMask
  local.get $0
  local.get $5
  call $~lib/map/Map<i64,i64>#set:entries
  local.get $0
  local.get $4
  call $~lib/map/Map<i64,i64>#set:entriesCapacity
  local.get $0
  local.get $0
  i32.load offset=20
  call $~lib/map/Map<i64,i64>#set:entriesOffset
 )
 (func $~lib/map/Map<i64,i64>#set (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/util/hash/HASH<i64>|inlined.4 (result i32)
   local.get $1
   local.set $3
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 8
   i32.const 1
   i32.eq
   drop
   i32.const 8
   i32.const 2
   i32.eq
   drop
   i32.const 8
   i32.const 4
   i32.eq
   drop
   i32.const 8
   i32.const 8
   i32.eq
   drop
   local.get $3
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<i64>|inlined.4
  end
  local.set $4
  local.get $0
  local.get $1
  local.get $4
  call $~lib/map/Map<i64,i64>#find
  local.set $5
  local.get $5
  if
   local.get $5
   local.get $2
   call $~lib/map/MapEntry<i64,i64>#set:value
   i32.const 0
   drop
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<i64,i64>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $6
   local.get $6
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $7
   i32.const 1
   i32.add
   call $~lib/map/Map<i64,i64>#set:entriesOffset
   local.get $7
   i32.const 24
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   call $~lib/map/MapEntry<i64,i64>#set:key
   i32.const 0
   drop
   local.get $5
   local.get $2
   call $~lib/map/MapEntry<i64,i64>#set:value
   i32.const 0
   drop
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<i64,i64>#set:entriesCount
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $7
   local.get $5
   local.get $7
   i32.load
   call $~lib/map/MapEntry<i64,i64>#set:taggedNext
   local.get $7
   local.get $5
   i32.store
  end
  local.get $0
 )
 (func $~lib/map/Map<i64,i64>#get:size (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<i64,i32>#delete (param $0 i32) (param $1 i64) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<i64>|inlined.6 (result i32)
   local.get $1
   local.set $2
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 8
   i32.const 1
   i32.eq
   drop
   i32.const 8
   i32.const 2
   i32.eq
   drop
   i32.const 8
   i32.const 4
   i32.eq
   drop
   i32.const 8
   i32.const 8
   i32.eq
   drop
   local.get $2
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<i64>|inlined.6
  end
  call $~lib/map/Map<i64,i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $3
  local.get $3
  i32.load offset=12
  i32.const 1
  i32.or
  call $~lib/map/MapEntry<i64,i32>#set:taggedNext
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  call $~lib/map/Map<i64,i32>#set:entriesCount
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.set $4
  local.get $4
  i32.const 1
  i32.add
  i32.const 4
  local.tee $5
  local.get $0
  i32.load offset=20
  local.tee $6
  local.get $5
  local.get $6
  i32.gt_u
  select
  i32.ge_u
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   local.get $0
   local.get $4
   call $~lib/map/Map<i64,i32>#rehash
  end
  i32.const 1
 )
 (func $~lib/map/Map<i64,i32>#clear (param $0 i32)
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i64,i32>#set:buckets
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<i64,i32>#set:bucketsMask
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 16
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i64,i32>#set:entries
  local.get $0
  i32.const 4
  call $~lib/map/Map<i64,i32>#set:entriesCapacity
  local.get $0
  i32.const 0
  call $~lib/map/Map<i64,i32>#set:entriesOffset
  local.get $0
  i32.const 0
  call $~lib/map/Map<i64,i32>#set:entriesCount
 )
 (func $std/map/testNumeric<i64,i32>
  (local $0 i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 0
  call $~lib/map/Map<i64,i32>#constructor
  local.set $0
  i64.const 0
  local.set $1
  loop $for-loop|0
   local.get $1
   i64.const 100
   i64.lt_s
   local.set $2
   local.get $2
   if
    local.get $0
    local.get $1
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 6
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    i32.const 10
    local.get $1
    i32.wrap_i64
    i32.add
    call $~lib/map/Map<i64,i32>#set
    drop
    local.get $0
    local.get $1
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 8
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<i64,i32>#get
    i32.const 10
    local.get $1
    i32.wrap_i64
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 9
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
  local.get $0
  call $~lib/map/Map<i64,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 11
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 0
  local.set $1
  loop $for-loop|1
   local.get $1
   i64.const 100
   i64.lt_s
   local.set $2
   local.get $2
   if
    local.get $0
    local.get $1
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 15
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<i64,i32>#get
    i32.const 10
    local.get $1
    i32.wrap_i64
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 16
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    i32.const 20
    local.get $1
    i32.wrap_i64
    i32.add
    call $~lib/map/Map<i64,i32>#set
    drop
    local.get $0
    local.get $1
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 18
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<i64,i32>#get
    i32.const 20
    local.get $1
    i32.wrap_i64
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 19
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
  local.get $0
  call $~lib/map/Map<i64,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 21
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<i64,i32>#keys
  local.set $2
  local.get $0
  call $~lib/map/Map<i64,i32>#values
  local.set $3
  i32.const 0
  call $~lib/map/Map<i64,i64>#constructor
  local.set $4
  i32.const 0
  call $~lib/map/Map<i32,i32>#constructor
  local.set $5
  i32.const 0
  local.set $6
  loop $for-loop|2
   local.get $6
   local.get $2
   call $~lib/array/Array<i64>#get:length
   i32.lt_s
   local.set $7
   local.get $7
   if
    local.get $2
    local.get $6
    call $~lib/array/Array<i64>#__get
    local.set $1
    local.get $3
    local.get $6
    call $~lib/array/Array<i32>#__get
    local.set $8
    local.get $0
    local.get $1
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 31
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $8
    i32.const 20
    i32.sub
    i64.extend_i32_s
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 32
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $4
    local.get $1
    local.get $1
    call $~lib/map/Map<i64,i64>#set
    drop
    local.get $5
    local.get $8
    i32.const 20
    i32.sub
    local.get $8
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    drop
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|2
   end
  end
  local.get $4
  call $~lib/map/Map<i64,i64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 36
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 37
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
   local.set $6
   local.get $6
   if
    local.get $0
    local.get $1
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 41
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<i64,i32>#get
    i32.const 20
    local.get $1
    i32.wrap_i64
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 42
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<i64,i32>#delete
    drop
    local.get $0
    local.get $1
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 44
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
  local.get $0
  call $~lib/map/Map<i64,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 46
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
   local.set $6
   local.get $6
   if
    local.get $0
    local.get $1
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 50
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    i32.const 10
    local.get $1
    i32.wrap_i64
    i32.add
    call $~lib/map/Map<i64,i32>#set
    drop
    local.get $0
    local.get $1
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 52
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<i64,i32>#delete
    drop
    local.get $0
    local.get $1
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 54
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
  local.get $0
  call $~lib/map/Map<i64,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 56
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<i64,i32>#clear
  local.get $0
  call $~lib/map/Map<i64,i32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/map/Map<u64,i32>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/map/Map<u64,i32>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/Map<u64,i32>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/map/Map<u64,i32>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/Map<u64,i32>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/map/Map<u64,i32>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
 )
 (func $~lib/map/Map<u64,i32>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 23
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u64,i32>#set:buckets
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<u64,i32>#set:bucketsMask
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 16
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u64,i32>#set:entries
  local.get $0
  i32.const 4
  call $~lib/map/Map<u64,i32>#set:entriesCapacity
  local.get $0
  i32.const 0
  call $~lib/map/Map<u64,i32>#set:entriesOffset
  local.get $0
  i32.const 0
  call $~lib/map/Map<u64,i32>#set:entriesCount
  local.get $0
 )
 (func $~lib/map/Map<u64,i32>#find (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  loop $while-continue|0
   local.get $3
   local.set $4
   local.get $4
   if
    local.get $3
    i32.load offset=12
    local.set $5
    local.get $5
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $3
     i64.load
     local.get $1
     i64.eq
    else
     i32.const 0
    end
    if
     local.get $3
     return
    end
    local.get $5
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<u64,i32>#has (param $0 i32) (param $1 i64) (result i32)
  (local $2 i64)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u64>|inlined.0 (result i32)
   local.get $1
   local.set $2
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 8
   i32.const 1
   i32.eq
   drop
   i32.const 8
   i32.const 2
   i32.eq
   drop
   i32.const 8
   i32.const 4
   i32.eq
   drop
   i32.const 8
   i32.const 8
   i32.eq
   drop
   local.get $2
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<u64>|inlined.0
  end
  call $~lib/map/Map<u64,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/MapEntry<u64,i32>#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/map/MapEntry<u64,i32>#set:key (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store
 )
 (func $~lib/map/MapEntry<u64,i32>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/Map<u64,i32>#rehash (param $0 i32) (param $1 i32)
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
  (local $12 i64)
  (local $13 i64)
  (local $14 i32)
  (local $15 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $4
  i32.const 0
  local.get $4
  i32.const 16
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  i32.const 16
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  loop $while-continue|0
   local.get $6
   local.get $7
   i32.ne
   local.set $9
   local.get $9
   if
    local.get $6
    local.set $10
    local.get $10
    i32.load offset=12
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $11
     local.get $10
     i64.load
     local.set $12
     local.get $11
     local.get $12
     call $~lib/map/MapEntry<u64,i32>#set:key
     local.get $11
     local.get $10
     i32.load offset=8
     call $~lib/map/MapEntry<u64,i32>#set:value
     block $~lib/util/hash/HASH<u64>|inlined.2 (result i32)
      local.get $12
      local.set $13
      i32.const 0
      drop
      i32.const 0
      drop
      i32.const 0
      drop
      i32.const 8
      i32.const 1
      i32.eq
      drop
      i32.const 8
      i32.const 2
      i32.eq
      drop
      i32.const 8
      i32.const 4
      i32.eq
      drop
      i32.const 8
      i32.const 8
      i32.eq
      drop
      local.get $13
      call $~lib/util/hash/hash64
      br $~lib/util/hash/HASH<u64>|inlined.2
     end
     local.get $1
     i32.and
     local.set $14
     local.get $3
     local.get $14
     i32.const 4
     i32.mul
     i32.add
     local.set $15
     local.get $11
     local.get $15
     i32.load
     call $~lib/map/MapEntry<u64,i32>#set:taggedNext
     local.get $15
     local.get $8
     i32.store
     local.get $8
     i32.const 16
     i32.add
     local.set $8
    end
    local.get $6
    i32.const 16
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $0
  local.get $3
  call $~lib/map/Map<u64,i32>#set:buckets
  local.get $0
  local.get $1
  call $~lib/map/Map<u64,i32>#set:bucketsMask
  local.get $0
  local.get $5
  call $~lib/map/Map<u64,i32>#set:entries
  local.get $0
  local.get $4
  call $~lib/map/Map<u64,i32>#set:entriesCapacity
  local.get $0
  local.get $0
  i32.load offset=20
  call $~lib/map/Map<u64,i32>#set:entriesOffset
 )
 (func $~lib/map/Map<u64,i32>#set (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/util/hash/HASH<u64>|inlined.1 (result i32)
   local.get $1
   local.set $3
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 8
   i32.const 1
   i32.eq
   drop
   i32.const 8
   i32.const 2
   i32.eq
   drop
   i32.const 8
   i32.const 4
   i32.eq
   drop
   i32.const 8
   i32.const 8
   i32.eq
   drop
   local.get $3
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<u64>|inlined.1
  end
  local.set $4
  local.get $0
  local.get $1
  local.get $4
  call $~lib/map/Map<u64,i32>#find
  local.set $5
  local.get $5
  if
   local.get $5
   local.get $2
   call $~lib/map/MapEntry<u64,i32>#set:value
   i32.const 0
   drop
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<u64,i32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $6
   local.get $6
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $7
   i32.const 1
   i32.add
   call $~lib/map/Map<u64,i32>#set:entriesOffset
   local.get $7
   i32.const 16
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   call $~lib/map/MapEntry<u64,i32>#set:key
   i32.const 0
   drop
   local.get $5
   local.get $2
   call $~lib/map/MapEntry<u64,i32>#set:value
   i32.const 0
   drop
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<u64,i32>#set:entriesCount
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $7
   local.get $5
   local.get $7
   i32.load
   call $~lib/map/MapEntry<u64,i32>#set:taggedNext
   local.get $7
   local.get $5
   i32.store
  end
  local.get $0
 )
 (func $~lib/map/Map<u64,i32>#get (param $0 i32) (param $1 i64) (result i32)
  (local $2 i64)
  (local $3 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u64>|inlined.3 (result i32)
   local.get $1
   local.set $2
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 8
   i32.const 1
   i32.eq
   drop
   i32.const 8
   i32.const 2
   i32.eq
   drop
   i32.const 8
   i32.const 4
   i32.eq
   drop
   i32.const 8
   i32.const 8
   i32.eq
   drop
   local.get $2
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<u64>|inlined.3
  end
  call $~lib/map/Map<u64,i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 432
   i32.const 496
   i32.const 105
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=8
 )
 (func $~lib/map/Map<u64,i32>#get:size (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/array/Array<u64>#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/array/Array<u64>#set:dataStart (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/array/Array<u64>#set:byteLength (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/array/Array<u64>#set:length_ (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/array/Array<u64>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 24
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  call $~lib/array/Array<u64>#set:buffer
  local.get $0
  i32.const 0
  call $~lib/array/Array<u64>#set:dataStart
  local.get $0
  i32.const 0
  call $~lib/array/Array<u64>#set:byteLength
  local.get $0
  i32.const 0
  call $~lib/array/Array<u64>#set:length_
  local.get $1
  i32.const 1073741820
  i32.const 3
  i32.shr_u
  i32.gt_u
  if
   i32.const 272
   i32.const 544
   i32.const 58
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 3
  i32.shl
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/rt/tcms/__new
  local.set $3
  local.get $3
  i32.const 0
  local.get $2
  call $~lib/memory/memory.fill
  local.get $0
  local.get $3
  call $~lib/array/Array<u64>#set:buffer
  local.get $0
  local.get $3
  call $~lib/array/Array<u64>#set:dataStart
  local.get $0
  local.get $2
  call $~lib/array/Array<u64>#set:byteLength
  local.get $0
  local.get $1
  call $~lib/array/Array<u64>#set:length_
  local.get $0
 )
 (func $~lib/array/Array<u64>#__uset (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  local.get $2
  i64.store
  i32.const 0
  drop
 )
 (func $~lib/array/Array<u64>#__set (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 592
    i32.const 544
    i32.const 108
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.const 3
   call $~lib/array/ensureSize
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   call $~lib/array/Array<u64>#set:length_
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<u64>#__uset
 )
 (func $~lib/array/Array<u64>#set:length (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.const 3
  call $~lib/array/ensureSize
  local.get $0
  local.get $1
  call $~lib/array/Array<u64>#set:length_
 )
 (func $~lib/map/Map<u64,i32>#keys (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 0
  local.get $2
  call $~lib/array/Array<u64>#constructor
  local.set $3
  i32.const 0
  local.set $4
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   local.get $2
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $1
    local.get $5
    i32.const 16
    i32.mul
    i32.add
    local.set $7
    local.get $7
    i32.load offset=12
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $4
     local.tee $8
     i32.const 1
     i32.add
     local.set $4
     local.get $8
     local.get $7
     i64.load
     call $~lib/array/Array<u64>#__set
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $3
  local.get $4
  call $~lib/array/Array<u64>#set:length
  local.get $3
 )
 (func $~lib/map/Map<u64,i32>#values (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 0
  local.get $2
  call $~lib/array/Array<i32>#constructor
  local.set $3
  i32.const 0
  local.set $4
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   local.get $2
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $1
    local.get $5
    i32.const 16
    i32.mul
    i32.add
    local.set $7
    local.get $7
    i32.load offset=12
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $4
     local.tee $8
     i32.const 1
     i32.add
     local.set $4
     local.get $8
     local.get $7
     i32.load offset=8
     call $~lib/array/Array<i32>#__set
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $3
  local.get $4
  call $~lib/array/Array<i32>#set:length
  local.get $3
 )
 (func $~lib/map/Map<u64,u64>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/map/Map<u64,u64>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/Map<u64,u64>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/map/Map<u64,u64>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/Map<u64,u64>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/map/Map<u64,u64>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
 )
 (func $~lib/map/Map<u64,u64>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 25
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u64,u64>#set:buckets
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<u64,u64>#set:bucketsMask
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 24
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u64,u64>#set:entries
  local.get $0
  i32.const 4
  call $~lib/map/Map<u64,u64>#set:entriesCapacity
  local.get $0
  i32.const 0
  call $~lib/map/Map<u64,u64>#set:entriesOffset
  local.get $0
  i32.const 0
  call $~lib/map/Map<u64,u64>#set:entriesCount
  local.get $0
 )
 (func $~lib/array/Array<u64>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<u64>#__uget (param $0 i32) (param $1 i32) (result i64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $~lib/array/Array<u64>#__get (param $0 i32) (param $1 i32) (result i64)
  (local $2 i64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 592
   i32.const 544
   i32.const 92
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u64>#__uget
  local.set $2
  i32.const 0
  drop
  local.get $2
 )
 (func $~lib/map/Map<u64,u64>#find (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  loop $while-continue|0
   local.get $3
   local.set $4
   local.get $4
   if
    local.get $3
    i32.load offset=16
    local.set $5
    local.get $5
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $3
     i64.load
     local.get $1
     i64.eq
    else
     i32.const 0
    end
    if
     local.get $3
     return
    end
    local.get $5
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/MapEntry<u64,u64>#set:value (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=8
 )
 (func $~lib/map/MapEntry<u64,u64>#set:key (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store
 )
 (func $~lib/map/MapEntry<u64,u64>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/map/Map<u64,u64>#rehash (param $0 i32) (param $1 i32)
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
  (local $12 i64)
  (local $13 i64)
  (local $14 i32)
  (local $15 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $4
  i32.const 0
  local.get $4
  i32.const 24
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  i32.const 24
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  loop $while-continue|0
   local.get $6
   local.get $7
   i32.ne
   local.set $9
   local.get $9
   if
    local.get $6
    local.set $10
    local.get $10
    i32.load offset=16
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $11
     local.get $10
     i64.load
     local.set $12
     local.get $11
     local.get $12
     call $~lib/map/MapEntry<u64,u64>#set:key
     local.get $11
     local.get $10
     i64.load offset=8
     call $~lib/map/MapEntry<u64,u64>#set:value
     block $~lib/util/hash/HASH<u64>|inlined.5 (result i32)
      local.get $12
      local.set $13
      i32.const 0
      drop
      i32.const 0
      drop
      i32.const 0
      drop
      i32.const 8
      i32.const 1
      i32.eq
      drop
      i32.const 8
      i32.const 2
      i32.eq
      drop
      i32.const 8
      i32.const 4
      i32.eq
      drop
      i32.const 8
      i32.const 8
      i32.eq
      drop
      local.get $13
      call $~lib/util/hash/hash64
      br $~lib/util/hash/HASH<u64>|inlined.5
     end
     local.get $1
     i32.and
     local.set $14
     local.get $3
     local.get $14
     i32.const 4
     i32.mul
     i32.add
     local.set $15
     local.get $11
     local.get $15
     i32.load
     call $~lib/map/MapEntry<u64,u64>#set:taggedNext
     local.get $15
     local.get $8
     i32.store
     local.get $8
     i32.const 24
     i32.add
     local.set $8
    end
    local.get $6
    i32.const 24
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $0
  local.get $3
  call $~lib/map/Map<u64,u64>#set:buckets
  local.get $0
  local.get $1
  call $~lib/map/Map<u64,u64>#set:bucketsMask
  local.get $0
  local.get $5
  call $~lib/map/Map<u64,u64>#set:entries
  local.get $0
  local.get $4
  call $~lib/map/Map<u64,u64>#set:entriesCapacity
  local.get $0
  local.get $0
  i32.load offset=20
  call $~lib/map/Map<u64,u64>#set:entriesOffset
 )
 (func $~lib/map/Map<u64,u64>#set (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/util/hash/HASH<u64>|inlined.4 (result i32)
   local.get $1
   local.set $3
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 8
   i32.const 1
   i32.eq
   drop
   i32.const 8
   i32.const 2
   i32.eq
   drop
   i32.const 8
   i32.const 4
   i32.eq
   drop
   i32.const 8
   i32.const 8
   i32.eq
   drop
   local.get $3
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<u64>|inlined.4
  end
  local.set $4
  local.get $0
  local.get $1
  local.get $4
  call $~lib/map/Map<u64,u64>#find
  local.set $5
  local.get $5
  if
   local.get $5
   local.get $2
   call $~lib/map/MapEntry<u64,u64>#set:value
   i32.const 0
   drop
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<u64,u64>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $6
   local.get $6
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $7
   i32.const 1
   i32.add
   call $~lib/map/Map<u64,u64>#set:entriesOffset
   local.get $7
   i32.const 24
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   call $~lib/map/MapEntry<u64,u64>#set:key
   i32.const 0
   drop
   local.get $5
   local.get $2
   call $~lib/map/MapEntry<u64,u64>#set:value
   i32.const 0
   drop
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<u64,u64>#set:entriesCount
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $7
   local.get $5
   local.get $7
   i32.load
   call $~lib/map/MapEntry<u64,u64>#set:taggedNext
   local.get $7
   local.get $5
   i32.store
  end
  local.get $0
 )
 (func $~lib/map/Map<u64,u64>#get:size (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<u64,i32>#delete (param $0 i32) (param $1 i64) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u64>|inlined.6 (result i32)
   local.get $1
   local.set $2
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 8
   i32.const 1
   i32.eq
   drop
   i32.const 8
   i32.const 2
   i32.eq
   drop
   i32.const 8
   i32.const 4
   i32.eq
   drop
   i32.const 8
   i32.const 8
   i32.eq
   drop
   local.get $2
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<u64>|inlined.6
  end
  call $~lib/map/Map<u64,i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $3
  local.get $3
  i32.load offset=12
  i32.const 1
  i32.or
  call $~lib/map/MapEntry<u64,i32>#set:taggedNext
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  call $~lib/map/Map<u64,i32>#set:entriesCount
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.set $4
  local.get $4
  i32.const 1
  i32.add
  i32.const 4
  local.tee $5
  local.get $0
  i32.load offset=20
  local.tee $6
  local.get $5
  local.get $6
  i32.gt_u
  select
  i32.ge_u
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   local.get $0
   local.get $4
   call $~lib/map/Map<u64,i32>#rehash
  end
  i32.const 1
 )
 (func $~lib/map/Map<u64,i32>#clear (param $0 i32)
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u64,i32>#set:buckets
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<u64,i32>#set:bucketsMask
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 16
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u64,i32>#set:entries
  local.get $0
  i32.const 4
  call $~lib/map/Map<u64,i32>#set:entriesCapacity
  local.get $0
  i32.const 0
  call $~lib/map/Map<u64,i32>#set:entriesOffset
  local.get $0
  i32.const 0
  call $~lib/map/Map<u64,i32>#set:entriesCount
 )
 (func $std/map/testNumeric<u64,i32>
  (local $0 i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 0
  call $~lib/map/Map<u64,i32>#constructor
  local.set $0
  i64.const 0
  local.set $1
  loop $for-loop|0
   local.get $1
   i64.const 100
   i64.lt_u
   local.set $2
   local.get $2
   if
    local.get $0
    local.get $1
    call $~lib/map/Map<u64,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 6
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    i32.const 10
    local.get $1
    i32.wrap_i64
    i32.add
    call $~lib/map/Map<u64,i32>#set
    drop
    local.get $0
    local.get $1
    call $~lib/map/Map<u64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 8
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<u64,i32>#get
    i32.const 10
    local.get $1
    i32.wrap_i64
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 9
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
  local.get $0
  call $~lib/map/Map<u64,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 11
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 0
  local.set $1
  loop $for-loop|1
   local.get $1
   i64.const 100
   i64.lt_u
   local.set $2
   local.get $2
   if
    local.get $0
    local.get $1
    call $~lib/map/Map<u64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 15
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<u64,i32>#get
    i32.const 10
    local.get $1
    i32.wrap_i64
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 16
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    i32.const 20
    local.get $1
    i32.wrap_i64
    i32.add
    call $~lib/map/Map<u64,i32>#set
    drop
    local.get $0
    local.get $1
    call $~lib/map/Map<u64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 18
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<u64,i32>#get
    i32.const 20
    local.get $1
    i32.wrap_i64
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 19
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
  local.get $0
  call $~lib/map/Map<u64,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 21
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<u64,i32>#keys
  local.set $2
  local.get $0
  call $~lib/map/Map<u64,i32>#values
  local.set $3
  i32.const 0
  call $~lib/map/Map<u64,u64>#constructor
  local.set $4
  i32.const 0
  call $~lib/map/Map<i32,i32>#constructor
  local.set $5
  i32.const 0
  local.set $6
  loop $for-loop|2
   local.get $6
   local.get $2
   call $~lib/array/Array<u64>#get:length
   i32.lt_s
   local.set $7
   local.get $7
   if
    local.get $2
    local.get $6
    call $~lib/array/Array<u64>#__get
    local.set $1
    local.get $3
    local.get $6
    call $~lib/array/Array<i32>#__get
    local.set $8
    local.get $0
    local.get $1
    call $~lib/map/Map<u64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 31
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $8
    i32.const 20
    i32.sub
    i64.extend_i32_s
    call $~lib/map/Map<u64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 32
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $4
    local.get $1
    local.get $1
    call $~lib/map/Map<u64,u64>#set
    drop
    local.get $5
    local.get $8
    i32.const 20
    i32.sub
    local.get $8
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    drop
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|2
   end
  end
  local.get $4
  call $~lib/map/Map<u64,u64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 36
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 37
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
   local.set $6
   local.get $6
   if
    local.get $0
    local.get $1
    call $~lib/map/Map<u64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 41
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<u64,i32>#get
    i32.const 20
    local.get $1
    i32.wrap_i64
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 42
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<u64,i32>#delete
    drop
    local.get $0
    local.get $1
    call $~lib/map/Map<u64,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 44
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
  local.get $0
  call $~lib/map/Map<u64,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 46
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
   local.set $6
   local.get $6
   if
    local.get $0
    local.get $1
    call $~lib/map/Map<u64,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 50
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    i32.const 10
    local.get $1
    i32.wrap_i64
    i32.add
    call $~lib/map/Map<u64,i32>#set
    drop
    local.get $0
    local.get $1
    call $~lib/map/Map<u64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 52
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<u64,i32>#delete
    drop
    local.get $0
    local.get $1
    call $~lib/map/Map<u64,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 54
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
  local.get $0
  call $~lib/map/Map<u64,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 56
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<u64,i32>#clear
  local.get $0
  call $~lib/map/Map<u64,i32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/map/Map<f32,i32>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/map/Map<f32,i32>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/Map<f32,i32>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/map/Map<f32,i32>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/Map<f32,i32>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/map/Map<f32,i32>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
 )
 (func $~lib/map/Map<f32,i32>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 26
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<f32,i32>#set:buckets
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<f32,i32>#set:bucketsMask
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<f32,i32>#set:entries
  local.get $0
  i32.const 4
  call $~lib/map/Map<f32,i32>#set:entriesCapacity
  local.get $0
  i32.const 0
  call $~lib/map/Map<f32,i32>#set:entriesOffset
  local.get $0
  i32.const 0
  call $~lib/map/Map<f32,i32>#set:entriesCount
  local.get $0
 )
 (func $~lib/map/Map<f32,i32>#find (param $0 i32) (param $1 f32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  loop $while-continue|0
   local.get $3
   local.set $4
   local.get $4
   if
    local.get $3
    i32.load offset=8
    local.set $5
    local.get $5
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $3
     f32.load
     local.get $1
     f32.eq
    else
     i32.const 0
    end
    if
     local.get $3
     return
    end
    local.get $5
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<f32,i32>#has (param $0 i32) (param $1 f32) (result i32)
  (local $2 f32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<f32>|inlined.0 (result i32)
   local.get $1
   local.set $2
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 1
   drop
   i32.const 4
   i32.const 4
   i32.eq
   drop
   local.get $2
   i32.reinterpret_f32
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<f32>|inlined.0
  end
  call $~lib/map/Map<f32,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/MapEntry<f32,i32>#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/MapEntry<f32,i32>#set:key (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store
 )
 (func $~lib/map/MapEntry<f32,i32>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/map/Map<f32,i32>#rehash (param $0 i32) (param $1 i32)
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
  (local $12 f32)
  (local $13 f32)
  (local $14 i32)
  (local $15 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $4
  i32.const 0
  local.get $4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  loop $while-continue|0
   local.get $6
   local.get $7
   i32.ne
   local.set $9
   local.get $9
   if
    local.get $6
    local.set $10
    local.get $10
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $11
     local.get $10
     f32.load
     local.set $12
     local.get $11
     local.get $12
     call $~lib/map/MapEntry<f32,i32>#set:key
     local.get $11
     local.get $10
     i32.load offset=4
     call $~lib/map/MapEntry<f32,i32>#set:value
     block $~lib/util/hash/HASH<f32>|inlined.2 (result i32)
      local.get $12
      local.set $13
      i32.const 0
      drop
      i32.const 0
      drop
      i32.const 1
      drop
      i32.const 4
      i32.const 4
      i32.eq
      drop
      local.get $13
      i32.reinterpret_f32
      call $~lib/util/hash/hash32
      br $~lib/util/hash/HASH<f32>|inlined.2
     end
     local.get $1
     i32.and
     local.set $14
     local.get $3
     local.get $14
     i32.const 4
     i32.mul
     i32.add
     local.set $15
     local.get $11
     local.get $15
     i32.load
     call $~lib/map/MapEntry<f32,i32>#set:taggedNext
     local.get $15
     local.get $8
     i32.store
     local.get $8
     i32.const 12
     i32.add
     local.set $8
    end
    local.get $6
    i32.const 12
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $0
  local.get $3
  call $~lib/map/Map<f32,i32>#set:buckets
  local.get $0
  local.get $1
  call $~lib/map/Map<f32,i32>#set:bucketsMask
  local.get $0
  local.get $5
  call $~lib/map/Map<f32,i32>#set:entries
  local.get $0
  local.get $4
  call $~lib/map/Map<f32,i32>#set:entriesCapacity
  local.get $0
  local.get $0
  i32.load offset=20
  call $~lib/map/Map<f32,i32>#set:entriesOffset
 )
 (func $~lib/map/Map<f32,i32>#set (param $0 i32) (param $1 f32) (param $2 i32) (result i32)
  (local $3 f32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/util/hash/HASH<f32>|inlined.1 (result i32)
   local.get $1
   local.set $3
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 1
   drop
   i32.const 4
   i32.const 4
   i32.eq
   drop
   local.get $3
   i32.reinterpret_f32
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<f32>|inlined.1
  end
  local.set $4
  local.get $0
  local.get $1
  local.get $4
  call $~lib/map/Map<f32,i32>#find
  local.set $5
  local.get $5
  if
   local.get $5
   local.get $2
   call $~lib/map/MapEntry<f32,i32>#set:value
   i32.const 0
   drop
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<f32,i32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $6
   local.get $6
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $7
   i32.const 1
   i32.add
   call $~lib/map/Map<f32,i32>#set:entriesOffset
   local.get $7
   i32.const 12
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   call $~lib/map/MapEntry<f32,i32>#set:key
   i32.const 0
   drop
   local.get $5
   local.get $2
   call $~lib/map/MapEntry<f32,i32>#set:value
   i32.const 0
   drop
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<f32,i32>#set:entriesCount
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $7
   local.get $5
   local.get $7
   i32.load
   call $~lib/map/MapEntry<f32,i32>#set:taggedNext
   local.get $7
   local.get $5
   i32.store
  end
  local.get $0
 )
 (func $~lib/map/Map<f32,i32>#get (param $0 i32) (param $1 f32) (result i32)
  (local $2 f32)
  (local $3 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<f32>|inlined.3 (result i32)
   local.get $1
   local.set $2
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 1
   drop
   i32.const 4
   i32.const 4
   i32.eq
   drop
   local.get $2
   i32.reinterpret_f32
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<f32>|inlined.3
  end
  call $~lib/map/Map<f32,i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 432
   i32.const 496
   i32.const 105
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=4
 )
 (func $~lib/map/Map<f32,i32>#get:size (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/array/Array<f32>#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/array/Array<f32>#set:dataStart (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/array/Array<f32>#set:byteLength (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/array/Array<f32>#set:length_ (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/array/Array<f32>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 27
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  call $~lib/array/Array<f32>#set:buffer
  local.get $0
  i32.const 0
  call $~lib/array/Array<f32>#set:dataStart
  local.get $0
  i32.const 0
  call $~lib/array/Array<f32>#set:byteLength
  local.get $0
  i32.const 0
  call $~lib/array/Array<f32>#set:length_
  local.get $1
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 272
   i32.const 544
   i32.const 58
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.shl
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/rt/tcms/__new
  local.set $3
  local.get $3
  i32.const 0
  local.get $2
  call $~lib/memory/memory.fill
  local.get $0
  local.get $3
  call $~lib/array/Array<f32>#set:buffer
  local.get $0
  local.get $3
  call $~lib/array/Array<f32>#set:dataStart
  local.get $0
  local.get $2
  call $~lib/array/Array<f32>#set:byteLength
  local.get $0
  local.get $1
  call $~lib/array/Array<f32>#set:length_
  local.get $0
 )
 (func $~lib/array/Array<f32>#__uset (param $0 i32) (param $1 i32) (param $2 f32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  f32.store
  i32.const 0
  drop
 )
 (func $~lib/array/Array<f32>#__set (param $0 i32) (param $1 i32) (param $2 f32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 592
    i32.const 544
    i32.const 108
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.const 2
   call $~lib/array/ensureSize
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   call $~lib/array/Array<f32>#set:length_
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<f32>#__uset
 )
 (func $~lib/array/Array<f32>#set:length (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  local.get $1
  call $~lib/array/Array<f32>#set:length_
 )
 (func $~lib/map/Map<f32,i32>#keys (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 0
  local.get $2
  call $~lib/array/Array<f32>#constructor
  local.set $3
  i32.const 0
  local.set $4
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   local.get $2
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $1
    local.get $5
    i32.const 12
    i32.mul
    i32.add
    local.set $7
    local.get $7
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $4
     local.tee $8
     i32.const 1
     i32.add
     local.set $4
     local.get $8
     local.get $7
     f32.load
     call $~lib/array/Array<f32>#__set
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $3
  local.get $4
  call $~lib/array/Array<f32>#set:length
  local.get $3
 )
 (func $~lib/map/Map<f32,i32>#values (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 0
  local.get $2
  call $~lib/array/Array<i32>#constructor
  local.set $3
  i32.const 0
  local.set $4
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   local.get $2
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $1
    local.get $5
    i32.const 12
    i32.mul
    i32.add
    local.set $7
    local.get $7
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $4
     local.tee $8
     i32.const 1
     i32.add
     local.set $4
     local.get $8
     local.get $7
     i32.load offset=4
     call $~lib/array/Array<i32>#__set
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $3
  local.get $4
  call $~lib/array/Array<i32>#set:length
  local.get $3
 )
 (func $~lib/map/Map<f32,f32>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/map/Map<f32,f32>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/Map<f32,f32>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/map/Map<f32,f32>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/Map<f32,f32>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/map/Map<f32,f32>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
 )
 (func $~lib/map/Map<f32,f32>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 28
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<f32,f32>#set:buckets
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<f32,f32>#set:bucketsMask
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<f32,f32>#set:entries
  local.get $0
  i32.const 4
  call $~lib/map/Map<f32,f32>#set:entriesCapacity
  local.get $0
  i32.const 0
  call $~lib/map/Map<f32,f32>#set:entriesOffset
  local.get $0
  i32.const 0
  call $~lib/map/Map<f32,f32>#set:entriesCount
  local.get $0
 )
 (func $~lib/array/Array<f32>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<f32>#__uget (param $0 i32) (param $1 i32) (result f32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  f32.load
 )
 (func $~lib/array/Array<f32>#__get (param $0 i32) (param $1 i32) (result f32)
  (local $2 f32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 592
   i32.const 544
   i32.const 92
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<f32>#__uget
  local.set $2
  i32.const 0
  drop
  local.get $2
 )
 (func $~lib/map/Map<f32,f32>#find (param $0 i32) (param $1 f32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  loop $while-continue|0
   local.get $3
   local.set $4
   local.get $4
   if
    local.get $3
    i32.load offset=8
    local.set $5
    local.get $5
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $3
     f32.load
     local.get $1
     f32.eq
    else
     i32.const 0
    end
    if
     local.get $3
     return
    end
    local.get $5
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/MapEntry<f32,f32>#set:value (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=4
 )
 (func $~lib/map/MapEntry<f32,f32>#set:key (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store
 )
 (func $~lib/map/MapEntry<f32,f32>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/map/Map<f32,f32>#rehash (param $0 i32) (param $1 i32)
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
  (local $12 f32)
  (local $13 f32)
  (local $14 i32)
  (local $15 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $4
  i32.const 0
  local.get $4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  loop $while-continue|0
   local.get $6
   local.get $7
   i32.ne
   local.set $9
   local.get $9
   if
    local.get $6
    local.set $10
    local.get $10
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $11
     local.get $10
     f32.load
     local.set $12
     local.get $11
     local.get $12
     call $~lib/map/MapEntry<f32,f32>#set:key
     local.get $11
     local.get $10
     f32.load offset=4
     call $~lib/map/MapEntry<f32,f32>#set:value
     block $~lib/util/hash/HASH<f32>|inlined.5 (result i32)
      local.get $12
      local.set $13
      i32.const 0
      drop
      i32.const 0
      drop
      i32.const 1
      drop
      i32.const 4
      i32.const 4
      i32.eq
      drop
      local.get $13
      i32.reinterpret_f32
      call $~lib/util/hash/hash32
      br $~lib/util/hash/HASH<f32>|inlined.5
     end
     local.get $1
     i32.and
     local.set $14
     local.get $3
     local.get $14
     i32.const 4
     i32.mul
     i32.add
     local.set $15
     local.get $11
     local.get $15
     i32.load
     call $~lib/map/MapEntry<f32,f32>#set:taggedNext
     local.get $15
     local.get $8
     i32.store
     local.get $8
     i32.const 12
     i32.add
     local.set $8
    end
    local.get $6
    i32.const 12
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $0
  local.get $3
  call $~lib/map/Map<f32,f32>#set:buckets
  local.get $0
  local.get $1
  call $~lib/map/Map<f32,f32>#set:bucketsMask
  local.get $0
  local.get $5
  call $~lib/map/Map<f32,f32>#set:entries
  local.get $0
  local.get $4
  call $~lib/map/Map<f32,f32>#set:entriesCapacity
  local.get $0
  local.get $0
  i32.load offset=20
  call $~lib/map/Map<f32,f32>#set:entriesOffset
 )
 (func $~lib/map/Map<f32,f32>#set (param $0 i32) (param $1 f32) (param $2 f32) (result i32)
  (local $3 f32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/util/hash/HASH<f32>|inlined.4 (result i32)
   local.get $1
   local.set $3
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 1
   drop
   i32.const 4
   i32.const 4
   i32.eq
   drop
   local.get $3
   i32.reinterpret_f32
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<f32>|inlined.4
  end
  local.set $4
  local.get $0
  local.get $1
  local.get $4
  call $~lib/map/Map<f32,f32>#find
  local.set $5
  local.get $5
  if
   local.get $5
   local.get $2
   call $~lib/map/MapEntry<f32,f32>#set:value
   i32.const 0
   drop
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<f32,f32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $6
   local.get $6
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $7
   i32.const 1
   i32.add
   call $~lib/map/Map<f32,f32>#set:entriesOffset
   local.get $7
   i32.const 12
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   call $~lib/map/MapEntry<f32,f32>#set:key
   i32.const 0
   drop
   local.get $5
   local.get $2
   call $~lib/map/MapEntry<f32,f32>#set:value
   i32.const 0
   drop
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<f32,f32>#set:entriesCount
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $7
   local.get $5
   local.get $7
   i32.load
   call $~lib/map/MapEntry<f32,f32>#set:taggedNext
   local.get $7
   local.get $5
   i32.store
  end
  local.get $0
 )
 (func $~lib/map/Map<f32,f32>#get:size (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<f32,i32>#delete (param $0 i32) (param $1 f32) (result i32)
  (local $2 f32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<f32>|inlined.6 (result i32)
   local.get $1
   local.set $2
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 1
   drop
   i32.const 4
   i32.const 4
   i32.eq
   drop
   local.get $2
   i32.reinterpret_f32
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<f32>|inlined.6
  end
  call $~lib/map/Map<f32,i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $3
  local.get $3
  i32.load offset=8
  i32.const 1
  i32.or
  call $~lib/map/MapEntry<f32,i32>#set:taggedNext
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  call $~lib/map/Map<f32,i32>#set:entriesCount
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.set $4
  local.get $4
  i32.const 1
  i32.add
  i32.const 4
  local.tee $5
  local.get $0
  i32.load offset=20
  local.tee $6
  local.get $5
  local.get $6
  i32.gt_u
  select
  i32.ge_u
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   local.get $0
   local.get $4
   call $~lib/map/Map<f32,i32>#rehash
  end
  i32.const 1
 )
 (func $~lib/map/Map<f32,i32>#clear (param $0 i32)
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<f32,i32>#set:buckets
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<f32,i32>#set:bucketsMask
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<f32,i32>#set:entries
  local.get $0
  i32.const 4
  call $~lib/map/Map<f32,i32>#set:entriesCapacity
  local.get $0
  i32.const 0
  call $~lib/map/Map<f32,i32>#set:entriesOffset
  local.get $0
  i32.const 0
  call $~lib/map/Map<f32,i32>#set:entriesCount
 )
 (func $std/map/testNumeric<f32,i32>
  (local $0 i32)
  (local $1 f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 0
  call $~lib/map/Map<f32,i32>#constructor
  local.set $0
  f32.const 0
  local.set $1
  loop $for-loop|0
   local.get $1
   f32.const 100
   f32.lt
   local.set $2
   local.get $2
   if
    local.get $0
    local.get $1
    call $~lib/map/Map<f32,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 6
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    i32.const 10
    local.get $1
    i32.trunc_f32_s
    i32.add
    call $~lib/map/Map<f32,i32>#set
    drop
    local.get $0
    local.get $1
    call $~lib/map/Map<f32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 8
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<f32,i32>#get
    i32.const 10
    local.get $1
    i32.trunc_f32_s
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 9
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
  local.get $0
  call $~lib/map/Map<f32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 11
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  local.set $1
  loop $for-loop|1
   local.get $1
   f32.const 100
   f32.lt
   local.set $2
   local.get $2
   if
    local.get $0
    local.get $1
    call $~lib/map/Map<f32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 15
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<f32,i32>#get
    i32.const 10
    local.get $1
    i32.trunc_f32_s
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 16
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    i32.const 20
    local.get $1
    i32.trunc_f32_s
    i32.add
    call $~lib/map/Map<f32,i32>#set
    drop
    local.get $0
    local.get $1
    call $~lib/map/Map<f32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 18
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<f32,i32>#get
    i32.const 20
    local.get $1
    i32.trunc_f32_s
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 19
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
  local.get $0
  call $~lib/map/Map<f32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 21
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<f32,i32>#keys
  local.set $2
  local.get $0
  call $~lib/map/Map<f32,i32>#values
  local.set $3
  i32.const 0
  call $~lib/map/Map<f32,f32>#constructor
  local.set $4
  i32.const 0
  call $~lib/map/Map<i32,i32>#constructor
  local.set $5
  i32.const 0
  local.set $6
  loop $for-loop|2
   local.get $6
   local.get $2
   call $~lib/array/Array<f32>#get:length
   i32.lt_s
   local.set $7
   local.get $7
   if
    local.get $2
    local.get $6
    call $~lib/array/Array<f32>#__get
    local.set $1
    local.get $3
    local.get $6
    call $~lib/array/Array<i32>#__get
    local.set $8
    local.get $0
    local.get $1
    call $~lib/map/Map<f32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 31
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $8
    i32.const 20
    i32.sub
    f32.convert_i32_s
    call $~lib/map/Map<f32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 32
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $4
    local.get $1
    local.get $1
    call $~lib/map/Map<f32,f32>#set
    drop
    local.get $5
    local.get $8
    i32.const 20
    i32.sub
    local.get $8
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    drop
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|2
   end
  end
  local.get $4
  call $~lib/map/Map<f32,f32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 36
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 37
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
   local.set $6
   local.get $6
   if
    local.get $0
    local.get $1
    call $~lib/map/Map<f32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 41
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<f32,i32>#get
    i32.const 20
    local.get $1
    i32.trunc_f32_s
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 42
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<f32,i32>#delete
    drop
    local.get $0
    local.get $1
    call $~lib/map/Map<f32,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 44
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
  local.get $0
  call $~lib/map/Map<f32,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 46
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
   local.set $6
   local.get $6
   if
    local.get $0
    local.get $1
    call $~lib/map/Map<f32,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 50
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    i32.const 10
    local.get $1
    i32.trunc_f32_s
    i32.add
    call $~lib/map/Map<f32,i32>#set
    drop
    local.get $0
    local.get $1
    call $~lib/map/Map<f32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 52
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<f32,i32>#delete
    drop
    local.get $0
    local.get $1
    call $~lib/map/Map<f32,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 54
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
  local.get $0
  call $~lib/map/Map<f32,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 56
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<f32,i32>#clear
  local.get $0
  call $~lib/map/Map<f32,i32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/map/Map<f64,i32>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/map/Map<f64,i32>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/Map<f64,i32>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/map/Map<f64,i32>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/Map<f64,i32>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/map/Map<f64,i32>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
 )
 (func $~lib/map/Map<f64,i32>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 29
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<f64,i32>#set:buckets
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<f64,i32>#set:bucketsMask
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 16
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<f64,i32>#set:entries
  local.get $0
  i32.const 4
  call $~lib/map/Map<f64,i32>#set:entriesCapacity
  local.get $0
  i32.const 0
  call $~lib/map/Map<f64,i32>#set:entriesOffset
  local.get $0
  i32.const 0
  call $~lib/map/Map<f64,i32>#set:entriesCount
  local.get $0
 )
 (func $~lib/map/Map<f64,i32>#find (param $0 i32) (param $1 f64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  loop $while-continue|0
   local.get $3
   local.set $4
   local.get $4
   if
    local.get $3
    i32.load offset=12
    local.set $5
    local.get $5
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $3
     f64.load
     local.get $1
     f64.eq
    else
     i32.const 0
    end
    if
     local.get $3
     return
    end
    local.get $5
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<f64,i32>#has (param $0 i32) (param $1 f64) (result i32)
  (local $2 f64)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<f64>|inlined.0 (result i32)
   local.get $1
   local.set $2
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 1
   drop
   i32.const 8
   i32.const 4
   i32.eq
   drop
   i32.const 8
   i32.const 8
   i32.eq
   drop
   local.get $2
   i64.reinterpret_f64
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<f64>|inlined.0
  end
  call $~lib/map/Map<f64,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/MapEntry<f64,i32>#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/map/MapEntry<f64,i32>#set:key (param $0 i32) (param $1 f64)
  local.get $0
  local.get $1
  f64.store
 )
 (func $~lib/map/MapEntry<f64,i32>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/Map<f64,i32>#rehash (param $0 i32) (param $1 i32)
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
  (local $12 f64)
  (local $13 f64)
  (local $14 i32)
  (local $15 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $4
  i32.const 0
  local.get $4
  i32.const 16
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  i32.const 16
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  loop $while-continue|0
   local.get $6
   local.get $7
   i32.ne
   local.set $9
   local.get $9
   if
    local.get $6
    local.set $10
    local.get $10
    i32.load offset=12
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $11
     local.get $10
     f64.load
     local.set $12
     local.get $11
     local.get $12
     call $~lib/map/MapEntry<f64,i32>#set:key
     local.get $11
     local.get $10
     i32.load offset=8
     call $~lib/map/MapEntry<f64,i32>#set:value
     block $~lib/util/hash/HASH<f64>|inlined.2 (result i32)
      local.get $12
      local.set $13
      i32.const 0
      drop
      i32.const 0
      drop
      i32.const 1
      drop
      i32.const 8
      i32.const 4
      i32.eq
      drop
      i32.const 8
      i32.const 8
      i32.eq
      drop
      local.get $13
      i64.reinterpret_f64
      call $~lib/util/hash/hash64
      br $~lib/util/hash/HASH<f64>|inlined.2
     end
     local.get $1
     i32.and
     local.set $14
     local.get $3
     local.get $14
     i32.const 4
     i32.mul
     i32.add
     local.set $15
     local.get $11
     local.get $15
     i32.load
     call $~lib/map/MapEntry<f64,i32>#set:taggedNext
     local.get $15
     local.get $8
     i32.store
     local.get $8
     i32.const 16
     i32.add
     local.set $8
    end
    local.get $6
    i32.const 16
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $0
  local.get $3
  call $~lib/map/Map<f64,i32>#set:buckets
  local.get $0
  local.get $1
  call $~lib/map/Map<f64,i32>#set:bucketsMask
  local.get $0
  local.get $5
  call $~lib/map/Map<f64,i32>#set:entries
  local.get $0
  local.get $4
  call $~lib/map/Map<f64,i32>#set:entriesCapacity
  local.get $0
  local.get $0
  i32.load offset=20
  call $~lib/map/Map<f64,i32>#set:entriesOffset
 )
 (func $~lib/map/Map<f64,i32>#set (param $0 i32) (param $1 f64) (param $2 i32) (result i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/util/hash/HASH<f64>|inlined.1 (result i32)
   local.get $1
   local.set $3
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 1
   drop
   i32.const 8
   i32.const 4
   i32.eq
   drop
   i32.const 8
   i32.const 8
   i32.eq
   drop
   local.get $3
   i64.reinterpret_f64
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<f64>|inlined.1
  end
  local.set $4
  local.get $0
  local.get $1
  local.get $4
  call $~lib/map/Map<f64,i32>#find
  local.set $5
  local.get $5
  if
   local.get $5
   local.get $2
   call $~lib/map/MapEntry<f64,i32>#set:value
   i32.const 0
   drop
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<f64,i32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $6
   local.get $6
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $7
   i32.const 1
   i32.add
   call $~lib/map/Map<f64,i32>#set:entriesOffset
   local.get $7
   i32.const 16
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   call $~lib/map/MapEntry<f64,i32>#set:key
   i32.const 0
   drop
   local.get $5
   local.get $2
   call $~lib/map/MapEntry<f64,i32>#set:value
   i32.const 0
   drop
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<f64,i32>#set:entriesCount
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $7
   local.get $5
   local.get $7
   i32.load
   call $~lib/map/MapEntry<f64,i32>#set:taggedNext
   local.get $7
   local.get $5
   i32.store
  end
  local.get $0
 )
 (func $~lib/map/Map<f64,i32>#get (param $0 i32) (param $1 f64) (result i32)
  (local $2 f64)
  (local $3 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<f64>|inlined.3 (result i32)
   local.get $1
   local.set $2
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 1
   drop
   i32.const 8
   i32.const 4
   i32.eq
   drop
   i32.const 8
   i32.const 8
   i32.eq
   drop
   local.get $2
   i64.reinterpret_f64
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<f64>|inlined.3
  end
  call $~lib/map/Map<f64,i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 432
   i32.const 496
   i32.const 105
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=8
 )
 (func $~lib/map/Map<f64,i32>#get:size (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/array/Array<f64>#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/array/Array<f64>#set:dataStart (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/array/Array<f64>#set:byteLength (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/array/Array<f64>#set:length_ (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/array/Array<f64>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 30
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  call $~lib/array/Array<f64>#set:buffer
  local.get $0
  i32.const 0
  call $~lib/array/Array<f64>#set:dataStart
  local.get $0
  i32.const 0
  call $~lib/array/Array<f64>#set:byteLength
  local.get $0
  i32.const 0
  call $~lib/array/Array<f64>#set:length_
  local.get $1
  i32.const 1073741820
  i32.const 3
  i32.shr_u
  i32.gt_u
  if
   i32.const 272
   i32.const 544
   i32.const 58
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 3
  i32.shl
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/rt/tcms/__new
  local.set $3
  local.get $3
  i32.const 0
  local.get $2
  call $~lib/memory/memory.fill
  local.get $0
  local.get $3
  call $~lib/array/Array<f64>#set:buffer
  local.get $0
  local.get $3
  call $~lib/array/Array<f64>#set:dataStart
  local.get $0
  local.get $2
  call $~lib/array/Array<f64>#set:byteLength
  local.get $0
  local.get $1
  call $~lib/array/Array<f64>#set:length_
  local.get $0
 )
 (func $~lib/array/Array<f64>#__uset (param $0 i32) (param $1 i32) (param $2 f64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  local.get $2
  f64.store
  i32.const 0
  drop
 )
 (func $~lib/array/Array<f64>#__set (param $0 i32) (param $1 i32) (param $2 f64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 592
    i32.const 544
    i32.const 108
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.const 3
   call $~lib/array/ensureSize
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   call $~lib/array/Array<f64>#set:length_
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<f64>#__uset
 )
 (func $~lib/array/Array<f64>#set:length (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.const 3
  call $~lib/array/ensureSize
  local.get $0
  local.get $1
  call $~lib/array/Array<f64>#set:length_
 )
 (func $~lib/map/Map<f64,i32>#keys (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 0
  local.get $2
  call $~lib/array/Array<f64>#constructor
  local.set $3
  i32.const 0
  local.set $4
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   local.get $2
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $1
    local.get $5
    i32.const 16
    i32.mul
    i32.add
    local.set $7
    local.get $7
    i32.load offset=12
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $4
     local.tee $8
     i32.const 1
     i32.add
     local.set $4
     local.get $8
     local.get $7
     f64.load
     call $~lib/array/Array<f64>#__set
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $3
  local.get $4
  call $~lib/array/Array<f64>#set:length
  local.get $3
 )
 (func $~lib/map/Map<f64,i32>#values (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  i32.const 0
  local.get $2
  call $~lib/array/Array<i32>#constructor
  local.set $3
  i32.const 0
  local.set $4
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   local.get $2
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $1
    local.get $5
    i32.const 16
    i32.mul
    i32.add
    local.set $7
    local.get $7
    i32.load offset=12
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $4
     local.tee $8
     i32.const 1
     i32.add
     local.set $4
     local.get $8
     local.get $7
     i32.load offset=8
     call $~lib/array/Array<i32>#__set
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $3
  local.get $4
  call $~lib/array/Array<i32>#set:length
  local.get $3
 )
 (func $~lib/map/Map<f64,f64>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/map/Map<f64,f64>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/Map<f64,f64>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/tcms/__link
 )
 (func $~lib/map/Map<f64,f64>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/Map<f64,f64>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/map/Map<f64,f64>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
 )
 (func $~lib/map/Map<f64,f64>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 31
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<f64,f64>#set:buckets
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<f64,f64>#set:bucketsMask
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 24
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<f64,f64>#set:entries
  local.get $0
  i32.const 4
  call $~lib/map/Map<f64,f64>#set:entriesCapacity
  local.get $0
  i32.const 0
  call $~lib/map/Map<f64,f64>#set:entriesOffset
  local.get $0
  i32.const 0
  call $~lib/map/Map<f64,f64>#set:entriesCount
  local.get $0
 )
 (func $~lib/array/Array<f64>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<f64>#__uget (param $0 i32) (param $1 i32) (result f64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  f64.load
 )
 (func $~lib/array/Array<f64>#__get (param $0 i32) (param $1 i32) (result f64)
  (local $2 f64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 592
   i32.const 544
   i32.const 92
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<f64>#__uget
  local.set $2
  i32.const 0
  drop
  local.get $2
 )
 (func $~lib/map/Map<f64,f64>#find (param $0 i32) (param $1 f64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  loop $while-continue|0
   local.get $3
   local.set $4
   local.get $4
   if
    local.get $3
    i32.load offset=16
    local.set $5
    local.get $5
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $3
     f64.load
     local.get $1
     f64.eq
    else
     i32.const 0
    end
    if
     local.get $3
     return
    end
    local.get $5
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/MapEntry<f64,f64>#set:value (param $0 i32) (param $1 f64)
  local.get $0
  local.get $1
  f64.store offset=8
 )
 (func $~lib/map/MapEntry<f64,f64>#set:key (param $0 i32) (param $1 f64)
  local.get $0
  local.get $1
  f64.store
 )
 (func $~lib/map/MapEntry<f64,f64>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/map/Map<f64,f64>#rehash (param $0 i32) (param $1 i32)
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
  (local $12 f64)
  (local $13 f64)
  (local $14 i32)
  (local $15 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $4
  i32.const 0
  local.get $4
  i32.const 24
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  i32.const 24
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  loop $while-continue|0
   local.get $6
   local.get $7
   i32.ne
   local.set $9
   local.get $9
   if
    local.get $6
    local.set $10
    local.get $10
    i32.load offset=16
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $11
     local.get $10
     f64.load
     local.set $12
     local.get $11
     local.get $12
     call $~lib/map/MapEntry<f64,f64>#set:key
     local.get $11
     local.get $10
     f64.load offset=8
     call $~lib/map/MapEntry<f64,f64>#set:value
     block $~lib/util/hash/HASH<f64>|inlined.5 (result i32)
      local.get $12
      local.set $13
      i32.const 0
      drop
      i32.const 0
      drop
      i32.const 1
      drop
      i32.const 8
      i32.const 4
      i32.eq
      drop
      i32.const 8
      i32.const 8
      i32.eq
      drop
      local.get $13
      i64.reinterpret_f64
      call $~lib/util/hash/hash64
      br $~lib/util/hash/HASH<f64>|inlined.5
     end
     local.get $1
     i32.and
     local.set $14
     local.get $3
     local.get $14
     i32.const 4
     i32.mul
     i32.add
     local.set $15
     local.get $11
     local.get $15
     i32.load
     call $~lib/map/MapEntry<f64,f64>#set:taggedNext
     local.get $15
     local.get $8
     i32.store
     local.get $8
     i32.const 24
     i32.add
     local.set $8
    end
    local.get $6
    i32.const 24
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $0
  local.get $3
  call $~lib/map/Map<f64,f64>#set:buckets
  local.get $0
  local.get $1
  call $~lib/map/Map<f64,f64>#set:bucketsMask
  local.get $0
  local.get $5
  call $~lib/map/Map<f64,f64>#set:entries
  local.get $0
  local.get $4
  call $~lib/map/Map<f64,f64>#set:entriesCapacity
  local.get $0
  local.get $0
  i32.load offset=20
  call $~lib/map/Map<f64,f64>#set:entriesOffset
 )
 (func $~lib/map/Map<f64,f64>#set (param $0 i32) (param $1 f64) (param $2 f64) (result i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/util/hash/HASH<f64>|inlined.4 (result i32)
   local.get $1
   local.set $3
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 1
   drop
   i32.const 8
   i32.const 4
   i32.eq
   drop
   i32.const 8
   i32.const 8
   i32.eq
   drop
   local.get $3
   i64.reinterpret_f64
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<f64>|inlined.4
  end
  local.set $4
  local.get $0
  local.get $1
  local.get $4
  call $~lib/map/Map<f64,f64>#find
  local.set $5
  local.get $5
  if
   local.get $5
   local.get $2
   call $~lib/map/MapEntry<f64,f64>#set:value
   i32.const 0
   drop
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<f64,f64>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $6
   local.get $6
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $7
   i32.const 1
   i32.add
   call $~lib/map/Map<f64,f64>#set:entriesOffset
   local.get $7
   i32.const 24
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   call $~lib/map/MapEntry<f64,f64>#set:key
   i32.const 0
   drop
   local.get $5
   local.get $2
   call $~lib/map/MapEntry<f64,f64>#set:value
   i32.const 0
   drop
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<f64,f64>#set:entriesCount
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $7
   local.get $5
   local.get $7
   i32.load
   call $~lib/map/MapEntry<f64,f64>#set:taggedNext
   local.get $7
   local.get $5
   i32.store
  end
  local.get $0
 )
 (func $~lib/map/Map<f64,f64>#get:size (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<f64,i32>#delete (param $0 i32) (param $1 f64) (result i32)
  (local $2 f64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<f64>|inlined.6 (result i32)
   local.get $1
   local.set $2
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 1
   drop
   i32.const 8
   i32.const 4
   i32.eq
   drop
   i32.const 8
   i32.const 8
   i32.eq
   drop
   local.get $2
   i64.reinterpret_f64
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<f64>|inlined.6
  end
  call $~lib/map/Map<f64,i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $3
  local.get $3
  i32.load offset=12
  i32.const 1
  i32.or
  call $~lib/map/MapEntry<f64,i32>#set:taggedNext
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  call $~lib/map/Map<f64,i32>#set:entriesCount
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.set $4
  local.get $4
  i32.const 1
  i32.add
  i32.const 4
  local.tee $5
  local.get $0
  i32.load offset=20
  local.tee $6
  local.get $5
  local.get $6
  i32.gt_u
  select
  i32.ge_u
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   local.get $0
   local.get $4
   call $~lib/map/Map<f64,i32>#rehash
  end
  i32.const 1
 )
 (func $~lib/map/Map<f64,i32>#clear (param $0 i32)
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<f64,i32>#set:buckets
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<f64,i32>#set:bucketsMask
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 16
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<f64,i32>#set:entries
  local.get $0
  i32.const 4
  call $~lib/map/Map<f64,i32>#set:entriesCapacity
  local.get $0
  i32.const 0
  call $~lib/map/Map<f64,i32>#set:entriesOffset
  local.get $0
  i32.const 0
  call $~lib/map/Map<f64,i32>#set:entriesCount
 )
 (func $std/map/testNumeric<f64,i32>
  (local $0 i32)
  (local $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 0
  call $~lib/map/Map<f64,i32>#constructor
  local.set $0
  f64.const 0
  local.set $1
  loop $for-loop|0
   local.get $1
   f64.const 100
   f64.lt
   local.set $2
   local.get $2
   if
    local.get $0
    local.get $1
    call $~lib/map/Map<f64,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 6
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    i32.const 10
    local.get $1
    i32.trunc_f64_s
    i32.add
    call $~lib/map/Map<f64,i32>#set
    drop
    local.get $0
    local.get $1
    call $~lib/map/Map<f64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 8
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<f64,i32>#get
    i32.const 10
    local.get $1
    i32.trunc_f64_s
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 9
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
  local.get $0
  call $~lib/map/Map<f64,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 11
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  local.set $1
  loop $for-loop|1
   local.get $1
   f64.const 100
   f64.lt
   local.set $2
   local.get $2
   if
    local.get $0
    local.get $1
    call $~lib/map/Map<f64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 15
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<f64,i32>#get
    i32.const 10
    local.get $1
    i32.trunc_f64_s
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 16
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    i32.const 20
    local.get $1
    i32.trunc_f64_s
    i32.add
    call $~lib/map/Map<f64,i32>#set
    drop
    local.get $0
    local.get $1
    call $~lib/map/Map<f64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 18
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<f64,i32>#get
    i32.const 20
    local.get $1
    i32.trunc_f64_s
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 19
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
  local.get $0
  call $~lib/map/Map<f64,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 21
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<f64,i32>#keys
  local.set $2
  local.get $0
  call $~lib/map/Map<f64,i32>#values
  local.set $3
  i32.const 0
  call $~lib/map/Map<f64,f64>#constructor
  local.set $4
  i32.const 0
  call $~lib/map/Map<i32,i32>#constructor
  local.set $5
  i32.const 0
  local.set $6
  loop $for-loop|2
   local.get $6
   local.get $2
   call $~lib/array/Array<f64>#get:length
   i32.lt_s
   local.set $7
   local.get $7
   if
    local.get $2
    local.get $6
    call $~lib/array/Array<f64>#__get
    local.set $1
    local.get $3
    local.get $6
    call $~lib/array/Array<i32>#__get
    local.set $8
    local.get $0
    local.get $1
    call $~lib/map/Map<f64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 31
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $8
    i32.const 20
    i32.sub
    f64.convert_i32_s
    call $~lib/map/Map<f64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 32
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $4
    local.get $1
    local.get $1
    call $~lib/map/Map<f64,f64>#set
    drop
    local.get $5
    local.get $8
    i32.const 20
    i32.sub
    local.get $8
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    drop
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|2
   end
  end
  local.get $4
  call $~lib/map/Map<f64,f64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 36
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 37
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
   local.set $6
   local.get $6
   if
    local.get $0
    local.get $1
    call $~lib/map/Map<f64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 41
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<f64,i32>#get
    i32.const 20
    local.get $1
    i32.trunc_f64_s
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 42
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<f64,i32>#delete
    drop
    local.get $0
    local.get $1
    call $~lib/map/Map<f64,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 44
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
  local.get $0
  call $~lib/map/Map<f64,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 46
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
   local.set $6
   local.get $6
   if
    local.get $0
    local.get $1
    call $~lib/map/Map<f64,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 50
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    i32.const 10
    local.get $1
    i32.trunc_f64_s
    i32.add
    call $~lib/map/Map<f64,i32>#set
    drop
    local.get $0
    local.get $1
    call $~lib/map/Map<f64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 52
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<f64,i32>#delete
    drop
    local.get $0
    local.get $1
    call $~lib/map/Map<f64,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 384
     i32.const 54
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
  local.get $0
  call $~lib/map/Map<f64,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 56
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/map/Map<f64,i32>#clear
  local.get $0
  call $~lib/map/Map<f64,i32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 384
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/rt/tlsf/__free (param $0 i32)
  local.get $0
  global.get $~lib/memory/__heap_base
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
  call $~lib/rt/tlsf/checkUsedBlock
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/tcms/free (param $0 i32)
  local.get $0
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   return
  end
  global.get $~lib/rt/tcms/total
  i32.const 1
  i32.sub
  global.set $~lib/rt/tcms/total
  global.get $~lib/rt/tcms/totalMem
  local.get $0
  call $~lib/rt/tcms/Object#get:size
  i32.sub
  global.set $~lib/rt/tcms/totalMem
  i32.const 0
  drop
  local.get $0
  i32.const 4
  i32.add
  call $~lib/rt/tlsf/__free
 )
 (func $~lib/rt/tcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $break|0
   block $case3|0
    block $case2|0
     block $case1|0
      block $case0|0
       global.get $~lib/rt/tcms/state
       local.set $1
       local.get $1
       i32.const 0
       i32.eq
       br_if $case0|0
       local.get $1
       i32.const 1
       i32.eq
       br_if $case1|0
       local.get $1
       i32.const 2
       i32.eq
       br_if $case2|0
       local.get $1
       i32.const 3
       i32.eq
       br_if $case3|0
       br $break|0
      end
      call $~lib/rt/tcms/init
     end
     i32.const 0
     call $~lib/rt/__visit_globals
     i32.const 0
     call $~lib/rt/tcms/__visit_externals
     i32.const 2
     global.set $~lib/rt/tcms/state
    end
    global.get $~lib/rt/tcms/white
    i32.eqz
    local.set $1
    global.get $~lib/rt/tcms/iter
    call $~lib/rt/tcms/Object#get:next
    local.set $0
    local.get $0
    global.get $~lib/rt/tcms/toSpace
    i32.ne
    if
     local.get $0
     global.set $~lib/rt/tcms/iter
     local.get $0
     local.get $1
     call $~lib/rt/tcms/Object#set:color
     local.get $0
     local.set $2
     local.get $2
     i32.const 20
     i32.add
     i32.const 0
     call $~lib/rt/__visit_members
    else
     i32.const 0
     call $~lib/rt/__visit_globals
     i32.const 0
     call $~lib/rt/tcms/__visit_externals
     global.get $~lib/rt/tcms/iter
     call $~lib/rt/tcms/Object#get:next
     local.set $0
     local.get $0
     global.get $~lib/rt/tcms/toSpace
     i32.eq
     if
      global.get $~lib/rt/tcms/fromSpace
      local.set $2
      global.get $~lib/rt/tcms/toSpace
      global.set $~lib/rt/tcms/fromSpace
      local.get $2
      global.set $~lib/rt/tcms/toSpace
      local.get $1
      global.set $~lib/rt/tcms/white
      local.get $2
      call $~lib/rt/tcms/Object#get:next
      global.set $~lib/rt/tcms/iter
      i32.const 3
      global.set $~lib/rt/tcms/state
     end
    end
    br $break|0
   end
   global.get $~lib/rt/tcms/iter
   local.set $0
   local.get $0
   global.get $~lib/rt/tcms/toSpace
   i32.ne
   if
    local.get $0
    call $~lib/rt/tcms/Object#get:next
    global.set $~lib/rt/tcms/iter
    local.get $0
    call $~lib/rt/tcms/Object#get:color
    global.get $~lib/rt/tcms/white
    i32.eqz
    i32.ne
    if
     global.get $~lib/rt/tcms/fromSpace
     call $~lib/rt/tcms/Object#get:next
     local.set $1
     loop $while-continue|1
      local.get $1
      global.get $~lib/rt/tcms/fromSpace
      i32.ne
      local.set $2
      local.get $2
      if
       local.get $1
       i32.const 0
       i32.ne
       i32.eqz
       if
        i32.const 0
        i32.const 64
        i32.const 206
        i32.const 13
        call $~lib/builtins/abort
        unreachable
       end
       local.get $1
       local.get $0
       i32.eq
       if
        i32.const 656
        i32.const 0
        f64.const 0
        f64.const 0
        f64.const 0
        f64.const 0
        f64.const 0
        call $~lib/builtins/trace
       end
       local.get $1
       call $~lib/rt/tcms/Object#get:next
       local.set $1
       br $while-continue|1
      end
     end
     global.get $~lib/rt/tcms/toSpace
     call $~lib/rt/tcms/Object#get:next
     local.set $1
     loop $while-continue|2
      local.get $1
      global.get $~lib/rt/tcms/toSpace
      i32.ne
      local.set $2
      local.get $2
      if
       local.get $1
       i32.const 0
       i32.ne
       i32.eqz
       if
        i32.const 0
        i32.const 64
        i32.const 212
        i32.const 13
        call $~lib/builtins/abort
        unreachable
       end
       local.get $1
       local.get $0
       i32.eq
       if
        i32.const 704
        i32.const 0
        f64.const 0
        f64.const 0
        f64.const 0
        f64.const 0
        f64.const 0
        call $~lib/builtins/trace
       end
       local.get $1
       call $~lib/rt/tcms/Object#get:next
       local.set $1
       br $while-continue|2
      end
     end
     i32.const 0
     i32.eqz
     if
      i32.const 0
      i32.const 64
      i32.const 216
      i32.const 11
      call $~lib/builtins/abort
      unreachable
     end
    end
    local.get $0
    call $~lib/rt/tcms/free
    i32.const 1
    return
   end
   global.get $~lib/rt/tcms/toSpace
   local.set $2
   local.get $2
   local.get $2
   call $~lib/rt/tcms/Object#set:nextWithColor
   local.get $2
   local.get $2
   local.tee $1
   i32.eqz
   if (result i32)
    i32.const 0
    i32.const 64
    i32.const 153
    i32.const 17
    call $~lib/builtins/abort
    unreachable
   else
    local.get $1
   end
   call $~lib/rt/tcms/Object#set:prev
   i32.const 1
   global.set $~lib/rt/tcms/state
   i32.const 0
   global.set $~lib/rt/tcms/debt
   br $break|0
  end
  i32.const 0
 )
 (func $~lib/rt/tcms/collectIncremental
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/rt/tcms/depth
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 373
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/tcms/total
  global.get $~lib/rt/tcms/threshold
  i32.lt_u
  if
   return
  end
  i32.const 0
  drop
  global.get $~lib/rt/tcms/total
  global.get $~lib/rt/tcms/threshold
  i32.sub
  global.set $~lib/rt/tcms/debt
  i32.const 2
  i32.const 100
  i32.mul
  local.set $0
  loop $do-continue|0
   local.get $0
   call $~lib/rt/tcms/step
   i32.sub
   local.set $0
   global.get $~lib/rt/tcms/state
   i32.const 1
   i32.eq
   if
    i32.const 2
    global.get $~lib/rt/tcms/total
    i32.mul
    global.set $~lib/rt/tcms/threshold
    i32.const 0
    drop
    i32.const 0
    drop
    return
   end
   local.get $0
   i32.const 0
   i32.gt_s
   local.set $1
   local.get $1
   br_if $do-continue|0
  end
  global.get $~lib/rt/tcms/debt
  i32.const 100
  i32.lt_u
  if
   global.get $~lib/rt/tcms/total
   i32.const 100
   i32.add
   global.set $~lib/rt/tcms/threshold
  else
   global.get $~lib/rt/tcms/debt
   i32.const 100
   i32.sub
   global.set $~lib/rt/tcms/debt
   global.get $~lib/rt/tcms/total
   global.set $~lib/rt/tcms/threshold
  end
 )
 (func $~lib/rt/tcms/collectFull
  (local $0 i32)
  i32.const 0
  drop
  global.get $~lib/rt/tcms/state
  i32.const 1
  i32.gt_s
  if
   loop $while-continue|0
    global.get $~lib/rt/tcms/state
    i32.const 1
    i32.ne
    local.set $0
    local.get $0
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
   local.set $0
   local.get $0
   if
    call $~lib/rt/tcms/step
    drop
    br $while-continue|1
   end
  end
  i32.const 2
  global.get $~lib/rt/tcms/total
  i32.mul
  global.set $~lib/rt/tcms/threshold
  i32.const 0
  drop
  i32.const 0
  drop
 )
 (func $~lib/rt/tcms/__collect (param $0 i32)
  local.get $0
  if
   call $~lib/rt/tcms/collectIncremental
  else
   call $~lib/rt/tcms/collectFull
  end
 )
 (func $start:std/map
  call $std/map/testNumeric<i8,i32>
  call $std/map/testNumeric<u8,i32>
  call $std/map/testNumeric<i16,i32>
  call $std/map/testNumeric<u16,i32>
  call $std/map/testNumeric<i32,i32>
  call $std/map/testNumeric<u32,i32>
  call $std/map/testNumeric<i64,i32>
  call $std/map/testNumeric<u64,i32>
  call $std/map/testNumeric<f32,i32>
  call $std/map/testNumeric<f64,i32>
  i32.const 0
  call $~lib/rt/tcms/__collect
 )
 (func $~start
  call $start:std/map
 )
 (func $~lib/rt/tcms/__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  local.set $2
  local.get $2
  i32.const 20
  i32.sub
  local.set $2
  i32.const 0
  drop
  local.get $2
  call $~lib/rt/tcms/Object#get:color
  global.get $~lib/rt/tcms/white
  i32.eq
  if
   local.get $2
   call $~lib/rt/tcms/Object#makeGray
  end
 )
 (func $~lib/rt/__visit_globals (param $0 i32)
  (local $1 i32)
  i32.const 592
  local.get $0
  call $~lib/rt/tcms/__visit
  i32.const 272
  local.get $0
  call $~lib/rt/tcms/__visit
  i32.const 432
  local.get $0
  call $~lib/rt/tcms/__visit
 )
 (func $~lib/arraybuffer/ArrayBuffer~visit (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/string/String~visit (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/arraybuffer/ArrayBufferView~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/tcms/__visit
  end
 )
 (func $~lib/map/Map<i8,i32>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/tcms/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 0
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  drop
  local.get $2
  local.get $1
  call $~lib/rt/tcms/__visit
 )
 (func $~lib/map/Map<i8,i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<i8,i32>#__visit
 )
 (func $~lib/array/Array<i8>#__visit (param $0 i32) (param $1 i32)
  i32.const 0
  drop
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/tcms/__visit
 )
 (func $~lib/array/Array<i8>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<i8>#__visit
 )
 (func $~lib/array/Array<i32>#__visit (param $0 i32) (param $1 i32)
  i32.const 0
  drop
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/tcms/__visit
 )
 (func $~lib/array/Array<i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__visit
 )
 (func $~lib/map/Map<i8,i8>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/tcms/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 0
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  drop
  local.get $2
  local.get $1
  call $~lib/rt/tcms/__visit
 )
 (func $~lib/map/Map<i8,i8>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<i8,i8>#__visit
 )
 (func $~lib/map/Map<i32,i32>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/tcms/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 0
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  drop
  local.get $2
  local.get $1
  call $~lib/rt/tcms/__visit
 )
 (func $~lib/map/Map<i32,i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<i32,i32>#__visit
 )
 (func $~lib/map/Map<u8,i32>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/tcms/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 0
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  drop
  local.get $2
  local.get $1
  call $~lib/rt/tcms/__visit
 )
 (func $~lib/map/Map<u8,i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<u8,i32>#__visit
 )
 (func $~lib/array/Array<u8>#__visit (param $0 i32) (param $1 i32)
  i32.const 0
  drop
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/tcms/__visit
 )
 (func $~lib/array/Array<u8>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<u8>#__visit
 )
 (func $~lib/map/Map<u8,u8>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/tcms/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 0
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  drop
  local.get $2
  local.get $1
  call $~lib/rt/tcms/__visit
 )
 (func $~lib/map/Map<u8,u8>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<u8,u8>#__visit
 )
 (func $~lib/map/Map<i16,i32>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/tcms/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 0
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  drop
  local.get $2
  local.get $1
  call $~lib/rt/tcms/__visit
 )
 (func $~lib/map/Map<i16,i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<i16,i32>#__visit
 )
 (func $~lib/array/Array<i16>#__visit (param $0 i32) (param $1 i32)
  i32.const 0
  drop
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/tcms/__visit
 )
 (func $~lib/array/Array<i16>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<i16>#__visit
 )
 (func $~lib/map/Map<i16,i16>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/tcms/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 0
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  drop
  local.get $2
  local.get $1
  call $~lib/rt/tcms/__visit
 )
 (func $~lib/map/Map<i16,i16>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<i16,i16>#__visit
 )
 (func $~lib/map/Map<u16,i32>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/tcms/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 0
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  drop
  local.get $2
  local.get $1
  call $~lib/rt/tcms/__visit
 )
 (func $~lib/map/Map<u16,i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<u16,i32>#__visit
 )
 (func $~lib/array/Array<u16>#__visit (param $0 i32) (param $1 i32)
  i32.const 0
  drop
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/tcms/__visit
 )
 (func $~lib/array/Array<u16>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<u16>#__visit
 )
 (func $~lib/map/Map<u16,u16>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/tcms/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 0
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  drop
  local.get $2
  local.get $1
  call $~lib/rt/tcms/__visit
 )
 (func $~lib/map/Map<u16,u16>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<u16,u16>#__visit
 )
 (func $~lib/map/Map<u32,i32>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/tcms/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 0
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  drop
  local.get $2
  local.get $1
  call $~lib/rt/tcms/__visit
 )
 (func $~lib/map/Map<u32,i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<u32,i32>#__visit
 )
 (func $~lib/array/Array<u32>#__visit (param $0 i32) (param $1 i32)
  i32.const 0
  drop
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/tcms/__visit
 )
 (func $~lib/array/Array<u32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<u32>#__visit
 )
 (func $~lib/map/Map<u32,u32>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/tcms/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 0
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  drop
  local.get $2
  local.get $1
  call $~lib/rt/tcms/__visit
 )
 (func $~lib/map/Map<u32,u32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<u32,u32>#__visit
 )
 (func $~lib/map/Map<i64,i32>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/tcms/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 0
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  drop
  local.get $2
  local.get $1
  call $~lib/rt/tcms/__visit
 )
 (func $~lib/map/Map<i64,i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<i64,i32>#__visit
 )
 (func $~lib/array/Array<i64>#__visit (param $0 i32) (param $1 i32)
  i32.const 0
  drop
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/tcms/__visit
 )
 (func $~lib/array/Array<i64>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<i64>#__visit
 )
 (func $~lib/map/Map<i64,i64>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/tcms/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 0
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  drop
  local.get $2
  local.get $1
  call $~lib/rt/tcms/__visit
 )
 (func $~lib/map/Map<i64,i64>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<i64,i64>#__visit
 )
 (func $~lib/map/Map<u64,i32>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/tcms/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 0
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  drop
  local.get $2
  local.get $1
  call $~lib/rt/tcms/__visit
 )
 (func $~lib/map/Map<u64,i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<u64,i32>#__visit
 )
 (func $~lib/array/Array<u64>#__visit (param $0 i32) (param $1 i32)
  i32.const 0
  drop
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/tcms/__visit
 )
 (func $~lib/array/Array<u64>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<u64>#__visit
 )
 (func $~lib/map/Map<u64,u64>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/tcms/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 0
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  drop
  local.get $2
  local.get $1
  call $~lib/rt/tcms/__visit
 )
 (func $~lib/map/Map<u64,u64>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<u64,u64>#__visit
 )
 (func $~lib/map/Map<f32,i32>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/tcms/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 0
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  drop
  local.get $2
  local.get $1
  call $~lib/rt/tcms/__visit
 )
 (func $~lib/map/Map<f32,i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<f32,i32>#__visit
 )
 (func $~lib/array/Array<f32>#__visit (param $0 i32) (param $1 i32)
  i32.const 0
  drop
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/tcms/__visit
 )
 (func $~lib/array/Array<f32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<f32>#__visit
 )
 (func $~lib/map/Map<f32,f32>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/tcms/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 0
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  drop
  local.get $2
  local.get $1
  call $~lib/rt/tcms/__visit
 )
 (func $~lib/map/Map<f32,f32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<f32,f32>#__visit
 )
 (func $~lib/map/Map<f64,i32>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/tcms/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 0
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  drop
  local.get $2
  local.get $1
  call $~lib/rt/tcms/__visit
 )
 (func $~lib/map/Map<f64,i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<f64,i32>#__visit
 )
 (func $~lib/array/Array<f64>#__visit (param $0 i32) (param $1 i32)
  i32.const 0
  drop
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/tcms/__visit
 )
 (func $~lib/array/Array<f64>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<f64>#__visit
 )
 (func $~lib/map/Map<f64,f64>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/tcms/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 0
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  drop
  local.get $2
  local.get $1
  call $~lib/rt/tcms/__visit
 )
 (func $~lib/map/Map<f64,f64>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<f64,f64>#__visit
 )
 (func $~lib/rt/__visit_members (param $0 i32) (param $1 i32)
  block $invalid
   block $~lib/map/Map<f64,f64>
    block $~lib/array/Array<f64>
     block $~lib/map/Map<f64,i32>
      block $~lib/map/Map<f32,f32>
       block $~lib/array/Array<f32>
        block $~lib/map/Map<f32,i32>
         block $~lib/map/Map<u64,u64>
          block $~lib/array/Array<u64>
           block $~lib/map/Map<u64,i32>
            block $~lib/map/Map<i64,i64>
             block $~lib/array/Array<i64>
              block $~lib/map/Map<i64,i32>
               block $~lib/map/Map<u32,u32>
                block $~lib/array/Array<u32>
                 block $~lib/map/Map<u32,i32>
                  block $~lib/map/Map<u16,u16>
                   block $~lib/array/Array<u16>
                    block $~lib/map/Map<u16,i32>
                     block $~lib/map/Map<i16,i16>
                      block $~lib/array/Array<i16>
                       block $~lib/map/Map<i16,i32>
                        block $~lib/map/Map<u8,u8>
                         block $~lib/array/Array<u8>
                          block $~lib/map/Map<u8,i32>
                           block $~lib/map/Map<i32,i32>
                            block $~lib/map/Map<i8,i8>
                             block $~lib/array/Array<i32>
                              block $~lib/array/Array<i8>
                               block $~lib/map/Map<i8,i32>
                                block $~lib/arraybuffer/ArrayBufferView
                                 block $~lib/string/String
                                  block $~lib/arraybuffer/ArrayBuffer
                                   local.get $0
                                   i32.const 8
                                   i32.sub
                                   i32.load
                                   br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $~lib/map/Map<i8,i32> $~lib/array/Array<i8> $~lib/array/Array<i32> $~lib/map/Map<i8,i8> $~lib/map/Map<i32,i32> $~lib/map/Map<u8,i32> $~lib/array/Array<u8> $~lib/map/Map<u8,u8> $~lib/map/Map<i16,i32> $~lib/array/Array<i16> $~lib/map/Map<i16,i16> $~lib/map/Map<u16,i32> $~lib/array/Array<u16> $~lib/map/Map<u16,u16> $~lib/map/Map<u32,i32> $~lib/array/Array<u32> $~lib/map/Map<u32,u32> $~lib/map/Map<i64,i32> $~lib/array/Array<i64> $~lib/map/Map<i64,i64> $~lib/map/Map<u64,i32> $~lib/array/Array<u64> $~lib/map/Map<u64,u64> $~lib/map/Map<f32,i32> $~lib/array/Array<f32> $~lib/map/Map<f32,f32> $~lib/map/Map<f64,i32> $~lib/array/Array<f64> $~lib/map/Map<f64,f64> $invalid
                                  end
                                  local.get $0
                                  local.get $1
                                  call $~lib/arraybuffer/ArrayBuffer~visit
                                  return
                                 end
                                 local.get $0
                                 local.get $1
                                 call $~lib/string/String~visit
                                 return
                                end
                                local.get $0
                                local.get $1
                                call $~lib/arraybuffer/ArrayBufferView~visit
                                return
                               end
                               local.get $0
                               local.get $1
                               call $~lib/map/Map<i8,i32>~visit
                               return
                              end
                              local.get $0
                              local.get $1
                              call $~lib/array/Array<i8>~visit
                              return
                             end
                             local.get $0
                             local.get $1
                             call $~lib/array/Array<i32>~visit
                             return
                            end
                            local.get $0
                            local.get $1
                            call $~lib/map/Map<i8,i8>~visit
                            return
                           end
                           local.get $0
                           local.get $1
                           call $~lib/map/Map<i32,i32>~visit
                           return
                          end
                          local.get $0
                          local.get $1
                          call $~lib/map/Map<u8,i32>~visit
                          return
                         end
                         local.get $0
                         local.get $1
                         call $~lib/array/Array<u8>~visit
                         return
                        end
                        local.get $0
                        local.get $1
                        call $~lib/map/Map<u8,u8>~visit
                        return
                       end
                       local.get $0
                       local.get $1
                       call $~lib/map/Map<i16,i32>~visit
                       return
                      end
                      local.get $0
                      local.get $1
                      call $~lib/array/Array<i16>~visit
                      return
                     end
                     local.get $0
                     local.get $1
                     call $~lib/map/Map<i16,i16>~visit
                     return
                    end
                    local.get $0
                    local.get $1
                    call $~lib/map/Map<u16,i32>~visit
                    return
                   end
                   local.get $0
                   local.get $1
                   call $~lib/array/Array<u16>~visit
                   return
                  end
                  local.get $0
                  local.get $1
                  call $~lib/map/Map<u16,u16>~visit
                  return
                 end
                 local.get $0
                 local.get $1
                 call $~lib/map/Map<u32,i32>~visit
                 return
                end
                local.get $0
                local.get $1
                call $~lib/array/Array<u32>~visit
                return
               end
               local.get $0
               local.get $1
               call $~lib/map/Map<u32,u32>~visit
               return
              end
              local.get $0
              local.get $1
              call $~lib/map/Map<i64,i32>~visit
              return
             end
             local.get $0
             local.get $1
             call $~lib/array/Array<i64>~visit
             return
            end
            local.get $0
            local.get $1
            call $~lib/map/Map<i64,i64>~visit
            return
           end
           local.get $0
           local.get $1
           call $~lib/map/Map<u64,i32>~visit
           return
          end
          local.get $0
          local.get $1
          call $~lib/array/Array<u64>~visit
          return
         end
         local.get $0
         local.get $1
         call $~lib/map/Map<u64,u64>~visit
         return
        end
        local.get $0
        local.get $1
        call $~lib/map/Map<f32,i32>~visit
        return
       end
       local.get $0
       local.get $1
       call $~lib/array/Array<f32>~visit
       return
      end
      local.get $0
      local.get $1
      call $~lib/map/Map<f32,f32>~visit
      return
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<f64,i32>~visit
     return
    end
    local.get $0
    local.get $1
    call $~lib/array/Array<f64>~visit
    return
   end
   local.get $0
   local.get $1
   call $~lib/map/Map<f64,f64>~visit
   return
  end
  unreachable
 )
)
